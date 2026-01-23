; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!432912 () Bool)

(assert start!432912)

(declare-fun b!4431945 () Bool)

(declare-fun res!1833500 () Bool)

(declare-fun e!2759613 () Bool)

(assert (=> b!4431945 (=> (not res!1833500) (not e!2759613))))

(declare-datatypes ((V!11291 0))(
  ( (V!11292 (val!17107 Int)) )
))
(declare-datatypes ((K!11045 0))(
  ( (K!11046 (val!17108 Int)) )
))
(declare-datatypes ((tuple2!49534 0))(
  ( (tuple2!49535 (_1!28061 K!11045) (_2!28061 V!11291)) )
))
(declare-datatypes ((List!49801 0))(
  ( (Nil!49677) (Cons!49677 (h!55378 tuple2!49534) (t!356741 List!49801)) )
))
(declare-datatypes ((tuple2!49536 0))(
  ( (tuple2!49537 (_1!28062 (_ BitVec 64)) (_2!28062 List!49801)) )
))
(declare-datatypes ((List!49802 0))(
  ( (Nil!49678) (Cons!49678 (h!55379 tuple2!49536) (t!356742 List!49802)) )
))
(declare-datatypes ((ListLongMap!2215 0))(
  ( (ListLongMap!2216 (toList!3565 List!49802)) )
))
(declare-fun lm!1616 () ListLongMap!2215)

(declare-fun lambda!155418 () Int)

(declare-fun forall!9624 (List!49802 Int) Bool)

(assert (=> b!4431945 (= res!1833500 (forall!9624 (toList!3565 lm!1616) lambda!155418))))

(declare-fun b!4431946 () Bool)

(declare-fun res!1833505 () Bool)

(declare-fun e!2759612 () Bool)

(assert (=> b!4431946 (=> (not res!1833505) (not e!2759612))))

(declare-fun key!3717 () K!11045)

(declare-datatypes ((Hashable!5183 0))(
  ( (HashableExt!5182 (__x!30886 Int)) )
))
(declare-fun hashF!1220 () Hashable!5183)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun hash!2206 (Hashable!5183 K!11045) (_ BitVec 64))

(assert (=> b!4431946 (= res!1833505 (= (hash!2206 hashF!1220 key!3717) hash!366))))

(declare-fun e!2759616 () Bool)

(declare-fun newValue!93 () V!11291)

(declare-fun b!4431947 () Bool)

(declare-fun newBucket!194 () List!49801)

(declare-fun lt!1630109 () Bool)

(assert (=> b!4431947 (= e!2759616 (and (not lt!1630109) (= newBucket!194 (Cons!49677 (tuple2!49535 key!3717 newValue!93) Nil!49677))))))

(declare-fun b!4431948 () Bool)

(declare-fun res!1833503 () Bool)

(assert (=> b!4431948 (=> (not res!1833503) (not e!2759612))))

(declare-datatypes ((ListMap!2809 0))(
  ( (ListMap!2810 (toList!3566 List!49801)) )
))
(declare-fun contains!12208 (ListMap!2809 K!11045) Bool)

(declare-fun extractMap!850 (List!49802) ListMap!2809)

(assert (=> b!4431948 (= res!1833503 (not (contains!12208 (extractMap!850 (toList!3565 lm!1616)) key!3717)))))

(declare-fun b!4431949 () Bool)

(declare-fun e!2759615 () Bool)

(declare-fun lt!1630110 () ListLongMap!2215)

(declare-fun tail!7317 (List!49802) List!49802)

(assert (=> b!4431949 (= e!2759615 (= (tail!7317 (toList!3565 lt!1630110)) (t!356742 (toList!3565 lm!1616))))))

(declare-fun b!4431950 () Bool)

(assert (=> b!4431950 (= e!2759612 e!2759613)))

(declare-fun res!1833499 () Bool)

(assert (=> b!4431950 (=> (not res!1833499) (not e!2759613))))

(assert (=> b!4431950 (= res!1833499 e!2759616)))

(declare-fun res!1833506 () Bool)

(assert (=> b!4431950 (=> res!1833506 e!2759616)))

(declare-fun e!2759610 () Bool)

(assert (=> b!4431950 (= res!1833506 e!2759610)))

(declare-fun res!1833504 () Bool)

(assert (=> b!4431950 (=> (not res!1833504) (not e!2759610))))

(declare-fun lt!1630113 () Bool)

(assert (=> b!4431950 (= res!1833504 (not lt!1630113))))

(assert (=> b!4431950 (= lt!1630113 (not lt!1630109))))

(declare-fun contains!12209 (ListLongMap!2215 (_ BitVec 64)) Bool)

(assert (=> b!4431950 (= lt!1630109 (contains!12209 lm!1616 hash!366))))

(declare-fun res!1833501 () Bool)

(assert (=> start!432912 (=> (not res!1833501) (not e!2759612))))

(assert (=> start!432912 (= res!1833501 (forall!9624 (toList!3565 lm!1616) lambda!155418))))

(assert (=> start!432912 e!2759612))

(declare-fun tp_is_empty!26401 () Bool)

(assert (=> start!432912 tp_is_empty!26401))

(declare-fun tp_is_empty!26403 () Bool)

(assert (=> start!432912 tp_is_empty!26403))

(declare-fun e!2759614 () Bool)

(assert (=> start!432912 e!2759614))

(declare-fun e!2759611 () Bool)

(declare-fun inv!65231 (ListLongMap!2215) Bool)

(assert (=> start!432912 (and (inv!65231 lm!1616) e!2759611)))

(assert (=> start!432912 true))

(declare-fun b!4431951 () Bool)

(declare-fun res!1833509 () Bool)

(assert (=> b!4431951 (=> (not res!1833509) (not e!2759612))))

(declare-fun allKeysSameHashInMap!895 (ListLongMap!2215 Hashable!5183) Bool)

(assert (=> b!4431951 (= res!1833509 (allKeysSameHashInMap!895 lm!1616 hashF!1220))))

(declare-fun b!4431952 () Bool)

(assert (=> b!4431952 (= e!2759613 (not e!2759615))))

(declare-fun res!1833510 () Bool)

(assert (=> b!4431952 (=> res!1833510 e!2759615)))

(assert (=> b!4431952 (= res!1833510 (not (forall!9624 (toList!3565 lt!1630110) lambda!155418)))))

(assert (=> b!4431952 (forall!9624 (toList!3565 lt!1630110) lambda!155418)))

(declare-fun lt!1630111 () tuple2!49536)

(declare-fun +!1147 (ListLongMap!2215 tuple2!49536) ListLongMap!2215)

(assert (=> b!4431952 (= lt!1630110 (+!1147 lm!1616 lt!1630111))))

(assert (=> b!4431952 (= lt!1630111 (tuple2!49537 hash!366 newBucket!194))))

(declare-datatypes ((Unit!82777 0))(
  ( (Unit!82778) )
))
(declare-fun lt!1630112 () Unit!82777)

(declare-fun addValidProp!431 (ListLongMap!2215 Int (_ BitVec 64) List!49801) Unit!82777)

(assert (=> b!4431952 (= lt!1630112 (addValidProp!431 lm!1616 lambda!155418 hash!366 newBucket!194))))

(declare-fun b!4431953 () Bool)

(declare-fun res!1833502 () Bool)

(assert (=> b!4431953 (=> res!1833502 e!2759615)))

(declare-fun head!9254 (List!49802) tuple2!49536)

(assert (=> b!4431953 (= res!1833502 (not (= (head!9254 (toList!3565 lt!1630110)) lt!1630111)))))

(declare-fun b!4431954 () Bool)

(declare-fun res!1833508 () Bool)

(assert (=> b!4431954 (=> res!1833508 e!2759615)))

(get-info :version)

(assert (=> b!4431954 (= res!1833508 (or (not ((_ is Cons!49678) (toList!3565 lm!1616))) (not (= (_1!28062 (h!55379 (toList!3565 lm!1616))) hash!366)) lt!1630113))))

(declare-fun b!4431955 () Bool)

(declare-fun tp!1333611 () Bool)

(assert (=> b!4431955 (= e!2759611 tp!1333611)))

(declare-fun b!4431956 () Bool)

(declare-fun res!1833511 () Bool)

(assert (=> b!4431956 (=> (not res!1833511) (not e!2759612))))

(declare-fun allKeysSameHash!749 (List!49801 (_ BitVec 64) Hashable!5183) Bool)

(assert (=> b!4431956 (= res!1833511 (allKeysSameHash!749 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4431957 () Bool)

(declare-fun res!1833507 () Bool)

(assert (=> b!4431957 (=> (not res!1833507) (not e!2759613))))

(declare-fun noDuplicateKeys!789 (List!49801) Bool)

(assert (=> b!4431957 (= res!1833507 (noDuplicateKeys!789 newBucket!194))))

(declare-fun tp!1333612 () Bool)

(declare-fun b!4431958 () Bool)

(assert (=> b!4431958 (= e!2759614 (and tp_is_empty!26403 tp_is_empty!26401 tp!1333612))))

(declare-fun b!4431959 () Bool)

(declare-fun apply!11641 (ListLongMap!2215 (_ BitVec 64)) List!49801)

(assert (=> b!4431959 (= e!2759610 (= newBucket!194 (Cons!49677 (tuple2!49535 key!3717 newValue!93) (apply!11641 lm!1616 hash!366))))))

(assert (= (and start!432912 res!1833501) b!4431951))

(assert (= (and b!4431951 res!1833509) b!4431946))

(assert (= (and b!4431946 res!1833505) b!4431956))

(assert (= (and b!4431956 res!1833511) b!4431948))

(assert (= (and b!4431948 res!1833503) b!4431950))

(assert (= (and b!4431950 res!1833504) b!4431959))

(assert (= (and b!4431950 (not res!1833506)) b!4431947))

(assert (= (and b!4431950 res!1833499) b!4431957))

(assert (= (and b!4431957 res!1833507) b!4431945))

(assert (= (and b!4431945 res!1833500) b!4431952))

(assert (= (and b!4431952 (not res!1833510)) b!4431954))

(assert (= (and b!4431954 (not res!1833508)) b!4431953))

(assert (= (and b!4431953 (not res!1833502)) b!4431949))

(assert (= (and start!432912 ((_ is Cons!49677) newBucket!194)) b!4431958))

(assert (= start!432912 b!4431955))

(declare-fun m!5116521 () Bool)

(assert (=> b!4431959 m!5116521))

(declare-fun m!5116523 () Bool)

(assert (=> b!4431949 m!5116523))

(declare-fun m!5116525 () Bool)

(assert (=> b!4431945 m!5116525))

(declare-fun m!5116527 () Bool)

(assert (=> b!4431952 m!5116527))

(assert (=> b!4431952 m!5116527))

(declare-fun m!5116529 () Bool)

(assert (=> b!4431952 m!5116529))

(declare-fun m!5116531 () Bool)

(assert (=> b!4431952 m!5116531))

(declare-fun m!5116533 () Bool)

(assert (=> b!4431957 m!5116533))

(declare-fun m!5116535 () Bool)

(assert (=> b!4431946 m!5116535))

(declare-fun m!5116537 () Bool)

(assert (=> b!4431951 m!5116537))

(declare-fun m!5116539 () Bool)

(assert (=> b!4431953 m!5116539))

(declare-fun m!5116541 () Bool)

(assert (=> b!4431948 m!5116541))

(assert (=> b!4431948 m!5116541))

(declare-fun m!5116543 () Bool)

(assert (=> b!4431948 m!5116543))

(declare-fun m!5116545 () Bool)

(assert (=> b!4431950 m!5116545))

(declare-fun m!5116547 () Bool)

(assert (=> b!4431956 m!5116547))

(assert (=> start!432912 m!5116525))

(declare-fun m!5116549 () Bool)

(assert (=> start!432912 m!5116549))

(check-sat (not b!4431956) (not b!4431957) (not b!4431951) (not b!4431955) (not b!4431949) (not b!4431959) (not b!4431958) (not b!4431945) (not b!4431953) (not b!4431950) (not b!4431952) tp_is_empty!26401 (not start!432912) (not b!4431948) (not b!4431946) tp_is_empty!26403)
(check-sat)
(get-model)

(declare-fun d!1344301 () Bool)

(declare-datatypes ((Option!10757 0))(
  ( (None!10756) (Some!10756 (v!43958 List!49801)) )
))
(declare-fun get!16195 (Option!10757) List!49801)

(declare-fun getValueByKey!743 (List!49802 (_ BitVec 64)) Option!10757)

(assert (=> d!1344301 (= (apply!11641 lm!1616 hash!366) (get!16195 (getValueByKey!743 (toList!3565 lm!1616) hash!366)))))

(declare-fun bs!760152 () Bool)

(assert (= bs!760152 d!1344301))

(declare-fun m!5116559 () Bool)

(assert (=> bs!760152 m!5116559))

(assert (=> bs!760152 m!5116559))

(declare-fun m!5116561 () Bool)

(assert (=> bs!760152 m!5116561))

(assert (=> b!4431959 d!1344301))

(declare-fun d!1344303 () Bool)

(assert (=> d!1344303 (= (tail!7317 (toList!3565 lt!1630110)) (t!356742 (toList!3565 lt!1630110)))))

(assert (=> b!4431949 d!1344303))

(declare-fun d!1344307 () Bool)

(declare-fun res!1833532 () Bool)

(declare-fun e!2759634 () Bool)

(assert (=> d!1344307 (=> res!1833532 e!2759634)))

(assert (=> d!1344307 (= res!1833532 ((_ is Nil!49678) (toList!3565 lm!1616)))))

(assert (=> d!1344307 (= (forall!9624 (toList!3565 lm!1616) lambda!155418) e!2759634)))

(declare-fun b!4431981 () Bool)

(declare-fun e!2759635 () Bool)

(assert (=> b!4431981 (= e!2759634 e!2759635)))

(declare-fun res!1833533 () Bool)

(assert (=> b!4431981 (=> (not res!1833533) (not e!2759635))))

(declare-fun dynLambda!20872 (Int tuple2!49536) Bool)

(assert (=> b!4431981 (= res!1833533 (dynLambda!20872 lambda!155418 (h!55379 (toList!3565 lm!1616))))))

(declare-fun b!4431982 () Bool)

(assert (=> b!4431982 (= e!2759635 (forall!9624 (t!356742 (toList!3565 lm!1616)) lambda!155418))))

(assert (= (and d!1344307 (not res!1833532)) b!4431981))

(assert (= (and b!4431981 res!1833533) b!4431982))

(declare-fun b_lambda!143873 () Bool)

(assert (=> (not b_lambda!143873) (not b!4431981)))

(declare-fun m!5116583 () Bool)

(assert (=> b!4431981 m!5116583))

(declare-fun m!5116585 () Bool)

(assert (=> b!4431982 m!5116585))

(assert (=> start!432912 d!1344307))

(declare-fun d!1344311 () Bool)

(declare-fun isStrictlySorted!248 (List!49802) Bool)

(assert (=> d!1344311 (= (inv!65231 lm!1616) (isStrictlySorted!248 (toList!3565 lm!1616)))))

(declare-fun bs!760155 () Bool)

(assert (= bs!760155 d!1344311))

(declare-fun m!5116589 () Bool)

(assert (=> bs!760155 m!5116589))

(assert (=> start!432912 d!1344311))

(declare-fun d!1344317 () Bool)

(declare-fun e!2759693 () Bool)

(assert (=> d!1344317 e!2759693))

(declare-fun res!1833560 () Bool)

(assert (=> d!1344317 (=> res!1833560 e!2759693)))

(declare-fun e!2759691 () Bool)

(assert (=> d!1344317 (= res!1833560 e!2759691)))

(declare-fun res!1833559 () Bool)

(assert (=> d!1344317 (=> (not res!1833559) (not e!2759691))))

(declare-fun lt!1630191 () Bool)

(assert (=> d!1344317 (= res!1833559 (not lt!1630191))))

(declare-fun lt!1630190 () Bool)

(assert (=> d!1344317 (= lt!1630191 lt!1630190)))

(declare-fun lt!1630187 () Unit!82777)

(declare-fun e!2759690 () Unit!82777)

(assert (=> d!1344317 (= lt!1630187 e!2759690)))

(declare-fun c!754349 () Bool)

(assert (=> d!1344317 (= c!754349 lt!1630190)))

(declare-fun containsKey!1174 (List!49801 K!11045) Bool)

(assert (=> d!1344317 (= lt!1630190 (containsKey!1174 (toList!3566 (extractMap!850 (toList!3565 lm!1616))) key!3717))))

(assert (=> d!1344317 (= (contains!12208 (extractMap!850 (toList!3565 lm!1616)) key!3717) lt!1630191)))

(declare-fun b!4432066 () Bool)

(declare-fun e!2759689 () Bool)

(declare-datatypes ((List!49804 0))(
  ( (Nil!49680) (Cons!49680 (h!55383 K!11045) (t!356744 List!49804)) )
))
(declare-fun contains!12212 (List!49804 K!11045) Bool)

(declare-fun keys!16986 (ListMap!2809) List!49804)

(assert (=> b!4432066 (= e!2759689 (contains!12212 (keys!16986 (extractMap!850 (toList!3565 lm!1616))) key!3717))))

(declare-fun b!4432067 () Bool)

(assert (=> b!4432067 false))

(declare-fun lt!1630189 () Unit!82777)

(declare-fun lt!1630185 () Unit!82777)

(assert (=> b!4432067 (= lt!1630189 lt!1630185)))

(assert (=> b!4432067 (containsKey!1174 (toList!3566 (extractMap!850 (toList!3565 lm!1616))) key!3717)))

(declare-fun lemmaInGetKeysListThenContainsKey!266 (List!49801 K!11045) Unit!82777)

(assert (=> b!4432067 (= lt!1630185 (lemmaInGetKeysListThenContainsKey!266 (toList!3566 (extractMap!850 (toList!3565 lm!1616))) key!3717))))

(declare-fun e!2759688 () Unit!82777)

(declare-fun Unit!82782 () Unit!82777)

(assert (=> b!4432067 (= e!2759688 Unit!82782)))

(declare-fun b!4432068 () Bool)

(declare-fun lt!1630188 () Unit!82777)

(assert (=> b!4432068 (= e!2759690 lt!1630188)))

(declare-fun lt!1630186 () Unit!82777)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!652 (List!49801 K!11045) Unit!82777)

(assert (=> b!4432068 (= lt!1630186 (lemmaContainsKeyImpliesGetValueByKeyDefined!652 (toList!3566 (extractMap!850 (toList!3565 lm!1616))) key!3717))))

(declare-datatypes ((Option!10758 0))(
  ( (None!10757) (Some!10757 (v!43959 V!11291)) )
))
(declare-fun isDefined!8049 (Option!10758) Bool)

(declare-fun getValueByKey!744 (List!49801 K!11045) Option!10758)

(assert (=> b!4432068 (isDefined!8049 (getValueByKey!744 (toList!3566 (extractMap!850 (toList!3565 lm!1616))) key!3717))))

(declare-fun lt!1630184 () Unit!82777)

(assert (=> b!4432068 (= lt!1630184 lt!1630186)))

(declare-fun lemmaInListThenGetKeysListContains!265 (List!49801 K!11045) Unit!82777)

(assert (=> b!4432068 (= lt!1630188 (lemmaInListThenGetKeysListContains!265 (toList!3566 (extractMap!850 (toList!3565 lm!1616))) key!3717))))

(declare-fun call!308362 () Bool)

(assert (=> b!4432068 call!308362))

(declare-fun b!4432069 () Bool)

(assert (=> b!4432069 (= e!2759690 e!2759688)))

(declare-fun c!754348 () Bool)

(assert (=> b!4432069 (= c!754348 call!308362)))

(declare-fun b!4432070 () Bool)

(assert (=> b!4432070 (= e!2759691 (not (contains!12212 (keys!16986 (extractMap!850 (toList!3565 lm!1616))) key!3717)))))

(declare-fun b!4432071 () Bool)

(declare-fun Unit!82783 () Unit!82777)

(assert (=> b!4432071 (= e!2759688 Unit!82783)))

(declare-fun bm!308357 () Bool)

(declare-fun e!2759692 () List!49804)

(assert (=> bm!308357 (= call!308362 (contains!12212 e!2759692 key!3717))))

(declare-fun c!754347 () Bool)

(assert (=> bm!308357 (= c!754347 c!754349)))

(declare-fun b!4432072 () Bool)

(declare-fun getKeysList!268 (List!49801) List!49804)

(assert (=> b!4432072 (= e!2759692 (getKeysList!268 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))))

(declare-fun b!4432073 () Bool)

(assert (=> b!4432073 (= e!2759692 (keys!16986 (extractMap!850 (toList!3565 lm!1616))))))

(declare-fun b!4432074 () Bool)

(assert (=> b!4432074 (= e!2759693 e!2759689)))

(declare-fun res!1833561 () Bool)

(assert (=> b!4432074 (=> (not res!1833561) (not e!2759689))))

(assert (=> b!4432074 (= res!1833561 (isDefined!8049 (getValueByKey!744 (toList!3566 (extractMap!850 (toList!3565 lm!1616))) key!3717)))))

(assert (= (and d!1344317 c!754349) b!4432068))

(assert (= (and d!1344317 (not c!754349)) b!4432069))

(assert (= (and b!4432069 c!754348) b!4432067))

(assert (= (and b!4432069 (not c!754348)) b!4432071))

(assert (= (or b!4432068 b!4432069) bm!308357))

(assert (= (and bm!308357 c!754347) b!4432072))

(assert (= (and bm!308357 (not c!754347)) b!4432073))

(assert (= (and d!1344317 res!1833559) b!4432070))

(assert (= (and d!1344317 (not res!1833560)) b!4432074))

(assert (= (and b!4432074 res!1833561) b!4432066))

(assert (=> b!4432073 m!5116541))

(declare-fun m!5116645 () Bool)

(assert (=> b!4432073 m!5116645))

(assert (=> b!4432070 m!5116541))

(assert (=> b!4432070 m!5116645))

(assert (=> b!4432070 m!5116645))

(declare-fun m!5116647 () Bool)

(assert (=> b!4432070 m!5116647))

(declare-fun m!5116649 () Bool)

(assert (=> b!4432068 m!5116649))

(declare-fun m!5116651 () Bool)

(assert (=> b!4432068 m!5116651))

(assert (=> b!4432068 m!5116651))

(declare-fun m!5116653 () Bool)

(assert (=> b!4432068 m!5116653))

(declare-fun m!5116655 () Bool)

(assert (=> b!4432068 m!5116655))

(assert (=> b!4432074 m!5116651))

(assert (=> b!4432074 m!5116651))

(assert (=> b!4432074 m!5116653))

(assert (=> b!4432066 m!5116541))

(assert (=> b!4432066 m!5116645))

(assert (=> b!4432066 m!5116645))

(assert (=> b!4432066 m!5116647))

(declare-fun m!5116657 () Bool)

(assert (=> bm!308357 m!5116657))

(declare-fun m!5116659 () Bool)

(assert (=> b!4432067 m!5116659))

(declare-fun m!5116661 () Bool)

(assert (=> b!4432067 m!5116661))

(assert (=> d!1344317 m!5116659))

(declare-fun m!5116663 () Bool)

(assert (=> b!4432072 m!5116663))

(assert (=> b!4431948 d!1344317))

(declare-fun bs!760165 () Bool)

(declare-fun d!1344341 () Bool)

(assert (= bs!760165 (and d!1344341 start!432912)))

(declare-fun lambda!155430 () Int)

(assert (=> bs!760165 (= lambda!155430 lambda!155418)))

(declare-fun lt!1630194 () ListMap!2809)

(declare-fun invariantList!821 (List!49801) Bool)

(assert (=> d!1344341 (invariantList!821 (toList!3566 lt!1630194))))

(declare-fun e!2759696 () ListMap!2809)

(assert (=> d!1344341 (= lt!1630194 e!2759696)))

(declare-fun c!754352 () Bool)

(assert (=> d!1344341 (= c!754352 ((_ is Cons!49678) (toList!3565 lm!1616)))))

(assert (=> d!1344341 (forall!9624 (toList!3565 lm!1616) lambda!155430)))

(assert (=> d!1344341 (= (extractMap!850 (toList!3565 lm!1616)) lt!1630194)))

(declare-fun b!4432079 () Bool)

(declare-fun addToMapMapFromBucket!414 (List!49801 ListMap!2809) ListMap!2809)

(assert (=> b!4432079 (= e!2759696 (addToMapMapFromBucket!414 (_2!28062 (h!55379 (toList!3565 lm!1616))) (extractMap!850 (t!356742 (toList!3565 lm!1616)))))))

(declare-fun b!4432080 () Bool)

(assert (=> b!4432080 (= e!2759696 (ListMap!2810 Nil!49677))))

(assert (= (and d!1344341 c!754352) b!4432079))

(assert (= (and d!1344341 (not c!754352)) b!4432080))

(declare-fun m!5116665 () Bool)

(assert (=> d!1344341 m!5116665))

(declare-fun m!5116667 () Bool)

(assert (=> d!1344341 m!5116667))

(declare-fun m!5116669 () Bool)

(assert (=> b!4432079 m!5116669))

(assert (=> b!4432079 m!5116669))

(declare-fun m!5116671 () Bool)

(assert (=> b!4432079 m!5116671))

(assert (=> b!4431948 d!1344341))

(declare-fun bs!760166 () Bool)

(declare-fun d!1344343 () Bool)

(assert (= bs!760166 (and d!1344343 start!432912)))

(declare-fun lambda!155433 () Int)

(assert (=> bs!760166 (not (= lambda!155433 lambda!155418))))

(declare-fun bs!760167 () Bool)

(assert (= bs!760167 (and d!1344343 d!1344341)))

(assert (=> bs!760167 (not (= lambda!155433 lambda!155430))))

(assert (=> d!1344343 true))

(assert (=> d!1344343 (= (allKeysSameHashInMap!895 lm!1616 hashF!1220) (forall!9624 (toList!3565 lm!1616) lambda!155433))))

(declare-fun bs!760168 () Bool)

(assert (= bs!760168 d!1344343))

(declare-fun m!5116673 () Bool)

(assert (=> bs!760168 m!5116673))

(assert (=> b!4431951 d!1344343))

(declare-fun d!1344345 () Bool)

(declare-fun res!1833562 () Bool)

(declare-fun e!2759697 () Bool)

(assert (=> d!1344345 (=> res!1833562 e!2759697)))

(assert (=> d!1344345 (= res!1833562 ((_ is Nil!49678) (toList!3565 lt!1630110)))))

(assert (=> d!1344345 (= (forall!9624 (toList!3565 lt!1630110) lambda!155418) e!2759697)))

(declare-fun b!4432083 () Bool)

(declare-fun e!2759698 () Bool)

(assert (=> b!4432083 (= e!2759697 e!2759698)))

(declare-fun res!1833563 () Bool)

(assert (=> b!4432083 (=> (not res!1833563) (not e!2759698))))

(assert (=> b!4432083 (= res!1833563 (dynLambda!20872 lambda!155418 (h!55379 (toList!3565 lt!1630110))))))

(declare-fun b!4432084 () Bool)

(assert (=> b!4432084 (= e!2759698 (forall!9624 (t!356742 (toList!3565 lt!1630110)) lambda!155418))))

(assert (= (and d!1344345 (not res!1833562)) b!4432083))

(assert (= (and b!4432083 res!1833563) b!4432084))

(declare-fun b_lambda!143881 () Bool)

(assert (=> (not b_lambda!143881) (not b!4432083)))

(declare-fun m!5116675 () Bool)

(assert (=> b!4432083 m!5116675))

(declare-fun m!5116677 () Bool)

(assert (=> b!4432084 m!5116677))

(assert (=> b!4431952 d!1344345))

(declare-fun d!1344347 () Bool)

(declare-fun e!2759701 () Bool)

(assert (=> d!1344347 e!2759701))

(declare-fun res!1833568 () Bool)

(assert (=> d!1344347 (=> (not res!1833568) (not e!2759701))))

(declare-fun lt!1630204 () ListLongMap!2215)

(assert (=> d!1344347 (= res!1833568 (contains!12209 lt!1630204 (_1!28062 lt!1630111)))))

(declare-fun lt!1630203 () List!49802)

(assert (=> d!1344347 (= lt!1630204 (ListLongMap!2216 lt!1630203))))

(declare-fun lt!1630206 () Unit!82777)

(declare-fun lt!1630205 () Unit!82777)

(assert (=> d!1344347 (= lt!1630206 lt!1630205)))

(assert (=> d!1344347 (= (getValueByKey!743 lt!1630203 (_1!28062 lt!1630111)) (Some!10756 (_2!28062 lt!1630111)))))

(declare-fun lemmaContainsTupThenGetReturnValue!475 (List!49802 (_ BitVec 64) List!49801) Unit!82777)

(assert (=> d!1344347 (= lt!1630205 (lemmaContainsTupThenGetReturnValue!475 lt!1630203 (_1!28062 lt!1630111) (_2!28062 lt!1630111)))))

(declare-fun insertStrictlySorted!276 (List!49802 (_ BitVec 64) List!49801) List!49802)

(assert (=> d!1344347 (= lt!1630203 (insertStrictlySorted!276 (toList!3565 lm!1616) (_1!28062 lt!1630111) (_2!28062 lt!1630111)))))

(assert (=> d!1344347 (= (+!1147 lm!1616 lt!1630111) lt!1630204)))

(declare-fun b!4432089 () Bool)

(declare-fun res!1833569 () Bool)

(assert (=> b!4432089 (=> (not res!1833569) (not e!2759701))))

(assert (=> b!4432089 (= res!1833569 (= (getValueByKey!743 (toList!3565 lt!1630204) (_1!28062 lt!1630111)) (Some!10756 (_2!28062 lt!1630111))))))

(declare-fun b!4432090 () Bool)

(declare-fun contains!12213 (List!49802 tuple2!49536) Bool)

(assert (=> b!4432090 (= e!2759701 (contains!12213 (toList!3565 lt!1630204) lt!1630111))))

(assert (= (and d!1344347 res!1833568) b!4432089))

(assert (= (and b!4432089 res!1833569) b!4432090))

(declare-fun m!5116679 () Bool)

(assert (=> d!1344347 m!5116679))

(declare-fun m!5116681 () Bool)

(assert (=> d!1344347 m!5116681))

(declare-fun m!5116683 () Bool)

(assert (=> d!1344347 m!5116683))

(declare-fun m!5116685 () Bool)

(assert (=> d!1344347 m!5116685))

(declare-fun m!5116687 () Bool)

(assert (=> b!4432089 m!5116687))

(declare-fun m!5116689 () Bool)

(assert (=> b!4432090 m!5116689))

(assert (=> b!4431952 d!1344347))

(declare-fun d!1344349 () Bool)

(assert (=> d!1344349 (forall!9624 (toList!3565 (+!1147 lm!1616 (tuple2!49537 hash!366 newBucket!194))) lambda!155418)))

(declare-fun lt!1630209 () Unit!82777)

(declare-fun choose!28069 (ListLongMap!2215 Int (_ BitVec 64) List!49801) Unit!82777)

(assert (=> d!1344349 (= lt!1630209 (choose!28069 lm!1616 lambda!155418 hash!366 newBucket!194))))

(declare-fun e!2759704 () Bool)

(assert (=> d!1344349 e!2759704))

(declare-fun res!1833572 () Bool)

(assert (=> d!1344349 (=> (not res!1833572) (not e!2759704))))

(assert (=> d!1344349 (= res!1833572 (forall!9624 (toList!3565 lm!1616) lambda!155418))))

(assert (=> d!1344349 (= (addValidProp!431 lm!1616 lambda!155418 hash!366 newBucket!194) lt!1630209)))

(declare-fun b!4432094 () Bool)

(assert (=> b!4432094 (= e!2759704 (dynLambda!20872 lambda!155418 (tuple2!49537 hash!366 newBucket!194)))))

(assert (= (and d!1344349 res!1833572) b!4432094))

(declare-fun b_lambda!143883 () Bool)

(assert (=> (not b_lambda!143883) (not b!4432094)))

(declare-fun m!5116691 () Bool)

(assert (=> d!1344349 m!5116691))

(declare-fun m!5116693 () Bool)

(assert (=> d!1344349 m!5116693))

(declare-fun m!5116695 () Bool)

(assert (=> d!1344349 m!5116695))

(assert (=> d!1344349 m!5116525))

(declare-fun m!5116697 () Bool)

(assert (=> b!4432094 m!5116697))

(assert (=> b!4431952 d!1344349))

(declare-fun d!1344351 () Bool)

(declare-fun e!2759710 () Bool)

(assert (=> d!1344351 e!2759710))

(declare-fun res!1833575 () Bool)

(assert (=> d!1344351 (=> res!1833575 e!2759710)))

(declare-fun lt!1630219 () Bool)

(assert (=> d!1344351 (= res!1833575 (not lt!1630219))))

(declare-fun lt!1630221 () Bool)

(assert (=> d!1344351 (= lt!1630219 lt!1630221)))

(declare-fun lt!1630218 () Unit!82777)

(declare-fun e!2759709 () Unit!82777)

(assert (=> d!1344351 (= lt!1630218 e!2759709)))

(declare-fun c!754355 () Bool)

(assert (=> d!1344351 (= c!754355 lt!1630221)))

(declare-fun containsKey!1175 (List!49802 (_ BitVec 64)) Bool)

(assert (=> d!1344351 (= lt!1630221 (containsKey!1175 (toList!3565 lm!1616) hash!366))))

(assert (=> d!1344351 (= (contains!12209 lm!1616 hash!366) lt!1630219)))

(declare-fun b!4432101 () Bool)

(declare-fun lt!1630220 () Unit!82777)

(assert (=> b!4432101 (= e!2759709 lt!1630220)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!653 (List!49802 (_ BitVec 64)) Unit!82777)

(assert (=> b!4432101 (= lt!1630220 (lemmaContainsKeyImpliesGetValueByKeyDefined!653 (toList!3565 lm!1616) hash!366))))

(declare-fun isDefined!8050 (Option!10757) Bool)

(assert (=> b!4432101 (isDefined!8050 (getValueByKey!743 (toList!3565 lm!1616) hash!366))))

(declare-fun b!4432102 () Bool)

(declare-fun Unit!82784 () Unit!82777)

(assert (=> b!4432102 (= e!2759709 Unit!82784)))

(declare-fun b!4432103 () Bool)

(assert (=> b!4432103 (= e!2759710 (isDefined!8050 (getValueByKey!743 (toList!3565 lm!1616) hash!366)))))

(assert (= (and d!1344351 c!754355) b!4432101))

(assert (= (and d!1344351 (not c!754355)) b!4432102))

(assert (= (and d!1344351 (not res!1833575)) b!4432103))

(declare-fun m!5116699 () Bool)

(assert (=> d!1344351 m!5116699))

(declare-fun m!5116701 () Bool)

(assert (=> b!4432101 m!5116701))

(assert (=> b!4432101 m!5116559))

(assert (=> b!4432101 m!5116559))

(declare-fun m!5116703 () Bool)

(assert (=> b!4432101 m!5116703))

(assert (=> b!4432103 m!5116559))

(assert (=> b!4432103 m!5116559))

(assert (=> b!4432103 m!5116703))

(assert (=> b!4431950 d!1344351))

(declare-fun d!1344353 () Bool)

(assert (=> d!1344353 (= (head!9254 (toList!3565 lt!1630110)) (h!55379 (toList!3565 lt!1630110)))))

(assert (=> b!4431953 d!1344353))

(declare-fun d!1344355 () Bool)

(declare-fun hash!2208 (Hashable!5183 K!11045) (_ BitVec 64))

(assert (=> d!1344355 (= (hash!2206 hashF!1220 key!3717) (hash!2208 hashF!1220 key!3717))))

(declare-fun bs!760169 () Bool)

(assert (= bs!760169 d!1344355))

(declare-fun m!5116705 () Bool)

(assert (=> bs!760169 m!5116705))

(assert (=> b!4431946 d!1344355))

(declare-fun d!1344357 () Bool)

(declare-fun res!1833580 () Bool)

(declare-fun e!2759715 () Bool)

(assert (=> d!1344357 (=> res!1833580 e!2759715)))

(assert (=> d!1344357 (= res!1833580 (not ((_ is Cons!49677) newBucket!194)))))

(assert (=> d!1344357 (= (noDuplicateKeys!789 newBucket!194) e!2759715)))

(declare-fun b!4432108 () Bool)

(declare-fun e!2759716 () Bool)

(assert (=> b!4432108 (= e!2759715 e!2759716)))

(declare-fun res!1833581 () Bool)

(assert (=> b!4432108 (=> (not res!1833581) (not e!2759716))))

(declare-fun containsKey!1176 (List!49801 K!11045) Bool)

(assert (=> b!4432108 (= res!1833581 (not (containsKey!1176 (t!356741 newBucket!194) (_1!28061 (h!55378 newBucket!194)))))))

(declare-fun b!4432109 () Bool)

(assert (=> b!4432109 (= e!2759716 (noDuplicateKeys!789 (t!356741 newBucket!194)))))

(assert (= (and d!1344357 (not res!1833580)) b!4432108))

(assert (= (and b!4432108 res!1833581) b!4432109))

(declare-fun m!5116707 () Bool)

(assert (=> b!4432108 m!5116707))

(declare-fun m!5116709 () Bool)

(assert (=> b!4432109 m!5116709))

(assert (=> b!4431957 d!1344357))

(assert (=> b!4431945 d!1344307))

(declare-fun d!1344359 () Bool)

(assert (=> d!1344359 true))

(assert (=> d!1344359 true))

(declare-fun lambda!155436 () Int)

(declare-fun forall!9626 (List!49801 Int) Bool)

(assert (=> d!1344359 (= (allKeysSameHash!749 newBucket!194 hash!366 hashF!1220) (forall!9626 newBucket!194 lambda!155436))))

(declare-fun bs!760170 () Bool)

(assert (= bs!760170 d!1344359))

(declare-fun m!5116711 () Bool)

(assert (=> bs!760170 m!5116711))

(assert (=> b!4431956 d!1344359))

(declare-fun b!4432118 () Bool)

(declare-fun e!2759719 () Bool)

(declare-fun tp!1333624 () Bool)

(assert (=> b!4432118 (= e!2759719 (and tp_is_empty!26403 tp_is_empty!26401 tp!1333624))))

(assert (=> b!4431958 (= tp!1333612 e!2759719)))

(assert (= (and b!4431958 ((_ is Cons!49677) (t!356741 newBucket!194))) b!4432118))

(declare-fun b!4432123 () Bool)

(declare-fun e!2759722 () Bool)

(declare-fun tp!1333629 () Bool)

(declare-fun tp!1333630 () Bool)

(assert (=> b!4432123 (= e!2759722 (and tp!1333629 tp!1333630))))

(assert (=> b!4431955 (= tp!1333611 e!2759722)))

(assert (= (and b!4431955 ((_ is Cons!49678) (toList!3565 lm!1616))) b!4432123))

(declare-fun b_lambda!143885 () Bool)

(assert (= b_lambda!143873 (or start!432912 b_lambda!143885)))

(declare-fun bs!760171 () Bool)

(declare-fun d!1344361 () Bool)

(assert (= bs!760171 (and d!1344361 start!432912)))

(assert (=> bs!760171 (= (dynLambda!20872 lambda!155418 (h!55379 (toList!3565 lm!1616))) (noDuplicateKeys!789 (_2!28062 (h!55379 (toList!3565 lm!1616)))))))

(declare-fun m!5116713 () Bool)

(assert (=> bs!760171 m!5116713))

(assert (=> b!4431981 d!1344361))

(declare-fun b_lambda!143887 () Bool)

(assert (= b_lambda!143881 (or start!432912 b_lambda!143887)))

(declare-fun bs!760172 () Bool)

(declare-fun d!1344363 () Bool)

(assert (= bs!760172 (and d!1344363 start!432912)))

(assert (=> bs!760172 (= (dynLambda!20872 lambda!155418 (h!55379 (toList!3565 lt!1630110))) (noDuplicateKeys!789 (_2!28062 (h!55379 (toList!3565 lt!1630110)))))))

(declare-fun m!5116715 () Bool)

(assert (=> bs!760172 m!5116715))

(assert (=> b!4432083 d!1344363))

(declare-fun b_lambda!143889 () Bool)

(assert (= b_lambda!143883 (or start!432912 b_lambda!143889)))

(declare-fun bs!760173 () Bool)

(declare-fun d!1344365 () Bool)

(assert (= bs!760173 (and d!1344365 start!432912)))

(assert (=> bs!760173 (= (dynLambda!20872 lambda!155418 (tuple2!49537 hash!366 newBucket!194)) (noDuplicateKeys!789 (_2!28062 (tuple2!49537 hash!366 newBucket!194))))))

(declare-fun m!5116717 () Bool)

(assert (=> bs!760173 m!5116717))

(assert (=> b!4432094 d!1344365))

(check-sat (not b!4432089) (not d!1344349) (not b!4432084) (not bs!760173) (not b!4432072) (not b!4432108) (not b!4432070) (not b!4432090) (not b!4432073) (not b_lambda!143885) (not b_lambda!143887) (not b_lambda!143889) (not b!4432123) (not b!4432118) (not d!1344355) (not b!4432074) (not b!4432079) (not bs!760171) (not b!4432109) (not d!1344343) (not bm!308357) (not d!1344301) tp_is_empty!26403 (not d!1344351) (not d!1344317) (not b!4432066) (not d!1344311) (not b!4432068) (not b!4431982) (not d!1344347) (not b!4432103) (not b!4432101) (not d!1344341) tp_is_empty!26401 (not b!4432067) (not d!1344359) (not bs!760172))
(check-sat)
(get-model)

(declare-fun d!1344431 () Bool)

(declare-fun e!2759828 () Bool)

(assert (=> d!1344431 e!2759828))

(declare-fun res!1833666 () Bool)

(assert (=> d!1344431 (=> res!1833666 e!2759828)))

(declare-fun lt!1630276 () Bool)

(assert (=> d!1344431 (= res!1833666 (not lt!1630276))))

(declare-fun lt!1630278 () Bool)

(assert (=> d!1344431 (= lt!1630276 lt!1630278)))

(declare-fun lt!1630275 () Unit!82777)

(declare-fun e!2759827 () Unit!82777)

(assert (=> d!1344431 (= lt!1630275 e!2759827)))

(declare-fun c!754394 () Bool)

(assert (=> d!1344431 (= c!754394 lt!1630278)))

(assert (=> d!1344431 (= lt!1630278 (containsKey!1175 (toList!3565 lt!1630204) (_1!28062 lt!1630111)))))

(assert (=> d!1344431 (= (contains!12209 lt!1630204 (_1!28062 lt!1630111)) lt!1630276)))

(declare-fun b!4432288 () Bool)

(declare-fun lt!1630277 () Unit!82777)

(assert (=> b!4432288 (= e!2759827 lt!1630277)))

(assert (=> b!4432288 (= lt!1630277 (lemmaContainsKeyImpliesGetValueByKeyDefined!653 (toList!3565 lt!1630204) (_1!28062 lt!1630111)))))

(assert (=> b!4432288 (isDefined!8050 (getValueByKey!743 (toList!3565 lt!1630204) (_1!28062 lt!1630111)))))

(declare-fun b!4432289 () Bool)

(declare-fun Unit!82801 () Unit!82777)

(assert (=> b!4432289 (= e!2759827 Unit!82801)))

(declare-fun b!4432290 () Bool)

(assert (=> b!4432290 (= e!2759828 (isDefined!8050 (getValueByKey!743 (toList!3565 lt!1630204) (_1!28062 lt!1630111))))))

(assert (= (and d!1344431 c!754394) b!4432288))

(assert (= (and d!1344431 (not c!754394)) b!4432289))

(assert (= (and d!1344431 (not res!1833666)) b!4432290))

(declare-fun m!5116861 () Bool)

(assert (=> d!1344431 m!5116861))

(declare-fun m!5116863 () Bool)

(assert (=> b!4432288 m!5116863))

(assert (=> b!4432288 m!5116687))

(assert (=> b!4432288 m!5116687))

(declare-fun m!5116865 () Bool)

(assert (=> b!4432288 m!5116865))

(assert (=> b!4432290 m!5116687))

(assert (=> b!4432290 m!5116687))

(assert (=> b!4432290 m!5116865))

(assert (=> d!1344347 d!1344431))

(declare-fun b!4432302 () Bool)

(declare-fun e!2759834 () Option!10757)

(assert (=> b!4432302 (= e!2759834 None!10756)))

(declare-fun d!1344433 () Bool)

(declare-fun c!754399 () Bool)

(assert (=> d!1344433 (= c!754399 (and ((_ is Cons!49678) lt!1630203) (= (_1!28062 (h!55379 lt!1630203)) (_1!28062 lt!1630111))))))

(declare-fun e!2759833 () Option!10757)

(assert (=> d!1344433 (= (getValueByKey!743 lt!1630203 (_1!28062 lt!1630111)) e!2759833)))

(declare-fun b!4432301 () Bool)

(assert (=> b!4432301 (= e!2759834 (getValueByKey!743 (t!356742 lt!1630203) (_1!28062 lt!1630111)))))

(declare-fun b!4432300 () Bool)

(assert (=> b!4432300 (= e!2759833 e!2759834)))

(declare-fun c!754400 () Bool)

(assert (=> b!4432300 (= c!754400 (and ((_ is Cons!49678) lt!1630203) (not (= (_1!28062 (h!55379 lt!1630203)) (_1!28062 lt!1630111)))))))

(declare-fun b!4432299 () Bool)

(assert (=> b!4432299 (= e!2759833 (Some!10756 (_2!28062 (h!55379 lt!1630203))))))

(assert (= (and d!1344433 c!754399) b!4432299))

(assert (= (and d!1344433 (not c!754399)) b!4432300))

(assert (= (and b!4432300 c!754400) b!4432301))

(assert (= (and b!4432300 (not c!754400)) b!4432302))

(declare-fun m!5116867 () Bool)

(assert (=> b!4432301 m!5116867))

(assert (=> d!1344347 d!1344433))

(declare-fun d!1344435 () Bool)

(assert (=> d!1344435 (= (getValueByKey!743 lt!1630203 (_1!28062 lt!1630111)) (Some!10756 (_2!28062 lt!1630111)))))

(declare-fun lt!1630289 () Unit!82777)

(declare-fun choose!28076 (List!49802 (_ BitVec 64) List!49801) Unit!82777)

(assert (=> d!1344435 (= lt!1630289 (choose!28076 lt!1630203 (_1!28062 lt!1630111) (_2!28062 lt!1630111)))))

(declare-fun e!2759839 () Bool)

(assert (=> d!1344435 e!2759839))

(declare-fun res!1833671 () Bool)

(assert (=> d!1344435 (=> (not res!1833671) (not e!2759839))))

(assert (=> d!1344435 (= res!1833671 (isStrictlySorted!248 lt!1630203))))

(assert (=> d!1344435 (= (lemmaContainsTupThenGetReturnValue!475 lt!1630203 (_1!28062 lt!1630111) (_2!28062 lt!1630111)) lt!1630289)))

(declare-fun b!4432311 () Bool)

(declare-fun res!1833672 () Bool)

(assert (=> b!4432311 (=> (not res!1833672) (not e!2759839))))

(assert (=> b!4432311 (= res!1833672 (containsKey!1175 lt!1630203 (_1!28062 lt!1630111)))))

(declare-fun b!4432312 () Bool)

(assert (=> b!4432312 (= e!2759839 (contains!12213 lt!1630203 (tuple2!49537 (_1!28062 lt!1630111) (_2!28062 lt!1630111))))))

(assert (= (and d!1344435 res!1833671) b!4432311))

(assert (= (and b!4432311 res!1833672) b!4432312))

(assert (=> d!1344435 m!5116681))

(declare-fun m!5116869 () Bool)

(assert (=> d!1344435 m!5116869))

(declare-fun m!5116871 () Bool)

(assert (=> d!1344435 m!5116871))

(declare-fun m!5116873 () Bool)

(assert (=> b!4432311 m!5116873))

(declare-fun m!5116875 () Bool)

(assert (=> b!4432312 m!5116875))

(assert (=> d!1344347 d!1344435))

(declare-fun b!4432346 () Bool)

(declare-fun e!2759859 () List!49802)

(declare-fun call!308388 () List!49802)

(assert (=> b!4432346 (= e!2759859 call!308388)))

(declare-fun b!4432347 () Bool)

(declare-fun c!754415 () Bool)

(assert (=> b!4432347 (= c!754415 (and ((_ is Cons!49678) (toList!3565 lm!1616)) (bvsgt (_1!28062 (h!55379 (toList!3565 lm!1616))) (_1!28062 lt!1630111))))))

(declare-fun e!2759861 () List!49802)

(assert (=> b!4432347 (= e!2759861 e!2759859)))

(declare-fun b!4432348 () Bool)

(declare-fun e!2759860 () List!49802)

(assert (=> b!4432348 (= e!2759860 (insertStrictlySorted!276 (t!356742 (toList!3565 lm!1616)) (_1!28062 lt!1630111) (_2!28062 lt!1630111)))))

(declare-fun d!1344437 () Bool)

(declare-fun e!2759857 () Bool)

(assert (=> d!1344437 e!2759857))

(declare-fun res!1833687 () Bool)

(assert (=> d!1344437 (=> (not res!1833687) (not e!2759857))))

(declare-fun lt!1630347 () List!49802)

(assert (=> d!1344437 (= res!1833687 (isStrictlySorted!248 lt!1630347))))

(declare-fun e!2759858 () List!49802)

(assert (=> d!1344437 (= lt!1630347 e!2759858)))

(declare-fun c!754414 () Bool)

(assert (=> d!1344437 (= c!754414 (and ((_ is Cons!49678) (toList!3565 lm!1616)) (bvslt (_1!28062 (h!55379 (toList!3565 lm!1616))) (_1!28062 lt!1630111))))))

(assert (=> d!1344437 (isStrictlySorted!248 (toList!3565 lm!1616))))

(assert (=> d!1344437 (= (insertStrictlySorted!276 (toList!3565 lm!1616) (_1!28062 lt!1630111) (_2!28062 lt!1630111)) lt!1630347)))

(declare-fun bm!308382 () Bool)

(declare-fun call!308389 () List!49802)

(declare-fun call!308387 () List!49802)

(assert (=> bm!308382 (= call!308389 call!308387)))

(declare-fun b!4432349 () Bool)

(assert (=> b!4432349 (= e!2759861 call!308389)))

(declare-fun b!4432350 () Bool)

(assert (=> b!4432350 (= e!2759858 e!2759861)))

(declare-fun c!754413 () Bool)

(assert (=> b!4432350 (= c!754413 (and ((_ is Cons!49678) (toList!3565 lm!1616)) (= (_1!28062 (h!55379 (toList!3565 lm!1616))) (_1!28062 lt!1630111))))))

(declare-fun b!4432351 () Bool)

(assert (=> b!4432351 (= e!2759857 (contains!12213 lt!1630347 (tuple2!49537 (_1!28062 lt!1630111) (_2!28062 lt!1630111))))))

(declare-fun b!4432352 () Bool)

(declare-fun res!1833686 () Bool)

(assert (=> b!4432352 (=> (not res!1833686) (not e!2759857))))

(assert (=> b!4432352 (= res!1833686 (containsKey!1175 lt!1630347 (_1!28062 lt!1630111)))))

(declare-fun bm!308383 () Bool)

(declare-fun $colon$colon!797 (List!49802 tuple2!49536) List!49802)

(assert (=> bm!308383 (= call!308387 ($colon$colon!797 e!2759860 (ite c!754414 (h!55379 (toList!3565 lm!1616)) (tuple2!49537 (_1!28062 lt!1630111) (_2!28062 lt!1630111)))))))

(declare-fun c!754412 () Bool)

(assert (=> bm!308383 (= c!754412 c!754414)))

(declare-fun b!4432353 () Bool)

(assert (=> b!4432353 (= e!2759860 (ite c!754413 (t!356742 (toList!3565 lm!1616)) (ite c!754415 (Cons!49678 (h!55379 (toList!3565 lm!1616)) (t!356742 (toList!3565 lm!1616))) Nil!49678)))))

(declare-fun b!4432354 () Bool)

(assert (=> b!4432354 (= e!2759858 call!308387)))

(declare-fun bm!308384 () Bool)

(assert (=> bm!308384 (= call!308388 call!308389)))

(declare-fun b!4432355 () Bool)

(assert (=> b!4432355 (= e!2759859 call!308388)))

(assert (= (and d!1344437 c!754414) b!4432354))

(assert (= (and d!1344437 (not c!754414)) b!4432350))

(assert (= (and b!4432350 c!754413) b!4432349))

(assert (= (and b!4432350 (not c!754413)) b!4432347))

(assert (= (and b!4432347 c!754415) b!4432355))

(assert (= (and b!4432347 (not c!754415)) b!4432346))

(assert (= (or b!4432355 b!4432346) bm!308384))

(assert (= (or b!4432349 bm!308384) bm!308382))

(assert (= (or b!4432354 bm!308382) bm!308383))

(assert (= (and bm!308383 c!754412) b!4432348))

(assert (= (and bm!308383 (not c!754412)) b!4432353))

(assert (= (and d!1344437 res!1833687) b!4432352))

(assert (= (and b!4432352 res!1833686) b!4432351))

(declare-fun m!5116877 () Bool)

(assert (=> b!4432352 m!5116877))

(declare-fun m!5116879 () Bool)

(assert (=> b!4432348 m!5116879))

(declare-fun m!5116881 () Bool)

(assert (=> bm!308383 m!5116881))

(declare-fun m!5116883 () Bool)

(assert (=> d!1344437 m!5116883))

(assert (=> d!1344437 m!5116589))

(declare-fun m!5116885 () Bool)

(assert (=> b!4432351 m!5116885))

(assert (=> d!1344347 d!1344437))

(declare-fun d!1344439 () Bool)

(declare-fun choose!28077 (Hashable!5183 K!11045) (_ BitVec 64))

(assert (=> d!1344439 (= (hash!2208 hashF!1220 key!3717) (choose!28077 hashF!1220 key!3717))))

(declare-fun bs!760194 () Bool)

(assert (= bs!760194 d!1344439))

(declare-fun m!5116919 () Bool)

(assert (=> bs!760194 m!5116919))

(assert (=> d!1344355 d!1344439))

(declare-fun d!1344443 () Bool)

(declare-fun res!1833688 () Bool)

(declare-fun e!2759863 () Bool)

(assert (=> d!1344443 (=> res!1833688 e!2759863)))

(assert (=> d!1344443 (= res!1833688 ((_ is Nil!49678) (t!356742 (toList!3565 lm!1616))))))

(assert (=> d!1344443 (= (forall!9624 (t!356742 (toList!3565 lm!1616)) lambda!155418) e!2759863)))

(declare-fun b!4432358 () Bool)

(declare-fun e!2759864 () Bool)

(assert (=> b!4432358 (= e!2759863 e!2759864)))

(declare-fun res!1833689 () Bool)

(assert (=> b!4432358 (=> (not res!1833689) (not e!2759864))))

(assert (=> b!4432358 (= res!1833689 (dynLambda!20872 lambda!155418 (h!55379 (t!356742 (toList!3565 lm!1616)))))))

(declare-fun b!4432359 () Bool)

(assert (=> b!4432359 (= e!2759864 (forall!9624 (t!356742 (t!356742 (toList!3565 lm!1616))) lambda!155418))))

(assert (= (and d!1344443 (not res!1833688)) b!4432358))

(assert (= (and b!4432358 res!1833689) b!4432359))

(declare-fun b_lambda!143899 () Bool)

(assert (=> (not b_lambda!143899) (not b!4432358)))

(declare-fun m!5116923 () Bool)

(assert (=> b!4432358 m!5116923))

(declare-fun m!5116925 () Bool)

(assert (=> b!4432359 m!5116925))

(assert (=> b!4431982 d!1344443))

(declare-fun d!1344445 () Bool)

(declare-fun lt!1630355 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7983 (List!49802) (InoxSet tuple2!49536))

(assert (=> d!1344445 (= lt!1630355 (select (content!7983 (toList!3565 lt!1630204)) lt!1630111))))

(declare-fun e!2759878 () Bool)

(assert (=> d!1344445 (= lt!1630355 e!2759878)))

(declare-fun res!1833705 () Bool)

(assert (=> d!1344445 (=> (not res!1833705) (not e!2759878))))

(assert (=> d!1344445 (= res!1833705 ((_ is Cons!49678) (toList!3565 lt!1630204)))))

(assert (=> d!1344445 (= (contains!12213 (toList!3565 lt!1630204) lt!1630111) lt!1630355)))

(declare-fun b!4432374 () Bool)

(declare-fun e!2759879 () Bool)

(assert (=> b!4432374 (= e!2759878 e!2759879)))

(declare-fun res!1833704 () Bool)

(assert (=> b!4432374 (=> res!1833704 e!2759879)))

(assert (=> b!4432374 (= res!1833704 (= (h!55379 (toList!3565 lt!1630204)) lt!1630111))))

(declare-fun b!4432375 () Bool)

(assert (=> b!4432375 (= e!2759879 (contains!12213 (t!356742 (toList!3565 lt!1630204)) lt!1630111))))

(assert (= (and d!1344445 res!1833705) b!4432374))

(assert (= (and b!4432374 (not res!1833704)) b!4432375))

(declare-fun m!5116953 () Bool)

(assert (=> d!1344445 m!5116953))

(declare-fun m!5116955 () Bool)

(assert (=> d!1344445 m!5116955))

(declare-fun m!5116957 () Bool)

(assert (=> b!4432375 m!5116957))

(assert (=> b!4432090 d!1344445))

(declare-fun d!1344455 () Bool)

(declare-fun res!1833706 () Bool)

(declare-fun e!2759880 () Bool)

(assert (=> d!1344455 (=> res!1833706 e!2759880)))

(assert (=> d!1344455 (= res!1833706 (not ((_ is Cons!49677) (_2!28062 (tuple2!49537 hash!366 newBucket!194)))))))

(assert (=> d!1344455 (= (noDuplicateKeys!789 (_2!28062 (tuple2!49537 hash!366 newBucket!194))) e!2759880)))

(declare-fun b!4432376 () Bool)

(declare-fun e!2759881 () Bool)

(assert (=> b!4432376 (= e!2759880 e!2759881)))

(declare-fun res!1833707 () Bool)

(assert (=> b!4432376 (=> (not res!1833707) (not e!2759881))))

(assert (=> b!4432376 (= res!1833707 (not (containsKey!1176 (t!356741 (_2!28062 (tuple2!49537 hash!366 newBucket!194))) (_1!28061 (h!55378 (_2!28062 (tuple2!49537 hash!366 newBucket!194)))))))))

(declare-fun b!4432377 () Bool)

(assert (=> b!4432377 (= e!2759881 (noDuplicateKeys!789 (t!356741 (_2!28062 (tuple2!49537 hash!366 newBucket!194)))))))

(assert (= (and d!1344455 (not res!1833706)) b!4432376))

(assert (= (and b!4432376 res!1833707) b!4432377))

(declare-fun m!5116959 () Bool)

(assert (=> b!4432376 m!5116959))

(declare-fun m!5116961 () Bool)

(assert (=> b!4432377 m!5116961))

(assert (=> bs!760173 d!1344455))

(declare-fun d!1344457 () Bool)

(declare-fun isEmpty!28366 (Option!10758) Bool)

(assert (=> d!1344457 (= (isDefined!8049 (getValueByKey!744 (toList!3566 (extractMap!850 (toList!3565 lm!1616))) key!3717)) (not (isEmpty!28366 (getValueByKey!744 (toList!3566 (extractMap!850 (toList!3565 lm!1616))) key!3717))))))

(declare-fun bs!760198 () Bool)

(assert (= bs!760198 d!1344457))

(assert (=> bs!760198 m!5116651))

(declare-fun m!5116963 () Bool)

(assert (=> bs!760198 m!5116963))

(assert (=> b!4432074 d!1344457))

(declare-fun b!4432397 () Bool)

(declare-fun e!2759894 () Option!10758)

(assert (=> b!4432397 (= e!2759894 None!10757)))

(declare-fun b!4432394 () Bool)

(declare-fun e!2759893 () Option!10758)

(assert (=> b!4432394 (= e!2759893 (Some!10757 (_2!28061 (h!55378 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))))))

(declare-fun d!1344459 () Bool)

(declare-fun c!754421 () Bool)

(assert (=> d!1344459 (= c!754421 (and ((_ is Cons!49677) (toList!3566 (extractMap!850 (toList!3565 lm!1616)))) (= (_1!28061 (h!55378 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) key!3717)))))

(assert (=> d!1344459 (= (getValueByKey!744 (toList!3566 (extractMap!850 (toList!3565 lm!1616))) key!3717) e!2759893)))

(declare-fun b!4432395 () Bool)

(assert (=> b!4432395 (= e!2759893 e!2759894)))

(declare-fun c!754422 () Bool)

(assert (=> b!4432395 (= c!754422 (and ((_ is Cons!49677) (toList!3566 (extractMap!850 (toList!3565 lm!1616)))) (not (= (_1!28061 (h!55378 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) key!3717))))))

(declare-fun b!4432396 () Bool)

(assert (=> b!4432396 (= e!2759894 (getValueByKey!744 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))) key!3717))))

(assert (= (and d!1344459 c!754421) b!4432394))

(assert (= (and d!1344459 (not c!754421)) b!4432395))

(assert (= (and b!4432395 c!754422) b!4432396))

(assert (= (and b!4432395 (not c!754422)) b!4432397))

(declare-fun m!5116983 () Bool)

(assert (=> b!4432396 m!5116983))

(assert (=> b!4432074 d!1344459))

(declare-fun b!4432422 () Bool)

(assert (=> b!4432422 true))

(declare-fun bs!760206 () Bool)

(declare-fun b!4432416 () Bool)

(assert (= bs!760206 (and b!4432416 b!4432422)))

(declare-fun lambda!155497 () Int)

(declare-fun lambda!155496 () Int)

(assert (=> bs!760206 (= (= (Cons!49677 (h!55378 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))) (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) (= lambda!155497 lambda!155496))))

(assert (=> b!4432416 true))

(declare-fun bs!760207 () Bool)

(declare-fun b!4432417 () Bool)

(assert (= bs!760207 (and b!4432417 b!4432422)))

(declare-fun lambda!155498 () Int)

(assert (=> bs!760207 (= (= (toList!3566 (extractMap!850 (toList!3565 lm!1616))) (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) (= lambda!155498 lambda!155496))))

(declare-fun bs!760208 () Bool)

(assert (= bs!760208 (and b!4432417 b!4432416)))

(assert (=> bs!760208 (= (= (toList!3566 (extractMap!850 (toList!3565 lm!1616))) (Cons!49677 (h!55378 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))) (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))) (= lambda!155498 lambda!155497))))

(assert (=> b!4432417 true))

(declare-fun e!2759903 () List!49804)

(assert (=> b!4432416 (= e!2759903 (Cons!49680 (_1!28061 (h!55378 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) (getKeysList!268 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))))))

(declare-fun c!754431 () Bool)

(assert (=> b!4432416 (= c!754431 (containsKey!1174 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))) (_1!28061 (h!55378 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))))))

(declare-fun lt!1630376 () Unit!82777)

(declare-fun e!2759905 () Unit!82777)

(assert (=> b!4432416 (= lt!1630376 e!2759905)))

(declare-fun c!754429 () Bool)

(assert (=> b!4432416 (= c!754429 (contains!12212 (getKeysList!268 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) (_1!28061 (h!55378 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))))))

(declare-fun lt!1630375 () Unit!82777)

(declare-fun e!2759904 () Unit!82777)

(assert (=> b!4432416 (= lt!1630375 e!2759904)))

(declare-fun lt!1630372 () List!49804)

(assert (=> b!4432416 (= lt!1630372 (getKeysList!268 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))))))

(declare-fun lt!1630373 () Unit!82777)

(declare-fun lemmaForallContainsAddHeadPreserves!88 (List!49801 List!49804 tuple2!49534) Unit!82777)

(assert (=> b!4432416 (= lt!1630373 (lemmaForallContainsAddHeadPreserves!88 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))) lt!1630372 (h!55378 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))))))

(declare-fun forall!9628 (List!49804 Int) Bool)

(assert (=> b!4432416 (forall!9628 lt!1630372 lambda!155497)))

(declare-fun lt!1630371 () Unit!82777)

(assert (=> b!4432416 (= lt!1630371 lt!1630373)))

(declare-fun b!4432418 () Bool)

(assert (=> b!4432418 false))

(declare-fun Unit!82802 () Unit!82777)

(assert (=> b!4432418 (= e!2759905 Unit!82802)))

(declare-fun b!4432419 () Bool)

(declare-fun Unit!82803 () Unit!82777)

(assert (=> b!4432419 (= e!2759904 Unit!82803)))

(declare-fun b!4432420 () Bool)

(assert (=> b!4432420 (= e!2759903 Nil!49680)))

(declare-fun b!4432421 () Bool)

(declare-fun Unit!82804 () Unit!82777)

(assert (=> b!4432421 (= e!2759905 Unit!82804)))

(assert (=> b!4432422 false))

(declare-fun lt!1630374 () Unit!82777)

(declare-fun forallContained!2116 (List!49804 Int K!11045) Unit!82777)

(assert (=> b!4432422 (= lt!1630374 (forallContained!2116 (getKeysList!268 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) lambda!155496 (_1!28061 (h!55378 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))))))

(declare-fun Unit!82805 () Unit!82777)

(assert (=> b!4432422 (= e!2759904 Unit!82805)))

(declare-fun b!4432423 () Bool)

(declare-fun lambda!155499 () Int)

(declare-fun e!2759906 () Bool)

(declare-fun lt!1630370 () List!49804)

(declare-fun content!7984 (List!49804) (InoxSet K!11045))

(declare-fun map!10858 (List!49801 Int) List!49804)

(assert (=> b!4432423 (= e!2759906 (= (content!7984 lt!1630370) (content!7984 (map!10858 (toList!3566 (extractMap!850 (toList!3565 lm!1616))) lambda!155499))))))

(declare-fun b!4432424 () Bool)

(declare-fun res!1833720 () Bool)

(assert (=> b!4432424 (=> (not res!1833720) (not e!2759906))))

(declare-fun length!188 (List!49804) Int)

(declare-fun length!189 (List!49801) Int)

(assert (=> b!4432424 (= res!1833720 (= (length!188 lt!1630370) (length!189 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))))))

(declare-fun d!1344477 () Bool)

(assert (=> d!1344477 e!2759906))

(declare-fun res!1833719 () Bool)

(assert (=> d!1344477 (=> (not res!1833719) (not e!2759906))))

(declare-fun noDuplicate!666 (List!49804) Bool)

(assert (=> d!1344477 (= res!1833719 (noDuplicate!666 lt!1630370))))

(assert (=> d!1344477 (= lt!1630370 e!2759903)))

(declare-fun c!754430 () Bool)

(assert (=> d!1344477 (= c!754430 ((_ is Cons!49677) (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))))

(assert (=> d!1344477 (invariantList!821 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))))

(assert (=> d!1344477 (= (getKeysList!268 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))) lt!1630370)))

(declare-fun res!1833718 () Bool)

(assert (=> b!4432417 (=> (not res!1833718) (not e!2759906))))

(assert (=> b!4432417 (= res!1833718 (forall!9628 lt!1630370 lambda!155498))))

(assert (= (and d!1344477 c!754430) b!4432416))

(assert (= (and d!1344477 (not c!754430)) b!4432420))

(assert (= (and b!4432416 c!754431) b!4432418))

(assert (= (and b!4432416 (not c!754431)) b!4432421))

(assert (= (and b!4432416 c!754429) b!4432422))

(assert (= (and b!4432416 (not c!754429)) b!4432419))

(assert (= (and d!1344477 res!1833719) b!4432424))

(assert (= (and b!4432424 res!1833720) b!4432417))

(assert (= (and b!4432417 res!1833718) b!4432423))

(declare-fun m!5116985 () Bool)

(assert (=> b!4432423 m!5116985))

(declare-fun m!5116987 () Bool)

(assert (=> b!4432423 m!5116987))

(assert (=> b!4432423 m!5116987))

(declare-fun m!5116989 () Bool)

(assert (=> b!4432423 m!5116989))

(declare-fun m!5116991 () Bool)

(assert (=> b!4432422 m!5116991))

(assert (=> b!4432422 m!5116991))

(declare-fun m!5116993 () Bool)

(assert (=> b!4432422 m!5116993))

(declare-fun m!5116995 () Bool)

(assert (=> b!4432417 m!5116995))

(declare-fun m!5116997 () Bool)

(assert (=> d!1344477 m!5116997))

(declare-fun m!5116999 () Bool)

(assert (=> d!1344477 m!5116999))

(declare-fun m!5117001 () Bool)

(assert (=> b!4432424 m!5117001))

(declare-fun m!5117003 () Bool)

(assert (=> b!4432424 m!5117003))

(assert (=> b!4432416 m!5116991))

(declare-fun m!5117005 () Bool)

(assert (=> b!4432416 m!5117005))

(declare-fun m!5117007 () Bool)

(assert (=> b!4432416 m!5117007))

(assert (=> b!4432416 m!5116991))

(declare-fun m!5117009 () Bool)

(assert (=> b!4432416 m!5117009))

(declare-fun m!5117011 () Bool)

(assert (=> b!4432416 m!5117011))

(assert (=> b!4432072 d!1344477))

(declare-fun b!4432430 () Bool)

(declare-fun e!2759908 () Option!10757)

(assert (=> b!4432430 (= e!2759908 None!10756)))

(declare-fun d!1344479 () Bool)

(declare-fun c!754432 () Bool)

(assert (=> d!1344479 (= c!754432 (and ((_ is Cons!49678) (toList!3565 lt!1630204)) (= (_1!28062 (h!55379 (toList!3565 lt!1630204))) (_1!28062 lt!1630111))))))

(declare-fun e!2759907 () Option!10757)

(assert (=> d!1344479 (= (getValueByKey!743 (toList!3565 lt!1630204) (_1!28062 lt!1630111)) e!2759907)))

(declare-fun b!4432429 () Bool)

(assert (=> b!4432429 (= e!2759908 (getValueByKey!743 (t!356742 (toList!3565 lt!1630204)) (_1!28062 lt!1630111)))))

(declare-fun b!4432428 () Bool)

(assert (=> b!4432428 (= e!2759907 e!2759908)))

(declare-fun c!754433 () Bool)

(assert (=> b!4432428 (= c!754433 (and ((_ is Cons!49678) (toList!3565 lt!1630204)) (not (= (_1!28062 (h!55379 (toList!3565 lt!1630204))) (_1!28062 lt!1630111)))))))

(declare-fun b!4432427 () Bool)

(assert (=> b!4432427 (= e!2759907 (Some!10756 (_2!28062 (h!55379 (toList!3565 lt!1630204)))))))

(assert (= (and d!1344479 c!754432) b!4432427))

(assert (= (and d!1344479 (not c!754432)) b!4432428))

(assert (= (and b!4432428 c!754433) b!4432429))

(assert (= (and b!4432428 (not c!754433)) b!4432430))

(declare-fun m!5117013 () Bool)

(assert (=> b!4432429 m!5117013))

(assert (=> b!4432089 d!1344479))

(declare-fun bs!760209 () Bool)

(declare-fun b!4432438 () Bool)

(assert (= bs!760209 (and b!4432438 b!4432422)))

(declare-fun lambda!155504 () Int)

(assert (=> bs!760209 (= (= (toList!3566 (extractMap!850 (toList!3565 lm!1616))) (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) (= lambda!155504 lambda!155496))))

(declare-fun bs!760210 () Bool)

(assert (= bs!760210 (and b!4432438 b!4432416)))

(assert (=> bs!760210 (= (= (toList!3566 (extractMap!850 (toList!3565 lm!1616))) (Cons!49677 (h!55378 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))) (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))) (= lambda!155504 lambda!155497))))

(declare-fun bs!760211 () Bool)

(assert (= bs!760211 (and b!4432438 b!4432417)))

(assert (=> bs!760211 (= lambda!155504 lambda!155498)))

(assert (=> b!4432438 true))

(declare-fun bs!760212 () Bool)

(declare-fun b!4432439 () Bool)

(assert (= bs!760212 (and b!4432439 b!4432423)))

(declare-fun lambda!155505 () Int)

(assert (=> bs!760212 (= lambda!155505 lambda!155499)))

(declare-fun d!1344481 () Bool)

(declare-fun e!2759911 () Bool)

(assert (=> d!1344481 e!2759911))

(declare-fun res!1833727 () Bool)

(assert (=> d!1344481 (=> (not res!1833727) (not e!2759911))))

(declare-fun lt!1630379 () List!49804)

(assert (=> d!1344481 (= res!1833727 (noDuplicate!666 lt!1630379))))

(assert (=> d!1344481 (= lt!1630379 (getKeysList!268 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))))

(assert (=> d!1344481 (= (keys!16986 (extractMap!850 (toList!3565 lm!1616))) lt!1630379)))

(declare-fun b!4432437 () Bool)

(declare-fun res!1833729 () Bool)

(assert (=> b!4432437 (=> (not res!1833729) (not e!2759911))))

(assert (=> b!4432437 (= res!1833729 (= (length!188 lt!1630379) (length!189 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))))))

(declare-fun res!1833728 () Bool)

(assert (=> b!4432438 (=> (not res!1833728) (not e!2759911))))

(assert (=> b!4432438 (= res!1833728 (forall!9628 lt!1630379 lambda!155504))))

(assert (=> b!4432439 (= e!2759911 (= (content!7984 lt!1630379) (content!7984 (map!10858 (toList!3566 (extractMap!850 (toList!3565 lm!1616))) lambda!155505))))))

(assert (= (and d!1344481 res!1833727) b!4432437))

(assert (= (and b!4432437 res!1833729) b!4432438))

(assert (= (and b!4432438 res!1833728) b!4432439))

(declare-fun m!5117015 () Bool)

(assert (=> d!1344481 m!5117015))

(assert (=> d!1344481 m!5116663))

(declare-fun m!5117017 () Bool)

(assert (=> b!4432437 m!5117017))

(assert (=> b!4432437 m!5117003))

(declare-fun m!5117019 () Bool)

(assert (=> b!4432438 m!5117019))

(declare-fun m!5117021 () Bool)

(assert (=> b!4432439 m!5117021))

(declare-fun m!5117023 () Bool)

(assert (=> b!4432439 m!5117023))

(assert (=> b!4432439 m!5117023))

(declare-fun m!5117025 () Bool)

(assert (=> b!4432439 m!5117025))

(assert (=> b!4432073 d!1344481))

(declare-fun d!1344483 () Bool)

(declare-fun res!1833734 () Bool)

(declare-fun e!2759916 () Bool)

(assert (=> d!1344483 (=> res!1833734 e!2759916)))

(assert (=> d!1344483 (= res!1833734 ((_ is Nil!49677) newBucket!194))))

(assert (=> d!1344483 (= (forall!9626 newBucket!194 lambda!155436) e!2759916)))

(declare-fun b!4432446 () Bool)

(declare-fun e!2759917 () Bool)

(assert (=> b!4432446 (= e!2759916 e!2759917)))

(declare-fun res!1833735 () Bool)

(assert (=> b!4432446 (=> (not res!1833735) (not e!2759917))))

(declare-fun dynLambda!20874 (Int tuple2!49534) Bool)

(assert (=> b!4432446 (= res!1833735 (dynLambda!20874 lambda!155436 (h!55378 newBucket!194)))))

(declare-fun b!4432447 () Bool)

(assert (=> b!4432447 (= e!2759917 (forall!9626 (t!356741 newBucket!194) lambda!155436))))

(assert (= (and d!1344483 (not res!1833734)) b!4432446))

(assert (= (and b!4432446 res!1833735) b!4432447))

(declare-fun b_lambda!143917 () Bool)

(assert (=> (not b_lambda!143917) (not b!4432446)))

(declare-fun m!5117027 () Bool)

(assert (=> b!4432446 m!5117027))

(declare-fun m!5117029 () Bool)

(assert (=> b!4432447 m!5117029))

(assert (=> d!1344359 d!1344483))

(declare-fun d!1344485 () Bool)

(declare-fun res!1833736 () Bool)

(declare-fun e!2759918 () Bool)

(assert (=> d!1344485 (=> res!1833736 e!2759918)))

(assert (=> d!1344485 (= res!1833736 ((_ is Nil!49678) (toList!3565 lm!1616)))))

(assert (=> d!1344485 (= (forall!9624 (toList!3565 lm!1616) lambda!155433) e!2759918)))

(declare-fun b!4432448 () Bool)

(declare-fun e!2759919 () Bool)

(assert (=> b!4432448 (= e!2759918 e!2759919)))

(declare-fun res!1833737 () Bool)

(assert (=> b!4432448 (=> (not res!1833737) (not e!2759919))))

(assert (=> b!4432448 (= res!1833737 (dynLambda!20872 lambda!155433 (h!55379 (toList!3565 lm!1616))))))

(declare-fun b!4432449 () Bool)

(assert (=> b!4432449 (= e!2759919 (forall!9624 (t!356742 (toList!3565 lm!1616)) lambda!155433))))

(assert (= (and d!1344485 (not res!1833736)) b!4432448))

(assert (= (and b!4432448 res!1833737) b!4432449))

(declare-fun b_lambda!143919 () Bool)

(assert (=> (not b_lambda!143919) (not b!4432448)))

(declare-fun m!5117031 () Bool)

(assert (=> b!4432448 m!5117031))

(declare-fun m!5117033 () Bool)

(assert (=> b!4432449 m!5117033))

(assert (=> d!1344343 d!1344485))

(declare-fun d!1344487 () Bool)

(declare-fun res!1833742 () Bool)

(declare-fun e!2759924 () Bool)

(assert (=> d!1344487 (=> res!1833742 e!2759924)))

(assert (=> d!1344487 (= res!1833742 (and ((_ is Cons!49678) (toList!3565 lm!1616)) (= (_1!28062 (h!55379 (toList!3565 lm!1616))) hash!366)))))

(assert (=> d!1344487 (= (containsKey!1175 (toList!3565 lm!1616) hash!366) e!2759924)))

(declare-fun b!4432454 () Bool)

(declare-fun e!2759925 () Bool)

(assert (=> b!4432454 (= e!2759924 e!2759925)))

(declare-fun res!1833743 () Bool)

(assert (=> b!4432454 (=> (not res!1833743) (not e!2759925))))

(assert (=> b!4432454 (= res!1833743 (and (or (not ((_ is Cons!49678) (toList!3565 lm!1616))) (bvsle (_1!28062 (h!55379 (toList!3565 lm!1616))) hash!366)) ((_ is Cons!49678) (toList!3565 lm!1616)) (bvslt (_1!28062 (h!55379 (toList!3565 lm!1616))) hash!366)))))

(declare-fun b!4432455 () Bool)

(assert (=> b!4432455 (= e!2759925 (containsKey!1175 (t!356742 (toList!3565 lm!1616)) hash!366))))

(assert (= (and d!1344487 (not res!1833742)) b!4432454))

(assert (= (and b!4432454 res!1833743) b!4432455))

(declare-fun m!5117035 () Bool)

(assert (=> b!4432455 m!5117035))

(assert (=> d!1344351 d!1344487))

(declare-fun d!1344489 () Bool)

(declare-fun noDuplicatedKeys!182 (List!49801) Bool)

(assert (=> d!1344489 (= (invariantList!821 (toList!3566 lt!1630194)) (noDuplicatedKeys!182 (toList!3566 lt!1630194)))))

(declare-fun bs!760213 () Bool)

(assert (= bs!760213 d!1344489))

(declare-fun m!5117037 () Bool)

(assert (=> bs!760213 m!5117037))

(assert (=> d!1344341 d!1344489))

(declare-fun d!1344491 () Bool)

(declare-fun res!1833744 () Bool)

(declare-fun e!2759926 () Bool)

(assert (=> d!1344491 (=> res!1833744 e!2759926)))

(assert (=> d!1344491 (= res!1833744 ((_ is Nil!49678) (toList!3565 lm!1616)))))

(assert (=> d!1344491 (= (forall!9624 (toList!3565 lm!1616) lambda!155430) e!2759926)))

(declare-fun b!4432456 () Bool)

(declare-fun e!2759927 () Bool)

(assert (=> b!4432456 (= e!2759926 e!2759927)))

(declare-fun res!1833745 () Bool)

(assert (=> b!4432456 (=> (not res!1833745) (not e!2759927))))

(assert (=> b!4432456 (= res!1833745 (dynLambda!20872 lambda!155430 (h!55379 (toList!3565 lm!1616))))))

(declare-fun b!4432457 () Bool)

(assert (=> b!4432457 (= e!2759927 (forall!9624 (t!356742 (toList!3565 lm!1616)) lambda!155430))))

(assert (= (and d!1344491 (not res!1833744)) b!4432456))

(assert (= (and b!4432456 res!1833745) b!4432457))

(declare-fun b_lambda!143921 () Bool)

(assert (=> (not b_lambda!143921) (not b!4432456)))

(declare-fun m!5117039 () Bool)

(assert (=> b!4432456 m!5117039))

(declare-fun m!5117041 () Bool)

(assert (=> b!4432457 m!5117041))

(assert (=> d!1344341 d!1344491))

(declare-fun d!1344493 () Bool)

(assert (=> d!1344493 (isDefined!8050 (getValueByKey!743 (toList!3565 lm!1616) hash!366))))

(declare-fun lt!1630382 () Unit!82777)

(declare-fun choose!28078 (List!49802 (_ BitVec 64)) Unit!82777)

(assert (=> d!1344493 (= lt!1630382 (choose!28078 (toList!3565 lm!1616) hash!366))))

(declare-fun e!2759930 () Bool)

(assert (=> d!1344493 e!2759930))

(declare-fun res!1833748 () Bool)

(assert (=> d!1344493 (=> (not res!1833748) (not e!2759930))))

(assert (=> d!1344493 (= res!1833748 (isStrictlySorted!248 (toList!3565 lm!1616)))))

(assert (=> d!1344493 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!653 (toList!3565 lm!1616) hash!366) lt!1630382)))

(declare-fun b!4432460 () Bool)

(assert (=> b!4432460 (= e!2759930 (containsKey!1175 (toList!3565 lm!1616) hash!366))))

(assert (= (and d!1344493 res!1833748) b!4432460))

(assert (=> d!1344493 m!5116559))

(assert (=> d!1344493 m!5116559))

(assert (=> d!1344493 m!5116703))

(declare-fun m!5117043 () Bool)

(assert (=> d!1344493 m!5117043))

(assert (=> d!1344493 m!5116589))

(assert (=> b!4432460 m!5116699))

(assert (=> b!4432101 d!1344493))

(declare-fun d!1344495 () Bool)

(declare-fun isEmpty!28367 (Option!10757) Bool)

(assert (=> d!1344495 (= (isDefined!8050 (getValueByKey!743 (toList!3565 lm!1616) hash!366)) (not (isEmpty!28367 (getValueByKey!743 (toList!3565 lm!1616) hash!366))))))

(declare-fun bs!760214 () Bool)

(assert (= bs!760214 d!1344495))

(assert (=> bs!760214 m!5116559))

(declare-fun m!5117045 () Bool)

(assert (=> bs!760214 m!5117045))

(assert (=> b!4432101 d!1344495))

(declare-fun b!4432464 () Bool)

(declare-fun e!2759932 () Option!10757)

(assert (=> b!4432464 (= e!2759932 None!10756)))

(declare-fun d!1344497 () Bool)

(declare-fun c!754434 () Bool)

(assert (=> d!1344497 (= c!754434 (and ((_ is Cons!49678) (toList!3565 lm!1616)) (= (_1!28062 (h!55379 (toList!3565 lm!1616))) hash!366)))))

(declare-fun e!2759931 () Option!10757)

(assert (=> d!1344497 (= (getValueByKey!743 (toList!3565 lm!1616) hash!366) e!2759931)))

(declare-fun b!4432463 () Bool)

(assert (=> b!4432463 (= e!2759932 (getValueByKey!743 (t!356742 (toList!3565 lm!1616)) hash!366))))

(declare-fun b!4432462 () Bool)

(assert (=> b!4432462 (= e!2759931 e!2759932)))

(declare-fun c!754435 () Bool)

(assert (=> b!4432462 (= c!754435 (and ((_ is Cons!49678) (toList!3565 lm!1616)) (not (= (_1!28062 (h!55379 (toList!3565 lm!1616))) hash!366))))))

(declare-fun b!4432461 () Bool)

(assert (=> b!4432461 (= e!2759931 (Some!10756 (_2!28062 (h!55379 (toList!3565 lm!1616)))))))

(assert (= (and d!1344497 c!754434) b!4432461))

(assert (= (and d!1344497 (not c!754434)) b!4432462))

(assert (= (and b!4432462 c!754435) b!4432463))

(assert (= (and b!4432462 (not c!754435)) b!4432464))

(declare-fun m!5117047 () Bool)

(assert (=> b!4432463 m!5117047))

(assert (=> b!4432101 d!1344497))

(declare-fun d!1344499 () Bool)

(declare-fun lt!1630385 () Bool)

(assert (=> d!1344499 (= lt!1630385 (select (content!7984 (keys!16986 (extractMap!850 (toList!3565 lm!1616)))) key!3717))))

(declare-fun e!2759938 () Bool)

(assert (=> d!1344499 (= lt!1630385 e!2759938)))

(declare-fun res!1833754 () Bool)

(assert (=> d!1344499 (=> (not res!1833754) (not e!2759938))))

(assert (=> d!1344499 (= res!1833754 ((_ is Cons!49680) (keys!16986 (extractMap!850 (toList!3565 lm!1616)))))))

(assert (=> d!1344499 (= (contains!12212 (keys!16986 (extractMap!850 (toList!3565 lm!1616))) key!3717) lt!1630385)))

(declare-fun b!4432469 () Bool)

(declare-fun e!2759937 () Bool)

(assert (=> b!4432469 (= e!2759938 e!2759937)))

(declare-fun res!1833753 () Bool)

(assert (=> b!4432469 (=> res!1833753 e!2759937)))

(assert (=> b!4432469 (= res!1833753 (= (h!55383 (keys!16986 (extractMap!850 (toList!3565 lm!1616)))) key!3717))))

(declare-fun b!4432470 () Bool)

(assert (=> b!4432470 (= e!2759937 (contains!12212 (t!356744 (keys!16986 (extractMap!850 (toList!3565 lm!1616)))) key!3717))))

(assert (= (and d!1344499 res!1833754) b!4432469))

(assert (= (and b!4432469 (not res!1833753)) b!4432470))

(assert (=> d!1344499 m!5116645))

(declare-fun m!5117049 () Bool)

(assert (=> d!1344499 m!5117049))

(declare-fun m!5117051 () Bool)

(assert (=> d!1344499 m!5117051))

(declare-fun m!5117053 () Bool)

(assert (=> b!4432470 m!5117053))

(assert (=> b!4432070 d!1344499))

(assert (=> b!4432070 d!1344481))

(declare-fun d!1344501 () Bool)

(declare-fun res!1833755 () Bool)

(declare-fun e!2759939 () Bool)

(assert (=> d!1344501 (=> res!1833755 e!2759939)))

(assert (=> d!1344501 (= res!1833755 ((_ is Nil!49678) (t!356742 (toList!3565 lt!1630110))))))

(assert (=> d!1344501 (= (forall!9624 (t!356742 (toList!3565 lt!1630110)) lambda!155418) e!2759939)))

(declare-fun b!4432471 () Bool)

(declare-fun e!2759940 () Bool)

(assert (=> b!4432471 (= e!2759939 e!2759940)))

(declare-fun res!1833756 () Bool)

(assert (=> b!4432471 (=> (not res!1833756) (not e!2759940))))

(assert (=> b!4432471 (= res!1833756 (dynLambda!20872 lambda!155418 (h!55379 (t!356742 (toList!3565 lt!1630110)))))))

(declare-fun b!4432472 () Bool)

(assert (=> b!4432472 (= e!2759940 (forall!9624 (t!356742 (t!356742 (toList!3565 lt!1630110))) lambda!155418))))

(assert (= (and d!1344501 (not res!1833755)) b!4432471))

(assert (= (and b!4432471 res!1833756) b!4432472))

(declare-fun b_lambda!143923 () Bool)

(assert (=> (not b_lambda!143923) (not b!4432471)))

(declare-fun m!5117055 () Bool)

(assert (=> b!4432471 m!5117055))

(declare-fun m!5117057 () Bool)

(assert (=> b!4432472 m!5117057))

(assert (=> b!4432084 d!1344501))

(assert (=> b!4432103 d!1344495))

(assert (=> b!4432103 d!1344497))

(declare-fun d!1344503 () Bool)

(assert (=> d!1344503 (isDefined!8049 (getValueByKey!744 (toList!3566 (extractMap!850 (toList!3565 lm!1616))) key!3717))))

(declare-fun lt!1630388 () Unit!82777)

(declare-fun choose!28079 (List!49801 K!11045) Unit!82777)

(assert (=> d!1344503 (= lt!1630388 (choose!28079 (toList!3566 (extractMap!850 (toList!3565 lm!1616))) key!3717))))

(assert (=> d!1344503 (invariantList!821 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))))

(assert (=> d!1344503 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!652 (toList!3566 (extractMap!850 (toList!3565 lm!1616))) key!3717) lt!1630388)))

(declare-fun bs!760215 () Bool)

(assert (= bs!760215 d!1344503))

(assert (=> bs!760215 m!5116651))

(assert (=> bs!760215 m!5116651))

(assert (=> bs!760215 m!5116653))

(declare-fun m!5117059 () Bool)

(assert (=> bs!760215 m!5117059))

(assert (=> bs!760215 m!5116999))

(assert (=> b!4432068 d!1344503))

(assert (=> b!4432068 d!1344457))

(assert (=> b!4432068 d!1344459))

(declare-fun d!1344505 () Bool)

(assert (=> d!1344505 (contains!12212 (getKeysList!268 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))) key!3717)))

(declare-fun lt!1630391 () Unit!82777)

(declare-fun choose!28080 (List!49801 K!11045) Unit!82777)

(assert (=> d!1344505 (= lt!1630391 (choose!28080 (toList!3566 (extractMap!850 (toList!3565 lm!1616))) key!3717))))

(assert (=> d!1344505 (invariantList!821 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))))

(assert (=> d!1344505 (= (lemmaInListThenGetKeysListContains!265 (toList!3566 (extractMap!850 (toList!3565 lm!1616))) key!3717) lt!1630391)))

(declare-fun bs!760216 () Bool)

(assert (= bs!760216 d!1344505))

(assert (=> bs!760216 m!5116663))

(assert (=> bs!760216 m!5116663))

(declare-fun m!5117061 () Bool)

(assert (=> bs!760216 m!5117061))

(declare-fun m!5117063 () Bool)

(assert (=> bs!760216 m!5117063))

(assert (=> bs!760216 m!5116999))

(assert (=> b!4432068 d!1344505))

(declare-fun d!1344507 () Bool)

(declare-fun res!1833761 () Bool)

(declare-fun e!2759945 () Bool)

(assert (=> d!1344507 (=> res!1833761 e!2759945)))

(assert (=> d!1344507 (= res!1833761 (and ((_ is Cons!49677) (t!356741 newBucket!194)) (= (_1!28061 (h!55378 (t!356741 newBucket!194))) (_1!28061 (h!55378 newBucket!194)))))))

(assert (=> d!1344507 (= (containsKey!1176 (t!356741 newBucket!194) (_1!28061 (h!55378 newBucket!194))) e!2759945)))

(declare-fun b!4432477 () Bool)

(declare-fun e!2759946 () Bool)

(assert (=> b!4432477 (= e!2759945 e!2759946)))

(declare-fun res!1833762 () Bool)

(assert (=> b!4432477 (=> (not res!1833762) (not e!2759946))))

(assert (=> b!4432477 (= res!1833762 ((_ is Cons!49677) (t!356741 newBucket!194)))))

(declare-fun b!4432478 () Bool)

(assert (=> b!4432478 (= e!2759946 (containsKey!1176 (t!356741 (t!356741 newBucket!194)) (_1!28061 (h!55378 newBucket!194))))))

(assert (= (and d!1344507 (not res!1833761)) b!4432477))

(assert (= (and b!4432477 res!1833762) b!4432478))

(declare-fun m!5117065 () Bool)

(assert (=> b!4432478 m!5117065))

(assert (=> b!4432108 d!1344507))

(declare-fun d!1344509 () Bool)

(declare-fun res!1833763 () Bool)

(declare-fun e!2759947 () Bool)

(assert (=> d!1344509 (=> res!1833763 e!2759947)))

(assert (=> d!1344509 (= res!1833763 (not ((_ is Cons!49677) (_2!28062 (h!55379 (toList!3565 lt!1630110))))))))

(assert (=> d!1344509 (= (noDuplicateKeys!789 (_2!28062 (h!55379 (toList!3565 lt!1630110)))) e!2759947)))

(declare-fun b!4432479 () Bool)

(declare-fun e!2759948 () Bool)

(assert (=> b!4432479 (= e!2759947 e!2759948)))

(declare-fun res!1833764 () Bool)

(assert (=> b!4432479 (=> (not res!1833764) (not e!2759948))))

(assert (=> b!4432479 (= res!1833764 (not (containsKey!1176 (t!356741 (_2!28062 (h!55379 (toList!3565 lt!1630110)))) (_1!28061 (h!55378 (_2!28062 (h!55379 (toList!3565 lt!1630110))))))))))

(declare-fun b!4432480 () Bool)

(assert (=> b!4432480 (= e!2759948 (noDuplicateKeys!789 (t!356741 (_2!28062 (h!55379 (toList!3565 lt!1630110))))))))

(assert (= (and d!1344509 (not res!1833763)) b!4432479))

(assert (= (and b!4432479 res!1833764) b!4432480))

(declare-fun m!5117067 () Bool)

(assert (=> b!4432479 m!5117067))

(declare-fun m!5117069 () Bool)

(assert (=> b!4432480 m!5117069))

(assert (=> bs!760172 d!1344509))

(declare-fun d!1344511 () Bool)

(declare-fun lt!1630392 () Bool)

(assert (=> d!1344511 (= lt!1630392 (select (content!7984 e!2759692) key!3717))))

(declare-fun e!2759950 () Bool)

(assert (=> d!1344511 (= lt!1630392 e!2759950)))

(declare-fun res!1833766 () Bool)

(assert (=> d!1344511 (=> (not res!1833766) (not e!2759950))))

(assert (=> d!1344511 (= res!1833766 ((_ is Cons!49680) e!2759692))))

(assert (=> d!1344511 (= (contains!12212 e!2759692 key!3717) lt!1630392)))

(declare-fun b!4432481 () Bool)

(declare-fun e!2759949 () Bool)

(assert (=> b!4432481 (= e!2759950 e!2759949)))

(declare-fun res!1833765 () Bool)

(assert (=> b!4432481 (=> res!1833765 e!2759949)))

(assert (=> b!4432481 (= res!1833765 (= (h!55383 e!2759692) key!3717))))

(declare-fun b!4432482 () Bool)

(assert (=> b!4432482 (= e!2759949 (contains!12212 (t!356744 e!2759692) key!3717))))

(assert (= (and d!1344511 res!1833766) b!4432481))

(assert (= (and b!4432481 (not res!1833765)) b!4432482))

(declare-fun m!5117071 () Bool)

(assert (=> d!1344511 m!5117071))

(declare-fun m!5117073 () Bool)

(assert (=> d!1344511 m!5117073))

(declare-fun m!5117075 () Bool)

(assert (=> b!4432482 m!5117075))

(assert (=> bm!308357 d!1344511))

(declare-fun d!1344513 () Bool)

(declare-fun res!1833767 () Bool)

(declare-fun e!2759951 () Bool)

(assert (=> d!1344513 (=> res!1833767 e!2759951)))

(assert (=> d!1344513 (= res!1833767 (not ((_ is Cons!49677) (t!356741 newBucket!194))))))

(assert (=> d!1344513 (= (noDuplicateKeys!789 (t!356741 newBucket!194)) e!2759951)))

(declare-fun b!4432483 () Bool)

(declare-fun e!2759952 () Bool)

(assert (=> b!4432483 (= e!2759951 e!2759952)))

(declare-fun res!1833768 () Bool)

(assert (=> b!4432483 (=> (not res!1833768) (not e!2759952))))

(assert (=> b!4432483 (= res!1833768 (not (containsKey!1176 (t!356741 (t!356741 newBucket!194)) (_1!28061 (h!55378 (t!356741 newBucket!194))))))))

(declare-fun b!4432484 () Bool)

(assert (=> b!4432484 (= e!2759952 (noDuplicateKeys!789 (t!356741 (t!356741 newBucket!194))))))

(assert (= (and d!1344513 (not res!1833767)) b!4432483))

(assert (= (and b!4432483 res!1833768) b!4432484))

(declare-fun m!5117077 () Bool)

(assert (=> b!4432483 m!5117077))

(declare-fun m!5117079 () Bool)

(assert (=> b!4432484 m!5117079))

(assert (=> b!4432109 d!1344513))

(declare-fun d!1344515 () Bool)

(assert (=> d!1344515 (= (get!16195 (getValueByKey!743 (toList!3565 lm!1616) hash!366)) (v!43958 (getValueByKey!743 (toList!3565 lm!1616) hash!366)))))

(assert (=> d!1344301 d!1344515))

(assert (=> d!1344301 d!1344497))

(declare-fun bs!760217 () Bool)

(declare-fun b!4432499 () Bool)

(assert (= bs!760217 (and b!4432499 d!1344359)))

(declare-fun lambda!155534 () Int)

(assert (=> bs!760217 (not (= lambda!155534 lambda!155436))))

(assert (=> b!4432499 true))

(declare-fun bs!760218 () Bool)

(declare-fun b!4432497 () Bool)

(assert (= bs!760218 (and b!4432497 d!1344359)))

(declare-fun lambda!155535 () Int)

(assert (=> bs!760218 (not (= lambda!155535 lambda!155436))))

(declare-fun bs!760219 () Bool)

(assert (= bs!760219 (and b!4432497 b!4432499)))

(assert (=> bs!760219 (= lambda!155535 lambda!155534)))

(assert (=> b!4432497 true))

(declare-fun lambda!155536 () Int)

(assert (=> bs!760218 (not (= lambda!155536 lambda!155436))))

(declare-fun lt!1630447 () ListMap!2809)

(assert (=> bs!760219 (= (= lt!1630447 (extractMap!850 (t!356742 (toList!3565 lm!1616)))) (= lambda!155536 lambda!155534))))

(assert (=> b!4432497 (= (= lt!1630447 (extractMap!850 (t!356742 (toList!3565 lm!1616)))) (= lambda!155536 lambda!155535))))

(assert (=> b!4432497 true))

(declare-fun bs!760220 () Bool)

(declare-fun d!1344517 () Bool)

(assert (= bs!760220 (and d!1344517 d!1344359)))

(declare-fun lambda!155537 () Int)

(assert (=> bs!760220 (not (= lambda!155537 lambda!155436))))

(declare-fun bs!760221 () Bool)

(assert (= bs!760221 (and d!1344517 b!4432499)))

(declare-fun lt!1630435 () ListMap!2809)

(assert (=> bs!760221 (= (= lt!1630435 (extractMap!850 (t!356742 (toList!3565 lm!1616)))) (= lambda!155537 lambda!155534))))

(declare-fun bs!760222 () Bool)

(assert (= bs!760222 (and d!1344517 b!4432497)))

(assert (=> bs!760222 (= (= lt!1630435 (extractMap!850 (t!356742 (toList!3565 lm!1616)))) (= lambda!155537 lambda!155535))))

(assert (=> bs!760222 (= (= lt!1630435 lt!1630447) (= lambda!155537 lambda!155536))))

(assert (=> d!1344517 true))

(declare-fun e!2759961 () Bool)

(assert (=> d!1344517 e!2759961))

(declare-fun res!1833776 () Bool)

(assert (=> d!1344517 (=> (not res!1833776) (not e!2759961))))

(assert (=> d!1344517 (= res!1833776 (forall!9626 (_2!28062 (h!55379 (toList!3565 lm!1616))) lambda!155537))))

(declare-fun e!2759960 () ListMap!2809)

(assert (=> d!1344517 (= lt!1630435 e!2759960)))

(declare-fun c!754438 () Bool)

(assert (=> d!1344517 (= c!754438 ((_ is Nil!49677) (_2!28062 (h!55379 (toList!3565 lm!1616)))))))

(assert (=> d!1344517 (noDuplicateKeys!789 (_2!28062 (h!55379 (toList!3565 lm!1616))))))

(assert (=> d!1344517 (= (addToMapMapFromBucket!414 (_2!28062 (h!55379 (toList!3565 lm!1616))) (extractMap!850 (t!356742 (toList!3565 lm!1616)))) lt!1630435)))

(declare-fun bm!308391 () Bool)

(declare-fun call!308398 () Bool)

(assert (=> bm!308391 (= call!308398 (forall!9626 (ite c!754438 (toList!3566 (extractMap!850 (t!356742 (toList!3565 lm!1616)))) (_2!28062 (h!55379 (toList!3565 lm!1616)))) (ite c!754438 lambda!155534 lambda!155536)))))

(declare-fun b!4432495 () Bool)

(assert (=> b!4432495 (= e!2759961 (invariantList!821 (toList!3566 lt!1630435)))))

(declare-fun b!4432496 () Bool)

(declare-fun res!1833775 () Bool)

(assert (=> b!4432496 (=> (not res!1833775) (not e!2759961))))

(assert (=> b!4432496 (= res!1833775 (forall!9626 (toList!3566 (extractMap!850 (t!356742 (toList!3565 lm!1616)))) lambda!155537))))

(declare-fun bm!308392 () Bool)

(declare-fun call!308397 () Unit!82777)

(declare-fun lemmaContainsAllItsOwnKeys!189 (ListMap!2809) Unit!82777)

(assert (=> bm!308392 (= call!308397 (lemmaContainsAllItsOwnKeys!189 (extractMap!850 (t!356742 (toList!3565 lm!1616)))))))

(assert (=> b!4432497 (= e!2759960 lt!1630447)))

(declare-fun lt!1630455 () ListMap!2809)

(declare-fun +!1149 (ListMap!2809 tuple2!49534) ListMap!2809)

(assert (=> b!4432497 (= lt!1630455 (+!1149 (extractMap!850 (t!356742 (toList!3565 lm!1616))) (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616))))))))

(assert (=> b!4432497 (= lt!1630447 (addToMapMapFromBucket!414 (t!356741 (_2!28062 (h!55379 (toList!3565 lm!1616)))) (+!1149 (extractMap!850 (t!356742 (toList!3565 lm!1616))) (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))))))

(declare-fun lt!1630443 () Unit!82777)

(assert (=> b!4432497 (= lt!1630443 call!308397)))

(assert (=> b!4432497 (forall!9626 (toList!3566 (extractMap!850 (t!356742 (toList!3565 lm!1616)))) lambda!155535)))

(declare-fun lt!1630441 () Unit!82777)

(assert (=> b!4432497 (= lt!1630441 lt!1630443)))

(declare-fun call!308396 () Bool)

(assert (=> b!4432497 call!308396))

(declare-fun lt!1630438 () Unit!82777)

(declare-fun Unit!82806 () Unit!82777)

(assert (=> b!4432497 (= lt!1630438 Unit!82806)))

(assert (=> b!4432497 (forall!9626 (t!356741 (_2!28062 (h!55379 (toList!3565 lm!1616)))) lambda!155536)))

(declare-fun lt!1630444 () Unit!82777)

(declare-fun Unit!82807 () Unit!82777)

(assert (=> b!4432497 (= lt!1630444 Unit!82807)))

(declare-fun lt!1630439 () Unit!82777)

(declare-fun Unit!82808 () Unit!82777)

(assert (=> b!4432497 (= lt!1630439 Unit!82808)))

(declare-fun lt!1630442 () Unit!82777)

(declare-fun forallContained!2117 (List!49801 Int tuple2!49534) Unit!82777)

(assert (=> b!4432497 (= lt!1630442 (forallContained!2117 (toList!3566 lt!1630455) lambda!155536 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616))))))))

(assert (=> b!4432497 (contains!12208 lt!1630455 (_1!28061 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616))))))))

(declare-fun lt!1630437 () Unit!82777)

(declare-fun Unit!82809 () Unit!82777)

(assert (=> b!4432497 (= lt!1630437 Unit!82809)))

(assert (=> b!4432497 (contains!12208 lt!1630447 (_1!28061 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616))))))))

(declare-fun lt!1630440 () Unit!82777)

(declare-fun Unit!82810 () Unit!82777)

(assert (=> b!4432497 (= lt!1630440 Unit!82810)))

(assert (=> b!4432497 call!308398))

(declare-fun lt!1630451 () Unit!82777)

(declare-fun Unit!82811 () Unit!82777)

(assert (=> b!4432497 (= lt!1630451 Unit!82811)))

(assert (=> b!4432497 (forall!9626 (toList!3566 lt!1630455) lambda!155536)))

(declare-fun lt!1630446 () Unit!82777)

(declare-fun Unit!82812 () Unit!82777)

(assert (=> b!4432497 (= lt!1630446 Unit!82812)))

(declare-fun lt!1630445 () Unit!82777)

(declare-fun Unit!82813 () Unit!82777)

(assert (=> b!4432497 (= lt!1630445 Unit!82813)))

(declare-fun lt!1630449 () Unit!82777)

(declare-fun addForallContainsKeyThenBeforeAdding!189 (ListMap!2809 ListMap!2809 K!11045 V!11291) Unit!82777)

(assert (=> b!4432497 (= lt!1630449 (addForallContainsKeyThenBeforeAdding!189 (extractMap!850 (t!356742 (toList!3565 lm!1616))) lt!1630447 (_1!28061 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616))))) (_2!28061 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))))))

(assert (=> b!4432497 (forall!9626 (toList!3566 (extractMap!850 (t!356742 (toList!3565 lm!1616)))) lambda!155536)))

(declare-fun lt!1630436 () Unit!82777)

(assert (=> b!4432497 (= lt!1630436 lt!1630449)))

(assert (=> b!4432497 (forall!9626 (toList!3566 (extractMap!850 (t!356742 (toList!3565 lm!1616)))) lambda!155536)))

(declare-fun lt!1630448 () Unit!82777)

(declare-fun Unit!82814 () Unit!82777)

(assert (=> b!4432497 (= lt!1630448 Unit!82814)))

(declare-fun res!1833777 () Bool)

(assert (=> b!4432497 (= res!1833777 (forall!9626 (_2!28062 (h!55379 (toList!3565 lm!1616))) lambda!155536))))

(declare-fun e!2759959 () Bool)

(assert (=> b!4432497 (=> (not res!1833777) (not e!2759959))))

(assert (=> b!4432497 e!2759959))

(declare-fun lt!1630453 () Unit!82777)

(declare-fun Unit!82815 () Unit!82777)

(assert (=> b!4432497 (= lt!1630453 Unit!82815)))

(declare-fun b!4432498 () Bool)

(assert (=> b!4432498 (= e!2759959 (forall!9626 (toList!3566 (extractMap!850 (t!356742 (toList!3565 lm!1616)))) lambda!155536))))

(declare-fun bm!308393 () Bool)

(assert (=> bm!308393 (= call!308396 (forall!9626 (ite c!754438 (toList!3566 (extractMap!850 (t!356742 (toList!3565 lm!1616)))) (toList!3566 lt!1630455)) (ite c!754438 lambda!155534 lambda!155536)))))

(assert (=> b!4432499 (= e!2759960 (extractMap!850 (t!356742 (toList!3565 lm!1616))))))

(declare-fun lt!1630454 () Unit!82777)

(assert (=> b!4432499 (= lt!1630454 call!308397)))

(assert (=> b!4432499 call!308398))

(declare-fun lt!1630452 () Unit!82777)

(assert (=> b!4432499 (= lt!1630452 lt!1630454)))

(assert (=> b!4432499 call!308396))

(declare-fun lt!1630450 () Unit!82777)

(declare-fun Unit!82816 () Unit!82777)

(assert (=> b!4432499 (= lt!1630450 Unit!82816)))

(assert (= (and d!1344517 c!754438) b!4432499))

(assert (= (and d!1344517 (not c!754438)) b!4432497))

(assert (= (and b!4432497 res!1833777) b!4432498))

(assert (= (or b!4432499 b!4432497) bm!308392))

(assert (= (or b!4432499 b!4432497) bm!308393))

(assert (= (or b!4432499 b!4432497) bm!308391))

(assert (= (and d!1344517 res!1833776) b!4432496))

(assert (= (and b!4432496 res!1833775) b!4432495))

(declare-fun m!5117081 () Bool)

(assert (=> b!4432496 m!5117081))

(declare-fun m!5117083 () Bool)

(assert (=> bm!308393 m!5117083))

(declare-fun m!5117085 () Bool)

(assert (=> bm!308391 m!5117085))

(declare-fun m!5117087 () Bool)

(assert (=> b!4432497 m!5117087))

(declare-fun m!5117089 () Bool)

(assert (=> b!4432497 m!5117089))

(declare-fun m!5117091 () Bool)

(assert (=> b!4432497 m!5117091))

(assert (=> b!4432497 m!5116669))

(declare-fun m!5117093 () Bool)

(assert (=> b!4432497 m!5117093))

(assert (=> b!4432497 m!5116669))

(assert (=> b!4432497 m!5117089))

(declare-fun m!5117095 () Bool)

(assert (=> b!4432497 m!5117095))

(declare-fun m!5117097 () Bool)

(assert (=> b!4432497 m!5117097))

(declare-fun m!5117099 () Bool)

(assert (=> b!4432497 m!5117099))

(declare-fun m!5117101 () Bool)

(assert (=> b!4432497 m!5117101))

(declare-fun m!5117103 () Bool)

(assert (=> b!4432497 m!5117103))

(assert (=> b!4432497 m!5117101))

(declare-fun m!5117105 () Bool)

(assert (=> b!4432497 m!5117105))

(declare-fun m!5117107 () Bool)

(assert (=> b!4432497 m!5117107))

(declare-fun m!5117109 () Bool)

(assert (=> b!4432495 m!5117109))

(assert (=> bm!308392 m!5116669))

(declare-fun m!5117111 () Bool)

(assert (=> bm!308392 m!5117111))

(assert (=> b!4432498 m!5117101))

(declare-fun m!5117113 () Bool)

(assert (=> d!1344517 m!5117113))

(assert (=> d!1344517 m!5116713))

(assert (=> b!4432079 d!1344517))

(declare-fun bs!760223 () Bool)

(declare-fun d!1344519 () Bool)

(assert (= bs!760223 (and d!1344519 start!432912)))

(declare-fun lambda!155538 () Int)

(assert (=> bs!760223 (= lambda!155538 lambda!155418)))

(declare-fun bs!760224 () Bool)

(assert (= bs!760224 (and d!1344519 d!1344341)))

(assert (=> bs!760224 (= lambda!155538 lambda!155430)))

(declare-fun bs!760225 () Bool)

(assert (= bs!760225 (and d!1344519 d!1344343)))

(assert (=> bs!760225 (not (= lambda!155538 lambda!155433))))

(declare-fun lt!1630456 () ListMap!2809)

(assert (=> d!1344519 (invariantList!821 (toList!3566 lt!1630456))))

(declare-fun e!2759962 () ListMap!2809)

(assert (=> d!1344519 (= lt!1630456 e!2759962)))

(declare-fun c!754439 () Bool)

(assert (=> d!1344519 (= c!754439 ((_ is Cons!49678) (t!356742 (toList!3565 lm!1616))))))

(assert (=> d!1344519 (forall!9624 (t!356742 (toList!3565 lm!1616)) lambda!155538)))

(assert (=> d!1344519 (= (extractMap!850 (t!356742 (toList!3565 lm!1616))) lt!1630456)))

(declare-fun b!4432502 () Bool)

(assert (=> b!4432502 (= e!2759962 (addToMapMapFromBucket!414 (_2!28062 (h!55379 (t!356742 (toList!3565 lm!1616)))) (extractMap!850 (t!356742 (t!356742 (toList!3565 lm!1616))))))))

(declare-fun b!4432503 () Bool)

(assert (=> b!4432503 (= e!2759962 (ListMap!2810 Nil!49677))))

(assert (= (and d!1344519 c!754439) b!4432502))

(assert (= (and d!1344519 (not c!754439)) b!4432503))

(declare-fun m!5117115 () Bool)

(assert (=> d!1344519 m!5117115))

(declare-fun m!5117117 () Bool)

(assert (=> d!1344519 m!5117117))

(declare-fun m!5117119 () Bool)

(assert (=> b!4432502 m!5117119))

(assert (=> b!4432502 m!5117119))

(declare-fun m!5117121 () Bool)

(assert (=> b!4432502 m!5117121))

(assert (=> b!4432079 d!1344519))

(declare-fun d!1344521 () Bool)

(declare-fun res!1833778 () Bool)

(declare-fun e!2759963 () Bool)

(assert (=> d!1344521 (=> res!1833778 e!2759963)))

(assert (=> d!1344521 (= res!1833778 (not ((_ is Cons!49677) (_2!28062 (h!55379 (toList!3565 lm!1616))))))))

(assert (=> d!1344521 (= (noDuplicateKeys!789 (_2!28062 (h!55379 (toList!3565 lm!1616)))) e!2759963)))

(declare-fun b!4432504 () Bool)

(declare-fun e!2759964 () Bool)

(assert (=> b!4432504 (= e!2759963 e!2759964)))

(declare-fun res!1833779 () Bool)

(assert (=> b!4432504 (=> (not res!1833779) (not e!2759964))))

(assert (=> b!4432504 (= res!1833779 (not (containsKey!1176 (t!356741 (_2!28062 (h!55379 (toList!3565 lm!1616)))) (_1!28061 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616))))))))))

(declare-fun b!4432505 () Bool)

(assert (=> b!4432505 (= e!2759964 (noDuplicateKeys!789 (t!356741 (_2!28062 (h!55379 (toList!3565 lm!1616))))))))

(assert (= (and d!1344521 (not res!1833778)) b!4432504))

(assert (= (and b!4432504 res!1833779) b!4432505))

(declare-fun m!5117123 () Bool)

(assert (=> b!4432504 m!5117123))

(declare-fun m!5117125 () Bool)

(assert (=> b!4432505 m!5117125))

(assert (=> bs!760171 d!1344521))

(declare-fun d!1344523 () Bool)

(declare-fun res!1833784 () Bool)

(declare-fun e!2759969 () Bool)

(assert (=> d!1344523 (=> res!1833784 e!2759969)))

(assert (=> d!1344523 (= res!1833784 (or ((_ is Nil!49678) (toList!3565 lm!1616)) ((_ is Nil!49678) (t!356742 (toList!3565 lm!1616)))))))

(assert (=> d!1344523 (= (isStrictlySorted!248 (toList!3565 lm!1616)) e!2759969)))

(declare-fun b!4432510 () Bool)

(declare-fun e!2759970 () Bool)

(assert (=> b!4432510 (= e!2759969 e!2759970)))

(declare-fun res!1833785 () Bool)

(assert (=> b!4432510 (=> (not res!1833785) (not e!2759970))))

(assert (=> b!4432510 (= res!1833785 (bvslt (_1!28062 (h!55379 (toList!3565 lm!1616))) (_1!28062 (h!55379 (t!356742 (toList!3565 lm!1616))))))))

(declare-fun b!4432511 () Bool)

(assert (=> b!4432511 (= e!2759970 (isStrictlySorted!248 (t!356742 (toList!3565 lm!1616))))))

(assert (= (and d!1344523 (not res!1833784)) b!4432510))

(assert (= (and b!4432510 res!1833785) b!4432511))

(declare-fun m!5117127 () Bool)

(assert (=> b!4432511 m!5117127))

(assert (=> d!1344311 d!1344523))

(declare-fun d!1344525 () Bool)

(declare-fun res!1833790 () Bool)

(declare-fun e!2759975 () Bool)

(assert (=> d!1344525 (=> res!1833790 e!2759975)))

(assert (=> d!1344525 (= res!1833790 (and ((_ is Cons!49677) (toList!3566 (extractMap!850 (toList!3565 lm!1616)))) (= (_1!28061 (h!55378 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) key!3717)))))

(assert (=> d!1344525 (= (containsKey!1174 (toList!3566 (extractMap!850 (toList!3565 lm!1616))) key!3717) e!2759975)))

(declare-fun b!4432516 () Bool)

(declare-fun e!2759976 () Bool)

(assert (=> b!4432516 (= e!2759975 e!2759976)))

(declare-fun res!1833791 () Bool)

(assert (=> b!4432516 (=> (not res!1833791) (not e!2759976))))

(assert (=> b!4432516 (= res!1833791 ((_ is Cons!49677) (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))))

(declare-fun b!4432517 () Bool)

(assert (=> b!4432517 (= e!2759976 (containsKey!1174 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))) key!3717))))

(assert (= (and d!1344525 (not res!1833790)) b!4432516))

(assert (= (and b!4432516 res!1833791) b!4432517))

(declare-fun m!5117129 () Bool)

(assert (=> b!4432517 m!5117129))

(assert (=> d!1344317 d!1344525))

(assert (=> b!4432067 d!1344525))

(declare-fun d!1344527 () Bool)

(assert (=> d!1344527 (containsKey!1174 (toList!3566 (extractMap!850 (toList!3565 lm!1616))) key!3717)))

(declare-fun lt!1630459 () Unit!82777)

(declare-fun choose!28081 (List!49801 K!11045) Unit!82777)

(assert (=> d!1344527 (= lt!1630459 (choose!28081 (toList!3566 (extractMap!850 (toList!3565 lm!1616))) key!3717))))

(assert (=> d!1344527 (invariantList!821 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))))

(assert (=> d!1344527 (= (lemmaInGetKeysListThenContainsKey!266 (toList!3566 (extractMap!850 (toList!3565 lm!1616))) key!3717) lt!1630459)))

(declare-fun bs!760226 () Bool)

(assert (= bs!760226 d!1344527))

(assert (=> bs!760226 m!5116659))

(declare-fun m!5117131 () Bool)

(assert (=> bs!760226 m!5117131))

(assert (=> bs!760226 m!5116999))

(assert (=> b!4432067 d!1344527))

(declare-fun d!1344529 () Bool)

(declare-fun res!1833792 () Bool)

(declare-fun e!2759977 () Bool)

(assert (=> d!1344529 (=> res!1833792 e!2759977)))

(assert (=> d!1344529 (= res!1833792 ((_ is Nil!49678) (toList!3565 (+!1147 lm!1616 (tuple2!49537 hash!366 newBucket!194)))))))

(assert (=> d!1344529 (= (forall!9624 (toList!3565 (+!1147 lm!1616 (tuple2!49537 hash!366 newBucket!194))) lambda!155418) e!2759977)))

(declare-fun b!4432518 () Bool)

(declare-fun e!2759978 () Bool)

(assert (=> b!4432518 (= e!2759977 e!2759978)))

(declare-fun res!1833793 () Bool)

(assert (=> b!4432518 (=> (not res!1833793) (not e!2759978))))

(assert (=> b!4432518 (= res!1833793 (dynLambda!20872 lambda!155418 (h!55379 (toList!3565 (+!1147 lm!1616 (tuple2!49537 hash!366 newBucket!194))))))))

(declare-fun b!4432519 () Bool)

(assert (=> b!4432519 (= e!2759978 (forall!9624 (t!356742 (toList!3565 (+!1147 lm!1616 (tuple2!49537 hash!366 newBucket!194)))) lambda!155418))))

(assert (= (and d!1344529 (not res!1833792)) b!4432518))

(assert (= (and b!4432518 res!1833793) b!4432519))

(declare-fun b_lambda!143925 () Bool)

(assert (=> (not b_lambda!143925) (not b!4432518)))

(declare-fun m!5117133 () Bool)

(assert (=> b!4432518 m!5117133))

(declare-fun m!5117135 () Bool)

(assert (=> b!4432519 m!5117135))

(assert (=> d!1344349 d!1344529))

(declare-fun d!1344531 () Bool)

(declare-fun e!2759979 () Bool)

(assert (=> d!1344531 e!2759979))

(declare-fun res!1833794 () Bool)

(assert (=> d!1344531 (=> (not res!1833794) (not e!2759979))))

(declare-fun lt!1630461 () ListLongMap!2215)

(assert (=> d!1344531 (= res!1833794 (contains!12209 lt!1630461 (_1!28062 (tuple2!49537 hash!366 newBucket!194))))))

(declare-fun lt!1630460 () List!49802)

(assert (=> d!1344531 (= lt!1630461 (ListLongMap!2216 lt!1630460))))

(declare-fun lt!1630463 () Unit!82777)

(declare-fun lt!1630462 () Unit!82777)

(assert (=> d!1344531 (= lt!1630463 lt!1630462)))

(assert (=> d!1344531 (= (getValueByKey!743 lt!1630460 (_1!28062 (tuple2!49537 hash!366 newBucket!194))) (Some!10756 (_2!28062 (tuple2!49537 hash!366 newBucket!194))))))

(assert (=> d!1344531 (= lt!1630462 (lemmaContainsTupThenGetReturnValue!475 lt!1630460 (_1!28062 (tuple2!49537 hash!366 newBucket!194)) (_2!28062 (tuple2!49537 hash!366 newBucket!194))))))

(assert (=> d!1344531 (= lt!1630460 (insertStrictlySorted!276 (toList!3565 lm!1616) (_1!28062 (tuple2!49537 hash!366 newBucket!194)) (_2!28062 (tuple2!49537 hash!366 newBucket!194))))))

(assert (=> d!1344531 (= (+!1147 lm!1616 (tuple2!49537 hash!366 newBucket!194)) lt!1630461)))

(declare-fun b!4432520 () Bool)

(declare-fun res!1833795 () Bool)

(assert (=> b!4432520 (=> (not res!1833795) (not e!2759979))))

(assert (=> b!4432520 (= res!1833795 (= (getValueByKey!743 (toList!3565 lt!1630461) (_1!28062 (tuple2!49537 hash!366 newBucket!194))) (Some!10756 (_2!28062 (tuple2!49537 hash!366 newBucket!194)))))))

(declare-fun b!4432521 () Bool)

(assert (=> b!4432521 (= e!2759979 (contains!12213 (toList!3565 lt!1630461) (tuple2!49537 hash!366 newBucket!194)))))

(assert (= (and d!1344531 res!1833794) b!4432520))

(assert (= (and b!4432520 res!1833795) b!4432521))

(declare-fun m!5117137 () Bool)

(assert (=> d!1344531 m!5117137))

(declare-fun m!5117139 () Bool)

(assert (=> d!1344531 m!5117139))

(declare-fun m!5117141 () Bool)

(assert (=> d!1344531 m!5117141))

(declare-fun m!5117143 () Bool)

(assert (=> d!1344531 m!5117143))

(declare-fun m!5117145 () Bool)

(assert (=> b!4432520 m!5117145))

(declare-fun m!5117147 () Bool)

(assert (=> b!4432521 m!5117147))

(assert (=> d!1344349 d!1344531))

(declare-fun d!1344533 () Bool)

(assert (=> d!1344533 (forall!9624 (toList!3565 (+!1147 lm!1616 (tuple2!49537 hash!366 newBucket!194))) lambda!155418)))

(assert (=> d!1344533 true))

(declare-fun _$31!412 () Unit!82777)

(assert (=> d!1344533 (= (choose!28069 lm!1616 lambda!155418 hash!366 newBucket!194) _$31!412)))

(declare-fun bs!760227 () Bool)

(assert (= bs!760227 d!1344533))

(assert (=> bs!760227 m!5116691))

(assert (=> bs!760227 m!5116693))

(assert (=> d!1344349 d!1344533))

(assert (=> d!1344349 d!1344307))

(assert (=> b!4432066 d!1344499))

(assert (=> b!4432066 d!1344481))

(declare-fun e!2759980 () Bool)

(declare-fun tp!1333635 () Bool)

(declare-fun b!4432523 () Bool)

(assert (=> b!4432523 (= e!2759980 (and tp_is_empty!26403 tp_is_empty!26401 tp!1333635))))

(assert (=> b!4432118 (= tp!1333624 e!2759980)))

(assert (= (and b!4432118 ((_ is Cons!49677) (t!356741 (t!356741 newBucket!194)))) b!4432523))

(declare-fun e!2759981 () Bool)

(declare-fun b!4432524 () Bool)

(declare-fun tp!1333636 () Bool)

(assert (=> b!4432524 (= e!2759981 (and tp_is_empty!26403 tp_is_empty!26401 tp!1333636))))

(assert (=> b!4432123 (= tp!1333629 e!2759981)))

(assert (= (and b!4432123 ((_ is Cons!49677) (_2!28062 (h!55379 (toList!3565 lm!1616))))) b!4432524))

(declare-fun b!4432525 () Bool)

(declare-fun e!2759982 () Bool)

(declare-fun tp!1333637 () Bool)

(declare-fun tp!1333638 () Bool)

(assert (=> b!4432525 (= e!2759982 (and tp!1333637 tp!1333638))))

(assert (=> b!4432123 (= tp!1333630 e!2759982)))

(assert (= (and b!4432123 ((_ is Cons!49678) (t!356742 (toList!3565 lm!1616)))) b!4432525))

(declare-fun b_lambda!143927 () Bool)

(assert (= b_lambda!143923 (or start!432912 b_lambda!143927)))

(declare-fun bs!760228 () Bool)

(declare-fun d!1344535 () Bool)

(assert (= bs!760228 (and d!1344535 start!432912)))

(assert (=> bs!760228 (= (dynLambda!20872 lambda!155418 (h!55379 (t!356742 (toList!3565 lt!1630110)))) (noDuplicateKeys!789 (_2!28062 (h!55379 (t!356742 (toList!3565 lt!1630110))))))))

(declare-fun m!5117149 () Bool)

(assert (=> bs!760228 m!5117149))

(assert (=> b!4432471 d!1344535))

(declare-fun b_lambda!143929 () Bool)

(assert (= b_lambda!143917 (or d!1344359 b_lambda!143929)))

(declare-fun bs!760229 () Bool)

(declare-fun d!1344537 () Bool)

(assert (= bs!760229 (and d!1344537 d!1344359)))

(assert (=> bs!760229 (= (dynLambda!20874 lambda!155436 (h!55378 newBucket!194)) (= (hash!2206 hashF!1220 (_1!28061 (h!55378 newBucket!194))) hash!366))))

(declare-fun m!5117151 () Bool)

(assert (=> bs!760229 m!5117151))

(assert (=> b!4432446 d!1344537))

(declare-fun b_lambda!143931 () Bool)

(assert (= b_lambda!143899 (or start!432912 b_lambda!143931)))

(declare-fun bs!760230 () Bool)

(declare-fun d!1344539 () Bool)

(assert (= bs!760230 (and d!1344539 start!432912)))

(assert (=> bs!760230 (= (dynLambda!20872 lambda!155418 (h!55379 (t!356742 (toList!3565 lm!1616)))) (noDuplicateKeys!789 (_2!28062 (h!55379 (t!356742 (toList!3565 lm!1616))))))))

(declare-fun m!5117153 () Bool)

(assert (=> bs!760230 m!5117153))

(assert (=> b!4432358 d!1344539))

(declare-fun b_lambda!143933 () Bool)

(assert (= b_lambda!143919 (or d!1344343 b_lambda!143933)))

(declare-fun bs!760231 () Bool)

(declare-fun d!1344541 () Bool)

(assert (= bs!760231 (and d!1344541 d!1344343)))

(assert (=> bs!760231 (= (dynLambda!20872 lambda!155433 (h!55379 (toList!3565 lm!1616))) (allKeysSameHash!749 (_2!28062 (h!55379 (toList!3565 lm!1616))) (_1!28062 (h!55379 (toList!3565 lm!1616))) hashF!1220))))

(declare-fun m!5117155 () Bool)

(assert (=> bs!760231 m!5117155))

(assert (=> b!4432448 d!1344541))

(declare-fun b_lambda!143935 () Bool)

(assert (= b_lambda!143921 (or d!1344341 b_lambda!143935)))

(declare-fun bs!760232 () Bool)

(declare-fun d!1344543 () Bool)

(assert (= bs!760232 (and d!1344543 d!1344341)))

(assert (=> bs!760232 (= (dynLambda!20872 lambda!155430 (h!55379 (toList!3565 lm!1616))) (noDuplicateKeys!789 (_2!28062 (h!55379 (toList!3565 lm!1616)))))))

(assert (=> bs!760232 m!5116713))

(assert (=> b!4432456 d!1344543))

(declare-fun b_lambda!143937 () Bool)

(assert (= b_lambda!143925 (or start!432912 b_lambda!143937)))

(declare-fun bs!760233 () Bool)

(declare-fun d!1344545 () Bool)

(assert (= bs!760233 (and d!1344545 start!432912)))

(assert (=> bs!760233 (= (dynLambda!20872 lambda!155418 (h!55379 (toList!3565 (+!1147 lm!1616 (tuple2!49537 hash!366 newBucket!194))))) (noDuplicateKeys!789 (_2!28062 (h!55379 (toList!3565 (+!1147 lm!1616 (tuple2!49537 hash!366 newBucket!194)))))))))

(declare-fun m!5117157 () Bool)

(assert (=> bs!760233 m!5117157))

(assert (=> b!4432518 d!1344545))

(check-sat (not b!4432396) (not b_lambda!143937) (not bm!308383) (not bs!760231) (not b!4432478) (not b!4432437) (not d!1344517) (not d!1344437) (not b!4432301) (not b!4432472) (not b!4432352) (not b!4432524) (not b!4432482) (not b!4432376) (not b!4432502) (not b!4432290) (not b!4432470) (not b!4432479) (not d!1344511) (not bm!308392) (not d!1344481) (not b!4432455) (not b!4432312) (not d!1344499) (not b!4432449) (not b!4432348) (not b!4432480) (not b!4432525) (not d!1344489) (not b!4432505) (not b!4432417) (not d!1344505) (not b!4432457) (not b!4432498) (not b!4432439) tp_is_empty!26403 (not b!4432359) (not bs!760228) (not b!4432511) (not b!4432460) (not b!4432497) (not b!4432483) (not d!1344477) (not b!4432288) (not b_lambda!143933) (not b!4432521) (not d!1344493) (not b!4432416) (not b!4432351) (not b!4432423) (not d!1344435) (not d!1344533) (not d!1344531) (not bm!308391) (not b!4432463) (not b!4432484) (not b!4432495) (not b!4432424) (not bs!760232) (not b!4432519) (not b!4432438) (not d!1344527) (not b!4432375) (not b_lambda!143929) (not b!4432447) (not d!1344439) (not b!4432517) (not bs!760229) (not b!4432311) (not b_lambda!143935) (not b!4432422) (not b!4432496) (not b_lambda!143931) (not b!4432523) tp_is_empty!26401 (not b_lambda!143927) (not d!1344503) (not d!1344431) (not b_lambda!143885) (not bm!308393) (not b!4432520) (not b!4432429) (not b!4432504) (not bs!760233) (not b_lambda!143887) (not d!1344457) (not b!4432377) (not bs!760230) (not b_lambda!143889) (not d!1344445) (not d!1344519) (not d!1344495))
(check-sat)
(get-model)

(declare-fun d!1344697 () Bool)

(declare-fun res!1833908 () Bool)

(declare-fun e!2760121 () Bool)

(assert (=> d!1344697 (=> res!1833908 e!2760121)))

(assert (=> d!1344697 (= res!1833908 ((_ is Nil!49680) lt!1630379))))

(assert (=> d!1344697 (= (forall!9628 lt!1630379 lambda!155504) e!2760121)))

(declare-fun b!4432716 () Bool)

(declare-fun e!2760122 () Bool)

(assert (=> b!4432716 (= e!2760121 e!2760122)))

(declare-fun res!1833909 () Bool)

(assert (=> b!4432716 (=> (not res!1833909) (not e!2760122))))

(declare-fun dynLambda!20877 (Int K!11045) Bool)

(assert (=> b!4432716 (= res!1833909 (dynLambda!20877 lambda!155504 (h!55383 lt!1630379)))))

(declare-fun b!4432717 () Bool)

(assert (=> b!4432717 (= e!2760122 (forall!9628 (t!356744 lt!1630379) lambda!155504))))

(assert (= (and d!1344697 (not res!1833908)) b!4432716))

(assert (= (and b!4432716 res!1833909) b!4432717))

(declare-fun b_lambda!143975 () Bool)

(assert (=> (not b_lambda!143975) (not b!4432716)))

(declare-fun m!5117503 () Bool)

(assert (=> b!4432716 m!5117503))

(declare-fun m!5117505 () Bool)

(assert (=> b!4432717 m!5117505))

(assert (=> b!4432438 d!1344697))

(declare-fun d!1344699 () Bool)

(assert (=> d!1344699 (= (hash!2206 hashF!1220 (_1!28061 (h!55378 newBucket!194))) (hash!2208 hashF!1220 (_1!28061 (h!55378 newBucket!194))))))

(declare-fun bs!760336 () Bool)

(assert (= bs!760336 d!1344699))

(declare-fun m!5117507 () Bool)

(assert (=> bs!760336 m!5117507))

(assert (=> bs!760229 d!1344699))

(declare-fun d!1344701 () Bool)

(declare-fun e!2760124 () Bool)

(assert (=> d!1344701 e!2760124))

(declare-fun res!1833910 () Bool)

(assert (=> d!1344701 (=> res!1833910 e!2760124)))

(declare-fun lt!1630565 () Bool)

(assert (=> d!1344701 (= res!1833910 (not lt!1630565))))

(declare-fun lt!1630567 () Bool)

(assert (=> d!1344701 (= lt!1630565 lt!1630567)))

(declare-fun lt!1630564 () Unit!82777)

(declare-fun e!2760123 () Unit!82777)

(assert (=> d!1344701 (= lt!1630564 e!2760123)))

(declare-fun c!754479 () Bool)

(assert (=> d!1344701 (= c!754479 lt!1630567)))

(assert (=> d!1344701 (= lt!1630567 (containsKey!1175 (toList!3565 lt!1630461) (_1!28062 (tuple2!49537 hash!366 newBucket!194))))))

(assert (=> d!1344701 (= (contains!12209 lt!1630461 (_1!28062 (tuple2!49537 hash!366 newBucket!194))) lt!1630565)))

(declare-fun b!4432718 () Bool)

(declare-fun lt!1630566 () Unit!82777)

(assert (=> b!4432718 (= e!2760123 lt!1630566)))

(assert (=> b!4432718 (= lt!1630566 (lemmaContainsKeyImpliesGetValueByKeyDefined!653 (toList!3565 lt!1630461) (_1!28062 (tuple2!49537 hash!366 newBucket!194))))))

(assert (=> b!4432718 (isDefined!8050 (getValueByKey!743 (toList!3565 lt!1630461) (_1!28062 (tuple2!49537 hash!366 newBucket!194))))))

(declare-fun b!4432719 () Bool)

(declare-fun Unit!82821 () Unit!82777)

(assert (=> b!4432719 (= e!2760123 Unit!82821)))

(declare-fun b!4432720 () Bool)

(assert (=> b!4432720 (= e!2760124 (isDefined!8050 (getValueByKey!743 (toList!3565 lt!1630461) (_1!28062 (tuple2!49537 hash!366 newBucket!194)))))))

(assert (= (and d!1344701 c!754479) b!4432718))

(assert (= (and d!1344701 (not c!754479)) b!4432719))

(assert (= (and d!1344701 (not res!1833910)) b!4432720))

(declare-fun m!5117509 () Bool)

(assert (=> d!1344701 m!5117509))

(declare-fun m!5117511 () Bool)

(assert (=> b!4432718 m!5117511))

(assert (=> b!4432718 m!5117145))

(assert (=> b!4432718 m!5117145))

(declare-fun m!5117513 () Bool)

(assert (=> b!4432718 m!5117513))

(assert (=> b!4432720 m!5117145))

(assert (=> b!4432720 m!5117145))

(assert (=> b!4432720 m!5117513))

(assert (=> d!1344531 d!1344701))

(declare-fun b!4432724 () Bool)

(declare-fun e!2760126 () Option!10757)

(assert (=> b!4432724 (= e!2760126 None!10756)))

(declare-fun d!1344703 () Bool)

(declare-fun c!754480 () Bool)

(assert (=> d!1344703 (= c!754480 (and ((_ is Cons!49678) lt!1630460) (= (_1!28062 (h!55379 lt!1630460)) (_1!28062 (tuple2!49537 hash!366 newBucket!194)))))))

(declare-fun e!2760125 () Option!10757)

(assert (=> d!1344703 (= (getValueByKey!743 lt!1630460 (_1!28062 (tuple2!49537 hash!366 newBucket!194))) e!2760125)))

(declare-fun b!4432723 () Bool)

(assert (=> b!4432723 (= e!2760126 (getValueByKey!743 (t!356742 lt!1630460) (_1!28062 (tuple2!49537 hash!366 newBucket!194))))))

(declare-fun b!4432722 () Bool)

(assert (=> b!4432722 (= e!2760125 e!2760126)))

(declare-fun c!754481 () Bool)

(assert (=> b!4432722 (= c!754481 (and ((_ is Cons!49678) lt!1630460) (not (= (_1!28062 (h!55379 lt!1630460)) (_1!28062 (tuple2!49537 hash!366 newBucket!194))))))))

(declare-fun b!4432721 () Bool)

(assert (=> b!4432721 (= e!2760125 (Some!10756 (_2!28062 (h!55379 lt!1630460))))))

(assert (= (and d!1344703 c!754480) b!4432721))

(assert (= (and d!1344703 (not c!754480)) b!4432722))

(assert (= (and b!4432722 c!754481) b!4432723))

(assert (= (and b!4432722 (not c!754481)) b!4432724))

(declare-fun m!5117515 () Bool)

(assert (=> b!4432723 m!5117515))

(assert (=> d!1344531 d!1344703))

(declare-fun d!1344705 () Bool)

(assert (=> d!1344705 (= (getValueByKey!743 lt!1630460 (_1!28062 (tuple2!49537 hash!366 newBucket!194))) (Some!10756 (_2!28062 (tuple2!49537 hash!366 newBucket!194))))))

(declare-fun lt!1630568 () Unit!82777)

(assert (=> d!1344705 (= lt!1630568 (choose!28076 lt!1630460 (_1!28062 (tuple2!49537 hash!366 newBucket!194)) (_2!28062 (tuple2!49537 hash!366 newBucket!194))))))

(declare-fun e!2760127 () Bool)

(assert (=> d!1344705 e!2760127))

(declare-fun res!1833911 () Bool)

(assert (=> d!1344705 (=> (not res!1833911) (not e!2760127))))

(assert (=> d!1344705 (= res!1833911 (isStrictlySorted!248 lt!1630460))))

(assert (=> d!1344705 (= (lemmaContainsTupThenGetReturnValue!475 lt!1630460 (_1!28062 (tuple2!49537 hash!366 newBucket!194)) (_2!28062 (tuple2!49537 hash!366 newBucket!194))) lt!1630568)))

(declare-fun b!4432725 () Bool)

(declare-fun res!1833912 () Bool)

(assert (=> b!4432725 (=> (not res!1833912) (not e!2760127))))

(assert (=> b!4432725 (= res!1833912 (containsKey!1175 lt!1630460 (_1!28062 (tuple2!49537 hash!366 newBucket!194))))))

(declare-fun b!4432726 () Bool)

(assert (=> b!4432726 (= e!2760127 (contains!12213 lt!1630460 (tuple2!49537 (_1!28062 (tuple2!49537 hash!366 newBucket!194)) (_2!28062 (tuple2!49537 hash!366 newBucket!194)))))))

(assert (= (and d!1344705 res!1833911) b!4432725))

(assert (= (and b!4432725 res!1833912) b!4432726))

(assert (=> d!1344705 m!5117139))

(declare-fun m!5117517 () Bool)

(assert (=> d!1344705 m!5117517))

(declare-fun m!5117519 () Bool)

(assert (=> d!1344705 m!5117519))

(declare-fun m!5117521 () Bool)

(assert (=> b!4432725 m!5117521))

(declare-fun m!5117523 () Bool)

(assert (=> b!4432726 m!5117523))

(assert (=> d!1344531 d!1344705))

(declare-fun b!4432727 () Bool)

(declare-fun e!2760130 () List!49802)

(declare-fun call!308413 () List!49802)

(assert (=> b!4432727 (= e!2760130 call!308413)))

(declare-fun b!4432728 () Bool)

(declare-fun c!754485 () Bool)

(assert (=> b!4432728 (= c!754485 (and ((_ is Cons!49678) (toList!3565 lm!1616)) (bvsgt (_1!28062 (h!55379 (toList!3565 lm!1616))) (_1!28062 (tuple2!49537 hash!366 newBucket!194)))))))

(declare-fun e!2760132 () List!49802)

(assert (=> b!4432728 (= e!2760132 e!2760130)))

(declare-fun b!4432729 () Bool)

(declare-fun e!2760131 () List!49802)

(assert (=> b!4432729 (= e!2760131 (insertStrictlySorted!276 (t!356742 (toList!3565 lm!1616)) (_1!28062 (tuple2!49537 hash!366 newBucket!194)) (_2!28062 (tuple2!49537 hash!366 newBucket!194))))))

(declare-fun d!1344707 () Bool)

(declare-fun e!2760128 () Bool)

(assert (=> d!1344707 e!2760128))

(declare-fun res!1833914 () Bool)

(assert (=> d!1344707 (=> (not res!1833914) (not e!2760128))))

(declare-fun lt!1630569 () List!49802)

(assert (=> d!1344707 (= res!1833914 (isStrictlySorted!248 lt!1630569))))

(declare-fun e!2760129 () List!49802)

(assert (=> d!1344707 (= lt!1630569 e!2760129)))

(declare-fun c!754484 () Bool)

(assert (=> d!1344707 (= c!754484 (and ((_ is Cons!49678) (toList!3565 lm!1616)) (bvslt (_1!28062 (h!55379 (toList!3565 lm!1616))) (_1!28062 (tuple2!49537 hash!366 newBucket!194)))))))

(assert (=> d!1344707 (isStrictlySorted!248 (toList!3565 lm!1616))))

(assert (=> d!1344707 (= (insertStrictlySorted!276 (toList!3565 lm!1616) (_1!28062 (tuple2!49537 hash!366 newBucket!194)) (_2!28062 (tuple2!49537 hash!366 newBucket!194))) lt!1630569)))

(declare-fun bm!308407 () Bool)

(declare-fun call!308414 () List!49802)

(declare-fun call!308412 () List!49802)

(assert (=> bm!308407 (= call!308414 call!308412)))

(declare-fun b!4432730 () Bool)

(assert (=> b!4432730 (= e!2760132 call!308414)))

(declare-fun b!4432731 () Bool)

(assert (=> b!4432731 (= e!2760129 e!2760132)))

(declare-fun c!754483 () Bool)

(assert (=> b!4432731 (= c!754483 (and ((_ is Cons!49678) (toList!3565 lm!1616)) (= (_1!28062 (h!55379 (toList!3565 lm!1616))) (_1!28062 (tuple2!49537 hash!366 newBucket!194)))))))

(declare-fun b!4432732 () Bool)

(assert (=> b!4432732 (= e!2760128 (contains!12213 lt!1630569 (tuple2!49537 (_1!28062 (tuple2!49537 hash!366 newBucket!194)) (_2!28062 (tuple2!49537 hash!366 newBucket!194)))))))

(declare-fun b!4432733 () Bool)

(declare-fun res!1833913 () Bool)

(assert (=> b!4432733 (=> (not res!1833913) (not e!2760128))))

(assert (=> b!4432733 (= res!1833913 (containsKey!1175 lt!1630569 (_1!28062 (tuple2!49537 hash!366 newBucket!194))))))

(declare-fun bm!308408 () Bool)

(assert (=> bm!308408 (= call!308412 ($colon$colon!797 e!2760131 (ite c!754484 (h!55379 (toList!3565 lm!1616)) (tuple2!49537 (_1!28062 (tuple2!49537 hash!366 newBucket!194)) (_2!28062 (tuple2!49537 hash!366 newBucket!194))))))))

(declare-fun c!754482 () Bool)

(assert (=> bm!308408 (= c!754482 c!754484)))

(declare-fun b!4432734 () Bool)

(assert (=> b!4432734 (= e!2760131 (ite c!754483 (t!356742 (toList!3565 lm!1616)) (ite c!754485 (Cons!49678 (h!55379 (toList!3565 lm!1616)) (t!356742 (toList!3565 lm!1616))) Nil!49678)))))

(declare-fun b!4432735 () Bool)

(assert (=> b!4432735 (= e!2760129 call!308412)))

(declare-fun bm!308409 () Bool)

(assert (=> bm!308409 (= call!308413 call!308414)))

(declare-fun b!4432736 () Bool)

(assert (=> b!4432736 (= e!2760130 call!308413)))

(assert (= (and d!1344707 c!754484) b!4432735))

(assert (= (and d!1344707 (not c!754484)) b!4432731))

(assert (= (and b!4432731 c!754483) b!4432730))

(assert (= (and b!4432731 (not c!754483)) b!4432728))

(assert (= (and b!4432728 c!754485) b!4432736))

(assert (= (and b!4432728 (not c!754485)) b!4432727))

(assert (= (or b!4432736 b!4432727) bm!308409))

(assert (= (or b!4432730 bm!308409) bm!308407))

(assert (= (or b!4432735 bm!308407) bm!308408))

(assert (= (and bm!308408 c!754482) b!4432729))

(assert (= (and bm!308408 (not c!754482)) b!4432734))

(assert (= (and d!1344707 res!1833914) b!4432733))

(assert (= (and b!4432733 res!1833913) b!4432732))

(declare-fun m!5117525 () Bool)

(assert (=> b!4432733 m!5117525))

(declare-fun m!5117527 () Bool)

(assert (=> b!4432729 m!5117527))

(declare-fun m!5117529 () Bool)

(assert (=> bm!308408 m!5117529))

(declare-fun m!5117531 () Bool)

(assert (=> d!1344707 m!5117531))

(assert (=> d!1344707 m!5116589))

(declare-fun m!5117533 () Bool)

(assert (=> b!4432732 m!5117533))

(assert (=> d!1344531 d!1344707))

(declare-fun d!1344709 () Bool)

(declare-fun res!1833915 () Bool)

(declare-fun e!2760133 () Bool)

(assert (=> d!1344709 (=> res!1833915 e!2760133)))

(assert (=> d!1344709 (= res!1833915 (and ((_ is Cons!49677) (t!356741 (_2!28062 (tuple2!49537 hash!366 newBucket!194)))) (= (_1!28061 (h!55378 (t!356741 (_2!28062 (tuple2!49537 hash!366 newBucket!194))))) (_1!28061 (h!55378 (_2!28062 (tuple2!49537 hash!366 newBucket!194)))))))))

(assert (=> d!1344709 (= (containsKey!1176 (t!356741 (_2!28062 (tuple2!49537 hash!366 newBucket!194))) (_1!28061 (h!55378 (_2!28062 (tuple2!49537 hash!366 newBucket!194))))) e!2760133)))

(declare-fun b!4432737 () Bool)

(declare-fun e!2760134 () Bool)

(assert (=> b!4432737 (= e!2760133 e!2760134)))

(declare-fun res!1833916 () Bool)

(assert (=> b!4432737 (=> (not res!1833916) (not e!2760134))))

(assert (=> b!4432737 (= res!1833916 ((_ is Cons!49677) (t!356741 (_2!28062 (tuple2!49537 hash!366 newBucket!194)))))))

(declare-fun b!4432738 () Bool)

(assert (=> b!4432738 (= e!2760134 (containsKey!1176 (t!356741 (t!356741 (_2!28062 (tuple2!49537 hash!366 newBucket!194)))) (_1!28061 (h!55378 (_2!28062 (tuple2!49537 hash!366 newBucket!194))))))))

(assert (= (and d!1344709 (not res!1833915)) b!4432737))

(assert (= (and b!4432737 res!1833916) b!4432738))

(declare-fun m!5117535 () Bool)

(assert (=> b!4432738 m!5117535))

(assert (=> b!4432376 d!1344709))

(declare-fun b!4432742 () Bool)

(declare-fun e!2760136 () Option!10758)

(assert (=> b!4432742 (= e!2760136 None!10757)))

(declare-fun b!4432739 () Bool)

(declare-fun e!2760135 () Option!10758)

(assert (=> b!4432739 (= e!2760135 (Some!10757 (_2!28061 (h!55378 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))))))))

(declare-fun d!1344711 () Bool)

(declare-fun c!754486 () Bool)

(assert (=> d!1344711 (= c!754486 (and ((_ is Cons!49677) (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) (= (_1!28061 (h!55378 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))) key!3717)))))

(assert (=> d!1344711 (= (getValueByKey!744 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))) key!3717) e!2760135)))

(declare-fun b!4432740 () Bool)

(assert (=> b!4432740 (= e!2760135 e!2760136)))

(declare-fun c!754487 () Bool)

(assert (=> b!4432740 (= c!754487 (and ((_ is Cons!49677) (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) (not (= (_1!28061 (h!55378 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))) key!3717))))))

(declare-fun b!4432741 () Bool)

(assert (=> b!4432741 (= e!2760136 (getValueByKey!744 (t!356741 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) key!3717))))

(assert (= (and d!1344711 c!754486) b!4432739))

(assert (= (and d!1344711 (not c!754486)) b!4432740))

(assert (= (and b!4432740 c!754487) b!4432741))

(assert (= (and b!4432740 (not c!754487)) b!4432742))

(declare-fun m!5117537 () Bool)

(assert (=> b!4432741 m!5117537))

(assert (=> b!4432396 d!1344711))

(declare-fun d!1344713 () Bool)

(declare-fun res!1833917 () Bool)

(declare-fun e!2760137 () Bool)

(assert (=> d!1344713 (=> res!1833917 e!2760137)))

(assert (=> d!1344713 (= res!1833917 (and ((_ is Cons!49677) (t!356741 (_2!28062 (h!55379 (toList!3565 lm!1616))))) (= (_1!28061 (h!55378 (t!356741 (_2!28062 (h!55379 (toList!3565 lm!1616)))))) (_1!28061 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616))))))))))

(assert (=> d!1344713 (= (containsKey!1176 (t!356741 (_2!28062 (h!55379 (toList!3565 lm!1616)))) (_1!28061 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))) e!2760137)))

(declare-fun b!4432743 () Bool)

(declare-fun e!2760138 () Bool)

(assert (=> b!4432743 (= e!2760137 e!2760138)))

(declare-fun res!1833918 () Bool)

(assert (=> b!4432743 (=> (not res!1833918) (not e!2760138))))

(assert (=> b!4432743 (= res!1833918 ((_ is Cons!49677) (t!356741 (_2!28062 (h!55379 (toList!3565 lm!1616))))))))

(declare-fun b!4432744 () Bool)

(assert (=> b!4432744 (= e!2760138 (containsKey!1176 (t!356741 (t!356741 (_2!28062 (h!55379 (toList!3565 lm!1616))))) (_1!28061 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))))))

(assert (= (and d!1344713 (not res!1833917)) b!4432743))

(assert (= (and b!4432743 res!1833918) b!4432744))

(declare-fun m!5117539 () Bool)

(assert (=> b!4432744 m!5117539))

(assert (=> b!4432504 d!1344713))

(declare-fun d!1344715 () Bool)

(declare-fun lt!1630570 () Bool)

(assert (=> d!1344715 (= lt!1630570 (select (content!7983 lt!1630203) (tuple2!49537 (_1!28062 lt!1630111) (_2!28062 lt!1630111))))))

(declare-fun e!2760139 () Bool)

(assert (=> d!1344715 (= lt!1630570 e!2760139)))

(declare-fun res!1833920 () Bool)

(assert (=> d!1344715 (=> (not res!1833920) (not e!2760139))))

(assert (=> d!1344715 (= res!1833920 ((_ is Cons!49678) lt!1630203))))

(assert (=> d!1344715 (= (contains!12213 lt!1630203 (tuple2!49537 (_1!28062 lt!1630111) (_2!28062 lt!1630111))) lt!1630570)))

(declare-fun b!4432745 () Bool)

(declare-fun e!2760140 () Bool)

(assert (=> b!4432745 (= e!2760139 e!2760140)))

(declare-fun res!1833919 () Bool)

(assert (=> b!4432745 (=> res!1833919 e!2760140)))

(assert (=> b!4432745 (= res!1833919 (= (h!55379 lt!1630203) (tuple2!49537 (_1!28062 lt!1630111) (_2!28062 lt!1630111))))))

(declare-fun b!4432746 () Bool)

(assert (=> b!4432746 (= e!2760140 (contains!12213 (t!356742 lt!1630203) (tuple2!49537 (_1!28062 lt!1630111) (_2!28062 lt!1630111))))))

(assert (= (and d!1344715 res!1833920) b!4432745))

(assert (= (and b!4432745 (not res!1833919)) b!4432746))

(declare-fun m!5117553 () Bool)

(assert (=> d!1344715 m!5117553))

(declare-fun m!5117555 () Bool)

(assert (=> d!1344715 m!5117555))

(declare-fun m!5117559 () Bool)

(assert (=> b!4432746 m!5117559))

(assert (=> b!4432312 d!1344715))

(declare-fun b!4432750 () Bool)

(declare-fun e!2760142 () Option!10757)

(assert (=> b!4432750 (= e!2760142 None!10756)))

(declare-fun d!1344717 () Bool)

(declare-fun c!754488 () Bool)

(assert (=> d!1344717 (= c!754488 (and ((_ is Cons!49678) (t!356742 (toList!3565 lt!1630204))) (= (_1!28062 (h!55379 (t!356742 (toList!3565 lt!1630204)))) (_1!28062 lt!1630111))))))

(declare-fun e!2760141 () Option!10757)

(assert (=> d!1344717 (= (getValueByKey!743 (t!356742 (toList!3565 lt!1630204)) (_1!28062 lt!1630111)) e!2760141)))

(declare-fun b!4432749 () Bool)

(assert (=> b!4432749 (= e!2760142 (getValueByKey!743 (t!356742 (t!356742 (toList!3565 lt!1630204))) (_1!28062 lt!1630111)))))

(declare-fun b!4432748 () Bool)

(assert (=> b!4432748 (= e!2760141 e!2760142)))

(declare-fun c!754489 () Bool)

(assert (=> b!4432748 (= c!754489 (and ((_ is Cons!49678) (t!356742 (toList!3565 lt!1630204))) (not (= (_1!28062 (h!55379 (t!356742 (toList!3565 lt!1630204)))) (_1!28062 lt!1630111)))))))

(declare-fun b!4432747 () Bool)

(assert (=> b!4432747 (= e!2760141 (Some!10756 (_2!28062 (h!55379 (t!356742 (toList!3565 lt!1630204))))))))

(assert (= (and d!1344717 c!754488) b!4432747))

(assert (= (and d!1344717 (not c!754488)) b!4432748))

(assert (= (and b!4432748 c!754489) b!4432749))

(assert (= (and b!4432748 (not c!754489)) b!4432750))

(declare-fun m!5117579 () Bool)

(assert (=> b!4432749 m!5117579))

(assert (=> b!4432429 d!1344717))

(assert (=> d!1344533 d!1344529))

(assert (=> d!1344533 d!1344531))

(declare-fun d!1344719 () Bool)

(declare-fun res!1833921 () Bool)

(declare-fun e!2760143 () Bool)

(assert (=> d!1344719 (=> res!1833921 e!2760143)))

(assert (=> d!1344719 (= res!1833921 (and ((_ is Cons!49678) lt!1630347) (= (_1!28062 (h!55379 lt!1630347)) (_1!28062 lt!1630111))))))

(assert (=> d!1344719 (= (containsKey!1175 lt!1630347 (_1!28062 lt!1630111)) e!2760143)))

(declare-fun b!4432751 () Bool)

(declare-fun e!2760144 () Bool)

(assert (=> b!4432751 (= e!2760143 e!2760144)))

(declare-fun res!1833922 () Bool)

(assert (=> b!4432751 (=> (not res!1833922) (not e!2760144))))

(assert (=> b!4432751 (= res!1833922 (and (or (not ((_ is Cons!49678) lt!1630347)) (bvsle (_1!28062 (h!55379 lt!1630347)) (_1!28062 lt!1630111))) ((_ is Cons!49678) lt!1630347) (bvslt (_1!28062 (h!55379 lt!1630347)) (_1!28062 lt!1630111))))))

(declare-fun b!4432752 () Bool)

(assert (=> b!4432752 (= e!2760144 (containsKey!1175 (t!356742 lt!1630347) (_1!28062 lt!1630111)))))

(assert (= (and d!1344719 (not res!1833921)) b!4432751))

(assert (= (and b!4432751 res!1833922) b!4432752))

(declare-fun m!5117583 () Bool)

(assert (=> b!4432752 m!5117583))

(assert (=> b!4432352 d!1344719))

(declare-fun d!1344723 () Bool)

(declare-fun lt!1630571 () Bool)

(assert (=> d!1344723 (= lt!1630571 (select (content!7984 (t!356744 (keys!16986 (extractMap!850 (toList!3565 lm!1616))))) key!3717))))

(declare-fun e!2760146 () Bool)

(assert (=> d!1344723 (= lt!1630571 e!2760146)))

(declare-fun res!1833924 () Bool)

(assert (=> d!1344723 (=> (not res!1833924) (not e!2760146))))

(assert (=> d!1344723 (= res!1833924 ((_ is Cons!49680) (t!356744 (keys!16986 (extractMap!850 (toList!3565 lm!1616))))))))

(assert (=> d!1344723 (= (contains!12212 (t!356744 (keys!16986 (extractMap!850 (toList!3565 lm!1616)))) key!3717) lt!1630571)))

(declare-fun b!4432753 () Bool)

(declare-fun e!2760145 () Bool)

(assert (=> b!4432753 (= e!2760146 e!2760145)))

(declare-fun res!1833923 () Bool)

(assert (=> b!4432753 (=> res!1833923 e!2760145)))

(assert (=> b!4432753 (= res!1833923 (= (h!55383 (t!356744 (keys!16986 (extractMap!850 (toList!3565 lm!1616))))) key!3717))))

(declare-fun b!4432754 () Bool)

(assert (=> b!4432754 (= e!2760145 (contains!12212 (t!356744 (t!356744 (keys!16986 (extractMap!850 (toList!3565 lm!1616))))) key!3717))))

(assert (= (and d!1344723 res!1833924) b!4432753))

(assert (= (and b!4432753 (not res!1833923)) b!4432754))

(declare-fun m!5117585 () Bool)

(assert (=> d!1344723 m!5117585))

(declare-fun m!5117587 () Bool)

(assert (=> d!1344723 m!5117587))

(declare-fun m!5117589 () Bool)

(assert (=> b!4432754 m!5117589))

(assert (=> b!4432470 d!1344723))

(declare-fun d!1344725 () Bool)

(declare-fun res!1833925 () Bool)

(declare-fun e!2760147 () Bool)

(assert (=> d!1344725 (=> res!1833925 e!2760147)))

(assert (=> d!1344725 (= res!1833925 (not ((_ is Cons!49677) (t!356741 (t!356741 newBucket!194)))))))

(assert (=> d!1344725 (= (noDuplicateKeys!789 (t!356741 (t!356741 newBucket!194))) e!2760147)))

(declare-fun b!4432755 () Bool)

(declare-fun e!2760148 () Bool)

(assert (=> b!4432755 (= e!2760147 e!2760148)))

(declare-fun res!1833926 () Bool)

(assert (=> b!4432755 (=> (not res!1833926) (not e!2760148))))

(assert (=> b!4432755 (= res!1833926 (not (containsKey!1176 (t!356741 (t!356741 (t!356741 newBucket!194))) (_1!28061 (h!55378 (t!356741 (t!356741 newBucket!194)))))))))

(declare-fun b!4432756 () Bool)

(assert (=> b!4432756 (= e!2760148 (noDuplicateKeys!789 (t!356741 (t!356741 (t!356741 newBucket!194)))))))

(assert (= (and d!1344725 (not res!1833925)) b!4432755))

(assert (= (and b!4432755 res!1833926) b!4432756))

(declare-fun m!5117591 () Bool)

(assert (=> b!4432755 m!5117591))

(declare-fun m!5117593 () Bool)

(assert (=> b!4432756 m!5117593))

(assert (=> b!4432484 d!1344725))

(declare-fun d!1344727 () Bool)

(declare-fun c!754492 () Bool)

(assert (=> d!1344727 (= c!754492 ((_ is Nil!49680) e!2759692))))

(declare-fun e!2760154 () (InoxSet K!11045))

(assert (=> d!1344727 (= (content!7984 e!2759692) e!2760154)))

(declare-fun b!4432764 () Bool)

(assert (=> b!4432764 (= e!2760154 ((as const (Array K!11045 Bool)) false))))

(declare-fun b!4432765 () Bool)

(assert (=> b!4432765 (= e!2760154 ((_ map or) (store ((as const (Array K!11045 Bool)) false) (h!55383 e!2759692) true) (content!7984 (t!356744 e!2759692))))))

(assert (= (and d!1344727 c!754492) b!4432764))

(assert (= (and d!1344727 (not c!754492)) b!4432765))

(declare-fun m!5117595 () Bool)

(assert (=> b!4432765 m!5117595))

(declare-fun m!5117599 () Bool)

(assert (=> b!4432765 m!5117599))

(assert (=> d!1344511 d!1344727))

(declare-fun d!1344729 () Bool)

(declare-fun c!754493 () Bool)

(assert (=> d!1344729 (= c!754493 ((_ is Nil!49680) (keys!16986 (extractMap!850 (toList!3565 lm!1616)))))))

(declare-fun e!2760155 () (InoxSet K!11045))

(assert (=> d!1344729 (= (content!7984 (keys!16986 (extractMap!850 (toList!3565 lm!1616)))) e!2760155)))

(declare-fun b!4432766 () Bool)

(assert (=> b!4432766 (= e!2760155 ((as const (Array K!11045 Bool)) false))))

(declare-fun b!4432767 () Bool)

(assert (=> b!4432767 (= e!2760155 ((_ map or) (store ((as const (Array K!11045 Bool)) false) (h!55383 (keys!16986 (extractMap!850 (toList!3565 lm!1616)))) true) (content!7984 (t!356744 (keys!16986 (extractMap!850 (toList!3565 lm!1616)))))))))

(assert (= (and d!1344729 c!754493) b!4432766))

(assert (= (and d!1344729 (not c!754493)) b!4432767))

(declare-fun m!5117603 () Bool)

(assert (=> b!4432767 m!5117603))

(assert (=> b!4432767 m!5117585))

(assert (=> d!1344499 d!1344729))

(declare-fun lt!1630583 () Bool)

(declare-fun d!1344733 () Bool)

(assert (=> d!1344733 (= lt!1630583 (select (content!7983 (toList!3565 lt!1630461)) (tuple2!49537 hash!366 newBucket!194)))))

(declare-fun e!2760162 () Bool)

(assert (=> d!1344733 (= lt!1630583 e!2760162)))

(declare-fun res!1833934 () Bool)

(assert (=> d!1344733 (=> (not res!1833934) (not e!2760162))))

(assert (=> d!1344733 (= res!1833934 ((_ is Cons!49678) (toList!3565 lt!1630461)))))

(assert (=> d!1344733 (= (contains!12213 (toList!3565 lt!1630461) (tuple2!49537 hash!366 newBucket!194)) lt!1630583)))

(declare-fun b!4432777 () Bool)

(declare-fun e!2760163 () Bool)

(assert (=> b!4432777 (= e!2760162 e!2760163)))

(declare-fun res!1833933 () Bool)

(assert (=> b!4432777 (=> res!1833933 e!2760163)))

(assert (=> b!4432777 (= res!1833933 (= (h!55379 (toList!3565 lt!1630461)) (tuple2!49537 hash!366 newBucket!194)))))

(declare-fun b!4432778 () Bool)

(assert (=> b!4432778 (= e!2760163 (contains!12213 (t!356742 (toList!3565 lt!1630461)) (tuple2!49537 hash!366 newBucket!194)))))

(assert (= (and d!1344733 res!1833934) b!4432777))

(assert (= (and b!4432777 (not res!1833933)) b!4432778))

(declare-fun m!5117605 () Bool)

(assert (=> d!1344733 m!5117605))

(declare-fun m!5117607 () Bool)

(assert (=> d!1344733 m!5117607))

(declare-fun m!5117609 () Bool)

(assert (=> b!4432778 m!5117609))

(assert (=> b!4432521 d!1344733))

(declare-fun b!4432782 () Bool)

(declare-fun e!2760165 () Option!10757)

(assert (=> b!4432782 (= e!2760165 None!10756)))

(declare-fun d!1344735 () Bool)

(declare-fun c!754497 () Bool)

(assert (=> d!1344735 (= c!754497 (and ((_ is Cons!49678) (t!356742 lt!1630203)) (= (_1!28062 (h!55379 (t!356742 lt!1630203))) (_1!28062 lt!1630111))))))

(declare-fun e!2760164 () Option!10757)

(assert (=> d!1344735 (= (getValueByKey!743 (t!356742 lt!1630203) (_1!28062 lt!1630111)) e!2760164)))

(declare-fun b!4432781 () Bool)

(assert (=> b!4432781 (= e!2760165 (getValueByKey!743 (t!356742 (t!356742 lt!1630203)) (_1!28062 lt!1630111)))))

(declare-fun b!4432780 () Bool)

(assert (=> b!4432780 (= e!2760164 e!2760165)))

(declare-fun c!754498 () Bool)

(assert (=> b!4432780 (= c!754498 (and ((_ is Cons!49678) (t!356742 lt!1630203)) (not (= (_1!28062 (h!55379 (t!356742 lt!1630203))) (_1!28062 lt!1630111)))))))

(declare-fun b!4432779 () Bool)

(assert (=> b!4432779 (= e!2760164 (Some!10756 (_2!28062 (h!55379 (t!356742 lt!1630203)))))))

(assert (= (and d!1344735 c!754497) b!4432779))

(assert (= (and d!1344735 (not c!754497)) b!4432780))

(assert (= (and b!4432780 c!754498) b!4432781))

(assert (= (and b!4432780 (not c!754498)) b!4432782))

(declare-fun m!5117613 () Bool)

(assert (=> b!4432781 m!5117613))

(assert (=> b!4432301 d!1344735))

(declare-fun d!1344737 () Bool)

(declare-fun res!1833935 () Bool)

(declare-fun e!2760166 () Bool)

(assert (=> d!1344737 (=> res!1833935 e!2760166)))

(assert (=> d!1344737 (= res!1833935 ((_ is Nil!49677) (ite c!754438 (toList!3566 (extractMap!850 (t!356742 (toList!3565 lm!1616)))) (toList!3566 lt!1630455))))))

(assert (=> d!1344737 (= (forall!9626 (ite c!754438 (toList!3566 (extractMap!850 (t!356742 (toList!3565 lm!1616)))) (toList!3566 lt!1630455)) (ite c!754438 lambda!155534 lambda!155536)) e!2760166)))

(declare-fun b!4432783 () Bool)

(declare-fun e!2760167 () Bool)

(assert (=> b!4432783 (= e!2760166 e!2760167)))

(declare-fun res!1833936 () Bool)

(assert (=> b!4432783 (=> (not res!1833936) (not e!2760167))))

(assert (=> b!4432783 (= res!1833936 (dynLambda!20874 (ite c!754438 lambda!155534 lambda!155536) (h!55378 (ite c!754438 (toList!3566 (extractMap!850 (t!356742 (toList!3565 lm!1616)))) (toList!3566 lt!1630455)))))))

(declare-fun b!4432784 () Bool)

(assert (=> b!4432784 (= e!2760167 (forall!9626 (t!356741 (ite c!754438 (toList!3566 (extractMap!850 (t!356742 (toList!3565 lm!1616)))) (toList!3566 lt!1630455))) (ite c!754438 lambda!155534 lambda!155536)))))

(assert (= (and d!1344737 (not res!1833935)) b!4432783))

(assert (= (and b!4432783 res!1833936) b!4432784))

(declare-fun b_lambda!143979 () Bool)

(assert (=> (not b_lambda!143979) (not b!4432783)))

(declare-fun m!5117633 () Bool)

(assert (=> b!4432783 m!5117633))

(declare-fun m!5117635 () Bool)

(assert (=> b!4432784 m!5117635))

(assert (=> bm!308393 d!1344737))

(declare-fun d!1344741 () Bool)

(declare-fun res!1833937 () Bool)

(declare-fun e!2760170 () Bool)

(assert (=> d!1344741 (=> res!1833937 e!2760170)))

(assert (=> d!1344741 (= res!1833937 (not ((_ is Cons!49677) (t!356741 (_2!28062 (h!55379 (toList!3565 lt!1630110)))))))))

(assert (=> d!1344741 (= (noDuplicateKeys!789 (t!356741 (_2!28062 (h!55379 (toList!3565 lt!1630110))))) e!2760170)))

(declare-fun b!4432789 () Bool)

(declare-fun e!2760171 () Bool)

(assert (=> b!4432789 (= e!2760170 e!2760171)))

(declare-fun res!1833938 () Bool)

(assert (=> b!4432789 (=> (not res!1833938) (not e!2760171))))

(assert (=> b!4432789 (= res!1833938 (not (containsKey!1176 (t!356741 (t!356741 (_2!28062 (h!55379 (toList!3565 lt!1630110))))) (_1!28061 (h!55378 (t!356741 (_2!28062 (h!55379 (toList!3565 lt!1630110)))))))))))

(declare-fun b!4432790 () Bool)

(assert (=> b!4432790 (= e!2760171 (noDuplicateKeys!789 (t!356741 (t!356741 (_2!28062 (h!55379 (toList!3565 lt!1630110)))))))))

(assert (= (and d!1344741 (not res!1833937)) b!4432789))

(assert (= (and b!4432789 res!1833938) b!4432790))

(declare-fun m!5117639 () Bool)

(assert (=> b!4432789 m!5117639))

(declare-fun m!5117641 () Bool)

(assert (=> b!4432790 m!5117641))

(assert (=> b!4432480 d!1344741))

(assert (=> d!1344493 d!1344495))

(assert (=> d!1344493 d!1344497))

(declare-fun d!1344745 () Bool)

(assert (=> d!1344745 (isDefined!8050 (getValueByKey!743 (toList!3565 lm!1616) hash!366))))

(assert (=> d!1344745 true))

(declare-fun _$13!1487 () Unit!82777)

(assert (=> d!1344745 (= (choose!28078 (toList!3565 lm!1616) hash!366) _$13!1487)))

(declare-fun bs!760350 () Bool)

(assert (= bs!760350 d!1344745))

(assert (=> bs!760350 m!5116559))

(assert (=> bs!760350 m!5116559))

(assert (=> bs!760350 m!5116703))

(assert (=> d!1344493 d!1344745))

(assert (=> d!1344493 d!1344523))

(declare-fun d!1344757 () Bool)

(declare-fun res!1833947 () Bool)

(declare-fun e!2760182 () Bool)

(assert (=> d!1344757 (=> res!1833947 e!2760182)))

(assert (=> d!1344757 (= res!1833947 ((_ is Nil!49678) (t!356742 (toList!3565 (+!1147 lm!1616 (tuple2!49537 hash!366 newBucket!194))))))))

(assert (=> d!1344757 (= (forall!9624 (t!356742 (toList!3565 (+!1147 lm!1616 (tuple2!49537 hash!366 newBucket!194)))) lambda!155418) e!2760182)))

(declare-fun b!4432803 () Bool)

(declare-fun e!2760183 () Bool)

(assert (=> b!4432803 (= e!2760182 e!2760183)))

(declare-fun res!1833948 () Bool)

(assert (=> b!4432803 (=> (not res!1833948) (not e!2760183))))

(assert (=> b!4432803 (= res!1833948 (dynLambda!20872 lambda!155418 (h!55379 (t!356742 (toList!3565 (+!1147 lm!1616 (tuple2!49537 hash!366 newBucket!194)))))))))

(declare-fun b!4432804 () Bool)

(assert (=> b!4432804 (= e!2760183 (forall!9624 (t!356742 (t!356742 (toList!3565 (+!1147 lm!1616 (tuple2!49537 hash!366 newBucket!194))))) lambda!155418))))

(assert (= (and d!1344757 (not res!1833947)) b!4432803))

(assert (= (and b!4432803 res!1833948) b!4432804))

(declare-fun b_lambda!143983 () Bool)

(assert (=> (not b_lambda!143983) (not b!4432803)))

(declare-fun m!5117659 () Bool)

(assert (=> b!4432803 m!5117659))

(declare-fun m!5117661 () Bool)

(assert (=> b!4432804 m!5117661))

(assert (=> b!4432519 d!1344757))

(declare-fun d!1344761 () Bool)

(assert (=> d!1344761 true))

(assert (=> d!1344761 true))

(declare-fun res!1833955 () (_ BitVec 64))

(assert (=> d!1344761 (= (choose!28077 hashF!1220 key!3717) res!1833955)))

(assert (=> d!1344439 d!1344761))

(assert (=> bs!760232 d!1344521))

(declare-fun d!1344763 () Bool)

(declare-fun c!754503 () Bool)

(assert (=> d!1344763 (= c!754503 ((_ is Nil!49680) lt!1630370))))

(declare-fun e!2760188 () (InoxSet K!11045))

(assert (=> d!1344763 (= (content!7984 lt!1630370) e!2760188)))

(declare-fun b!4432809 () Bool)

(assert (=> b!4432809 (= e!2760188 ((as const (Array K!11045 Bool)) false))))

(declare-fun b!4432810 () Bool)

(assert (=> b!4432810 (= e!2760188 ((_ map or) (store ((as const (Array K!11045 Bool)) false) (h!55383 lt!1630370) true) (content!7984 (t!356744 lt!1630370))))))

(assert (= (and d!1344763 c!754503) b!4432809))

(assert (= (and d!1344763 (not c!754503)) b!4432810))

(declare-fun m!5117663 () Bool)

(assert (=> b!4432810 m!5117663))

(declare-fun m!5117665 () Bool)

(assert (=> b!4432810 m!5117665))

(assert (=> b!4432423 d!1344763))

(declare-fun d!1344765 () Bool)

(declare-fun c!754504 () Bool)

(assert (=> d!1344765 (= c!754504 ((_ is Nil!49680) (map!10858 (toList!3566 (extractMap!850 (toList!3565 lm!1616))) lambda!155499)))))

(declare-fun e!2760189 () (InoxSet K!11045))

(assert (=> d!1344765 (= (content!7984 (map!10858 (toList!3566 (extractMap!850 (toList!3565 lm!1616))) lambda!155499)) e!2760189)))

(declare-fun b!4432811 () Bool)

(assert (=> b!4432811 (= e!2760189 ((as const (Array K!11045 Bool)) false))))

(declare-fun b!4432812 () Bool)

(assert (=> b!4432812 (= e!2760189 ((_ map or) (store ((as const (Array K!11045 Bool)) false) (h!55383 (map!10858 (toList!3566 (extractMap!850 (toList!3565 lm!1616))) lambda!155499)) true) (content!7984 (t!356744 (map!10858 (toList!3566 (extractMap!850 (toList!3565 lm!1616))) lambda!155499)))))))

(assert (= (and d!1344765 c!754504) b!4432811))

(assert (= (and d!1344765 (not c!754504)) b!4432812))

(declare-fun m!5117667 () Bool)

(assert (=> b!4432812 m!5117667))

(declare-fun m!5117669 () Bool)

(assert (=> b!4432812 m!5117669))

(assert (=> b!4432423 d!1344765))

(declare-fun d!1344767 () Bool)

(declare-fun lt!1630586 () List!49804)

(declare-fun size!35883 (List!49804) Int)

(declare-fun size!35884 (List!49801) Int)

(assert (=> d!1344767 (= (size!35883 lt!1630586) (size!35884 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))))

(declare-fun e!2760207 () List!49804)

(assert (=> d!1344767 (= lt!1630586 e!2760207)))

(declare-fun c!754508 () Bool)

(assert (=> d!1344767 (= c!754508 ((_ is Nil!49677) (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))))

(assert (=> d!1344767 (= (map!10858 (toList!3566 (extractMap!850 (toList!3565 lm!1616))) lambda!155499) lt!1630586)))

(declare-fun b!4432833 () Bool)

(assert (=> b!4432833 (= e!2760207 Nil!49680)))

(declare-fun b!4432834 () Bool)

(declare-fun $colon$colon!799 (List!49804 K!11045) List!49804)

(declare-fun dynLambda!20878 (Int tuple2!49534) K!11045)

(assert (=> b!4432834 (= e!2760207 ($colon$colon!799 (map!10858 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))) lambda!155499) (dynLambda!20878 lambda!155499 (h!55378 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))))))

(assert (= (and d!1344767 c!754508) b!4432833))

(assert (= (and d!1344767 (not c!754508)) b!4432834))

(declare-fun b_lambda!143989 () Bool)

(assert (=> (not b_lambda!143989) (not b!4432834)))

(declare-fun m!5117703 () Bool)

(assert (=> d!1344767 m!5117703))

(declare-fun m!5117707 () Bool)

(assert (=> d!1344767 m!5117707))

(declare-fun m!5117709 () Bool)

(assert (=> b!4432834 m!5117709))

(declare-fun m!5117711 () Bool)

(assert (=> b!4432834 m!5117711))

(assert (=> b!4432834 m!5117709))

(assert (=> b!4432834 m!5117711))

(declare-fun m!5117713 () Bool)

(assert (=> b!4432834 m!5117713))

(assert (=> b!4432423 d!1344767))

(declare-fun d!1344789 () Bool)

(declare-fun res!1833974 () Bool)

(declare-fun e!2760212 () Bool)

(assert (=> d!1344789 (=> res!1833974 e!2760212)))

(assert (=> d!1344789 (= res!1833974 (not ((_ is Cons!49677) (_2!28062 (h!55379 (t!356742 (toList!3565 lm!1616)))))))))

(assert (=> d!1344789 (= (noDuplicateKeys!789 (_2!28062 (h!55379 (t!356742 (toList!3565 lm!1616))))) e!2760212)))

(declare-fun b!4432839 () Bool)

(declare-fun e!2760213 () Bool)

(assert (=> b!4432839 (= e!2760212 e!2760213)))

(declare-fun res!1833975 () Bool)

(assert (=> b!4432839 (=> (not res!1833975) (not e!2760213))))

(assert (=> b!4432839 (= res!1833975 (not (containsKey!1176 (t!356741 (_2!28062 (h!55379 (t!356742 (toList!3565 lm!1616))))) (_1!28061 (h!55378 (_2!28062 (h!55379 (t!356742 (toList!3565 lm!1616)))))))))))

(declare-fun b!4432840 () Bool)

(assert (=> b!4432840 (= e!2760213 (noDuplicateKeys!789 (t!356741 (_2!28062 (h!55379 (t!356742 (toList!3565 lm!1616)))))))))

(assert (= (and d!1344789 (not res!1833974)) b!4432839))

(assert (= (and b!4432839 res!1833975) b!4432840))

(declare-fun m!5117721 () Bool)

(assert (=> b!4432839 m!5117721))

(declare-fun m!5117723 () Bool)

(assert (=> b!4432840 m!5117723))

(assert (=> bs!760230 d!1344789))

(declare-fun d!1344795 () Bool)

(declare-fun res!1833976 () Bool)

(declare-fun e!2760215 () Bool)

(assert (=> d!1344795 (=> res!1833976 e!2760215)))

(assert (=> d!1344795 (= res!1833976 ((_ is Nil!49677) (ite c!754438 (toList!3566 (extractMap!850 (t!356742 (toList!3565 lm!1616)))) (_2!28062 (h!55379 (toList!3565 lm!1616))))))))

(assert (=> d!1344795 (= (forall!9626 (ite c!754438 (toList!3566 (extractMap!850 (t!356742 (toList!3565 lm!1616)))) (_2!28062 (h!55379 (toList!3565 lm!1616)))) (ite c!754438 lambda!155534 lambda!155536)) e!2760215)))

(declare-fun b!4432843 () Bool)

(declare-fun e!2760216 () Bool)

(assert (=> b!4432843 (= e!2760215 e!2760216)))

(declare-fun res!1833977 () Bool)

(assert (=> b!4432843 (=> (not res!1833977) (not e!2760216))))

(assert (=> b!4432843 (= res!1833977 (dynLambda!20874 (ite c!754438 lambda!155534 lambda!155536) (h!55378 (ite c!754438 (toList!3566 (extractMap!850 (t!356742 (toList!3565 lm!1616)))) (_2!28062 (h!55379 (toList!3565 lm!1616)))))))))

(declare-fun b!4432844 () Bool)

(assert (=> b!4432844 (= e!2760216 (forall!9626 (t!356741 (ite c!754438 (toList!3566 (extractMap!850 (t!356742 (toList!3565 lm!1616)))) (_2!28062 (h!55379 (toList!3565 lm!1616))))) (ite c!754438 lambda!155534 lambda!155536)))))

(assert (= (and d!1344795 (not res!1833976)) b!4432843))

(assert (= (and b!4432843 res!1833977) b!4432844))

(declare-fun b_lambda!143991 () Bool)

(assert (=> (not b_lambda!143991) (not b!4432843)))

(declare-fun m!5117725 () Bool)

(assert (=> b!4432843 m!5117725))

(declare-fun m!5117727 () Bool)

(assert (=> b!4432844 m!5117727))

(assert (=> bm!308391 d!1344795))

(declare-fun d!1344797 () Bool)

(declare-fun res!1833978 () Bool)

(declare-fun e!2760217 () Bool)

(assert (=> d!1344797 (=> res!1833978 e!2760217)))

(assert (=> d!1344797 (= res!1833978 ((_ is Nil!49678) (t!356742 (toList!3565 lm!1616))))))

(assert (=> d!1344797 (= (forall!9624 (t!356742 (toList!3565 lm!1616)) lambda!155430) e!2760217)))

(declare-fun b!4432845 () Bool)

(declare-fun e!2760218 () Bool)

(assert (=> b!4432845 (= e!2760217 e!2760218)))

(declare-fun res!1833979 () Bool)

(assert (=> b!4432845 (=> (not res!1833979) (not e!2760218))))

(assert (=> b!4432845 (= res!1833979 (dynLambda!20872 lambda!155430 (h!55379 (t!356742 (toList!3565 lm!1616)))))))

(declare-fun b!4432846 () Bool)

(assert (=> b!4432846 (= e!2760218 (forall!9624 (t!356742 (t!356742 (toList!3565 lm!1616))) lambda!155430))))

(assert (= (and d!1344797 (not res!1833978)) b!4432845))

(assert (= (and b!4432845 res!1833979) b!4432846))

(declare-fun b_lambda!143993 () Bool)

(assert (=> (not b_lambda!143993) (not b!4432845)))

(declare-fun m!5117729 () Bool)

(assert (=> b!4432845 m!5117729))

(declare-fun m!5117731 () Bool)

(assert (=> b!4432846 m!5117731))

(assert (=> b!4432457 d!1344797))

(declare-fun d!1344799 () Bool)

(declare-fun res!1833980 () Bool)

(declare-fun e!2760219 () Bool)

(assert (=> d!1344799 (=> res!1833980 e!2760219)))

(assert (=> d!1344799 (= res!1833980 (and ((_ is Cons!49678) (toList!3565 lt!1630204)) (= (_1!28062 (h!55379 (toList!3565 lt!1630204))) (_1!28062 lt!1630111))))))

(assert (=> d!1344799 (= (containsKey!1175 (toList!3565 lt!1630204) (_1!28062 lt!1630111)) e!2760219)))

(declare-fun b!4432847 () Bool)

(declare-fun e!2760220 () Bool)

(assert (=> b!4432847 (= e!2760219 e!2760220)))

(declare-fun res!1833981 () Bool)

(assert (=> b!4432847 (=> (not res!1833981) (not e!2760220))))

(assert (=> b!4432847 (= res!1833981 (and (or (not ((_ is Cons!49678) (toList!3565 lt!1630204))) (bvsle (_1!28062 (h!55379 (toList!3565 lt!1630204))) (_1!28062 lt!1630111))) ((_ is Cons!49678) (toList!3565 lt!1630204)) (bvslt (_1!28062 (h!55379 (toList!3565 lt!1630204))) (_1!28062 lt!1630111))))))

(declare-fun b!4432848 () Bool)

(assert (=> b!4432848 (= e!2760220 (containsKey!1175 (t!356742 (toList!3565 lt!1630204)) (_1!28062 lt!1630111)))))

(assert (= (and d!1344799 (not res!1833980)) b!4432847))

(assert (= (and b!4432847 res!1833981) b!4432848))

(declare-fun m!5117733 () Bool)

(assert (=> b!4432848 m!5117733))

(assert (=> d!1344431 d!1344799))

(declare-fun d!1344803 () Bool)

(declare-fun res!1833984 () Bool)

(declare-fun e!2760223 () Bool)

(assert (=> d!1344803 (=> res!1833984 e!2760223)))

(assert (=> d!1344803 (= res!1833984 ((_ is Nil!49677) (t!356741 newBucket!194)))))

(assert (=> d!1344803 (= (forall!9626 (t!356741 newBucket!194) lambda!155436) e!2760223)))

(declare-fun b!4432851 () Bool)

(declare-fun e!2760224 () Bool)

(assert (=> b!4432851 (= e!2760223 e!2760224)))

(declare-fun res!1833985 () Bool)

(assert (=> b!4432851 (=> (not res!1833985) (not e!2760224))))

(assert (=> b!4432851 (= res!1833985 (dynLambda!20874 lambda!155436 (h!55378 (t!356741 newBucket!194))))))

(declare-fun b!4432852 () Bool)

(assert (=> b!4432852 (= e!2760224 (forall!9626 (t!356741 (t!356741 newBucket!194)) lambda!155436))))

(assert (= (and d!1344803 (not res!1833984)) b!4432851))

(assert (= (and b!4432851 res!1833985) b!4432852))

(declare-fun b_lambda!143995 () Bool)

(assert (=> (not b_lambda!143995) (not b!4432851)))

(declare-fun m!5117737 () Bool)

(assert (=> b!4432851 m!5117737))

(declare-fun m!5117739 () Bool)

(assert (=> b!4432852 m!5117739))

(assert (=> b!4432447 d!1344803))

(declare-fun d!1344807 () Bool)

(declare-fun res!1833996 () Bool)

(declare-fun e!2760239 () Bool)

(assert (=> d!1344807 (=> res!1833996 e!2760239)))

(assert (=> d!1344807 (= res!1833996 ((_ is Nil!49680) lt!1630370))))

(assert (=> d!1344807 (= (noDuplicate!666 lt!1630370) e!2760239)))

(declare-fun b!4432867 () Bool)

(declare-fun e!2760240 () Bool)

(assert (=> b!4432867 (= e!2760239 e!2760240)))

(declare-fun res!1833997 () Bool)

(assert (=> b!4432867 (=> (not res!1833997) (not e!2760240))))

(assert (=> b!4432867 (= res!1833997 (not (contains!12212 (t!356744 lt!1630370) (h!55383 lt!1630370))))))

(declare-fun b!4432868 () Bool)

(assert (=> b!4432868 (= e!2760240 (noDuplicate!666 (t!356744 lt!1630370)))))

(assert (= (and d!1344807 (not res!1833996)) b!4432867))

(assert (= (and b!4432867 res!1833997) b!4432868))

(declare-fun m!5117757 () Bool)

(assert (=> b!4432867 m!5117757))

(declare-fun m!5117759 () Bool)

(assert (=> b!4432868 m!5117759))

(assert (=> d!1344477 d!1344807))

(declare-fun d!1344813 () Bool)

(assert (=> d!1344813 (= (invariantList!821 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))) (noDuplicatedKeys!182 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))))

(declare-fun bs!760353 () Bool)

(assert (= bs!760353 d!1344813))

(declare-fun m!5117761 () Bool)

(assert (=> bs!760353 m!5117761))

(assert (=> d!1344477 d!1344813))

(declare-fun d!1344815 () Bool)

(declare-fun res!1833998 () Bool)

(declare-fun e!2760241 () Bool)

(assert (=> d!1344815 (=> res!1833998 e!2760241)))

(assert (=> d!1344815 (= res!1833998 ((_ is Nil!49677) (toList!3566 (extractMap!850 (t!356742 (toList!3565 lm!1616))))))))

(assert (=> d!1344815 (= (forall!9626 (toList!3566 (extractMap!850 (t!356742 (toList!3565 lm!1616)))) lambda!155537) e!2760241)))

(declare-fun b!4432869 () Bool)

(declare-fun e!2760242 () Bool)

(assert (=> b!4432869 (= e!2760241 e!2760242)))

(declare-fun res!1833999 () Bool)

(assert (=> b!4432869 (=> (not res!1833999) (not e!2760242))))

(assert (=> b!4432869 (= res!1833999 (dynLambda!20874 lambda!155537 (h!55378 (toList!3566 (extractMap!850 (t!356742 (toList!3565 lm!1616)))))))))

(declare-fun b!4432870 () Bool)

(assert (=> b!4432870 (= e!2760242 (forall!9626 (t!356741 (toList!3566 (extractMap!850 (t!356742 (toList!3565 lm!1616))))) lambda!155537))))

(assert (= (and d!1344815 (not res!1833998)) b!4432869))

(assert (= (and b!4432869 res!1833999) b!4432870))

(declare-fun b_lambda!144041 () Bool)

(assert (=> (not b_lambda!144041) (not b!4432869)))

(declare-fun m!5117765 () Bool)

(assert (=> b!4432869 m!5117765))

(declare-fun m!5117767 () Bool)

(assert (=> b!4432870 m!5117767))

(assert (=> b!4432496 d!1344815))

(declare-fun d!1344821 () Bool)

(assert (=> d!1344821 (= (isEmpty!28366 (getValueByKey!744 (toList!3566 (extractMap!850 (toList!3565 lm!1616))) key!3717)) (not ((_ is Some!10757) (getValueByKey!744 (toList!3566 (extractMap!850 (toList!3565 lm!1616))) key!3717))))))

(assert (=> d!1344457 d!1344821))

(declare-fun d!1344835 () Bool)

(declare-fun res!1834000 () Bool)

(declare-fun e!2760243 () Bool)

(assert (=> d!1344835 (=> res!1834000 e!2760243)))

(assert (=> d!1344835 (= res!1834000 ((_ is Nil!49680) lt!1630370))))

(assert (=> d!1344835 (= (forall!9628 lt!1630370 lambda!155498) e!2760243)))

(declare-fun b!4432871 () Bool)

(declare-fun e!2760244 () Bool)

(assert (=> b!4432871 (= e!2760243 e!2760244)))

(declare-fun res!1834001 () Bool)

(assert (=> b!4432871 (=> (not res!1834001) (not e!2760244))))

(assert (=> b!4432871 (= res!1834001 (dynLambda!20877 lambda!155498 (h!55383 lt!1630370)))))

(declare-fun b!4432872 () Bool)

(assert (=> b!4432872 (= e!2760244 (forall!9628 (t!356744 lt!1630370) lambda!155498))))

(assert (= (and d!1344835 (not res!1834000)) b!4432871))

(assert (= (and b!4432871 res!1834001) b!4432872))

(declare-fun b_lambda!144043 () Bool)

(assert (=> (not b_lambda!144043) (not b!4432871)))

(declare-fun m!5117779 () Bool)

(assert (=> b!4432871 m!5117779))

(declare-fun m!5117781 () Bool)

(assert (=> b!4432872 m!5117781))

(assert (=> b!4432417 d!1344835))

(declare-fun d!1344841 () Bool)

(declare-fun res!1834002 () Bool)

(declare-fun e!2760245 () Bool)

(assert (=> d!1344841 (=> res!1834002 e!2760245)))

(assert (=> d!1344841 (= res!1834002 ((_ is Nil!49680) lt!1630379))))

(assert (=> d!1344841 (= (noDuplicate!666 lt!1630379) e!2760245)))

(declare-fun b!4432873 () Bool)

(declare-fun e!2760246 () Bool)

(assert (=> b!4432873 (= e!2760245 e!2760246)))

(declare-fun res!1834003 () Bool)

(assert (=> b!4432873 (=> (not res!1834003) (not e!2760246))))

(assert (=> b!4432873 (= res!1834003 (not (contains!12212 (t!356744 lt!1630379) (h!55383 lt!1630379))))))

(declare-fun b!4432874 () Bool)

(assert (=> b!4432874 (= e!2760246 (noDuplicate!666 (t!356744 lt!1630379)))))

(assert (= (and d!1344841 (not res!1834002)) b!4432873))

(assert (= (and b!4432873 res!1834003) b!4432874))

(declare-fun m!5117785 () Bool)

(assert (=> b!4432873 m!5117785))

(declare-fun m!5117789 () Bool)

(assert (=> b!4432874 m!5117789))

(assert (=> d!1344481 d!1344841))

(assert (=> d!1344481 d!1344477))

(declare-fun d!1344849 () Bool)

(declare-fun res!1834004 () Bool)

(declare-fun e!2760247 () Bool)

(assert (=> d!1344849 (=> res!1834004 e!2760247)))

(assert (=> d!1344849 (= res!1834004 ((_ is Nil!49677) (_2!28062 (h!55379 (toList!3565 lm!1616)))))))

(assert (=> d!1344849 (= (forall!9626 (_2!28062 (h!55379 (toList!3565 lm!1616))) lambda!155537) e!2760247)))

(declare-fun b!4432875 () Bool)

(declare-fun e!2760248 () Bool)

(assert (=> b!4432875 (= e!2760247 e!2760248)))

(declare-fun res!1834005 () Bool)

(assert (=> b!4432875 (=> (not res!1834005) (not e!2760248))))

(assert (=> b!4432875 (= res!1834005 (dynLambda!20874 lambda!155537 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616))))))))

(declare-fun b!4432876 () Bool)

(assert (=> b!4432876 (= e!2760248 (forall!9626 (t!356741 (_2!28062 (h!55379 (toList!3565 lm!1616)))) lambda!155537))))

(assert (= (and d!1344849 (not res!1834004)) b!4432875))

(assert (= (and b!4432875 res!1834005) b!4432876))

(declare-fun b_lambda!144045 () Bool)

(assert (=> (not b_lambda!144045) (not b!4432875)))

(declare-fun m!5117795 () Bool)

(assert (=> b!4432875 m!5117795))

(declare-fun m!5117799 () Bool)

(assert (=> b!4432876 m!5117799))

(assert (=> d!1344517 d!1344849))

(assert (=> d!1344517 d!1344521))

(declare-fun d!1344859 () Bool)

(declare-fun res!1834006 () Bool)

(declare-fun e!2760249 () Bool)

(assert (=> d!1344859 (=> res!1834006 e!2760249)))

(assert (=> d!1344859 (= res!1834006 (or ((_ is Nil!49678) (t!356742 (toList!3565 lm!1616))) ((_ is Nil!49678) (t!356742 (t!356742 (toList!3565 lm!1616))))))))

(assert (=> d!1344859 (= (isStrictlySorted!248 (t!356742 (toList!3565 lm!1616))) e!2760249)))

(declare-fun b!4432877 () Bool)

(declare-fun e!2760250 () Bool)

(assert (=> b!4432877 (= e!2760249 e!2760250)))

(declare-fun res!1834007 () Bool)

(assert (=> b!4432877 (=> (not res!1834007) (not e!2760250))))

(assert (=> b!4432877 (= res!1834007 (bvslt (_1!28062 (h!55379 (t!356742 (toList!3565 lm!1616)))) (_1!28062 (h!55379 (t!356742 (t!356742 (toList!3565 lm!1616)))))))))

(declare-fun b!4432878 () Bool)

(assert (=> b!4432878 (= e!2760250 (isStrictlySorted!248 (t!356742 (t!356742 (toList!3565 lm!1616)))))))

(assert (= (and d!1344859 (not res!1834006)) b!4432877))

(assert (= (and b!4432877 res!1834007) b!4432878))

(declare-fun m!5117805 () Bool)

(assert (=> b!4432878 m!5117805))

(assert (=> b!4432511 d!1344859))

(declare-fun d!1344867 () Bool)

(declare-fun e!2760256 () Bool)

(assert (=> d!1344867 e!2760256))

(declare-fun res!1834009 () Bool)

(assert (=> d!1344867 (=> res!1834009 e!2760256)))

(declare-fun e!2760254 () Bool)

(assert (=> d!1344867 (= res!1834009 e!2760254)))

(declare-fun res!1834008 () Bool)

(assert (=> d!1344867 (=> (not res!1834008) (not e!2760254))))

(declare-fun lt!1630596 () Bool)

(assert (=> d!1344867 (= res!1834008 (not lt!1630596))))

(declare-fun lt!1630595 () Bool)

(assert (=> d!1344867 (= lt!1630596 lt!1630595)))

(declare-fun lt!1630592 () Unit!82777)

(declare-fun e!2760253 () Unit!82777)

(assert (=> d!1344867 (= lt!1630592 e!2760253)))

(declare-fun c!754512 () Bool)

(assert (=> d!1344867 (= c!754512 lt!1630595)))

(assert (=> d!1344867 (= lt!1630595 (containsKey!1174 (toList!3566 lt!1630455) (_1!28061 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))))))

(assert (=> d!1344867 (= (contains!12208 lt!1630455 (_1!28061 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))) lt!1630596)))

(declare-fun b!4432879 () Bool)

(declare-fun e!2760252 () Bool)

(assert (=> b!4432879 (= e!2760252 (contains!12212 (keys!16986 lt!1630455) (_1!28061 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))))))

(declare-fun b!4432880 () Bool)

(assert (=> b!4432880 false))

(declare-fun lt!1630594 () Unit!82777)

(declare-fun lt!1630590 () Unit!82777)

(assert (=> b!4432880 (= lt!1630594 lt!1630590)))

(assert (=> b!4432880 (containsKey!1174 (toList!3566 lt!1630455) (_1!28061 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616))))))))

(assert (=> b!4432880 (= lt!1630590 (lemmaInGetKeysListThenContainsKey!266 (toList!3566 lt!1630455) (_1!28061 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))))))

(declare-fun e!2760251 () Unit!82777)

(declare-fun Unit!82833 () Unit!82777)

(assert (=> b!4432880 (= e!2760251 Unit!82833)))

(declare-fun b!4432881 () Bool)

(declare-fun lt!1630593 () Unit!82777)

(assert (=> b!4432881 (= e!2760253 lt!1630593)))

(declare-fun lt!1630591 () Unit!82777)

(assert (=> b!4432881 (= lt!1630591 (lemmaContainsKeyImpliesGetValueByKeyDefined!652 (toList!3566 lt!1630455) (_1!28061 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))))))

(assert (=> b!4432881 (isDefined!8049 (getValueByKey!744 (toList!3566 lt!1630455) (_1!28061 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))))))

(declare-fun lt!1630589 () Unit!82777)

(assert (=> b!4432881 (= lt!1630589 lt!1630591)))

(assert (=> b!4432881 (= lt!1630593 (lemmaInListThenGetKeysListContains!265 (toList!3566 lt!1630455) (_1!28061 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))))))

(declare-fun call!308416 () Bool)

(assert (=> b!4432881 call!308416))

(declare-fun b!4432882 () Bool)

(assert (=> b!4432882 (= e!2760253 e!2760251)))

(declare-fun c!754511 () Bool)

(assert (=> b!4432882 (= c!754511 call!308416)))

(declare-fun b!4432883 () Bool)

(assert (=> b!4432883 (= e!2760254 (not (contains!12212 (keys!16986 lt!1630455) (_1!28061 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616))))))))))

(declare-fun b!4432884 () Bool)

(declare-fun Unit!82834 () Unit!82777)

(assert (=> b!4432884 (= e!2760251 Unit!82834)))

(declare-fun bm!308411 () Bool)

(declare-fun e!2760255 () List!49804)

(assert (=> bm!308411 (= call!308416 (contains!12212 e!2760255 (_1!28061 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))))))

(declare-fun c!754510 () Bool)

(assert (=> bm!308411 (= c!754510 c!754512)))

(declare-fun b!4432885 () Bool)

(assert (=> b!4432885 (= e!2760255 (getKeysList!268 (toList!3566 lt!1630455)))))

(declare-fun b!4432886 () Bool)

(assert (=> b!4432886 (= e!2760255 (keys!16986 lt!1630455))))

(declare-fun b!4432887 () Bool)

(assert (=> b!4432887 (= e!2760256 e!2760252)))

(declare-fun res!1834010 () Bool)

(assert (=> b!4432887 (=> (not res!1834010) (not e!2760252))))

(assert (=> b!4432887 (= res!1834010 (isDefined!8049 (getValueByKey!744 (toList!3566 lt!1630455) (_1!28061 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616))))))))))

(assert (= (and d!1344867 c!754512) b!4432881))

(assert (= (and d!1344867 (not c!754512)) b!4432882))

(assert (= (and b!4432882 c!754511) b!4432880))

(assert (= (and b!4432882 (not c!754511)) b!4432884))

(assert (= (or b!4432881 b!4432882) bm!308411))

(assert (= (and bm!308411 c!754510) b!4432885))

(assert (= (and bm!308411 (not c!754510)) b!4432886))

(assert (= (and d!1344867 res!1834008) b!4432883))

(assert (= (and d!1344867 (not res!1834009)) b!4432887))

(assert (= (and b!4432887 res!1834010) b!4432879))

(declare-fun m!5117809 () Bool)

(assert (=> b!4432886 m!5117809))

(assert (=> b!4432883 m!5117809))

(assert (=> b!4432883 m!5117809))

(declare-fun m!5117811 () Bool)

(assert (=> b!4432883 m!5117811))

(declare-fun m!5117813 () Bool)

(assert (=> b!4432881 m!5117813))

(declare-fun m!5117815 () Bool)

(assert (=> b!4432881 m!5117815))

(assert (=> b!4432881 m!5117815))

(declare-fun m!5117817 () Bool)

(assert (=> b!4432881 m!5117817))

(declare-fun m!5117819 () Bool)

(assert (=> b!4432881 m!5117819))

(assert (=> b!4432887 m!5117815))

(assert (=> b!4432887 m!5117815))

(assert (=> b!4432887 m!5117817))

(assert (=> b!4432879 m!5117809))

(assert (=> b!4432879 m!5117809))

(assert (=> b!4432879 m!5117811))

(declare-fun m!5117821 () Bool)

(assert (=> bm!308411 m!5117821))

(declare-fun m!5117823 () Bool)

(assert (=> b!4432880 m!5117823))

(declare-fun m!5117825 () Bool)

(assert (=> b!4432880 m!5117825))

(assert (=> d!1344867 m!5117823))

(declare-fun m!5117827 () Bool)

(assert (=> b!4432885 m!5117827))

(assert (=> b!4432497 d!1344867))

(declare-fun d!1344869 () Bool)

(declare-fun res!1834011 () Bool)

(declare-fun e!2760257 () Bool)

(assert (=> d!1344869 (=> res!1834011 e!2760257)))

(assert (=> d!1344869 (= res!1834011 ((_ is Nil!49677) (t!356741 (_2!28062 (h!55379 (toList!3565 lm!1616))))))))

(assert (=> d!1344869 (= (forall!9626 (t!356741 (_2!28062 (h!55379 (toList!3565 lm!1616)))) lambda!155536) e!2760257)))

(declare-fun b!4432888 () Bool)

(declare-fun e!2760258 () Bool)

(assert (=> b!4432888 (= e!2760257 e!2760258)))

(declare-fun res!1834012 () Bool)

(assert (=> b!4432888 (=> (not res!1834012) (not e!2760258))))

(assert (=> b!4432888 (= res!1834012 (dynLambda!20874 lambda!155536 (h!55378 (t!356741 (_2!28062 (h!55379 (toList!3565 lm!1616)))))))))

(declare-fun b!4432889 () Bool)

(assert (=> b!4432889 (= e!2760258 (forall!9626 (t!356741 (t!356741 (_2!28062 (h!55379 (toList!3565 lm!1616))))) lambda!155536))))

(assert (= (and d!1344869 (not res!1834011)) b!4432888))

(assert (= (and b!4432888 res!1834012) b!4432889))

(declare-fun b_lambda!144047 () Bool)

(assert (=> (not b_lambda!144047) (not b!4432888)))

(declare-fun m!5117829 () Bool)

(assert (=> b!4432888 m!5117829))

(declare-fun m!5117831 () Bool)

(assert (=> b!4432889 m!5117831))

(assert (=> b!4432497 d!1344869))

(declare-fun d!1344871 () Bool)

(declare-fun res!1834013 () Bool)

(declare-fun e!2760259 () Bool)

(assert (=> d!1344871 (=> res!1834013 e!2760259)))

(assert (=> d!1344871 (= res!1834013 ((_ is Nil!49677) (_2!28062 (h!55379 (toList!3565 lm!1616)))))))

(assert (=> d!1344871 (= (forall!9626 (_2!28062 (h!55379 (toList!3565 lm!1616))) lambda!155536) e!2760259)))

(declare-fun b!4432890 () Bool)

(declare-fun e!2760260 () Bool)

(assert (=> b!4432890 (= e!2760259 e!2760260)))

(declare-fun res!1834014 () Bool)

(assert (=> b!4432890 (=> (not res!1834014) (not e!2760260))))

(assert (=> b!4432890 (= res!1834014 (dynLambda!20874 lambda!155536 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616))))))))

(declare-fun b!4432891 () Bool)

(assert (=> b!4432891 (= e!2760260 (forall!9626 (t!356741 (_2!28062 (h!55379 (toList!3565 lm!1616)))) lambda!155536))))

(assert (= (and d!1344871 (not res!1834013)) b!4432890))

(assert (= (and b!4432890 res!1834014) b!4432891))

(declare-fun b_lambda!144049 () Bool)

(assert (=> (not b_lambda!144049) (not b!4432890)))

(declare-fun m!5117833 () Bool)

(assert (=> b!4432890 m!5117833))

(assert (=> b!4432891 m!5117105))

(assert (=> b!4432497 d!1344871))

(declare-fun bs!760374 () Bool)

(declare-fun b!4432896 () Bool)

(assert (= bs!760374 (and b!4432896 d!1344517)))

(declare-fun lambda!155564 () Int)

(assert (=> bs!760374 (= (= (+!1149 (extractMap!850 (t!356742 (toList!3565 lm!1616))) (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616))))) lt!1630435) (= lambda!155564 lambda!155537))))

(declare-fun bs!760375 () Bool)

(assert (= bs!760375 (and b!4432896 b!4432497)))

(assert (=> bs!760375 (= (= (+!1149 (extractMap!850 (t!356742 (toList!3565 lm!1616))) (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616))))) (extractMap!850 (t!356742 (toList!3565 lm!1616)))) (= lambda!155564 lambda!155535))))

(declare-fun bs!760376 () Bool)

(assert (= bs!760376 (and b!4432896 d!1344359)))

(assert (=> bs!760376 (not (= lambda!155564 lambda!155436))))

(declare-fun bs!760377 () Bool)

(assert (= bs!760377 (and b!4432896 b!4432499)))

(assert (=> bs!760377 (= (= (+!1149 (extractMap!850 (t!356742 (toList!3565 lm!1616))) (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616))))) (extractMap!850 (t!356742 (toList!3565 lm!1616)))) (= lambda!155564 lambda!155534))))

(assert (=> bs!760375 (= (= (+!1149 (extractMap!850 (t!356742 (toList!3565 lm!1616))) (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616))))) lt!1630447) (= lambda!155564 lambda!155536))))

(assert (=> b!4432896 true))

(declare-fun bs!760378 () Bool)

(declare-fun b!4432894 () Bool)

(assert (= bs!760378 (and b!4432894 d!1344517)))

(declare-fun lambda!155565 () Int)

(assert (=> bs!760378 (= (= (+!1149 (extractMap!850 (t!356742 (toList!3565 lm!1616))) (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616))))) lt!1630435) (= lambda!155565 lambda!155537))))

(declare-fun bs!760379 () Bool)

(assert (= bs!760379 (and b!4432894 b!4432497)))

(assert (=> bs!760379 (= (= (+!1149 (extractMap!850 (t!356742 (toList!3565 lm!1616))) (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616))))) (extractMap!850 (t!356742 (toList!3565 lm!1616)))) (= lambda!155565 lambda!155535))))

(declare-fun bs!760380 () Bool)

(assert (= bs!760380 (and b!4432894 d!1344359)))

(assert (=> bs!760380 (not (= lambda!155565 lambda!155436))))

(declare-fun bs!760381 () Bool)

(assert (= bs!760381 (and b!4432894 b!4432499)))

(assert (=> bs!760381 (= (= (+!1149 (extractMap!850 (t!356742 (toList!3565 lm!1616))) (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616))))) (extractMap!850 (t!356742 (toList!3565 lm!1616)))) (= lambda!155565 lambda!155534))))

(assert (=> bs!760379 (= (= (+!1149 (extractMap!850 (t!356742 (toList!3565 lm!1616))) (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616))))) lt!1630447) (= lambda!155565 lambda!155536))))

(declare-fun bs!760382 () Bool)

(assert (= bs!760382 (and b!4432894 b!4432896)))

(assert (=> bs!760382 (= lambda!155565 lambda!155564)))

(assert (=> b!4432894 true))

(declare-fun lambda!155566 () Int)

(declare-fun lt!1630609 () ListMap!2809)

(assert (=> bs!760378 (= (= lt!1630609 lt!1630435) (= lambda!155566 lambda!155537))))

(assert (=> bs!760380 (not (= lambda!155566 lambda!155436))))

(assert (=> bs!760381 (= (= lt!1630609 (extractMap!850 (t!356742 (toList!3565 lm!1616)))) (= lambda!155566 lambda!155534))))

(assert (=> bs!760379 (= (= lt!1630609 lt!1630447) (= lambda!155566 lambda!155536))))

(assert (=> bs!760382 (= (= lt!1630609 (+!1149 (extractMap!850 (t!356742 (toList!3565 lm!1616))) (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))) (= lambda!155566 lambda!155564))))

(assert (=> b!4432894 (= (= lt!1630609 (+!1149 (extractMap!850 (t!356742 (toList!3565 lm!1616))) (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))) (= lambda!155566 lambda!155565))))

(assert (=> bs!760379 (= (= lt!1630609 (extractMap!850 (t!356742 (toList!3565 lm!1616)))) (= lambda!155566 lambda!155535))))

(assert (=> b!4432894 true))

(declare-fun bs!760383 () Bool)

(declare-fun d!1344873 () Bool)

(assert (= bs!760383 (and d!1344873 d!1344517)))

(declare-fun lt!1630597 () ListMap!2809)

(declare-fun lambda!155567 () Int)

(assert (=> bs!760383 (= (= lt!1630597 lt!1630435) (= lambda!155567 lambda!155537))))

(declare-fun bs!760384 () Bool)

(assert (= bs!760384 (and d!1344873 b!4432894)))

(assert (=> bs!760384 (= (= lt!1630597 lt!1630609) (= lambda!155567 lambda!155566))))

(declare-fun bs!760385 () Bool)

(assert (= bs!760385 (and d!1344873 d!1344359)))

(assert (=> bs!760385 (not (= lambda!155567 lambda!155436))))

(declare-fun bs!760386 () Bool)

(assert (= bs!760386 (and d!1344873 b!4432499)))

(assert (=> bs!760386 (= (= lt!1630597 (extractMap!850 (t!356742 (toList!3565 lm!1616)))) (= lambda!155567 lambda!155534))))

(declare-fun bs!760387 () Bool)

(assert (= bs!760387 (and d!1344873 b!4432497)))

(assert (=> bs!760387 (= (= lt!1630597 lt!1630447) (= lambda!155567 lambda!155536))))

(declare-fun bs!760388 () Bool)

(assert (= bs!760388 (and d!1344873 b!4432896)))

(assert (=> bs!760388 (= (= lt!1630597 (+!1149 (extractMap!850 (t!356742 (toList!3565 lm!1616))) (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))) (= lambda!155567 lambda!155564))))

(assert (=> bs!760384 (= (= lt!1630597 (+!1149 (extractMap!850 (t!356742 (toList!3565 lm!1616))) (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))) (= lambda!155567 lambda!155565))))

(assert (=> bs!760387 (= (= lt!1630597 (extractMap!850 (t!356742 (toList!3565 lm!1616)))) (= lambda!155567 lambda!155535))))

(assert (=> d!1344873 true))

(declare-fun e!2760263 () Bool)

(assert (=> d!1344873 e!2760263))

(declare-fun res!1834016 () Bool)

(assert (=> d!1344873 (=> (not res!1834016) (not e!2760263))))

(assert (=> d!1344873 (= res!1834016 (forall!9626 (t!356741 (_2!28062 (h!55379 (toList!3565 lm!1616)))) lambda!155567))))

(declare-fun e!2760262 () ListMap!2809)

(assert (=> d!1344873 (= lt!1630597 e!2760262)))

(declare-fun c!754513 () Bool)

(assert (=> d!1344873 (= c!754513 ((_ is Nil!49677) (t!356741 (_2!28062 (h!55379 (toList!3565 lm!1616))))))))

(assert (=> d!1344873 (noDuplicateKeys!789 (t!356741 (_2!28062 (h!55379 (toList!3565 lm!1616)))))))

(assert (=> d!1344873 (= (addToMapMapFromBucket!414 (t!356741 (_2!28062 (h!55379 (toList!3565 lm!1616)))) (+!1149 (extractMap!850 (t!356742 (toList!3565 lm!1616))) (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))) lt!1630597)))

(declare-fun call!308419 () Bool)

(declare-fun bm!308412 () Bool)

(assert (=> bm!308412 (= call!308419 (forall!9626 (ite c!754513 (toList!3566 (+!1149 (extractMap!850 (t!356742 (toList!3565 lm!1616))) (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))) (t!356741 (_2!28062 (h!55379 (toList!3565 lm!1616))))) (ite c!754513 lambda!155564 lambda!155566)))))

(declare-fun b!4432892 () Bool)

(assert (=> b!4432892 (= e!2760263 (invariantList!821 (toList!3566 lt!1630597)))))

(declare-fun b!4432893 () Bool)

(declare-fun res!1834015 () Bool)

(assert (=> b!4432893 (=> (not res!1834015) (not e!2760263))))

(assert (=> b!4432893 (= res!1834015 (forall!9626 (toList!3566 (+!1149 (extractMap!850 (t!356742 (toList!3565 lm!1616))) (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))) lambda!155567))))

(declare-fun bm!308413 () Bool)

(declare-fun call!308418 () Unit!82777)

(assert (=> bm!308413 (= call!308418 (lemmaContainsAllItsOwnKeys!189 (+!1149 (extractMap!850 (t!356742 (toList!3565 lm!1616))) (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))))))

(assert (=> b!4432894 (= e!2760262 lt!1630609)))

(declare-fun lt!1630617 () ListMap!2809)

(assert (=> b!4432894 (= lt!1630617 (+!1149 (+!1149 (extractMap!850 (t!356742 (toList!3565 lm!1616))) (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616))))) (h!55378 (t!356741 (_2!28062 (h!55379 (toList!3565 lm!1616)))))))))

(assert (=> b!4432894 (= lt!1630609 (addToMapMapFromBucket!414 (t!356741 (t!356741 (_2!28062 (h!55379 (toList!3565 lm!1616))))) (+!1149 (+!1149 (extractMap!850 (t!356742 (toList!3565 lm!1616))) (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616))))) (h!55378 (t!356741 (_2!28062 (h!55379 (toList!3565 lm!1616))))))))))

(declare-fun lt!1630605 () Unit!82777)

(assert (=> b!4432894 (= lt!1630605 call!308418)))

(assert (=> b!4432894 (forall!9626 (toList!3566 (+!1149 (extractMap!850 (t!356742 (toList!3565 lm!1616))) (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))) lambda!155565)))

(declare-fun lt!1630603 () Unit!82777)

(assert (=> b!4432894 (= lt!1630603 lt!1630605)))

(declare-fun call!308417 () Bool)

(assert (=> b!4432894 call!308417))

(declare-fun lt!1630600 () Unit!82777)

(declare-fun Unit!82836 () Unit!82777)

(assert (=> b!4432894 (= lt!1630600 Unit!82836)))

(assert (=> b!4432894 (forall!9626 (t!356741 (t!356741 (_2!28062 (h!55379 (toList!3565 lm!1616))))) lambda!155566)))

(declare-fun lt!1630606 () Unit!82777)

(declare-fun Unit!82837 () Unit!82777)

(assert (=> b!4432894 (= lt!1630606 Unit!82837)))

(declare-fun lt!1630601 () Unit!82777)

(declare-fun Unit!82838 () Unit!82777)

(assert (=> b!4432894 (= lt!1630601 Unit!82838)))

(declare-fun lt!1630604 () Unit!82777)

(assert (=> b!4432894 (= lt!1630604 (forallContained!2117 (toList!3566 lt!1630617) lambda!155566 (h!55378 (t!356741 (_2!28062 (h!55379 (toList!3565 lm!1616)))))))))

(assert (=> b!4432894 (contains!12208 lt!1630617 (_1!28061 (h!55378 (t!356741 (_2!28062 (h!55379 (toList!3565 lm!1616)))))))))

(declare-fun lt!1630599 () Unit!82777)

(declare-fun Unit!82839 () Unit!82777)

(assert (=> b!4432894 (= lt!1630599 Unit!82839)))

(assert (=> b!4432894 (contains!12208 lt!1630609 (_1!28061 (h!55378 (t!356741 (_2!28062 (h!55379 (toList!3565 lm!1616)))))))))

(declare-fun lt!1630602 () Unit!82777)

(declare-fun Unit!82840 () Unit!82777)

(assert (=> b!4432894 (= lt!1630602 Unit!82840)))

(assert (=> b!4432894 call!308419))

(declare-fun lt!1630613 () Unit!82777)

(declare-fun Unit!82841 () Unit!82777)

(assert (=> b!4432894 (= lt!1630613 Unit!82841)))

(assert (=> b!4432894 (forall!9626 (toList!3566 lt!1630617) lambda!155566)))

(declare-fun lt!1630608 () Unit!82777)

(declare-fun Unit!82842 () Unit!82777)

(assert (=> b!4432894 (= lt!1630608 Unit!82842)))

(declare-fun lt!1630607 () Unit!82777)

(declare-fun Unit!82843 () Unit!82777)

(assert (=> b!4432894 (= lt!1630607 Unit!82843)))

(declare-fun lt!1630611 () Unit!82777)

(assert (=> b!4432894 (= lt!1630611 (addForallContainsKeyThenBeforeAdding!189 (+!1149 (extractMap!850 (t!356742 (toList!3565 lm!1616))) (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616))))) lt!1630609 (_1!28061 (h!55378 (t!356741 (_2!28062 (h!55379 (toList!3565 lm!1616)))))) (_2!28061 (h!55378 (t!356741 (_2!28062 (h!55379 (toList!3565 lm!1616))))))))))

(assert (=> b!4432894 (forall!9626 (toList!3566 (+!1149 (extractMap!850 (t!356742 (toList!3565 lm!1616))) (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))) lambda!155566)))

(declare-fun lt!1630598 () Unit!82777)

(assert (=> b!4432894 (= lt!1630598 lt!1630611)))

(assert (=> b!4432894 (forall!9626 (toList!3566 (+!1149 (extractMap!850 (t!356742 (toList!3565 lm!1616))) (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))) lambda!155566)))

(declare-fun lt!1630610 () Unit!82777)

(declare-fun Unit!82844 () Unit!82777)

(assert (=> b!4432894 (= lt!1630610 Unit!82844)))

(declare-fun res!1834017 () Bool)

(assert (=> b!4432894 (= res!1834017 (forall!9626 (t!356741 (_2!28062 (h!55379 (toList!3565 lm!1616)))) lambda!155566))))

(declare-fun e!2760261 () Bool)

(assert (=> b!4432894 (=> (not res!1834017) (not e!2760261))))

(assert (=> b!4432894 e!2760261))

(declare-fun lt!1630615 () Unit!82777)

(declare-fun Unit!82845 () Unit!82777)

(assert (=> b!4432894 (= lt!1630615 Unit!82845)))

(declare-fun b!4432895 () Bool)

(assert (=> b!4432895 (= e!2760261 (forall!9626 (toList!3566 (+!1149 (extractMap!850 (t!356742 (toList!3565 lm!1616))) (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))) lambda!155566))))

(declare-fun bm!308414 () Bool)

(assert (=> bm!308414 (= call!308417 (forall!9626 (ite c!754513 (toList!3566 (+!1149 (extractMap!850 (t!356742 (toList!3565 lm!1616))) (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))) (toList!3566 lt!1630617)) (ite c!754513 lambda!155564 lambda!155566)))))

(assert (=> b!4432896 (= e!2760262 (+!1149 (extractMap!850 (t!356742 (toList!3565 lm!1616))) (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616))))))))

(declare-fun lt!1630616 () Unit!82777)

(assert (=> b!4432896 (= lt!1630616 call!308418)))

(assert (=> b!4432896 call!308419))

(declare-fun lt!1630614 () Unit!82777)

(assert (=> b!4432896 (= lt!1630614 lt!1630616)))

(assert (=> b!4432896 call!308417))

(declare-fun lt!1630612 () Unit!82777)

(declare-fun Unit!82846 () Unit!82777)

(assert (=> b!4432896 (= lt!1630612 Unit!82846)))

(assert (= (and d!1344873 c!754513) b!4432896))

(assert (= (and d!1344873 (not c!754513)) b!4432894))

(assert (= (and b!4432894 res!1834017) b!4432895))

(assert (= (or b!4432896 b!4432894) bm!308413))

(assert (= (or b!4432896 b!4432894) bm!308414))

(assert (= (or b!4432896 b!4432894) bm!308412))

(assert (= (and d!1344873 res!1834016) b!4432893))

(assert (= (and b!4432893 res!1834015) b!4432892))

(declare-fun m!5117835 () Bool)

(assert (=> b!4432893 m!5117835))

(declare-fun m!5117837 () Bool)

(assert (=> bm!308414 m!5117837))

(declare-fun m!5117839 () Bool)

(assert (=> bm!308412 m!5117839))

(declare-fun m!5117841 () Bool)

(assert (=> b!4432894 m!5117841))

(declare-fun m!5117843 () Bool)

(assert (=> b!4432894 m!5117843))

(declare-fun m!5117845 () Bool)

(assert (=> b!4432894 m!5117845))

(assert (=> b!4432894 m!5117089))

(declare-fun m!5117847 () Bool)

(assert (=> b!4432894 m!5117847))

(assert (=> b!4432894 m!5117089))

(assert (=> b!4432894 m!5117843))

(declare-fun m!5117849 () Bool)

(assert (=> b!4432894 m!5117849))

(declare-fun m!5117851 () Bool)

(assert (=> b!4432894 m!5117851))

(declare-fun m!5117853 () Bool)

(assert (=> b!4432894 m!5117853))

(declare-fun m!5117855 () Bool)

(assert (=> b!4432894 m!5117855))

(declare-fun m!5117857 () Bool)

(assert (=> b!4432894 m!5117857))

(assert (=> b!4432894 m!5117855))

(declare-fun m!5117859 () Bool)

(assert (=> b!4432894 m!5117859))

(declare-fun m!5117861 () Bool)

(assert (=> b!4432894 m!5117861))

(declare-fun m!5117863 () Bool)

(assert (=> b!4432892 m!5117863))

(assert (=> bm!308413 m!5117089))

(declare-fun m!5117865 () Bool)

(assert (=> bm!308413 m!5117865))

(assert (=> b!4432895 m!5117855))

(declare-fun m!5117867 () Bool)

(assert (=> d!1344873 m!5117867))

(assert (=> d!1344873 m!5117125))

(assert (=> b!4432497 d!1344873))

(declare-fun d!1344875 () Bool)

(declare-fun res!1834018 () Bool)

(declare-fun e!2760264 () Bool)

(assert (=> d!1344875 (=> res!1834018 e!2760264)))

(assert (=> d!1344875 (= res!1834018 ((_ is Nil!49677) (toList!3566 (extractMap!850 (t!356742 (toList!3565 lm!1616))))))))

(assert (=> d!1344875 (= (forall!9626 (toList!3566 (extractMap!850 (t!356742 (toList!3565 lm!1616)))) lambda!155536) e!2760264)))

(declare-fun b!4432897 () Bool)

(declare-fun e!2760265 () Bool)

(assert (=> b!4432897 (= e!2760264 e!2760265)))

(declare-fun res!1834019 () Bool)

(assert (=> b!4432897 (=> (not res!1834019) (not e!2760265))))

(assert (=> b!4432897 (= res!1834019 (dynLambda!20874 lambda!155536 (h!55378 (toList!3566 (extractMap!850 (t!356742 (toList!3565 lm!1616)))))))))

(declare-fun b!4432898 () Bool)

(assert (=> b!4432898 (= e!2760265 (forall!9626 (t!356741 (toList!3566 (extractMap!850 (t!356742 (toList!3565 lm!1616))))) lambda!155536))))

(assert (= (and d!1344875 (not res!1834018)) b!4432897))

(assert (= (and b!4432897 res!1834019) b!4432898))

(declare-fun b_lambda!144051 () Bool)

(assert (=> (not b_lambda!144051) (not b!4432897)))

(declare-fun m!5117869 () Bool)

(assert (=> b!4432897 m!5117869))

(declare-fun m!5117871 () Bool)

(assert (=> b!4432898 m!5117871))

(assert (=> b!4432497 d!1344875))

(declare-fun bs!760389 () Bool)

(declare-fun d!1344877 () Bool)

(assert (= bs!760389 (and d!1344877 d!1344873)))

(declare-fun lambda!155572 () Int)

(assert (=> bs!760389 (= (= lt!1630447 lt!1630597) (= lambda!155572 lambda!155567))))

(declare-fun bs!760390 () Bool)

(assert (= bs!760390 (and d!1344877 d!1344517)))

(assert (=> bs!760390 (= (= lt!1630447 lt!1630435) (= lambda!155572 lambda!155537))))

(declare-fun bs!760391 () Bool)

(assert (= bs!760391 (and d!1344877 b!4432894)))

(assert (=> bs!760391 (= (= lt!1630447 lt!1630609) (= lambda!155572 lambda!155566))))

(declare-fun bs!760392 () Bool)

(assert (= bs!760392 (and d!1344877 d!1344359)))

(assert (=> bs!760392 (not (= lambda!155572 lambda!155436))))

(declare-fun bs!760393 () Bool)

(assert (= bs!760393 (and d!1344877 b!4432499)))

(assert (=> bs!760393 (= (= lt!1630447 (extractMap!850 (t!356742 (toList!3565 lm!1616)))) (= lambda!155572 lambda!155534))))

(declare-fun bs!760394 () Bool)

(assert (= bs!760394 (and d!1344877 b!4432497)))

(assert (=> bs!760394 (= lambda!155572 lambda!155536)))

(declare-fun bs!760395 () Bool)

(assert (= bs!760395 (and d!1344877 b!4432896)))

(assert (=> bs!760395 (= (= lt!1630447 (+!1149 (extractMap!850 (t!356742 (toList!3565 lm!1616))) (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))) (= lambda!155572 lambda!155564))))

(assert (=> bs!760391 (= (= lt!1630447 (+!1149 (extractMap!850 (t!356742 (toList!3565 lm!1616))) (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))) (= lambda!155572 lambda!155565))))

(assert (=> bs!760394 (= (= lt!1630447 (extractMap!850 (t!356742 (toList!3565 lm!1616)))) (= lambda!155572 lambda!155535))))

(assert (=> d!1344877 true))

(assert (=> d!1344877 (forall!9626 (toList!3566 (extractMap!850 (t!356742 (toList!3565 lm!1616)))) lambda!155572)))

(declare-fun lt!1630620 () Unit!82777)

(declare-fun choose!28085 (ListMap!2809 ListMap!2809 K!11045 V!11291) Unit!82777)

(assert (=> d!1344877 (= lt!1630620 (choose!28085 (extractMap!850 (t!356742 (toList!3565 lm!1616))) lt!1630447 (_1!28061 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616))))) (_2!28061 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))))))

(assert (=> d!1344877 (forall!9626 (toList!3566 (+!1149 (extractMap!850 (t!356742 (toList!3565 lm!1616))) (tuple2!49535 (_1!28061 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616))))) (_2!28061 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))))) lambda!155572)))

(assert (=> d!1344877 (= (addForallContainsKeyThenBeforeAdding!189 (extractMap!850 (t!356742 (toList!3565 lm!1616))) lt!1630447 (_1!28061 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616))))) (_2!28061 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))) lt!1630620)))

(declare-fun bs!760396 () Bool)

(assert (= bs!760396 d!1344877))

(declare-fun m!5117873 () Bool)

(assert (=> bs!760396 m!5117873))

(assert (=> bs!760396 m!5116669))

(declare-fun m!5117875 () Bool)

(assert (=> bs!760396 m!5117875))

(assert (=> bs!760396 m!5116669))

(declare-fun m!5117877 () Bool)

(assert (=> bs!760396 m!5117877))

(declare-fun m!5117879 () Bool)

(assert (=> bs!760396 m!5117879))

(assert (=> b!4432497 d!1344877))

(declare-fun d!1344879 () Bool)

(declare-fun e!2760268 () Bool)

(assert (=> d!1344879 e!2760268))

(declare-fun res!1834025 () Bool)

(assert (=> d!1344879 (=> (not res!1834025) (not e!2760268))))

(declare-fun lt!1630631 () ListMap!2809)

(assert (=> d!1344879 (= res!1834025 (contains!12208 lt!1630631 (_1!28061 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))))))

(declare-fun lt!1630630 () List!49801)

(assert (=> d!1344879 (= lt!1630631 (ListMap!2810 lt!1630630))))

(declare-fun lt!1630632 () Unit!82777)

(declare-fun lt!1630629 () Unit!82777)

(assert (=> d!1344879 (= lt!1630632 lt!1630629)))

(assert (=> d!1344879 (= (getValueByKey!744 lt!1630630 (_1!28061 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))) (Some!10757 (_2!28061 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!476 (List!49801 K!11045 V!11291) Unit!82777)

(assert (=> d!1344879 (= lt!1630629 (lemmaContainsTupThenGetReturnValue!476 lt!1630630 (_1!28061 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616))))) (_2!28061 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))))))

(declare-fun insertNoDuplicatedKeys!208 (List!49801 K!11045 V!11291) List!49801)

(assert (=> d!1344879 (= lt!1630630 (insertNoDuplicatedKeys!208 (toList!3566 (extractMap!850 (t!356742 (toList!3565 lm!1616)))) (_1!28061 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616))))) (_2!28061 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))))))

(assert (=> d!1344879 (= (+!1149 (extractMap!850 (t!356742 (toList!3565 lm!1616))) (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616))))) lt!1630631)))

(declare-fun b!4432904 () Bool)

(declare-fun res!1834024 () Bool)

(assert (=> b!4432904 (=> (not res!1834024) (not e!2760268))))

(assert (=> b!4432904 (= res!1834024 (= (getValueByKey!744 (toList!3566 lt!1630631) (_1!28061 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))) (Some!10757 (_2!28061 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616))))))))))

(declare-fun b!4432905 () Bool)

(declare-fun contains!12214 (List!49801 tuple2!49534) Bool)

(assert (=> b!4432905 (= e!2760268 (contains!12214 (toList!3566 lt!1630631) (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616))))))))

(assert (= (and d!1344879 res!1834025) b!4432904))

(assert (= (and b!4432904 res!1834024) b!4432905))

(declare-fun m!5117881 () Bool)

(assert (=> d!1344879 m!5117881))

(declare-fun m!5117883 () Bool)

(assert (=> d!1344879 m!5117883))

(declare-fun m!5117885 () Bool)

(assert (=> d!1344879 m!5117885))

(declare-fun m!5117887 () Bool)

(assert (=> d!1344879 m!5117887))

(declare-fun m!5117889 () Bool)

(assert (=> b!4432904 m!5117889))

(declare-fun m!5117891 () Bool)

(assert (=> b!4432905 m!5117891))

(assert (=> b!4432497 d!1344879))

(declare-fun d!1344881 () Bool)

(declare-fun res!1834026 () Bool)

(declare-fun e!2760269 () Bool)

(assert (=> d!1344881 (=> res!1834026 e!2760269)))

(assert (=> d!1344881 (= res!1834026 ((_ is Nil!49677) (toList!3566 lt!1630455)))))

(assert (=> d!1344881 (= (forall!9626 (toList!3566 lt!1630455) lambda!155536) e!2760269)))

(declare-fun b!4432906 () Bool)

(declare-fun e!2760270 () Bool)

(assert (=> b!4432906 (= e!2760269 e!2760270)))

(declare-fun res!1834027 () Bool)

(assert (=> b!4432906 (=> (not res!1834027) (not e!2760270))))

(assert (=> b!4432906 (= res!1834027 (dynLambda!20874 lambda!155536 (h!55378 (toList!3566 lt!1630455))))))

(declare-fun b!4432907 () Bool)

(assert (=> b!4432907 (= e!2760270 (forall!9626 (t!356741 (toList!3566 lt!1630455)) lambda!155536))))

(assert (= (and d!1344881 (not res!1834026)) b!4432906))

(assert (= (and b!4432906 res!1834027) b!4432907))

(declare-fun b_lambda!144053 () Bool)

(assert (=> (not b_lambda!144053) (not b!4432906)))

(declare-fun m!5117893 () Bool)

(assert (=> b!4432906 m!5117893))

(declare-fun m!5117895 () Bool)

(assert (=> b!4432907 m!5117895))

(assert (=> b!4432497 d!1344881))

(declare-fun d!1344883 () Bool)

(assert (=> d!1344883 (dynLambda!20874 lambda!155536 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))))

(declare-fun lt!1630635 () Unit!82777)

(declare-fun choose!28087 (List!49801 Int tuple2!49534) Unit!82777)

(assert (=> d!1344883 (= lt!1630635 (choose!28087 (toList!3566 lt!1630455) lambda!155536 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616))))))))

(declare-fun e!2760273 () Bool)

(assert (=> d!1344883 e!2760273))

(declare-fun res!1834030 () Bool)

(assert (=> d!1344883 (=> (not res!1834030) (not e!2760273))))

(assert (=> d!1344883 (= res!1834030 (forall!9626 (toList!3566 lt!1630455) lambda!155536))))

(assert (=> d!1344883 (= (forallContained!2117 (toList!3566 lt!1630455) lambda!155536 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616))))) lt!1630635)))

(declare-fun b!4432910 () Bool)

(assert (=> b!4432910 (= e!2760273 (contains!12214 (toList!3566 lt!1630455) (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616))))))))

(assert (= (and d!1344883 res!1834030) b!4432910))

(declare-fun b_lambda!144055 () Bool)

(assert (=> (not b_lambda!144055) (not d!1344883)))

(assert (=> d!1344883 m!5117833))

(declare-fun m!5117897 () Bool)

(assert (=> d!1344883 m!5117897))

(assert (=> d!1344883 m!5117095))

(declare-fun m!5117899 () Bool)

(assert (=> b!4432910 m!5117899))

(assert (=> b!4432497 d!1344883))

(declare-fun d!1344885 () Bool)

(declare-fun res!1834031 () Bool)

(declare-fun e!2760274 () Bool)

(assert (=> d!1344885 (=> res!1834031 e!2760274)))

(assert (=> d!1344885 (= res!1834031 ((_ is Nil!49677) (toList!3566 (extractMap!850 (t!356742 (toList!3565 lm!1616))))))))

(assert (=> d!1344885 (= (forall!9626 (toList!3566 (extractMap!850 (t!356742 (toList!3565 lm!1616)))) lambda!155535) e!2760274)))

(declare-fun b!4432911 () Bool)

(declare-fun e!2760275 () Bool)

(assert (=> b!4432911 (= e!2760274 e!2760275)))

(declare-fun res!1834032 () Bool)

(assert (=> b!4432911 (=> (not res!1834032) (not e!2760275))))

(assert (=> b!4432911 (= res!1834032 (dynLambda!20874 lambda!155535 (h!55378 (toList!3566 (extractMap!850 (t!356742 (toList!3565 lm!1616)))))))))

(declare-fun b!4432912 () Bool)

(assert (=> b!4432912 (= e!2760275 (forall!9626 (t!356741 (toList!3566 (extractMap!850 (t!356742 (toList!3565 lm!1616))))) lambda!155535))))

(assert (= (and d!1344885 (not res!1834031)) b!4432911))

(assert (= (and b!4432911 res!1834032) b!4432912))

(declare-fun b_lambda!144057 () Bool)

(assert (=> (not b_lambda!144057) (not b!4432911)))

(declare-fun m!5117901 () Bool)

(assert (=> b!4432911 m!5117901))

(declare-fun m!5117903 () Bool)

(assert (=> b!4432912 m!5117903))

(assert (=> b!4432497 d!1344885))

(declare-fun d!1344887 () Bool)

(declare-fun e!2760281 () Bool)

(assert (=> d!1344887 e!2760281))

(declare-fun res!1834034 () Bool)

(assert (=> d!1344887 (=> res!1834034 e!2760281)))

(declare-fun e!2760279 () Bool)

(assert (=> d!1344887 (= res!1834034 e!2760279)))

(declare-fun res!1834033 () Bool)

(assert (=> d!1344887 (=> (not res!1834033) (not e!2760279))))

(declare-fun lt!1630643 () Bool)

(assert (=> d!1344887 (= res!1834033 (not lt!1630643))))

(declare-fun lt!1630642 () Bool)

(assert (=> d!1344887 (= lt!1630643 lt!1630642)))

(declare-fun lt!1630639 () Unit!82777)

(declare-fun e!2760278 () Unit!82777)

(assert (=> d!1344887 (= lt!1630639 e!2760278)))

(declare-fun c!754516 () Bool)

(assert (=> d!1344887 (= c!754516 lt!1630642)))

(assert (=> d!1344887 (= lt!1630642 (containsKey!1174 (toList!3566 lt!1630447) (_1!28061 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))))))

(assert (=> d!1344887 (= (contains!12208 lt!1630447 (_1!28061 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))) lt!1630643)))

(declare-fun b!4432913 () Bool)

(declare-fun e!2760277 () Bool)

(assert (=> b!4432913 (= e!2760277 (contains!12212 (keys!16986 lt!1630447) (_1!28061 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))))))

(declare-fun b!4432914 () Bool)

(assert (=> b!4432914 false))

(declare-fun lt!1630641 () Unit!82777)

(declare-fun lt!1630637 () Unit!82777)

(assert (=> b!4432914 (= lt!1630641 lt!1630637)))

(assert (=> b!4432914 (containsKey!1174 (toList!3566 lt!1630447) (_1!28061 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616))))))))

(assert (=> b!4432914 (= lt!1630637 (lemmaInGetKeysListThenContainsKey!266 (toList!3566 lt!1630447) (_1!28061 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))))))

(declare-fun e!2760276 () Unit!82777)

(declare-fun Unit!82848 () Unit!82777)

(assert (=> b!4432914 (= e!2760276 Unit!82848)))

(declare-fun b!4432915 () Bool)

(declare-fun lt!1630640 () Unit!82777)

(assert (=> b!4432915 (= e!2760278 lt!1630640)))

(declare-fun lt!1630638 () Unit!82777)

(assert (=> b!4432915 (= lt!1630638 (lemmaContainsKeyImpliesGetValueByKeyDefined!652 (toList!3566 lt!1630447) (_1!28061 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))))))

(assert (=> b!4432915 (isDefined!8049 (getValueByKey!744 (toList!3566 lt!1630447) (_1!28061 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))))))

(declare-fun lt!1630636 () Unit!82777)

(assert (=> b!4432915 (= lt!1630636 lt!1630638)))

(assert (=> b!4432915 (= lt!1630640 (lemmaInListThenGetKeysListContains!265 (toList!3566 lt!1630447) (_1!28061 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))))))

(declare-fun call!308420 () Bool)

(assert (=> b!4432915 call!308420))

(declare-fun b!4432916 () Bool)

(assert (=> b!4432916 (= e!2760278 e!2760276)))

(declare-fun c!754515 () Bool)

(assert (=> b!4432916 (= c!754515 call!308420)))

(declare-fun b!4432917 () Bool)

(assert (=> b!4432917 (= e!2760279 (not (contains!12212 (keys!16986 lt!1630447) (_1!28061 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616))))))))))

(declare-fun b!4432918 () Bool)

(declare-fun Unit!82850 () Unit!82777)

(assert (=> b!4432918 (= e!2760276 Unit!82850)))

(declare-fun bm!308415 () Bool)

(declare-fun e!2760280 () List!49804)

(assert (=> bm!308415 (= call!308420 (contains!12212 e!2760280 (_1!28061 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))))))

(declare-fun c!754514 () Bool)

(assert (=> bm!308415 (= c!754514 c!754516)))

(declare-fun b!4432919 () Bool)

(assert (=> b!4432919 (= e!2760280 (getKeysList!268 (toList!3566 lt!1630447)))))

(declare-fun b!4432920 () Bool)

(assert (=> b!4432920 (= e!2760280 (keys!16986 lt!1630447))))

(declare-fun b!4432921 () Bool)

(assert (=> b!4432921 (= e!2760281 e!2760277)))

(declare-fun res!1834035 () Bool)

(assert (=> b!4432921 (=> (not res!1834035) (not e!2760277))))

(assert (=> b!4432921 (= res!1834035 (isDefined!8049 (getValueByKey!744 (toList!3566 lt!1630447) (_1!28061 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616))))))))))

(assert (= (and d!1344887 c!754516) b!4432915))

(assert (= (and d!1344887 (not c!754516)) b!4432916))

(assert (= (and b!4432916 c!754515) b!4432914))

(assert (= (and b!4432916 (not c!754515)) b!4432918))

(assert (= (or b!4432915 b!4432916) bm!308415))

(assert (= (and bm!308415 c!754514) b!4432919))

(assert (= (and bm!308415 (not c!754514)) b!4432920))

(assert (= (and d!1344887 res!1834033) b!4432917))

(assert (= (and d!1344887 (not res!1834034)) b!4432921))

(assert (= (and b!4432921 res!1834035) b!4432913))

(declare-fun m!5117905 () Bool)

(assert (=> b!4432920 m!5117905))

(assert (=> b!4432917 m!5117905))

(assert (=> b!4432917 m!5117905))

(declare-fun m!5117907 () Bool)

(assert (=> b!4432917 m!5117907))

(declare-fun m!5117909 () Bool)

(assert (=> b!4432915 m!5117909))

(declare-fun m!5117911 () Bool)

(assert (=> b!4432915 m!5117911))

(assert (=> b!4432915 m!5117911))

(declare-fun m!5117913 () Bool)

(assert (=> b!4432915 m!5117913))

(declare-fun m!5117915 () Bool)

(assert (=> b!4432915 m!5117915))

(assert (=> b!4432921 m!5117911))

(assert (=> b!4432921 m!5117911))

(assert (=> b!4432921 m!5117913))

(assert (=> b!4432913 m!5117905))

(assert (=> b!4432913 m!5117905))

(assert (=> b!4432913 m!5117907))

(declare-fun m!5117917 () Bool)

(assert (=> bm!308415 m!5117917))

(declare-fun m!5117919 () Bool)

(assert (=> b!4432914 m!5117919))

(declare-fun m!5117921 () Bool)

(assert (=> b!4432914 m!5117921))

(assert (=> d!1344887 m!5117919))

(declare-fun m!5117923 () Bool)

(assert (=> b!4432919 m!5117923))

(assert (=> b!4432497 d!1344887))

(declare-fun d!1344889 () Bool)

(assert (=> d!1344889 (= (invariantList!821 (toList!3566 lt!1630456)) (noDuplicatedKeys!182 (toList!3566 lt!1630456)))))

(declare-fun bs!760397 () Bool)

(assert (= bs!760397 d!1344889))

(declare-fun m!5117925 () Bool)

(assert (=> bs!760397 m!5117925))

(assert (=> d!1344519 d!1344889))

(declare-fun d!1344891 () Bool)

(declare-fun res!1834036 () Bool)

(declare-fun e!2760282 () Bool)

(assert (=> d!1344891 (=> res!1834036 e!2760282)))

(assert (=> d!1344891 (= res!1834036 ((_ is Nil!49678) (t!356742 (toList!3565 lm!1616))))))

(assert (=> d!1344891 (= (forall!9624 (t!356742 (toList!3565 lm!1616)) lambda!155538) e!2760282)))

(declare-fun b!4432922 () Bool)

(declare-fun e!2760283 () Bool)

(assert (=> b!4432922 (= e!2760282 e!2760283)))

(declare-fun res!1834037 () Bool)

(assert (=> b!4432922 (=> (not res!1834037) (not e!2760283))))

(assert (=> b!4432922 (= res!1834037 (dynLambda!20872 lambda!155538 (h!55379 (t!356742 (toList!3565 lm!1616)))))))

(declare-fun b!4432923 () Bool)

(assert (=> b!4432923 (= e!2760283 (forall!9624 (t!356742 (t!356742 (toList!3565 lm!1616))) lambda!155538))))

(assert (= (and d!1344891 (not res!1834036)) b!4432922))

(assert (= (and b!4432922 res!1834037) b!4432923))

(declare-fun b_lambda!144059 () Bool)

(assert (=> (not b_lambda!144059) (not b!4432922)))

(declare-fun m!5117927 () Bool)

(assert (=> b!4432922 m!5117927))

(declare-fun m!5117929 () Bool)

(assert (=> b!4432923 m!5117929))

(assert (=> d!1344519 d!1344891))

(declare-fun d!1344893 () Bool)

(declare-fun res!1834038 () Bool)

(declare-fun e!2760284 () Bool)

(assert (=> d!1344893 (=> res!1834038 e!2760284)))

(assert (=> d!1344893 (= res!1834038 ((_ is Nil!49678) (t!356742 (toList!3565 lm!1616))))))

(assert (=> d!1344893 (= (forall!9624 (t!356742 (toList!3565 lm!1616)) lambda!155433) e!2760284)))

(declare-fun b!4432924 () Bool)

(declare-fun e!2760285 () Bool)

(assert (=> b!4432924 (= e!2760284 e!2760285)))

(declare-fun res!1834039 () Bool)

(assert (=> b!4432924 (=> (not res!1834039) (not e!2760285))))

(assert (=> b!4432924 (= res!1834039 (dynLambda!20872 lambda!155433 (h!55379 (t!356742 (toList!3565 lm!1616)))))))

(declare-fun b!4432925 () Bool)

(assert (=> b!4432925 (= e!2760285 (forall!9624 (t!356742 (t!356742 (toList!3565 lm!1616))) lambda!155433))))

(assert (= (and d!1344893 (not res!1834038)) b!4432924))

(assert (= (and b!4432924 res!1834039) b!4432925))

(declare-fun b_lambda!144061 () Bool)

(assert (=> (not b_lambda!144061) (not b!4432924)))

(declare-fun m!5117931 () Bool)

(assert (=> b!4432924 m!5117931))

(declare-fun m!5117933 () Bool)

(assert (=> b!4432925 m!5117933))

(assert (=> b!4432449 d!1344893))

(declare-fun d!1344895 () Bool)

(declare-fun res!1834040 () Bool)

(declare-fun e!2760286 () Bool)

(assert (=> d!1344895 (=> res!1834040 e!2760286)))

(assert (=> d!1344895 (= res!1834040 (and ((_ is Cons!49678) lt!1630203) (= (_1!28062 (h!55379 lt!1630203)) (_1!28062 lt!1630111))))))

(assert (=> d!1344895 (= (containsKey!1175 lt!1630203 (_1!28062 lt!1630111)) e!2760286)))

(declare-fun b!4432926 () Bool)

(declare-fun e!2760287 () Bool)

(assert (=> b!4432926 (= e!2760286 e!2760287)))

(declare-fun res!1834041 () Bool)

(assert (=> b!4432926 (=> (not res!1834041) (not e!2760287))))

(assert (=> b!4432926 (= res!1834041 (and (or (not ((_ is Cons!49678) lt!1630203)) (bvsle (_1!28062 (h!55379 lt!1630203)) (_1!28062 lt!1630111))) ((_ is Cons!49678) lt!1630203) (bvslt (_1!28062 (h!55379 lt!1630203)) (_1!28062 lt!1630111))))))

(declare-fun b!4432927 () Bool)

(assert (=> b!4432927 (= e!2760287 (containsKey!1175 (t!356742 lt!1630203) (_1!28062 lt!1630111)))))

(assert (= (and d!1344895 (not res!1834040)) b!4432926))

(assert (= (and b!4432926 res!1834041) b!4432927))

(declare-fun m!5117935 () Bool)

(assert (=> b!4432927 m!5117935))

(assert (=> b!4432311 d!1344895))

(declare-fun d!1344897 () Bool)

(declare-fun c!754517 () Bool)

(assert (=> d!1344897 (= c!754517 ((_ is Nil!49680) lt!1630379))))

(declare-fun e!2760288 () (InoxSet K!11045))

(assert (=> d!1344897 (= (content!7984 lt!1630379) e!2760288)))

(declare-fun b!4432928 () Bool)

(assert (=> b!4432928 (= e!2760288 ((as const (Array K!11045 Bool)) false))))

(declare-fun b!4432929 () Bool)

(assert (=> b!4432929 (= e!2760288 ((_ map or) (store ((as const (Array K!11045 Bool)) false) (h!55383 lt!1630379) true) (content!7984 (t!356744 lt!1630379))))))

(assert (= (and d!1344897 c!754517) b!4432928))

(assert (= (and d!1344897 (not c!754517)) b!4432929))

(declare-fun m!5117937 () Bool)

(assert (=> b!4432929 m!5117937))

(declare-fun m!5117939 () Bool)

(assert (=> b!4432929 m!5117939))

(assert (=> b!4432439 d!1344897))

(declare-fun d!1344899 () Bool)

(declare-fun c!754518 () Bool)

(assert (=> d!1344899 (= c!754518 ((_ is Nil!49680) (map!10858 (toList!3566 (extractMap!850 (toList!3565 lm!1616))) lambda!155505)))))

(declare-fun e!2760289 () (InoxSet K!11045))

(assert (=> d!1344899 (= (content!7984 (map!10858 (toList!3566 (extractMap!850 (toList!3565 lm!1616))) lambda!155505)) e!2760289)))

(declare-fun b!4432930 () Bool)

(assert (=> b!4432930 (= e!2760289 ((as const (Array K!11045 Bool)) false))))

(declare-fun b!4432931 () Bool)

(assert (=> b!4432931 (= e!2760289 ((_ map or) (store ((as const (Array K!11045 Bool)) false) (h!55383 (map!10858 (toList!3566 (extractMap!850 (toList!3565 lm!1616))) lambda!155505)) true) (content!7984 (t!356744 (map!10858 (toList!3566 (extractMap!850 (toList!3565 lm!1616))) lambda!155505)))))))

(assert (= (and d!1344899 c!754518) b!4432930))

(assert (= (and d!1344899 (not c!754518)) b!4432931))

(declare-fun m!5117941 () Bool)

(assert (=> b!4432931 m!5117941))

(declare-fun m!5117943 () Bool)

(assert (=> b!4432931 m!5117943))

(assert (=> b!4432439 d!1344899))

(declare-fun d!1344901 () Bool)

(declare-fun lt!1630644 () List!49804)

(assert (=> d!1344901 (= (size!35883 lt!1630644) (size!35884 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))))

(declare-fun e!2760290 () List!49804)

(assert (=> d!1344901 (= lt!1630644 e!2760290)))

(declare-fun c!754519 () Bool)

(assert (=> d!1344901 (= c!754519 ((_ is Nil!49677) (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))))

(assert (=> d!1344901 (= (map!10858 (toList!3566 (extractMap!850 (toList!3565 lm!1616))) lambda!155505) lt!1630644)))

(declare-fun b!4432932 () Bool)

(assert (=> b!4432932 (= e!2760290 Nil!49680)))

(declare-fun b!4432933 () Bool)

(assert (=> b!4432933 (= e!2760290 ($colon$colon!799 (map!10858 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))) lambda!155505) (dynLambda!20878 lambda!155505 (h!55378 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))))))

(assert (= (and d!1344901 c!754519) b!4432932))

(assert (= (and d!1344901 (not c!754519)) b!4432933))

(declare-fun b_lambda!144063 () Bool)

(assert (=> (not b_lambda!144063) (not b!4432933)))

(declare-fun m!5117945 () Bool)

(assert (=> d!1344901 m!5117945))

(assert (=> d!1344901 m!5117707))

(declare-fun m!5117947 () Bool)

(assert (=> b!4432933 m!5117947))

(declare-fun m!5117949 () Bool)

(assert (=> b!4432933 m!5117949))

(assert (=> b!4432933 m!5117947))

(assert (=> b!4432933 m!5117949))

(declare-fun m!5117951 () Bool)

(assert (=> b!4432933 m!5117951))

(assert (=> b!4432439 d!1344901))

(declare-fun d!1344903 () Bool)

(declare-fun res!1834042 () Bool)

(declare-fun e!2760291 () Bool)

(assert (=> d!1344903 (=> res!1834042 e!2760291)))

(assert (=> d!1344903 (= res!1834042 (or ((_ is Nil!49678) lt!1630347) ((_ is Nil!49678) (t!356742 lt!1630347))))))

(assert (=> d!1344903 (= (isStrictlySorted!248 lt!1630347) e!2760291)))

(declare-fun b!4432934 () Bool)

(declare-fun e!2760292 () Bool)

(assert (=> b!4432934 (= e!2760291 e!2760292)))

(declare-fun res!1834043 () Bool)

(assert (=> b!4432934 (=> (not res!1834043) (not e!2760292))))

(assert (=> b!4432934 (= res!1834043 (bvslt (_1!28062 (h!55379 lt!1630347)) (_1!28062 (h!55379 (t!356742 lt!1630347)))))))

(declare-fun b!4432935 () Bool)

(assert (=> b!4432935 (= e!2760292 (isStrictlySorted!248 (t!356742 lt!1630347)))))

(assert (= (and d!1344903 (not res!1834042)) b!4432934))

(assert (= (and b!4432934 res!1834043) b!4432935))

(declare-fun m!5117953 () Bool)

(assert (=> b!4432935 m!5117953))

(assert (=> d!1344437 d!1344903))

(assert (=> d!1344437 d!1344523))

(declare-fun d!1344905 () Bool)

(declare-fun res!1834044 () Bool)

(declare-fun e!2760293 () Bool)

(assert (=> d!1344905 (=> res!1834044 e!2760293)))

(assert (=> d!1344905 (= res!1834044 (not ((_ is Cons!49677) (t!356741 (_2!28062 (tuple2!49537 hash!366 newBucket!194))))))))

(assert (=> d!1344905 (= (noDuplicateKeys!789 (t!356741 (_2!28062 (tuple2!49537 hash!366 newBucket!194)))) e!2760293)))

(declare-fun b!4432936 () Bool)

(declare-fun e!2760294 () Bool)

(assert (=> b!4432936 (= e!2760293 e!2760294)))

(declare-fun res!1834045 () Bool)

(assert (=> b!4432936 (=> (not res!1834045) (not e!2760294))))

(assert (=> b!4432936 (= res!1834045 (not (containsKey!1176 (t!356741 (t!356741 (_2!28062 (tuple2!49537 hash!366 newBucket!194)))) (_1!28061 (h!55378 (t!356741 (_2!28062 (tuple2!49537 hash!366 newBucket!194))))))))))

(declare-fun b!4432937 () Bool)

(assert (=> b!4432937 (= e!2760294 (noDuplicateKeys!789 (t!356741 (t!356741 (_2!28062 (tuple2!49537 hash!366 newBucket!194))))))))

(assert (= (and d!1344905 (not res!1834044)) b!4432936))

(assert (= (and b!4432936 res!1834045) b!4432937))

(declare-fun m!5117955 () Bool)

(assert (=> b!4432936 m!5117955))

(declare-fun m!5117957 () Bool)

(assert (=> b!4432937 m!5117957))

(assert (=> b!4432377 d!1344905))

(declare-fun d!1344907 () Bool)

(declare-fun res!1834046 () Bool)

(declare-fun e!2760295 () Bool)

(assert (=> d!1344907 (=> res!1834046 e!2760295)))

(assert (=> d!1344907 (= res!1834046 (and ((_ is Cons!49677) (t!356741 (t!356741 newBucket!194))) (= (_1!28061 (h!55378 (t!356741 (t!356741 newBucket!194)))) (_1!28061 (h!55378 newBucket!194)))))))

(assert (=> d!1344907 (= (containsKey!1176 (t!356741 (t!356741 newBucket!194)) (_1!28061 (h!55378 newBucket!194))) e!2760295)))

(declare-fun b!4432938 () Bool)

(declare-fun e!2760296 () Bool)

(assert (=> b!4432938 (= e!2760295 e!2760296)))

(declare-fun res!1834047 () Bool)

(assert (=> b!4432938 (=> (not res!1834047) (not e!2760296))))

(assert (=> b!4432938 (= res!1834047 ((_ is Cons!49677) (t!356741 (t!356741 newBucket!194))))))

(declare-fun b!4432939 () Bool)

(assert (=> b!4432939 (= e!2760296 (containsKey!1176 (t!356741 (t!356741 (t!356741 newBucket!194))) (_1!28061 (h!55378 newBucket!194))))))

(assert (= (and d!1344907 (not res!1834046)) b!4432938))

(assert (= (and b!4432938 res!1834047) b!4432939))

(declare-fun m!5117959 () Bool)

(assert (=> b!4432939 m!5117959))

(assert (=> b!4432478 d!1344907))

(declare-fun bs!760398 () Bool)

(declare-fun b!4432944 () Bool)

(assert (= bs!760398 (and b!4432944 d!1344873)))

(declare-fun lambda!155573 () Int)

(assert (=> bs!760398 (= (= (extractMap!850 (t!356742 (t!356742 (toList!3565 lm!1616)))) lt!1630597) (= lambda!155573 lambda!155567))))

(declare-fun bs!760399 () Bool)

(assert (= bs!760399 (and b!4432944 d!1344517)))

(assert (=> bs!760399 (= (= (extractMap!850 (t!356742 (t!356742 (toList!3565 lm!1616)))) lt!1630435) (= lambda!155573 lambda!155537))))

(declare-fun bs!760400 () Bool)

(assert (= bs!760400 (and b!4432944 b!4432894)))

(assert (=> bs!760400 (= (= (extractMap!850 (t!356742 (t!356742 (toList!3565 lm!1616)))) lt!1630609) (= lambda!155573 lambda!155566))))

(declare-fun bs!760401 () Bool)

(assert (= bs!760401 (and b!4432944 d!1344877)))

(assert (=> bs!760401 (= (= (extractMap!850 (t!356742 (t!356742 (toList!3565 lm!1616)))) lt!1630447) (= lambda!155573 lambda!155572))))

(declare-fun bs!760402 () Bool)

(assert (= bs!760402 (and b!4432944 d!1344359)))

(assert (=> bs!760402 (not (= lambda!155573 lambda!155436))))

(declare-fun bs!760403 () Bool)

(assert (= bs!760403 (and b!4432944 b!4432499)))

(assert (=> bs!760403 (= (= (extractMap!850 (t!356742 (t!356742 (toList!3565 lm!1616)))) (extractMap!850 (t!356742 (toList!3565 lm!1616)))) (= lambda!155573 lambda!155534))))

(declare-fun bs!760404 () Bool)

(assert (= bs!760404 (and b!4432944 b!4432497)))

(assert (=> bs!760404 (= (= (extractMap!850 (t!356742 (t!356742 (toList!3565 lm!1616)))) lt!1630447) (= lambda!155573 lambda!155536))))

(declare-fun bs!760405 () Bool)

(assert (= bs!760405 (and b!4432944 b!4432896)))

(assert (=> bs!760405 (= (= (extractMap!850 (t!356742 (t!356742 (toList!3565 lm!1616)))) (+!1149 (extractMap!850 (t!356742 (toList!3565 lm!1616))) (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))) (= lambda!155573 lambda!155564))))

(assert (=> bs!760400 (= (= (extractMap!850 (t!356742 (t!356742 (toList!3565 lm!1616)))) (+!1149 (extractMap!850 (t!356742 (toList!3565 lm!1616))) (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))) (= lambda!155573 lambda!155565))))

(assert (=> bs!760404 (= (= (extractMap!850 (t!356742 (t!356742 (toList!3565 lm!1616)))) (extractMap!850 (t!356742 (toList!3565 lm!1616)))) (= lambda!155573 lambda!155535))))

(assert (=> b!4432944 true))

(declare-fun bs!760406 () Bool)

(declare-fun b!4432942 () Bool)

(assert (= bs!760406 (and b!4432942 d!1344873)))

(declare-fun lambda!155574 () Int)

(assert (=> bs!760406 (= (= (extractMap!850 (t!356742 (t!356742 (toList!3565 lm!1616)))) lt!1630597) (= lambda!155574 lambda!155567))))

(declare-fun bs!760407 () Bool)

(assert (= bs!760407 (and b!4432942 d!1344517)))

(assert (=> bs!760407 (= (= (extractMap!850 (t!356742 (t!356742 (toList!3565 lm!1616)))) lt!1630435) (= lambda!155574 lambda!155537))))

(declare-fun bs!760408 () Bool)

(assert (= bs!760408 (and b!4432942 b!4432894)))

(assert (=> bs!760408 (= (= (extractMap!850 (t!356742 (t!356742 (toList!3565 lm!1616)))) lt!1630609) (= lambda!155574 lambda!155566))))

(declare-fun bs!760409 () Bool)

(assert (= bs!760409 (and b!4432942 d!1344877)))

(assert (=> bs!760409 (= (= (extractMap!850 (t!356742 (t!356742 (toList!3565 lm!1616)))) lt!1630447) (= lambda!155574 lambda!155572))))

(declare-fun bs!760410 () Bool)

(assert (= bs!760410 (and b!4432942 d!1344359)))

(assert (=> bs!760410 (not (= lambda!155574 lambda!155436))))

(declare-fun bs!760411 () Bool)

(assert (= bs!760411 (and b!4432942 b!4432499)))

(assert (=> bs!760411 (= (= (extractMap!850 (t!356742 (t!356742 (toList!3565 lm!1616)))) (extractMap!850 (t!356742 (toList!3565 lm!1616)))) (= lambda!155574 lambda!155534))))

(declare-fun bs!760412 () Bool)

(assert (= bs!760412 (and b!4432942 b!4432497)))

(assert (=> bs!760412 (= (= (extractMap!850 (t!356742 (t!356742 (toList!3565 lm!1616)))) lt!1630447) (= lambda!155574 lambda!155536))))

(assert (=> bs!760408 (= (= (extractMap!850 (t!356742 (t!356742 (toList!3565 lm!1616)))) (+!1149 (extractMap!850 (t!356742 (toList!3565 lm!1616))) (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))) (= lambda!155574 lambda!155565))))

(assert (=> bs!760412 (= (= (extractMap!850 (t!356742 (t!356742 (toList!3565 lm!1616)))) (extractMap!850 (t!356742 (toList!3565 lm!1616)))) (= lambda!155574 lambda!155535))))

(declare-fun bs!760413 () Bool)

(assert (= bs!760413 (and b!4432942 b!4432896)))

(assert (=> bs!760413 (= (= (extractMap!850 (t!356742 (t!356742 (toList!3565 lm!1616)))) (+!1149 (extractMap!850 (t!356742 (toList!3565 lm!1616))) (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))) (= lambda!155574 lambda!155564))))

(declare-fun bs!760414 () Bool)

(assert (= bs!760414 (and b!4432942 b!4432944)))

(assert (=> bs!760414 (= lambda!155574 lambda!155573)))

(assert (=> b!4432942 true))

(declare-fun lambda!155575 () Int)

(declare-fun lt!1630657 () ListMap!2809)

(assert (=> bs!760406 (= (= lt!1630657 lt!1630597) (= lambda!155575 lambda!155567))))

(assert (=> b!4432942 (= (= lt!1630657 (extractMap!850 (t!356742 (t!356742 (toList!3565 lm!1616))))) (= lambda!155575 lambda!155574))))

(assert (=> bs!760407 (= (= lt!1630657 lt!1630435) (= lambda!155575 lambda!155537))))

(assert (=> bs!760408 (= (= lt!1630657 lt!1630609) (= lambda!155575 lambda!155566))))

(assert (=> bs!760409 (= (= lt!1630657 lt!1630447) (= lambda!155575 lambda!155572))))

(assert (=> bs!760410 (not (= lambda!155575 lambda!155436))))

(assert (=> bs!760411 (= (= lt!1630657 (extractMap!850 (t!356742 (toList!3565 lm!1616)))) (= lambda!155575 lambda!155534))))

(assert (=> bs!760412 (= (= lt!1630657 lt!1630447) (= lambda!155575 lambda!155536))))

(assert (=> bs!760408 (= (= lt!1630657 (+!1149 (extractMap!850 (t!356742 (toList!3565 lm!1616))) (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))) (= lambda!155575 lambda!155565))))

(assert (=> bs!760412 (= (= lt!1630657 (extractMap!850 (t!356742 (toList!3565 lm!1616)))) (= lambda!155575 lambda!155535))))

(assert (=> bs!760413 (= (= lt!1630657 (+!1149 (extractMap!850 (t!356742 (toList!3565 lm!1616))) (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))) (= lambda!155575 lambda!155564))))

(assert (=> bs!760414 (= (= lt!1630657 (extractMap!850 (t!356742 (t!356742 (toList!3565 lm!1616))))) (= lambda!155575 lambda!155573))))

(assert (=> b!4432942 true))

(declare-fun bs!760415 () Bool)

(declare-fun d!1344909 () Bool)

(assert (= bs!760415 (and d!1344909 d!1344873)))

(declare-fun lambda!155576 () Int)

(declare-fun lt!1630645 () ListMap!2809)

(assert (=> bs!760415 (= (= lt!1630645 lt!1630597) (= lambda!155576 lambda!155567))))

(declare-fun bs!760416 () Bool)

(assert (= bs!760416 (and d!1344909 b!4432942)))

(assert (=> bs!760416 (= (= lt!1630645 lt!1630657) (= lambda!155576 lambda!155575))))

(assert (=> bs!760416 (= (= lt!1630645 (extractMap!850 (t!356742 (t!356742 (toList!3565 lm!1616))))) (= lambda!155576 lambda!155574))))

(declare-fun bs!760417 () Bool)

(assert (= bs!760417 (and d!1344909 d!1344517)))

(assert (=> bs!760417 (= (= lt!1630645 lt!1630435) (= lambda!155576 lambda!155537))))

(declare-fun bs!760418 () Bool)

(assert (= bs!760418 (and d!1344909 b!4432894)))

(assert (=> bs!760418 (= (= lt!1630645 lt!1630609) (= lambda!155576 lambda!155566))))

(declare-fun bs!760419 () Bool)

(assert (= bs!760419 (and d!1344909 d!1344877)))

(assert (=> bs!760419 (= (= lt!1630645 lt!1630447) (= lambda!155576 lambda!155572))))

(declare-fun bs!760420 () Bool)

(assert (= bs!760420 (and d!1344909 d!1344359)))

(assert (=> bs!760420 (not (= lambda!155576 lambda!155436))))

(declare-fun bs!760421 () Bool)

(assert (= bs!760421 (and d!1344909 b!4432499)))

(assert (=> bs!760421 (= (= lt!1630645 (extractMap!850 (t!356742 (toList!3565 lm!1616)))) (= lambda!155576 lambda!155534))))

(declare-fun bs!760422 () Bool)

(assert (= bs!760422 (and d!1344909 b!4432497)))

(assert (=> bs!760422 (= (= lt!1630645 lt!1630447) (= lambda!155576 lambda!155536))))

(assert (=> bs!760418 (= (= lt!1630645 (+!1149 (extractMap!850 (t!356742 (toList!3565 lm!1616))) (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))) (= lambda!155576 lambda!155565))))

(assert (=> bs!760422 (= (= lt!1630645 (extractMap!850 (t!356742 (toList!3565 lm!1616)))) (= lambda!155576 lambda!155535))))

(declare-fun bs!760423 () Bool)

(assert (= bs!760423 (and d!1344909 b!4432896)))

(assert (=> bs!760423 (= (= lt!1630645 (+!1149 (extractMap!850 (t!356742 (toList!3565 lm!1616))) (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))) (= lambda!155576 lambda!155564))))

(declare-fun bs!760424 () Bool)

(assert (= bs!760424 (and d!1344909 b!4432944)))

(assert (=> bs!760424 (= (= lt!1630645 (extractMap!850 (t!356742 (t!356742 (toList!3565 lm!1616))))) (= lambda!155576 lambda!155573))))

(assert (=> d!1344909 true))

(declare-fun e!2760299 () Bool)

(assert (=> d!1344909 e!2760299))

(declare-fun res!1834049 () Bool)

(assert (=> d!1344909 (=> (not res!1834049) (not e!2760299))))

(assert (=> d!1344909 (= res!1834049 (forall!9626 (_2!28062 (h!55379 (t!356742 (toList!3565 lm!1616)))) lambda!155576))))

(declare-fun e!2760298 () ListMap!2809)

(assert (=> d!1344909 (= lt!1630645 e!2760298)))

(declare-fun c!754520 () Bool)

(assert (=> d!1344909 (= c!754520 ((_ is Nil!49677) (_2!28062 (h!55379 (t!356742 (toList!3565 lm!1616))))))))

(assert (=> d!1344909 (noDuplicateKeys!789 (_2!28062 (h!55379 (t!356742 (toList!3565 lm!1616)))))))

(assert (=> d!1344909 (= (addToMapMapFromBucket!414 (_2!28062 (h!55379 (t!356742 (toList!3565 lm!1616)))) (extractMap!850 (t!356742 (t!356742 (toList!3565 lm!1616))))) lt!1630645)))

(declare-fun bm!308416 () Bool)

(declare-fun call!308423 () Bool)

(assert (=> bm!308416 (= call!308423 (forall!9626 (ite c!754520 (toList!3566 (extractMap!850 (t!356742 (t!356742 (toList!3565 lm!1616))))) (_2!28062 (h!55379 (t!356742 (toList!3565 lm!1616))))) (ite c!754520 lambda!155573 lambda!155575)))))

(declare-fun b!4432940 () Bool)

(assert (=> b!4432940 (= e!2760299 (invariantList!821 (toList!3566 lt!1630645)))))

(declare-fun b!4432941 () Bool)

(declare-fun res!1834048 () Bool)

(assert (=> b!4432941 (=> (not res!1834048) (not e!2760299))))

(assert (=> b!4432941 (= res!1834048 (forall!9626 (toList!3566 (extractMap!850 (t!356742 (t!356742 (toList!3565 lm!1616))))) lambda!155576))))

(declare-fun bm!308417 () Bool)

(declare-fun call!308422 () Unit!82777)

(assert (=> bm!308417 (= call!308422 (lemmaContainsAllItsOwnKeys!189 (extractMap!850 (t!356742 (t!356742 (toList!3565 lm!1616))))))))

(assert (=> b!4432942 (= e!2760298 lt!1630657)))

(declare-fun lt!1630665 () ListMap!2809)

(assert (=> b!4432942 (= lt!1630665 (+!1149 (extractMap!850 (t!356742 (t!356742 (toList!3565 lm!1616)))) (h!55378 (_2!28062 (h!55379 (t!356742 (toList!3565 lm!1616)))))))))

(assert (=> b!4432942 (= lt!1630657 (addToMapMapFromBucket!414 (t!356741 (_2!28062 (h!55379 (t!356742 (toList!3565 lm!1616))))) (+!1149 (extractMap!850 (t!356742 (t!356742 (toList!3565 lm!1616)))) (h!55378 (_2!28062 (h!55379 (t!356742 (toList!3565 lm!1616))))))))))

(declare-fun lt!1630653 () Unit!82777)

(assert (=> b!4432942 (= lt!1630653 call!308422)))

(assert (=> b!4432942 (forall!9626 (toList!3566 (extractMap!850 (t!356742 (t!356742 (toList!3565 lm!1616))))) lambda!155574)))

(declare-fun lt!1630651 () Unit!82777)

(assert (=> b!4432942 (= lt!1630651 lt!1630653)))

(declare-fun call!308421 () Bool)

(assert (=> b!4432942 call!308421))

(declare-fun lt!1630648 () Unit!82777)

(declare-fun Unit!82852 () Unit!82777)

(assert (=> b!4432942 (= lt!1630648 Unit!82852)))

(assert (=> b!4432942 (forall!9626 (t!356741 (_2!28062 (h!55379 (t!356742 (toList!3565 lm!1616))))) lambda!155575)))

(declare-fun lt!1630654 () Unit!82777)

(declare-fun Unit!82854 () Unit!82777)

(assert (=> b!4432942 (= lt!1630654 Unit!82854)))

(declare-fun lt!1630649 () Unit!82777)

(declare-fun Unit!82856 () Unit!82777)

(assert (=> b!4432942 (= lt!1630649 Unit!82856)))

(declare-fun lt!1630652 () Unit!82777)

(assert (=> b!4432942 (= lt!1630652 (forallContained!2117 (toList!3566 lt!1630665) lambda!155575 (h!55378 (_2!28062 (h!55379 (t!356742 (toList!3565 lm!1616)))))))))

(assert (=> b!4432942 (contains!12208 lt!1630665 (_1!28061 (h!55378 (_2!28062 (h!55379 (t!356742 (toList!3565 lm!1616)))))))))

(declare-fun lt!1630647 () Unit!82777)

(declare-fun Unit!82858 () Unit!82777)

(assert (=> b!4432942 (= lt!1630647 Unit!82858)))

(assert (=> b!4432942 (contains!12208 lt!1630657 (_1!28061 (h!55378 (_2!28062 (h!55379 (t!356742 (toList!3565 lm!1616)))))))))

(declare-fun lt!1630650 () Unit!82777)

(declare-fun Unit!82860 () Unit!82777)

(assert (=> b!4432942 (= lt!1630650 Unit!82860)))

(assert (=> b!4432942 call!308423))

(declare-fun lt!1630661 () Unit!82777)

(declare-fun Unit!82861 () Unit!82777)

(assert (=> b!4432942 (= lt!1630661 Unit!82861)))

(assert (=> b!4432942 (forall!9626 (toList!3566 lt!1630665) lambda!155575)))

(declare-fun lt!1630656 () Unit!82777)

(declare-fun Unit!82863 () Unit!82777)

(assert (=> b!4432942 (= lt!1630656 Unit!82863)))

(declare-fun lt!1630655 () Unit!82777)

(declare-fun Unit!82865 () Unit!82777)

(assert (=> b!4432942 (= lt!1630655 Unit!82865)))

(declare-fun lt!1630659 () Unit!82777)

(assert (=> b!4432942 (= lt!1630659 (addForallContainsKeyThenBeforeAdding!189 (extractMap!850 (t!356742 (t!356742 (toList!3565 lm!1616)))) lt!1630657 (_1!28061 (h!55378 (_2!28062 (h!55379 (t!356742 (toList!3565 lm!1616)))))) (_2!28061 (h!55378 (_2!28062 (h!55379 (t!356742 (toList!3565 lm!1616))))))))))

(assert (=> b!4432942 (forall!9626 (toList!3566 (extractMap!850 (t!356742 (t!356742 (toList!3565 lm!1616))))) lambda!155575)))

(declare-fun lt!1630646 () Unit!82777)

(assert (=> b!4432942 (= lt!1630646 lt!1630659)))

(assert (=> b!4432942 (forall!9626 (toList!3566 (extractMap!850 (t!356742 (t!356742 (toList!3565 lm!1616))))) lambda!155575)))

(declare-fun lt!1630658 () Unit!82777)

(declare-fun Unit!82867 () Unit!82777)

(assert (=> b!4432942 (= lt!1630658 Unit!82867)))

(declare-fun res!1834050 () Bool)

(assert (=> b!4432942 (= res!1834050 (forall!9626 (_2!28062 (h!55379 (t!356742 (toList!3565 lm!1616)))) lambda!155575))))

(declare-fun e!2760297 () Bool)

(assert (=> b!4432942 (=> (not res!1834050) (not e!2760297))))

(assert (=> b!4432942 e!2760297))

(declare-fun lt!1630663 () Unit!82777)

(declare-fun Unit!82869 () Unit!82777)

(assert (=> b!4432942 (= lt!1630663 Unit!82869)))

(declare-fun b!4432943 () Bool)

(assert (=> b!4432943 (= e!2760297 (forall!9626 (toList!3566 (extractMap!850 (t!356742 (t!356742 (toList!3565 lm!1616))))) lambda!155575))))

(declare-fun bm!308418 () Bool)

(assert (=> bm!308418 (= call!308421 (forall!9626 (ite c!754520 (toList!3566 (extractMap!850 (t!356742 (t!356742 (toList!3565 lm!1616))))) (toList!3566 lt!1630665)) (ite c!754520 lambda!155573 lambda!155575)))))

(assert (=> b!4432944 (= e!2760298 (extractMap!850 (t!356742 (t!356742 (toList!3565 lm!1616)))))))

(declare-fun lt!1630664 () Unit!82777)

(assert (=> b!4432944 (= lt!1630664 call!308422)))

(assert (=> b!4432944 call!308423))

(declare-fun lt!1630662 () Unit!82777)

(assert (=> b!4432944 (= lt!1630662 lt!1630664)))

(assert (=> b!4432944 call!308421))

(declare-fun lt!1630660 () Unit!82777)

(declare-fun Unit!82871 () Unit!82777)

(assert (=> b!4432944 (= lt!1630660 Unit!82871)))

(assert (= (and d!1344909 c!754520) b!4432944))

(assert (= (and d!1344909 (not c!754520)) b!4432942))

(assert (= (and b!4432942 res!1834050) b!4432943))

(assert (= (or b!4432944 b!4432942) bm!308417))

(assert (= (or b!4432944 b!4432942) bm!308418))

(assert (= (or b!4432944 b!4432942) bm!308416))

(assert (= (and d!1344909 res!1834049) b!4432941))

(assert (= (and b!4432941 res!1834048) b!4432940))

(declare-fun m!5117961 () Bool)

(assert (=> b!4432941 m!5117961))

(declare-fun m!5117963 () Bool)

(assert (=> bm!308418 m!5117963))

(declare-fun m!5117965 () Bool)

(assert (=> bm!308416 m!5117965))

(declare-fun m!5117967 () Bool)

(assert (=> b!4432942 m!5117967))

(declare-fun m!5117969 () Bool)

(assert (=> b!4432942 m!5117969))

(declare-fun m!5117971 () Bool)

(assert (=> b!4432942 m!5117971))

(assert (=> b!4432942 m!5117119))

(declare-fun m!5117973 () Bool)

(assert (=> b!4432942 m!5117973))

(assert (=> b!4432942 m!5117119))

(assert (=> b!4432942 m!5117969))

(declare-fun m!5117975 () Bool)

(assert (=> b!4432942 m!5117975))

(declare-fun m!5117977 () Bool)

(assert (=> b!4432942 m!5117977))

(declare-fun m!5117979 () Bool)

(assert (=> b!4432942 m!5117979))

(declare-fun m!5117981 () Bool)

(assert (=> b!4432942 m!5117981))

(declare-fun m!5117983 () Bool)

(assert (=> b!4432942 m!5117983))

(assert (=> b!4432942 m!5117981))

(declare-fun m!5117985 () Bool)

(assert (=> b!4432942 m!5117985))

(declare-fun m!5117987 () Bool)

(assert (=> b!4432942 m!5117987))

(declare-fun m!5117989 () Bool)

(assert (=> b!4432940 m!5117989))

(assert (=> bm!308417 m!5117119))

(declare-fun m!5117991 () Bool)

(assert (=> bm!308417 m!5117991))

(assert (=> b!4432943 m!5117981))

(declare-fun m!5117993 () Bool)

(assert (=> d!1344909 m!5117993))

(assert (=> d!1344909 m!5117153))

(assert (=> b!4432502 d!1344909))

(declare-fun bs!760425 () Bool)

(declare-fun d!1344911 () Bool)

(assert (= bs!760425 (and d!1344911 start!432912)))

(declare-fun lambda!155577 () Int)

(assert (=> bs!760425 (= lambda!155577 lambda!155418)))

(declare-fun bs!760426 () Bool)

(assert (= bs!760426 (and d!1344911 d!1344341)))

(assert (=> bs!760426 (= lambda!155577 lambda!155430)))

(declare-fun bs!760427 () Bool)

(assert (= bs!760427 (and d!1344911 d!1344343)))

(assert (=> bs!760427 (not (= lambda!155577 lambda!155433))))

(declare-fun bs!760428 () Bool)

(assert (= bs!760428 (and d!1344911 d!1344519)))

(assert (=> bs!760428 (= lambda!155577 lambda!155538)))

(declare-fun lt!1630666 () ListMap!2809)

(assert (=> d!1344911 (invariantList!821 (toList!3566 lt!1630666))))

(declare-fun e!2760300 () ListMap!2809)

(assert (=> d!1344911 (= lt!1630666 e!2760300)))

(declare-fun c!754521 () Bool)

(assert (=> d!1344911 (= c!754521 ((_ is Cons!49678) (t!356742 (t!356742 (toList!3565 lm!1616)))))))

(assert (=> d!1344911 (forall!9624 (t!356742 (t!356742 (toList!3565 lm!1616))) lambda!155577)))

(assert (=> d!1344911 (= (extractMap!850 (t!356742 (t!356742 (toList!3565 lm!1616)))) lt!1630666)))

(declare-fun b!4432945 () Bool)

(assert (=> b!4432945 (= e!2760300 (addToMapMapFromBucket!414 (_2!28062 (h!55379 (t!356742 (t!356742 (toList!3565 lm!1616))))) (extractMap!850 (t!356742 (t!356742 (t!356742 (toList!3565 lm!1616)))))))))

(declare-fun b!4432946 () Bool)

(assert (=> b!4432946 (= e!2760300 (ListMap!2810 Nil!49677))))

(assert (= (and d!1344911 c!754521) b!4432945))

(assert (= (and d!1344911 (not c!754521)) b!4432946))

(declare-fun m!5117995 () Bool)

(assert (=> d!1344911 m!5117995))

(declare-fun m!5117997 () Bool)

(assert (=> d!1344911 m!5117997))

(declare-fun m!5117999 () Bool)

(assert (=> b!4432945 m!5117999))

(assert (=> b!4432945 m!5117999))

(declare-fun m!5118001 () Bool)

(assert (=> b!4432945 m!5118001))

(assert (=> b!4432502 d!1344911))

(declare-fun d!1344913 () Bool)

(declare-fun res!1834051 () Bool)

(declare-fun e!2760301 () Bool)

(assert (=> d!1344913 (=> res!1834051 e!2760301)))

(assert (=> d!1344913 (= res!1834051 (not ((_ is Cons!49677) (t!356741 (_2!28062 (h!55379 (toList!3565 lm!1616)))))))))

(assert (=> d!1344913 (= (noDuplicateKeys!789 (t!356741 (_2!28062 (h!55379 (toList!3565 lm!1616))))) e!2760301)))

(declare-fun b!4432947 () Bool)

(declare-fun e!2760302 () Bool)

(assert (=> b!4432947 (= e!2760301 e!2760302)))

(declare-fun res!1834052 () Bool)

(assert (=> b!4432947 (=> (not res!1834052) (not e!2760302))))

(assert (=> b!4432947 (= res!1834052 (not (containsKey!1176 (t!356741 (t!356741 (_2!28062 (h!55379 (toList!3565 lm!1616))))) (_1!28061 (h!55378 (t!356741 (_2!28062 (h!55379 (toList!3565 lm!1616)))))))))))

(declare-fun b!4432948 () Bool)

(assert (=> b!4432948 (= e!2760302 (noDuplicateKeys!789 (t!356741 (t!356741 (_2!28062 (h!55379 (toList!3565 lm!1616)))))))))

(assert (= (and d!1344913 (not res!1834051)) b!4432947))

(assert (= (and b!4432947 res!1834052) b!4432948))

(declare-fun m!5118003 () Bool)

(assert (=> b!4432947 m!5118003))

(declare-fun m!5118005 () Bool)

(assert (=> b!4432948 m!5118005))

(assert (=> b!4432505 d!1344913))

(declare-fun d!1344915 () Bool)

(declare-fun lt!1630667 () Bool)

(assert (=> d!1344915 (= lt!1630667 (select (content!7984 (t!356744 e!2759692)) key!3717))))

(declare-fun e!2760304 () Bool)

(assert (=> d!1344915 (= lt!1630667 e!2760304)))

(declare-fun res!1834054 () Bool)

(assert (=> d!1344915 (=> (not res!1834054) (not e!2760304))))

(assert (=> d!1344915 (= res!1834054 ((_ is Cons!49680) (t!356744 e!2759692)))))

(assert (=> d!1344915 (= (contains!12212 (t!356744 e!2759692) key!3717) lt!1630667)))

(declare-fun b!4432949 () Bool)

(declare-fun e!2760303 () Bool)

(assert (=> b!4432949 (= e!2760304 e!2760303)))

(declare-fun res!1834053 () Bool)

(assert (=> b!4432949 (=> res!1834053 e!2760303)))

(assert (=> b!4432949 (= res!1834053 (= (h!55383 (t!356744 e!2759692)) key!3717))))

(declare-fun b!4432950 () Bool)

(assert (=> b!4432950 (= e!2760303 (contains!12212 (t!356744 (t!356744 e!2759692)) key!3717))))

(assert (= (and d!1344915 res!1834054) b!4432949))

(assert (= (and b!4432949 (not res!1834053)) b!4432950))

(assert (=> d!1344915 m!5117599))

(declare-fun m!5118007 () Bool)

(assert (=> d!1344915 m!5118007))

(declare-fun m!5118009 () Bool)

(assert (=> b!4432950 m!5118009))

(assert (=> b!4432482 d!1344915))

(declare-fun d!1344917 () Bool)

(assert (=> d!1344917 (isDefined!8050 (getValueByKey!743 (toList!3565 lt!1630204) (_1!28062 lt!1630111)))))

(declare-fun lt!1630668 () Unit!82777)

(assert (=> d!1344917 (= lt!1630668 (choose!28078 (toList!3565 lt!1630204) (_1!28062 lt!1630111)))))

(declare-fun e!2760305 () Bool)

(assert (=> d!1344917 e!2760305))

(declare-fun res!1834055 () Bool)

(assert (=> d!1344917 (=> (not res!1834055) (not e!2760305))))

(assert (=> d!1344917 (= res!1834055 (isStrictlySorted!248 (toList!3565 lt!1630204)))))

(assert (=> d!1344917 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!653 (toList!3565 lt!1630204) (_1!28062 lt!1630111)) lt!1630668)))

(declare-fun b!4432951 () Bool)

(assert (=> b!4432951 (= e!2760305 (containsKey!1175 (toList!3565 lt!1630204) (_1!28062 lt!1630111)))))

(assert (= (and d!1344917 res!1834055) b!4432951))

(assert (=> d!1344917 m!5116687))

(assert (=> d!1344917 m!5116687))

(assert (=> d!1344917 m!5116865))

(declare-fun m!5118011 () Bool)

(assert (=> d!1344917 m!5118011))

(declare-fun m!5118013 () Bool)

(assert (=> d!1344917 m!5118013))

(assert (=> b!4432951 m!5116861))

(assert (=> b!4432288 d!1344917))

(declare-fun d!1344919 () Bool)

(assert (=> d!1344919 (= (isDefined!8050 (getValueByKey!743 (toList!3565 lt!1630204) (_1!28062 lt!1630111))) (not (isEmpty!28367 (getValueByKey!743 (toList!3565 lt!1630204) (_1!28062 lt!1630111)))))))

(declare-fun bs!760429 () Bool)

(assert (= bs!760429 d!1344919))

(assert (=> bs!760429 m!5116687))

(declare-fun m!5118015 () Bool)

(assert (=> bs!760429 m!5118015))

(assert (=> b!4432288 d!1344919))

(assert (=> b!4432288 d!1344479))

(declare-fun d!1344921 () Bool)

(assert (=> d!1344921 (= ($colon$colon!797 e!2759860 (ite c!754414 (h!55379 (toList!3565 lm!1616)) (tuple2!49537 (_1!28062 lt!1630111) (_2!28062 lt!1630111)))) (Cons!49678 (ite c!754414 (h!55379 (toList!3565 lm!1616)) (tuple2!49537 (_1!28062 lt!1630111) (_2!28062 lt!1630111))) e!2759860))))

(assert (=> bm!308383 d!1344921))

(assert (=> d!1344435 d!1344433))

(declare-fun d!1344923 () Bool)

(assert (=> d!1344923 (= (getValueByKey!743 lt!1630203 (_1!28062 lt!1630111)) (Some!10756 (_2!28062 lt!1630111)))))

(assert (=> d!1344923 true))

(declare-fun _$23!240 () Unit!82777)

(assert (=> d!1344923 (= (choose!28076 lt!1630203 (_1!28062 lt!1630111) (_2!28062 lt!1630111)) _$23!240)))

(declare-fun bs!760430 () Bool)

(assert (= bs!760430 d!1344923))

(assert (=> bs!760430 m!5116681))

(assert (=> d!1344435 d!1344923))

(declare-fun d!1344925 () Bool)

(declare-fun res!1834056 () Bool)

(declare-fun e!2760306 () Bool)

(assert (=> d!1344925 (=> res!1834056 e!2760306)))

(assert (=> d!1344925 (= res!1834056 (or ((_ is Nil!49678) lt!1630203) ((_ is Nil!49678) (t!356742 lt!1630203))))))

(assert (=> d!1344925 (= (isStrictlySorted!248 lt!1630203) e!2760306)))

(declare-fun b!4432952 () Bool)

(declare-fun e!2760307 () Bool)

(assert (=> b!4432952 (= e!2760306 e!2760307)))

(declare-fun res!1834057 () Bool)

(assert (=> b!4432952 (=> (not res!1834057) (not e!2760307))))

(assert (=> b!4432952 (= res!1834057 (bvslt (_1!28062 (h!55379 lt!1630203)) (_1!28062 (h!55379 (t!356742 lt!1630203)))))))

(declare-fun b!4432953 () Bool)

(assert (=> b!4432953 (= e!2760307 (isStrictlySorted!248 (t!356742 lt!1630203)))))

(assert (= (and d!1344925 (not res!1834056)) b!4432952))

(assert (= (and b!4432952 res!1834057) b!4432953))

(declare-fun m!5118017 () Bool)

(assert (=> b!4432953 m!5118017))

(assert (=> d!1344435 d!1344925))

(declare-fun d!1344927 () Bool)

(assert (=> d!1344927 (= (length!188 lt!1630370) (size!35883 lt!1630370))))

(declare-fun bs!760431 () Bool)

(assert (= bs!760431 d!1344927))

(declare-fun m!5118019 () Bool)

(assert (=> bs!760431 m!5118019))

(assert (=> b!4432424 d!1344927))

(declare-fun d!1344929 () Bool)

(assert (=> d!1344929 (= (length!189 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))) (size!35884 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))))

(declare-fun bs!760432 () Bool)

(assert (= bs!760432 d!1344929))

(assert (=> bs!760432 m!5117707))

(assert (=> b!4432424 d!1344929))

(declare-fun d!1344931 () Bool)

(declare-fun res!1834058 () Bool)

(declare-fun e!2760308 () Bool)

(assert (=> d!1344931 (=> res!1834058 e!2760308)))

(assert (=> d!1344931 (= res!1834058 (not ((_ is Cons!49677) (_2!28062 (h!55379 (t!356742 (toList!3565 lt!1630110)))))))))

(assert (=> d!1344931 (= (noDuplicateKeys!789 (_2!28062 (h!55379 (t!356742 (toList!3565 lt!1630110))))) e!2760308)))

(declare-fun b!4432954 () Bool)

(declare-fun e!2760309 () Bool)

(assert (=> b!4432954 (= e!2760308 e!2760309)))

(declare-fun res!1834059 () Bool)

(assert (=> b!4432954 (=> (not res!1834059) (not e!2760309))))

(assert (=> b!4432954 (= res!1834059 (not (containsKey!1176 (t!356741 (_2!28062 (h!55379 (t!356742 (toList!3565 lt!1630110))))) (_1!28061 (h!55378 (_2!28062 (h!55379 (t!356742 (toList!3565 lt!1630110)))))))))))

(declare-fun b!4432955 () Bool)

(assert (=> b!4432955 (= e!2760309 (noDuplicateKeys!789 (t!356741 (_2!28062 (h!55379 (t!356742 (toList!3565 lt!1630110)))))))))

(assert (= (and d!1344931 (not res!1834058)) b!4432954))

(assert (= (and b!4432954 res!1834059) b!4432955))

(declare-fun m!5118021 () Bool)

(assert (=> b!4432954 m!5118021))

(declare-fun m!5118023 () Bool)

(assert (=> b!4432955 m!5118023))

(assert (=> bs!760228 d!1344931))

(assert (=> d!1344503 d!1344457))

(assert (=> d!1344503 d!1344459))

(declare-fun d!1344933 () Bool)

(assert (=> d!1344933 (isDefined!8049 (getValueByKey!744 (toList!3566 (extractMap!850 (toList!3565 lm!1616))) key!3717))))

(assert (=> d!1344933 true))

(declare-fun _$29!588 () Unit!82777)

(assert (=> d!1344933 (= (choose!28079 (toList!3566 (extractMap!850 (toList!3565 lm!1616))) key!3717) _$29!588)))

(declare-fun bs!760433 () Bool)

(assert (= bs!760433 d!1344933))

(assert (=> bs!760433 m!5116651))

(assert (=> bs!760433 m!5116651))

(assert (=> bs!760433 m!5116653))

(assert (=> d!1344503 d!1344933))

(assert (=> d!1344503 d!1344813))

(assert (=> d!1344527 d!1344525))

(declare-fun d!1344935 () Bool)

(assert (=> d!1344935 (containsKey!1174 (toList!3566 (extractMap!850 (toList!3565 lm!1616))) key!3717)))

(assert (=> d!1344935 true))

(declare-fun _$15!667 () Unit!82777)

(assert (=> d!1344935 (= (choose!28081 (toList!3566 (extractMap!850 (toList!3565 lm!1616))) key!3717) _$15!667)))

(declare-fun bs!760434 () Bool)

(assert (= bs!760434 d!1344935))

(assert (=> bs!760434 m!5116659))

(assert (=> d!1344527 d!1344935))

(assert (=> d!1344527 d!1344813))

(declare-fun d!1344937 () Bool)

(declare-fun res!1834060 () Bool)

(declare-fun e!2760310 () Bool)

(assert (=> d!1344937 (=> res!1834060 e!2760310)))

(assert (=> d!1344937 (= res!1834060 (and ((_ is Cons!49677) (t!356741 (t!356741 newBucket!194))) (= (_1!28061 (h!55378 (t!356741 (t!356741 newBucket!194)))) (_1!28061 (h!55378 (t!356741 newBucket!194))))))))

(assert (=> d!1344937 (= (containsKey!1176 (t!356741 (t!356741 newBucket!194)) (_1!28061 (h!55378 (t!356741 newBucket!194)))) e!2760310)))

(declare-fun b!4432956 () Bool)

(declare-fun e!2760311 () Bool)

(assert (=> b!4432956 (= e!2760310 e!2760311)))

(declare-fun res!1834061 () Bool)

(assert (=> b!4432956 (=> (not res!1834061) (not e!2760311))))

(assert (=> b!4432956 (= res!1834061 ((_ is Cons!49677) (t!356741 (t!356741 newBucket!194))))))

(declare-fun b!4432957 () Bool)

(assert (=> b!4432957 (= e!2760311 (containsKey!1176 (t!356741 (t!356741 (t!356741 newBucket!194))) (_1!28061 (h!55378 (t!356741 newBucket!194)))))))

(assert (= (and d!1344937 (not res!1834060)) b!4432956))

(assert (= (and b!4432956 res!1834061) b!4432957))

(declare-fun m!5118025 () Bool)

(assert (=> b!4432957 m!5118025))

(assert (=> b!4432483 d!1344937))

(declare-fun d!1344939 () Bool)

(declare-fun c!754524 () Bool)

(assert (=> d!1344939 (= c!754524 ((_ is Nil!49678) (toList!3565 lt!1630204)))))

(declare-fun e!2760314 () (InoxSet tuple2!49536))

(assert (=> d!1344939 (= (content!7983 (toList!3565 lt!1630204)) e!2760314)))

(declare-fun b!4432962 () Bool)

(assert (=> b!4432962 (= e!2760314 ((as const (Array tuple2!49536 Bool)) false))))

(declare-fun b!4432963 () Bool)

(assert (=> b!4432963 (= e!2760314 ((_ map or) (store ((as const (Array tuple2!49536 Bool)) false) (h!55379 (toList!3565 lt!1630204)) true) (content!7983 (t!356742 (toList!3565 lt!1630204)))))))

(assert (= (and d!1344939 c!754524) b!4432962))

(assert (= (and d!1344939 (not c!754524)) b!4432963))

(declare-fun m!5118027 () Bool)

(assert (=> b!4432963 m!5118027))

(declare-fun m!5118029 () Bool)

(assert (=> b!4432963 m!5118029))

(assert (=> d!1344445 d!1344939))

(declare-fun d!1344941 () Bool)

(declare-fun res!1834062 () Bool)

(declare-fun e!2760315 () Bool)

(assert (=> d!1344941 (=> res!1834062 e!2760315)))

(assert (=> d!1344941 (= res!1834062 (not ((_ is Cons!49677) (_2!28062 (h!55379 (toList!3565 (+!1147 lm!1616 (tuple2!49537 hash!366 newBucket!194))))))))))

(assert (=> d!1344941 (= (noDuplicateKeys!789 (_2!28062 (h!55379 (toList!3565 (+!1147 lm!1616 (tuple2!49537 hash!366 newBucket!194)))))) e!2760315)))

(declare-fun b!4432964 () Bool)

(declare-fun e!2760316 () Bool)

(assert (=> b!4432964 (= e!2760315 e!2760316)))

(declare-fun res!1834063 () Bool)

(assert (=> b!4432964 (=> (not res!1834063) (not e!2760316))))

(assert (=> b!4432964 (= res!1834063 (not (containsKey!1176 (t!356741 (_2!28062 (h!55379 (toList!3565 (+!1147 lm!1616 (tuple2!49537 hash!366 newBucket!194)))))) (_1!28061 (h!55378 (_2!28062 (h!55379 (toList!3565 (+!1147 lm!1616 (tuple2!49537 hash!366 newBucket!194))))))))))))

(declare-fun b!4432965 () Bool)

(assert (=> b!4432965 (= e!2760316 (noDuplicateKeys!789 (t!356741 (_2!28062 (h!55379 (toList!3565 (+!1147 lm!1616 (tuple2!49537 hash!366 newBucket!194))))))))))

(assert (= (and d!1344941 (not res!1834062)) b!4432964))

(assert (= (and b!4432964 res!1834063) b!4432965))

(declare-fun m!5118031 () Bool)

(assert (=> b!4432964 m!5118031))

(declare-fun m!5118033 () Bool)

(assert (=> b!4432965 m!5118033))

(assert (=> bs!760233 d!1344941))

(assert (=> b!4432290 d!1344919))

(assert (=> b!4432290 d!1344479))

(declare-fun d!1344943 () Bool)

(assert (=> d!1344943 (= (length!188 lt!1630379) (size!35883 lt!1630379))))

(declare-fun bs!760435 () Bool)

(assert (= bs!760435 d!1344943))

(declare-fun m!5118035 () Bool)

(assert (=> bs!760435 m!5118035))

(assert (=> b!4432437 d!1344943))

(assert (=> b!4432437 d!1344929))

(declare-fun bs!760436 () Bool)

(declare-fun d!1344945 () Bool)

(assert (= bs!760436 (and d!1344945 d!1344873)))

(declare-fun lambda!155578 () Int)

(assert (=> bs!760436 (not (= lambda!155578 lambda!155567))))

(declare-fun bs!760437 () Bool)

(assert (= bs!760437 (and d!1344945 b!4432942)))

(assert (=> bs!760437 (not (= lambda!155578 lambda!155575))))

(assert (=> bs!760437 (not (= lambda!155578 lambda!155574))))

(declare-fun bs!760438 () Bool)

(assert (= bs!760438 (and d!1344945 d!1344517)))

(assert (=> bs!760438 (not (= lambda!155578 lambda!155537))))

(declare-fun bs!760439 () Bool)

(assert (= bs!760439 (and d!1344945 b!4432894)))

(assert (=> bs!760439 (not (= lambda!155578 lambda!155566))))

(declare-fun bs!760440 () Bool)

(assert (= bs!760440 (and d!1344945 d!1344877)))

(assert (=> bs!760440 (not (= lambda!155578 lambda!155572))))

(declare-fun bs!760441 () Bool)

(assert (= bs!760441 (and d!1344945 d!1344359)))

(assert (=> bs!760441 (= (= (_1!28062 (h!55379 (toList!3565 lm!1616))) hash!366) (= lambda!155578 lambda!155436))))

(declare-fun bs!760442 () Bool)

(assert (= bs!760442 (and d!1344945 b!4432499)))

(assert (=> bs!760442 (not (= lambda!155578 lambda!155534))))

(declare-fun bs!760443 () Bool)

(assert (= bs!760443 (and d!1344945 b!4432497)))

(assert (=> bs!760443 (not (= lambda!155578 lambda!155536))))

(declare-fun bs!760444 () Bool)

(assert (= bs!760444 (and d!1344945 d!1344909)))

(assert (=> bs!760444 (not (= lambda!155578 lambda!155576))))

(assert (=> bs!760439 (not (= lambda!155578 lambda!155565))))

(assert (=> bs!760443 (not (= lambda!155578 lambda!155535))))

(declare-fun bs!760445 () Bool)

(assert (= bs!760445 (and d!1344945 b!4432896)))

(assert (=> bs!760445 (not (= lambda!155578 lambda!155564))))

(declare-fun bs!760446 () Bool)

(assert (= bs!760446 (and d!1344945 b!4432944)))

(assert (=> bs!760446 (not (= lambda!155578 lambda!155573))))

(assert (=> d!1344945 true))

(assert (=> d!1344945 true))

(assert (=> d!1344945 (= (allKeysSameHash!749 (_2!28062 (h!55379 (toList!3565 lm!1616))) (_1!28062 (h!55379 (toList!3565 lm!1616))) hashF!1220) (forall!9626 (_2!28062 (h!55379 (toList!3565 lm!1616))) lambda!155578))))

(declare-fun bs!760447 () Bool)

(assert (= bs!760447 d!1344945))

(declare-fun m!5118037 () Bool)

(assert (=> bs!760447 m!5118037))

(assert (=> bs!760231 d!1344945))

(declare-fun b!4432966 () Bool)

(declare-fun e!2760319 () List!49802)

(declare-fun call!308425 () List!49802)

(assert (=> b!4432966 (= e!2760319 call!308425)))

(declare-fun b!4432967 () Bool)

(declare-fun c!754528 () Bool)

(assert (=> b!4432967 (= c!754528 (and ((_ is Cons!49678) (t!356742 (toList!3565 lm!1616))) (bvsgt (_1!28062 (h!55379 (t!356742 (toList!3565 lm!1616)))) (_1!28062 lt!1630111))))))

(declare-fun e!2760321 () List!49802)

(assert (=> b!4432967 (= e!2760321 e!2760319)))

(declare-fun b!4432968 () Bool)

(declare-fun e!2760320 () List!49802)

(assert (=> b!4432968 (= e!2760320 (insertStrictlySorted!276 (t!356742 (t!356742 (toList!3565 lm!1616))) (_1!28062 lt!1630111) (_2!28062 lt!1630111)))))

(declare-fun d!1344947 () Bool)

(declare-fun e!2760317 () Bool)

(assert (=> d!1344947 e!2760317))

(declare-fun res!1834065 () Bool)

(assert (=> d!1344947 (=> (not res!1834065) (not e!2760317))))

(declare-fun lt!1630669 () List!49802)

(assert (=> d!1344947 (= res!1834065 (isStrictlySorted!248 lt!1630669))))

(declare-fun e!2760318 () List!49802)

(assert (=> d!1344947 (= lt!1630669 e!2760318)))

(declare-fun c!754527 () Bool)

(assert (=> d!1344947 (= c!754527 (and ((_ is Cons!49678) (t!356742 (toList!3565 lm!1616))) (bvslt (_1!28062 (h!55379 (t!356742 (toList!3565 lm!1616)))) (_1!28062 lt!1630111))))))

(assert (=> d!1344947 (isStrictlySorted!248 (t!356742 (toList!3565 lm!1616)))))

(assert (=> d!1344947 (= (insertStrictlySorted!276 (t!356742 (toList!3565 lm!1616)) (_1!28062 lt!1630111) (_2!28062 lt!1630111)) lt!1630669)))

(declare-fun bm!308419 () Bool)

(declare-fun call!308426 () List!49802)

(declare-fun call!308424 () List!49802)

(assert (=> bm!308419 (= call!308426 call!308424)))

(declare-fun b!4432969 () Bool)

(assert (=> b!4432969 (= e!2760321 call!308426)))

(declare-fun b!4432970 () Bool)

(assert (=> b!4432970 (= e!2760318 e!2760321)))

(declare-fun c!754526 () Bool)

(assert (=> b!4432970 (= c!754526 (and ((_ is Cons!49678) (t!356742 (toList!3565 lm!1616))) (= (_1!28062 (h!55379 (t!356742 (toList!3565 lm!1616)))) (_1!28062 lt!1630111))))))

(declare-fun b!4432971 () Bool)

(assert (=> b!4432971 (= e!2760317 (contains!12213 lt!1630669 (tuple2!49537 (_1!28062 lt!1630111) (_2!28062 lt!1630111))))))

(declare-fun b!4432972 () Bool)

(declare-fun res!1834064 () Bool)

(assert (=> b!4432972 (=> (not res!1834064) (not e!2760317))))

(assert (=> b!4432972 (= res!1834064 (containsKey!1175 lt!1630669 (_1!28062 lt!1630111)))))

(declare-fun bm!308420 () Bool)

(assert (=> bm!308420 (= call!308424 ($colon$colon!797 e!2760320 (ite c!754527 (h!55379 (t!356742 (toList!3565 lm!1616))) (tuple2!49537 (_1!28062 lt!1630111) (_2!28062 lt!1630111)))))))

(declare-fun c!754525 () Bool)

(assert (=> bm!308420 (= c!754525 c!754527)))

(declare-fun b!4432973 () Bool)

(assert (=> b!4432973 (= e!2760320 (ite c!754526 (t!356742 (t!356742 (toList!3565 lm!1616))) (ite c!754528 (Cons!49678 (h!55379 (t!356742 (toList!3565 lm!1616))) (t!356742 (t!356742 (toList!3565 lm!1616)))) Nil!49678)))))

(declare-fun b!4432974 () Bool)

(assert (=> b!4432974 (= e!2760318 call!308424)))

(declare-fun bm!308421 () Bool)

(assert (=> bm!308421 (= call!308425 call!308426)))

(declare-fun b!4432975 () Bool)

(assert (=> b!4432975 (= e!2760319 call!308425)))

(assert (= (and d!1344947 c!754527) b!4432974))

(assert (= (and d!1344947 (not c!754527)) b!4432970))

(assert (= (and b!4432970 c!754526) b!4432969))

(assert (= (and b!4432970 (not c!754526)) b!4432967))

(assert (= (and b!4432967 c!754528) b!4432975))

(assert (= (and b!4432967 (not c!754528)) b!4432966))

(assert (= (or b!4432975 b!4432966) bm!308421))

(assert (= (or b!4432969 bm!308421) bm!308419))

(assert (= (or b!4432974 bm!308419) bm!308420))

(assert (= (and bm!308420 c!754525) b!4432968))

(assert (= (and bm!308420 (not c!754525)) b!4432973))

(assert (= (and d!1344947 res!1834065) b!4432972))

(assert (= (and b!4432972 res!1834064) b!4432971))

(declare-fun m!5118039 () Bool)

(assert (=> b!4432972 m!5118039))

(declare-fun m!5118041 () Bool)

(assert (=> b!4432968 m!5118041))

(declare-fun m!5118043 () Bool)

(assert (=> bm!308420 m!5118043))

(declare-fun m!5118045 () Bool)

(assert (=> d!1344947 m!5118045))

(assert (=> d!1344947 m!5117127))

(declare-fun m!5118047 () Bool)

(assert (=> b!4432971 m!5118047))

(assert (=> b!4432348 d!1344947))

(declare-fun d!1344949 () Bool)

(assert (=> d!1344949 (= (isEmpty!28367 (getValueByKey!743 (toList!3565 lm!1616) hash!366)) (not ((_ is Some!10756) (getValueByKey!743 (toList!3565 lm!1616) hash!366))))))

(assert (=> d!1344495 d!1344949))

(declare-fun d!1344951 () Bool)

(declare-fun res!1834066 () Bool)

(declare-fun e!2760322 () Bool)

(assert (=> d!1344951 (=> res!1834066 e!2760322)))

(assert (=> d!1344951 (= res!1834066 (and ((_ is Cons!49677) (t!356741 (_2!28062 (h!55379 (toList!3565 lt!1630110))))) (= (_1!28061 (h!55378 (t!356741 (_2!28062 (h!55379 (toList!3565 lt!1630110)))))) (_1!28061 (h!55378 (_2!28062 (h!55379 (toList!3565 lt!1630110))))))))))

(assert (=> d!1344951 (= (containsKey!1176 (t!356741 (_2!28062 (h!55379 (toList!3565 lt!1630110)))) (_1!28061 (h!55378 (_2!28062 (h!55379 (toList!3565 lt!1630110)))))) e!2760322)))

(declare-fun b!4432976 () Bool)

(declare-fun e!2760323 () Bool)

(assert (=> b!4432976 (= e!2760322 e!2760323)))

(declare-fun res!1834067 () Bool)

(assert (=> b!4432976 (=> (not res!1834067) (not e!2760323))))

(assert (=> b!4432976 (= res!1834067 ((_ is Cons!49677) (t!356741 (_2!28062 (h!55379 (toList!3565 lt!1630110))))))))

(declare-fun b!4432977 () Bool)

(assert (=> b!4432977 (= e!2760323 (containsKey!1176 (t!356741 (t!356741 (_2!28062 (h!55379 (toList!3565 lt!1630110))))) (_1!28061 (h!55378 (_2!28062 (h!55379 (toList!3565 lt!1630110)))))))))

(assert (= (and d!1344951 (not res!1834066)) b!4432976))

(assert (= (and b!4432976 res!1834067) b!4432977))

(declare-fun m!5118049 () Bool)

(assert (=> b!4432977 m!5118049))

(assert (=> b!4432479 d!1344951))

(declare-fun d!1344953 () Bool)

(declare-fun res!1834072 () Bool)

(declare-fun e!2760328 () Bool)

(assert (=> d!1344953 (=> res!1834072 e!2760328)))

(assert (=> d!1344953 (= res!1834072 (or ((_ is Nil!49677) (toList!3566 lt!1630194)) ((_ is Nil!49677) (t!356741 (toList!3566 lt!1630194)))))))

(assert (=> d!1344953 (= (noDuplicatedKeys!182 (toList!3566 lt!1630194)) e!2760328)))

(declare-fun b!4432982 () Bool)

(declare-fun e!2760329 () Bool)

(assert (=> b!4432982 (= e!2760328 e!2760329)))

(declare-fun res!1834073 () Bool)

(assert (=> b!4432982 (=> (not res!1834073) (not e!2760329))))

(assert (=> b!4432982 (= res!1834073 (not (containsKey!1174 (t!356741 (toList!3566 lt!1630194)) (_1!28061 (h!55378 (toList!3566 lt!1630194))))))))

(declare-fun b!4432983 () Bool)

(assert (=> b!4432983 (= e!2760329 (noDuplicatedKeys!182 (t!356741 (toList!3566 lt!1630194))))))

(assert (= (and d!1344953 (not res!1834072)) b!4432982))

(assert (= (and b!4432982 res!1834073) b!4432983))

(declare-fun m!5118051 () Bool)

(assert (=> b!4432982 m!5118051))

(declare-fun m!5118053 () Bool)

(assert (=> b!4432983 m!5118053))

(assert (=> d!1344489 d!1344953))

(declare-fun d!1344955 () Bool)

(assert (=> d!1344955 (dynLambda!20877 lambda!155496 (_1!28061 (h!55378 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))))))

(declare-fun lt!1630672 () Unit!82777)

(declare-fun choose!28089 (List!49804 Int K!11045) Unit!82777)

(assert (=> d!1344955 (= lt!1630672 (choose!28089 (getKeysList!268 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) lambda!155496 (_1!28061 (h!55378 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))))))

(declare-fun e!2760332 () Bool)

(assert (=> d!1344955 e!2760332))

(declare-fun res!1834076 () Bool)

(assert (=> d!1344955 (=> (not res!1834076) (not e!2760332))))

(assert (=> d!1344955 (= res!1834076 (forall!9628 (getKeysList!268 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) lambda!155496))))

(assert (=> d!1344955 (= (forallContained!2116 (getKeysList!268 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) lambda!155496 (_1!28061 (h!55378 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))) lt!1630672)))

(declare-fun b!4432986 () Bool)

(assert (=> b!4432986 (= e!2760332 (contains!12212 (getKeysList!268 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) (_1!28061 (h!55378 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))))))

(assert (= (and d!1344955 res!1834076) b!4432986))

(declare-fun b_lambda!144065 () Bool)

(assert (=> (not b_lambda!144065) (not d!1344955)))

(declare-fun m!5118055 () Bool)

(assert (=> d!1344955 m!5118055))

(assert (=> d!1344955 m!5116991))

(declare-fun m!5118057 () Bool)

(assert (=> d!1344955 m!5118057))

(assert (=> d!1344955 m!5116991))

(declare-fun m!5118059 () Bool)

(assert (=> d!1344955 m!5118059))

(assert (=> b!4432986 m!5116991))

(assert (=> b!4432986 m!5117005))

(assert (=> b!4432422 d!1344955))

(declare-fun bs!760448 () Bool)

(declare-fun b!4432993 () Bool)

(assert (= bs!760448 (and b!4432993 b!4432422)))

(declare-fun lambda!155579 () Int)

(assert (=> bs!760448 (= (= (t!356741 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) (= lambda!155579 lambda!155496))))

(declare-fun bs!760449 () Bool)

(assert (= bs!760449 (and b!4432993 b!4432416)))

(assert (=> bs!760449 (= (= (t!356741 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) (Cons!49677 (h!55378 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))) (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))) (= lambda!155579 lambda!155497))))

(declare-fun bs!760450 () Bool)

(assert (= bs!760450 (and b!4432993 b!4432417)))

(assert (=> bs!760450 (= (= (t!356741 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) (toList!3566 (extractMap!850 (toList!3565 lm!1616)))) (= lambda!155579 lambda!155498))))

(declare-fun bs!760451 () Bool)

(assert (= bs!760451 (and b!4432993 b!4432438)))

(assert (=> bs!760451 (= (= (t!356741 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) (toList!3566 (extractMap!850 (toList!3565 lm!1616)))) (= lambda!155579 lambda!155504))))

(assert (=> b!4432993 true))

(declare-fun bs!760452 () Bool)

(declare-fun b!4432987 () Bool)

(assert (= bs!760452 (and b!4432987 b!4432438)))

(declare-fun lambda!155580 () Int)

(assert (=> bs!760452 (= (= (Cons!49677 (h!55378 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) (t!356741 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))) (toList!3566 (extractMap!850 (toList!3565 lm!1616)))) (= lambda!155580 lambda!155504))))

(declare-fun bs!760453 () Bool)

(assert (= bs!760453 (and b!4432987 b!4432422)))

(assert (=> bs!760453 (= (= (Cons!49677 (h!55378 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) (t!356741 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))) (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) (= lambda!155580 lambda!155496))))

(declare-fun bs!760454 () Bool)

(assert (= bs!760454 (and b!4432987 b!4432993)))

(assert (=> bs!760454 (= (= (Cons!49677 (h!55378 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) (t!356741 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))) (t!356741 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))) (= lambda!155580 lambda!155579))))

(declare-fun bs!760455 () Bool)

(assert (= bs!760455 (and b!4432987 b!4432417)))

(assert (=> bs!760455 (= (= (Cons!49677 (h!55378 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) (t!356741 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))) (toList!3566 (extractMap!850 (toList!3565 lm!1616)))) (= lambda!155580 lambda!155498))))

(declare-fun bs!760456 () Bool)

(assert (= bs!760456 (and b!4432987 b!4432416)))

(assert (=> bs!760456 (= (= (Cons!49677 (h!55378 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) (t!356741 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))) (Cons!49677 (h!55378 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))) (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))) (= lambda!155580 lambda!155497))))

(assert (=> b!4432987 true))

(declare-fun bs!760457 () Bool)

(declare-fun b!4432988 () Bool)

(assert (= bs!760457 (and b!4432988 b!4432987)))

(declare-fun lambda!155581 () Int)

(assert (=> bs!760457 (= (= (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))) (Cons!49677 (h!55378 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) (t!356741 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))))) (= lambda!155581 lambda!155580))))

(declare-fun bs!760458 () Bool)

(assert (= bs!760458 (and b!4432988 b!4432438)))

(assert (=> bs!760458 (= (= (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))) (toList!3566 (extractMap!850 (toList!3565 lm!1616)))) (= lambda!155581 lambda!155504))))

(declare-fun bs!760459 () Bool)

(assert (= bs!760459 (and b!4432988 b!4432422)))

(assert (=> bs!760459 (= lambda!155581 lambda!155496)))

(declare-fun bs!760460 () Bool)

(assert (= bs!760460 (and b!4432988 b!4432993)))

(assert (=> bs!760460 (= (= (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))) (t!356741 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))) (= lambda!155581 lambda!155579))))

(declare-fun bs!760461 () Bool)

(assert (= bs!760461 (and b!4432988 b!4432417)))

(assert (=> bs!760461 (= (= (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))) (toList!3566 (extractMap!850 (toList!3565 lm!1616)))) (= lambda!155581 lambda!155498))))

(declare-fun bs!760462 () Bool)

(assert (= bs!760462 (and b!4432988 b!4432416)))

(assert (=> bs!760462 (= (= (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))) (Cons!49677 (h!55378 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))) (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))) (= lambda!155581 lambda!155497))))

(assert (=> b!4432988 true))

(declare-fun bs!760463 () Bool)

(declare-fun b!4432994 () Bool)

(assert (= bs!760463 (and b!4432994 b!4432423)))

(declare-fun lambda!155582 () Int)

(assert (=> bs!760463 (= lambda!155582 lambda!155499)))

(declare-fun bs!760464 () Bool)

(assert (= bs!760464 (and b!4432994 b!4432439)))

(assert (=> bs!760464 (= lambda!155582 lambda!155505)))

(declare-fun e!2760333 () List!49804)

(assert (=> b!4432987 (= e!2760333 (Cons!49680 (_1!28061 (h!55378 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))) (getKeysList!268 (t!356741 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))))))))

(declare-fun c!754531 () Bool)

(assert (=> b!4432987 (= c!754531 (containsKey!1174 (t!356741 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) (_1!28061 (h!55378 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))))))))

(declare-fun lt!1630679 () Unit!82777)

(declare-fun e!2760335 () Unit!82777)

(assert (=> b!4432987 (= lt!1630679 e!2760335)))

(declare-fun c!754529 () Bool)

(assert (=> b!4432987 (= c!754529 (contains!12212 (getKeysList!268 (t!356741 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))) (_1!28061 (h!55378 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))))))))

(declare-fun lt!1630678 () Unit!82777)

(declare-fun e!2760334 () Unit!82777)

(assert (=> b!4432987 (= lt!1630678 e!2760334)))

(declare-fun lt!1630675 () List!49804)

(assert (=> b!4432987 (= lt!1630675 (getKeysList!268 (t!356741 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))))))

(declare-fun lt!1630676 () Unit!82777)

(assert (=> b!4432987 (= lt!1630676 (lemmaForallContainsAddHeadPreserves!88 (t!356741 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) lt!1630675 (h!55378 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))))))

(assert (=> b!4432987 (forall!9628 lt!1630675 lambda!155580)))

(declare-fun lt!1630674 () Unit!82777)

(assert (=> b!4432987 (= lt!1630674 lt!1630676)))

(declare-fun b!4432989 () Bool)

(assert (=> b!4432989 false))

(declare-fun Unit!82875 () Unit!82777)

(assert (=> b!4432989 (= e!2760335 Unit!82875)))

(declare-fun b!4432990 () Bool)

(declare-fun Unit!82876 () Unit!82777)

(assert (=> b!4432990 (= e!2760334 Unit!82876)))

(declare-fun b!4432991 () Bool)

(assert (=> b!4432991 (= e!2760333 Nil!49680)))

(declare-fun b!4432992 () Bool)

(declare-fun Unit!82877 () Unit!82777)

(assert (=> b!4432992 (= e!2760335 Unit!82877)))

(assert (=> b!4432993 false))

(declare-fun lt!1630677 () Unit!82777)

(assert (=> b!4432993 (= lt!1630677 (forallContained!2116 (getKeysList!268 (t!356741 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))) lambda!155579 (_1!28061 (h!55378 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))))))))

(declare-fun Unit!82878 () Unit!82777)

(assert (=> b!4432993 (= e!2760334 Unit!82878)))

(declare-fun e!2760336 () Bool)

(declare-fun lt!1630673 () List!49804)

(assert (=> b!4432994 (= e!2760336 (= (content!7984 lt!1630673) (content!7984 (map!10858 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))) lambda!155582))))))

(declare-fun b!4432995 () Bool)

(declare-fun res!1834079 () Bool)

(assert (=> b!4432995 (=> (not res!1834079) (not e!2760336))))

(assert (=> b!4432995 (= res!1834079 (= (length!188 lt!1630673) (length!189 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))))))

(declare-fun d!1344957 () Bool)

(assert (=> d!1344957 e!2760336))

(declare-fun res!1834078 () Bool)

(assert (=> d!1344957 (=> (not res!1834078) (not e!2760336))))

(assert (=> d!1344957 (= res!1834078 (noDuplicate!666 lt!1630673))))

(assert (=> d!1344957 (= lt!1630673 e!2760333)))

(declare-fun c!754530 () Bool)

(assert (=> d!1344957 (= c!754530 ((_ is Cons!49677) (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))))))

(assert (=> d!1344957 (invariantList!821 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))))

(assert (=> d!1344957 (= (getKeysList!268 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) lt!1630673)))

(declare-fun res!1834077 () Bool)

(assert (=> b!4432988 (=> (not res!1834077) (not e!2760336))))

(assert (=> b!4432988 (= res!1834077 (forall!9628 lt!1630673 lambda!155581))))

(assert (= (and d!1344957 c!754530) b!4432987))

(assert (= (and d!1344957 (not c!754530)) b!4432991))

(assert (= (and b!4432987 c!754531) b!4432989))

(assert (= (and b!4432987 (not c!754531)) b!4432992))

(assert (= (and b!4432987 c!754529) b!4432993))

(assert (= (and b!4432987 (not c!754529)) b!4432990))

(assert (= (and d!1344957 res!1834078) b!4432995))

(assert (= (and b!4432995 res!1834079) b!4432988))

(assert (= (and b!4432988 res!1834077) b!4432994))

(declare-fun m!5118061 () Bool)

(assert (=> b!4432994 m!5118061))

(declare-fun m!5118063 () Bool)

(assert (=> b!4432994 m!5118063))

(assert (=> b!4432994 m!5118063))

(declare-fun m!5118065 () Bool)

(assert (=> b!4432994 m!5118065))

(declare-fun m!5118067 () Bool)

(assert (=> b!4432993 m!5118067))

(assert (=> b!4432993 m!5118067))

(declare-fun m!5118069 () Bool)

(assert (=> b!4432993 m!5118069))

(declare-fun m!5118071 () Bool)

(assert (=> b!4432988 m!5118071))

(declare-fun m!5118073 () Bool)

(assert (=> d!1344957 m!5118073))

(declare-fun m!5118075 () Bool)

(assert (=> d!1344957 m!5118075))

(declare-fun m!5118077 () Bool)

(assert (=> b!4432995 m!5118077))

(declare-fun m!5118079 () Bool)

(assert (=> b!4432995 m!5118079))

(assert (=> b!4432987 m!5118067))

(declare-fun m!5118081 () Bool)

(assert (=> b!4432987 m!5118081))

(declare-fun m!5118083 () Bool)

(assert (=> b!4432987 m!5118083))

(assert (=> b!4432987 m!5118067))

(declare-fun m!5118085 () Bool)

(assert (=> b!4432987 m!5118085))

(declare-fun m!5118087 () Bool)

(assert (=> b!4432987 m!5118087))

(assert (=> b!4432422 d!1344957))

(declare-fun d!1344959 () Bool)

(declare-fun res!1834080 () Bool)

(declare-fun e!2760337 () Bool)

(assert (=> d!1344959 (=> res!1834080 e!2760337)))

(assert (=> d!1344959 (= res!1834080 (and ((_ is Cons!49677) (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) (= (_1!28061 (h!55378 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))) key!3717)))))

(assert (=> d!1344959 (= (containsKey!1174 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))) key!3717) e!2760337)))

(declare-fun b!4432996 () Bool)

(declare-fun e!2760338 () Bool)

(assert (=> b!4432996 (= e!2760337 e!2760338)))

(declare-fun res!1834081 () Bool)

(assert (=> b!4432996 (=> (not res!1834081) (not e!2760338))))

(assert (=> b!4432996 (= res!1834081 ((_ is Cons!49677) (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))))))

(declare-fun b!4432997 () Bool)

(assert (=> b!4432997 (= e!2760338 (containsKey!1174 (t!356741 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) key!3717))))

(assert (= (and d!1344959 (not res!1834080)) b!4432996))

(assert (= (and b!4432996 res!1834081) b!4432997))

(declare-fun m!5118089 () Bool)

(assert (=> b!4432997 m!5118089))

(assert (=> b!4432517 d!1344959))

(declare-fun d!1344961 () Bool)

(declare-fun lt!1630680 () Bool)

(assert (=> d!1344961 (= lt!1630680 (select (content!7983 lt!1630347) (tuple2!49537 (_1!28062 lt!1630111) (_2!28062 lt!1630111))))))

(declare-fun e!2760339 () Bool)

(assert (=> d!1344961 (= lt!1630680 e!2760339)))

(declare-fun res!1834083 () Bool)

(assert (=> d!1344961 (=> (not res!1834083) (not e!2760339))))

(assert (=> d!1344961 (= res!1834083 ((_ is Cons!49678) lt!1630347))))

(assert (=> d!1344961 (= (contains!12213 lt!1630347 (tuple2!49537 (_1!28062 lt!1630111) (_2!28062 lt!1630111))) lt!1630680)))

(declare-fun b!4432998 () Bool)

(declare-fun e!2760340 () Bool)

(assert (=> b!4432998 (= e!2760339 e!2760340)))

(declare-fun res!1834082 () Bool)

(assert (=> b!4432998 (=> res!1834082 e!2760340)))

(assert (=> b!4432998 (= res!1834082 (= (h!55379 lt!1630347) (tuple2!49537 (_1!28062 lt!1630111) (_2!28062 lt!1630111))))))

(declare-fun b!4432999 () Bool)

(assert (=> b!4432999 (= e!2760340 (contains!12213 (t!356742 lt!1630347) (tuple2!49537 (_1!28062 lt!1630111) (_2!28062 lt!1630111))))))

(assert (= (and d!1344961 res!1834083) b!4432998))

(assert (= (and b!4432998 (not res!1834082)) b!4432999))

(declare-fun m!5118091 () Bool)

(assert (=> d!1344961 m!5118091))

(declare-fun m!5118093 () Bool)

(assert (=> d!1344961 m!5118093))

(declare-fun m!5118095 () Bool)

(assert (=> b!4432999 m!5118095))

(assert (=> b!4432351 d!1344961))

(declare-fun d!1344963 () Bool)

(assert (=> d!1344963 (= (invariantList!821 (toList!3566 lt!1630435)) (noDuplicatedKeys!182 (toList!3566 lt!1630435)))))

(declare-fun bs!760465 () Bool)

(assert (= bs!760465 d!1344963))

(declare-fun m!5118097 () Bool)

(assert (=> bs!760465 m!5118097))

(assert (=> b!4432495 d!1344963))

(declare-fun b!4433003 () Bool)

(declare-fun e!2760342 () Option!10757)

(assert (=> b!4433003 (= e!2760342 None!10756)))

(declare-fun d!1344965 () Bool)

(declare-fun c!754532 () Bool)

(assert (=> d!1344965 (= c!754532 (and ((_ is Cons!49678) (t!356742 (toList!3565 lm!1616))) (= (_1!28062 (h!55379 (t!356742 (toList!3565 lm!1616)))) hash!366)))))

(declare-fun e!2760341 () Option!10757)

(assert (=> d!1344965 (= (getValueByKey!743 (t!356742 (toList!3565 lm!1616)) hash!366) e!2760341)))

(declare-fun b!4433002 () Bool)

(assert (=> b!4433002 (= e!2760342 (getValueByKey!743 (t!356742 (t!356742 (toList!3565 lm!1616))) hash!366))))

(declare-fun b!4433001 () Bool)

(assert (=> b!4433001 (= e!2760341 e!2760342)))

(declare-fun c!754533 () Bool)

(assert (=> b!4433001 (= c!754533 (and ((_ is Cons!49678) (t!356742 (toList!3565 lm!1616))) (not (= (_1!28062 (h!55379 (t!356742 (toList!3565 lm!1616)))) hash!366))))))

(declare-fun b!4433000 () Bool)

(assert (=> b!4433000 (= e!2760341 (Some!10756 (_2!28062 (h!55379 (t!356742 (toList!3565 lm!1616))))))))

(assert (= (and d!1344965 c!754532) b!4433000))

(assert (= (and d!1344965 (not c!754532)) b!4433001))

(assert (= (and b!4433001 c!754533) b!4433002))

(assert (= (and b!4433001 (not c!754533)) b!4433003))

(declare-fun m!5118099 () Bool)

(assert (=> b!4433002 m!5118099))

(assert (=> b!4432463 d!1344965))

(declare-fun d!1344967 () Bool)

(declare-fun res!1834084 () Bool)

(declare-fun e!2760343 () Bool)

(assert (=> d!1344967 (=> res!1834084 e!2760343)))

(assert (=> d!1344967 (= res!1834084 ((_ is Nil!49678) (t!356742 (t!356742 (toList!3565 lm!1616)))))))

(assert (=> d!1344967 (= (forall!9624 (t!356742 (t!356742 (toList!3565 lm!1616))) lambda!155418) e!2760343)))

(declare-fun b!4433004 () Bool)

(declare-fun e!2760344 () Bool)

(assert (=> b!4433004 (= e!2760343 e!2760344)))

(declare-fun res!1834085 () Bool)

(assert (=> b!4433004 (=> (not res!1834085) (not e!2760344))))

(assert (=> b!4433004 (= res!1834085 (dynLambda!20872 lambda!155418 (h!55379 (t!356742 (t!356742 (toList!3565 lm!1616))))))))

(declare-fun b!4433005 () Bool)

(assert (=> b!4433005 (= e!2760344 (forall!9624 (t!356742 (t!356742 (t!356742 (toList!3565 lm!1616)))) lambda!155418))))

(assert (= (and d!1344967 (not res!1834084)) b!4433004))

(assert (= (and b!4433004 res!1834085) b!4433005))

(declare-fun b_lambda!144067 () Bool)

(assert (=> (not b_lambda!144067) (not b!4433004)))

(declare-fun m!5118101 () Bool)

(assert (=> b!4433004 m!5118101))

(declare-fun m!5118103 () Bool)

(assert (=> b!4433005 m!5118103))

(assert (=> b!4432359 d!1344967))

(declare-fun bs!760466 () Bool)

(declare-fun d!1344969 () Bool)

(assert (= bs!760466 (and d!1344969 d!1344873)))

(declare-fun lambda!155585 () Int)

(assert (=> bs!760466 (= (= (extractMap!850 (t!356742 (toList!3565 lm!1616))) lt!1630597) (= lambda!155585 lambda!155567))))

(declare-fun bs!760467 () Bool)

(assert (= bs!760467 (and d!1344969 b!4432942)))

(assert (=> bs!760467 (= (= (extractMap!850 (t!356742 (toList!3565 lm!1616))) lt!1630657) (= lambda!155585 lambda!155575))))

(declare-fun bs!760468 () Bool)

(assert (= bs!760468 (and d!1344969 d!1344945)))

(assert (=> bs!760468 (not (= lambda!155585 lambda!155578))))

(assert (=> bs!760467 (= (= (extractMap!850 (t!356742 (toList!3565 lm!1616))) (extractMap!850 (t!356742 (t!356742 (toList!3565 lm!1616))))) (= lambda!155585 lambda!155574))))

(declare-fun bs!760469 () Bool)

(assert (= bs!760469 (and d!1344969 d!1344517)))

(assert (=> bs!760469 (= (= (extractMap!850 (t!356742 (toList!3565 lm!1616))) lt!1630435) (= lambda!155585 lambda!155537))))

(declare-fun bs!760470 () Bool)

(assert (= bs!760470 (and d!1344969 b!4432894)))

(assert (=> bs!760470 (= (= (extractMap!850 (t!356742 (toList!3565 lm!1616))) lt!1630609) (= lambda!155585 lambda!155566))))

(declare-fun bs!760471 () Bool)

(assert (= bs!760471 (and d!1344969 d!1344877)))

(assert (=> bs!760471 (= (= (extractMap!850 (t!356742 (toList!3565 lm!1616))) lt!1630447) (= lambda!155585 lambda!155572))))

(declare-fun bs!760472 () Bool)

(assert (= bs!760472 (and d!1344969 d!1344359)))

(assert (=> bs!760472 (not (= lambda!155585 lambda!155436))))

(declare-fun bs!760473 () Bool)

(assert (= bs!760473 (and d!1344969 b!4432499)))

(assert (=> bs!760473 (= lambda!155585 lambda!155534)))

(declare-fun bs!760474 () Bool)

(assert (= bs!760474 (and d!1344969 b!4432497)))

(assert (=> bs!760474 (= (= (extractMap!850 (t!356742 (toList!3565 lm!1616))) lt!1630447) (= lambda!155585 lambda!155536))))

(declare-fun bs!760475 () Bool)

(assert (= bs!760475 (and d!1344969 d!1344909)))

(assert (=> bs!760475 (= (= (extractMap!850 (t!356742 (toList!3565 lm!1616))) lt!1630645) (= lambda!155585 lambda!155576))))

(assert (=> bs!760470 (= (= (extractMap!850 (t!356742 (toList!3565 lm!1616))) (+!1149 (extractMap!850 (t!356742 (toList!3565 lm!1616))) (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))) (= lambda!155585 lambda!155565))))

(assert (=> bs!760474 (= lambda!155585 lambda!155535)))

(declare-fun bs!760476 () Bool)

(assert (= bs!760476 (and d!1344969 b!4432896)))

(assert (=> bs!760476 (= (= (extractMap!850 (t!356742 (toList!3565 lm!1616))) (+!1149 (extractMap!850 (t!356742 (toList!3565 lm!1616))) (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))) (= lambda!155585 lambda!155564))))

(declare-fun bs!760477 () Bool)

(assert (= bs!760477 (and d!1344969 b!4432944)))

(assert (=> bs!760477 (= (= (extractMap!850 (t!356742 (toList!3565 lm!1616))) (extractMap!850 (t!356742 (t!356742 (toList!3565 lm!1616))))) (= lambda!155585 lambda!155573))))

(assert (=> d!1344969 true))

(assert (=> d!1344969 (forall!9626 (toList!3566 (extractMap!850 (t!356742 (toList!3565 lm!1616)))) lambda!155585)))

(declare-fun lt!1630683 () Unit!82777)

(declare-fun choose!28090 (ListMap!2809) Unit!82777)

(assert (=> d!1344969 (= lt!1630683 (choose!28090 (extractMap!850 (t!356742 (toList!3565 lm!1616)))))))

(assert (=> d!1344969 (= (lemmaContainsAllItsOwnKeys!189 (extractMap!850 (t!356742 (toList!3565 lm!1616)))) lt!1630683)))

(declare-fun bs!760478 () Bool)

(assert (= bs!760478 d!1344969))

(declare-fun m!5118105 () Bool)

(assert (=> bs!760478 m!5118105))

(assert (=> bs!760478 m!5116669))

(declare-fun m!5118107 () Bool)

(assert (=> bs!760478 m!5118107))

(assert (=> bm!308392 d!1344969))

(assert (=> b!4432460 d!1344487))

(declare-fun d!1344971 () Bool)

(declare-fun res!1834086 () Bool)

(declare-fun e!2760345 () Bool)

(assert (=> d!1344971 (=> res!1834086 e!2760345)))

(assert (=> d!1344971 (= res!1834086 (and ((_ is Cons!49678) (t!356742 (toList!3565 lm!1616))) (= (_1!28062 (h!55379 (t!356742 (toList!3565 lm!1616)))) hash!366)))))

(assert (=> d!1344971 (= (containsKey!1175 (t!356742 (toList!3565 lm!1616)) hash!366) e!2760345)))

(declare-fun b!4433006 () Bool)

(declare-fun e!2760346 () Bool)

(assert (=> b!4433006 (= e!2760345 e!2760346)))

(declare-fun res!1834087 () Bool)

(assert (=> b!4433006 (=> (not res!1834087) (not e!2760346))))

(assert (=> b!4433006 (= res!1834087 (and (or (not ((_ is Cons!49678) (t!356742 (toList!3565 lm!1616)))) (bvsle (_1!28062 (h!55379 (t!356742 (toList!3565 lm!1616)))) hash!366)) ((_ is Cons!49678) (t!356742 (toList!3565 lm!1616))) (bvslt (_1!28062 (h!55379 (t!356742 (toList!3565 lm!1616)))) hash!366)))))

(declare-fun b!4433007 () Bool)

(assert (=> b!4433007 (= e!2760346 (containsKey!1175 (t!356742 (t!356742 (toList!3565 lm!1616))) hash!366))))

(assert (= (and d!1344971 (not res!1834086)) b!4433006))

(assert (= (and b!4433006 res!1834087) b!4433007))

(declare-fun m!5118109 () Bool)

(assert (=> b!4433007 m!5118109))

(assert (=> b!4432455 d!1344971))

(declare-fun d!1344973 () Bool)

(declare-fun lt!1630684 () Bool)

(assert (=> d!1344973 (= lt!1630684 (select (content!7984 (getKeysList!268 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))) (_1!28061 (h!55378 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))))))

(declare-fun e!2760348 () Bool)

(assert (=> d!1344973 (= lt!1630684 e!2760348)))

(declare-fun res!1834089 () Bool)

(assert (=> d!1344973 (=> (not res!1834089) (not e!2760348))))

(assert (=> d!1344973 (= res!1834089 ((_ is Cons!49680) (getKeysList!268 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))))))

(assert (=> d!1344973 (= (contains!12212 (getKeysList!268 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) (_1!28061 (h!55378 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))) lt!1630684)))

(declare-fun b!4433008 () Bool)

(declare-fun e!2760347 () Bool)

(assert (=> b!4433008 (= e!2760348 e!2760347)))

(declare-fun res!1834088 () Bool)

(assert (=> b!4433008 (=> res!1834088 e!2760347)))

(assert (=> b!4433008 (= res!1834088 (= (h!55383 (getKeysList!268 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))) (_1!28061 (h!55378 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))))))

(declare-fun b!4433009 () Bool)

(assert (=> b!4433009 (= e!2760347 (contains!12212 (t!356744 (getKeysList!268 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))) (_1!28061 (h!55378 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))))))

(assert (= (and d!1344973 res!1834089) b!4433008))

(assert (= (and b!4433008 (not res!1834088)) b!4433009))

(assert (=> d!1344973 m!5116991))

(declare-fun m!5118111 () Bool)

(assert (=> d!1344973 m!5118111))

(declare-fun m!5118113 () Bool)

(assert (=> d!1344973 m!5118113))

(declare-fun m!5118115 () Bool)

(assert (=> b!4433009 m!5118115))

(assert (=> b!4432416 d!1344973))

(assert (=> b!4432416 d!1344957))

(declare-fun bs!760479 () Bool)

(declare-fun d!1344975 () Bool)

(assert (= bs!760479 (and d!1344975 b!4432987)))

(declare-fun lambda!155588 () Int)

(assert (=> bs!760479 (= (= (Cons!49677 (h!55378 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))) (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) (Cons!49677 (h!55378 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) (t!356741 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))))) (= lambda!155588 lambda!155580))))

(declare-fun bs!760480 () Bool)

(assert (= bs!760480 (and d!1344975 b!4432438)))

(assert (=> bs!760480 (= (= (Cons!49677 (h!55378 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))) (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) (toList!3566 (extractMap!850 (toList!3565 lm!1616)))) (= lambda!155588 lambda!155504))))

(declare-fun bs!760481 () Bool)

(assert (= bs!760481 (and d!1344975 b!4432422)))

(assert (=> bs!760481 (= (= (Cons!49677 (h!55378 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))) (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) (= lambda!155588 lambda!155496))))

(declare-fun bs!760482 () Bool)

(assert (= bs!760482 (and d!1344975 b!4432988)))

(assert (=> bs!760482 (= (= (Cons!49677 (h!55378 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))) (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) (= lambda!155588 lambda!155581))))

(declare-fun bs!760483 () Bool)

(assert (= bs!760483 (and d!1344975 b!4432993)))

(assert (=> bs!760483 (= (= (Cons!49677 (h!55378 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))) (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) (t!356741 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))) (= lambda!155588 lambda!155579))))

(declare-fun bs!760484 () Bool)

(assert (= bs!760484 (and d!1344975 b!4432417)))

(assert (=> bs!760484 (= (= (Cons!49677 (h!55378 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))) (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) (toList!3566 (extractMap!850 (toList!3565 lm!1616)))) (= lambda!155588 lambda!155498))))

(declare-fun bs!760485 () Bool)

(assert (= bs!760485 (and d!1344975 b!4432416)))

(assert (=> bs!760485 (= lambda!155588 lambda!155497)))

(assert (=> d!1344975 true))

(assert (=> d!1344975 true))

(assert (=> d!1344975 (forall!9628 lt!1630372 lambda!155588)))

(declare-fun lt!1630687 () Unit!82777)

(declare-fun choose!28091 (List!49801 List!49804 tuple2!49534) Unit!82777)

(assert (=> d!1344975 (= lt!1630687 (choose!28091 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))) lt!1630372 (h!55378 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))))))

(assert (=> d!1344975 (invariantList!821 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))))

(assert (=> d!1344975 (= (lemmaForallContainsAddHeadPreserves!88 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))) lt!1630372 (h!55378 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) lt!1630687)))

(declare-fun bs!760486 () Bool)

(assert (= bs!760486 d!1344975))

(declare-fun m!5118117 () Bool)

(assert (=> bs!760486 m!5118117))

(declare-fun m!5118119 () Bool)

(assert (=> bs!760486 m!5118119))

(assert (=> bs!760486 m!5118075))

(assert (=> b!4432416 d!1344975))

(declare-fun d!1344977 () Bool)

(declare-fun res!1834090 () Bool)

(declare-fun e!2760349 () Bool)

(assert (=> d!1344977 (=> res!1834090 e!2760349)))

(assert (=> d!1344977 (= res!1834090 ((_ is Nil!49680) lt!1630372))))

(assert (=> d!1344977 (= (forall!9628 lt!1630372 lambda!155497) e!2760349)))

(declare-fun b!4433012 () Bool)

(declare-fun e!2760350 () Bool)

(assert (=> b!4433012 (= e!2760349 e!2760350)))

(declare-fun res!1834091 () Bool)

(assert (=> b!4433012 (=> (not res!1834091) (not e!2760350))))

(assert (=> b!4433012 (= res!1834091 (dynLambda!20877 lambda!155497 (h!55383 lt!1630372)))))

(declare-fun b!4433013 () Bool)

(assert (=> b!4433013 (= e!2760350 (forall!9628 (t!356744 lt!1630372) lambda!155497))))

(assert (= (and d!1344977 (not res!1834090)) b!4433012))

(assert (= (and b!4433012 res!1834091) b!4433013))

(declare-fun b_lambda!144069 () Bool)

(assert (=> (not b_lambda!144069) (not b!4433012)))

(declare-fun m!5118121 () Bool)

(assert (=> b!4433012 m!5118121))

(declare-fun m!5118123 () Bool)

(assert (=> b!4433013 m!5118123))

(assert (=> b!4432416 d!1344977))

(declare-fun d!1344979 () Bool)

(declare-fun res!1834092 () Bool)

(declare-fun e!2760351 () Bool)

(assert (=> d!1344979 (=> res!1834092 e!2760351)))

(assert (=> d!1344979 (= res!1834092 (and ((_ is Cons!49677) (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) (= (_1!28061 (h!55378 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))) (_1!28061 (h!55378 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))))))))

(assert (=> d!1344979 (= (containsKey!1174 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))) (_1!28061 (h!55378 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))) e!2760351)))

(declare-fun b!4433014 () Bool)

(declare-fun e!2760352 () Bool)

(assert (=> b!4433014 (= e!2760351 e!2760352)))

(declare-fun res!1834093 () Bool)

(assert (=> b!4433014 (=> (not res!1834093) (not e!2760352))))

(assert (=> b!4433014 (= res!1834093 ((_ is Cons!49677) (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))))))

(declare-fun b!4433015 () Bool)

(assert (=> b!4433015 (= e!2760352 (containsKey!1174 (t!356741 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) (_1!28061 (h!55378 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))))))

(assert (= (and d!1344979 (not res!1834092)) b!4433014))

(assert (= (and b!4433014 res!1834093) b!4433015))

(declare-fun m!5118125 () Bool)

(assert (=> b!4433015 m!5118125))

(assert (=> b!4432416 d!1344979))

(declare-fun d!1344981 () Bool)

(declare-fun lt!1630688 () Bool)

(assert (=> d!1344981 (= lt!1630688 (select (content!7984 (getKeysList!268 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) key!3717))))

(declare-fun e!2760354 () Bool)

(assert (=> d!1344981 (= lt!1630688 e!2760354)))

(declare-fun res!1834095 () Bool)

(assert (=> d!1344981 (=> (not res!1834095) (not e!2760354))))

(assert (=> d!1344981 (= res!1834095 ((_ is Cons!49680) (getKeysList!268 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))))))

(assert (=> d!1344981 (= (contains!12212 (getKeysList!268 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))) key!3717) lt!1630688)))

(declare-fun b!4433016 () Bool)

(declare-fun e!2760353 () Bool)

(assert (=> b!4433016 (= e!2760354 e!2760353)))

(declare-fun res!1834094 () Bool)

(assert (=> b!4433016 (=> res!1834094 e!2760353)))

(assert (=> b!4433016 (= res!1834094 (= (h!55383 (getKeysList!268 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) key!3717))))

(declare-fun b!4433017 () Bool)

(assert (=> b!4433017 (= e!2760353 (contains!12212 (t!356744 (getKeysList!268 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) key!3717))))

(assert (= (and d!1344981 res!1834095) b!4433016))

(assert (= (and b!4433016 (not res!1834094)) b!4433017))

(assert (=> d!1344981 m!5116663))

(declare-fun m!5118127 () Bool)

(assert (=> d!1344981 m!5118127))

(declare-fun m!5118129 () Bool)

(assert (=> d!1344981 m!5118129))

(declare-fun m!5118131 () Bool)

(assert (=> b!4433017 m!5118131))

(assert (=> d!1344505 d!1344981))

(assert (=> d!1344505 d!1344477))

(declare-fun d!1344983 () Bool)

(assert (=> d!1344983 (contains!12212 (getKeysList!268 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))) key!3717)))

(assert (=> d!1344983 true))

(declare-fun _$14!940 () Unit!82777)

(assert (=> d!1344983 (= (choose!28080 (toList!3566 (extractMap!850 (toList!3565 lm!1616))) key!3717) _$14!940)))

(declare-fun bs!760487 () Bool)

(assert (= bs!760487 d!1344983))

(assert (=> bs!760487 m!5116663))

(assert (=> bs!760487 m!5116663))

(assert (=> bs!760487 m!5117061))

(assert (=> d!1344505 d!1344983))

(assert (=> d!1344505 d!1344813))

(declare-fun d!1344985 () Bool)

(declare-fun lt!1630689 () Bool)

(assert (=> d!1344985 (= lt!1630689 (select (content!7983 (t!356742 (toList!3565 lt!1630204))) lt!1630111))))

(declare-fun e!2760355 () Bool)

(assert (=> d!1344985 (= lt!1630689 e!2760355)))

(declare-fun res!1834097 () Bool)

(assert (=> d!1344985 (=> (not res!1834097) (not e!2760355))))

(assert (=> d!1344985 (= res!1834097 ((_ is Cons!49678) (t!356742 (toList!3565 lt!1630204))))))

(assert (=> d!1344985 (= (contains!12213 (t!356742 (toList!3565 lt!1630204)) lt!1630111) lt!1630689)))

(declare-fun b!4433018 () Bool)

(declare-fun e!2760356 () Bool)

(assert (=> b!4433018 (= e!2760355 e!2760356)))

(declare-fun res!1834096 () Bool)

(assert (=> b!4433018 (=> res!1834096 e!2760356)))

(assert (=> b!4433018 (= res!1834096 (= (h!55379 (t!356742 (toList!3565 lt!1630204))) lt!1630111))))

(declare-fun b!4433019 () Bool)

(assert (=> b!4433019 (= e!2760356 (contains!12213 (t!356742 (t!356742 (toList!3565 lt!1630204))) lt!1630111))))

(assert (= (and d!1344985 res!1834097) b!4433018))

(assert (= (and b!4433018 (not res!1834096)) b!4433019))

(assert (=> d!1344985 m!5118029))

(declare-fun m!5118133 () Bool)

(assert (=> d!1344985 m!5118133))

(declare-fun m!5118135 () Bool)

(assert (=> b!4433019 m!5118135))

(assert (=> b!4432375 d!1344985))

(declare-fun b!4433023 () Bool)

(declare-fun e!2760358 () Option!10757)

(assert (=> b!4433023 (= e!2760358 None!10756)))

(declare-fun c!754534 () Bool)

(declare-fun d!1344987 () Bool)

(assert (=> d!1344987 (= c!754534 (and ((_ is Cons!49678) (toList!3565 lt!1630461)) (= (_1!28062 (h!55379 (toList!3565 lt!1630461))) (_1!28062 (tuple2!49537 hash!366 newBucket!194)))))))

(declare-fun e!2760357 () Option!10757)

(assert (=> d!1344987 (= (getValueByKey!743 (toList!3565 lt!1630461) (_1!28062 (tuple2!49537 hash!366 newBucket!194))) e!2760357)))

(declare-fun b!4433022 () Bool)

(assert (=> b!4433022 (= e!2760358 (getValueByKey!743 (t!356742 (toList!3565 lt!1630461)) (_1!28062 (tuple2!49537 hash!366 newBucket!194))))))

(declare-fun b!4433021 () Bool)

(assert (=> b!4433021 (= e!2760357 e!2760358)))

(declare-fun c!754535 () Bool)

(assert (=> b!4433021 (= c!754535 (and ((_ is Cons!49678) (toList!3565 lt!1630461)) (not (= (_1!28062 (h!55379 (toList!3565 lt!1630461))) (_1!28062 (tuple2!49537 hash!366 newBucket!194))))))))

(declare-fun b!4433020 () Bool)

(assert (=> b!4433020 (= e!2760357 (Some!10756 (_2!28062 (h!55379 (toList!3565 lt!1630461)))))))

(assert (= (and d!1344987 c!754534) b!4433020))

(assert (= (and d!1344987 (not c!754534)) b!4433021))

(assert (= (and b!4433021 c!754535) b!4433022))

(assert (= (and b!4433021 (not c!754535)) b!4433023))

(declare-fun m!5118137 () Bool)

(assert (=> b!4433022 m!5118137))

(assert (=> b!4432520 d!1344987))

(declare-fun d!1344989 () Bool)

(declare-fun res!1834098 () Bool)

(declare-fun e!2760359 () Bool)

(assert (=> d!1344989 (=> res!1834098 e!2760359)))

(assert (=> d!1344989 (= res!1834098 ((_ is Nil!49678) (t!356742 (t!356742 (toList!3565 lt!1630110)))))))

(assert (=> d!1344989 (= (forall!9624 (t!356742 (t!356742 (toList!3565 lt!1630110))) lambda!155418) e!2760359)))

(declare-fun b!4433024 () Bool)

(declare-fun e!2760360 () Bool)

(assert (=> b!4433024 (= e!2760359 e!2760360)))

(declare-fun res!1834099 () Bool)

(assert (=> b!4433024 (=> (not res!1834099) (not e!2760360))))

(assert (=> b!4433024 (= res!1834099 (dynLambda!20872 lambda!155418 (h!55379 (t!356742 (t!356742 (toList!3565 lt!1630110))))))))

(declare-fun b!4433025 () Bool)

(assert (=> b!4433025 (= e!2760360 (forall!9624 (t!356742 (t!356742 (t!356742 (toList!3565 lt!1630110)))) lambda!155418))))

(assert (= (and d!1344989 (not res!1834098)) b!4433024))

(assert (= (and b!4433024 res!1834099) b!4433025))

(declare-fun b_lambda!144071 () Bool)

(assert (=> (not b_lambda!144071) (not b!4433024)))

(declare-fun m!5118139 () Bool)

(assert (=> b!4433024 m!5118139))

(declare-fun m!5118141 () Bool)

(assert (=> b!4433025 m!5118141))

(assert (=> b!4432472 d!1344989))

(assert (=> b!4432498 d!1344875))

(declare-fun e!2760361 () Bool)

(declare-fun tp!1333644 () Bool)

(declare-fun b!4433026 () Bool)

(assert (=> b!4433026 (= e!2760361 (and tp_is_empty!26403 tp_is_empty!26401 tp!1333644))))

(assert (=> b!4432523 (= tp!1333635 e!2760361)))

(assert (= (and b!4432523 ((_ is Cons!49677) (t!356741 (t!356741 (t!356741 newBucket!194))))) b!4433026))

(declare-fun b!4433027 () Bool)

(declare-fun e!2760362 () Bool)

(declare-fun tp!1333645 () Bool)

(assert (=> b!4433027 (= e!2760362 (and tp_is_empty!26403 tp_is_empty!26401 tp!1333645))))

(assert (=> b!4432525 (= tp!1333637 e!2760362)))

(assert (= (and b!4432525 ((_ is Cons!49677) (_2!28062 (h!55379 (t!356742 (toList!3565 lm!1616)))))) b!4433027))

(declare-fun b!4433028 () Bool)

(declare-fun e!2760363 () Bool)

(declare-fun tp!1333646 () Bool)

(declare-fun tp!1333647 () Bool)

(assert (=> b!4433028 (= e!2760363 (and tp!1333646 tp!1333647))))

(assert (=> b!4432525 (= tp!1333638 e!2760363)))

(assert (= (and b!4432525 ((_ is Cons!49678) (t!356742 (t!356742 (toList!3565 lm!1616))))) b!4433028))

(declare-fun tp!1333648 () Bool)

(declare-fun b!4433029 () Bool)

(declare-fun e!2760364 () Bool)

(assert (=> b!4433029 (= e!2760364 (and tp_is_empty!26403 tp_is_empty!26401 tp!1333648))))

(assert (=> b!4432524 (= tp!1333636 e!2760364)))

(assert (= (and b!4432524 ((_ is Cons!49677) (t!356741 (_2!28062 (h!55379 (toList!3565 lm!1616)))))) b!4433029))

(declare-fun b_lambda!144073 () Bool)

(assert (= b_lambda!144041 (or d!1344517 b_lambda!144073)))

(declare-fun bs!760488 () Bool)

(declare-fun d!1344991 () Bool)

(assert (= bs!760488 (and d!1344991 d!1344517)))

(assert (=> bs!760488 (= (dynLambda!20874 lambda!155537 (h!55378 (toList!3566 (extractMap!850 (t!356742 (toList!3565 lm!1616)))))) (contains!12208 lt!1630435 (_1!28061 (h!55378 (toList!3566 (extractMap!850 (t!356742 (toList!3565 lm!1616))))))))))

(declare-fun m!5118143 () Bool)

(assert (=> bs!760488 m!5118143))

(assert (=> b!4432869 d!1344991))

(declare-fun b_lambda!144075 () Bool)

(assert (= b_lambda!144061 (or d!1344343 b_lambda!144075)))

(declare-fun bs!760489 () Bool)

(declare-fun d!1344993 () Bool)

(assert (= bs!760489 (and d!1344993 d!1344343)))

(assert (=> bs!760489 (= (dynLambda!20872 lambda!155433 (h!55379 (t!356742 (toList!3565 lm!1616)))) (allKeysSameHash!749 (_2!28062 (h!55379 (t!356742 (toList!3565 lm!1616)))) (_1!28062 (h!55379 (t!356742 (toList!3565 lm!1616)))) hashF!1220))))

(declare-fun m!5118145 () Bool)

(assert (=> bs!760489 m!5118145))

(assert (=> b!4432924 d!1344993))

(declare-fun b_lambda!144077 () Bool)

(assert (= b_lambda!143995 (or d!1344359 b_lambda!144077)))

(declare-fun bs!760490 () Bool)

(declare-fun d!1344995 () Bool)

(assert (= bs!760490 (and d!1344995 d!1344359)))

(assert (=> bs!760490 (= (dynLambda!20874 lambda!155436 (h!55378 (t!356741 newBucket!194))) (= (hash!2206 hashF!1220 (_1!28061 (h!55378 (t!356741 newBucket!194)))) hash!366))))

(declare-fun m!5118147 () Bool)

(assert (=> bs!760490 m!5118147))

(assert (=> b!4432851 d!1344995))

(declare-fun b_lambda!144079 () Bool)

(assert (= b_lambda!144067 (or start!432912 b_lambda!144079)))

(declare-fun bs!760491 () Bool)

(declare-fun d!1344997 () Bool)

(assert (= bs!760491 (and d!1344997 start!432912)))

(assert (=> bs!760491 (= (dynLambda!20872 lambda!155418 (h!55379 (t!356742 (t!356742 (toList!3565 lm!1616))))) (noDuplicateKeys!789 (_2!28062 (h!55379 (t!356742 (t!356742 (toList!3565 lm!1616)))))))))

(declare-fun m!5118149 () Bool)

(assert (=> bs!760491 m!5118149))

(assert (=> b!4433004 d!1344997))

(declare-fun b_lambda!144081 () Bool)

(assert (= b_lambda!144053 (or b!4432497 b_lambda!144081)))

(declare-fun bs!760492 () Bool)

(declare-fun d!1344999 () Bool)

(assert (= bs!760492 (and d!1344999 b!4432497)))

(assert (=> bs!760492 (= (dynLambda!20874 lambda!155536 (h!55378 (toList!3566 lt!1630455))) (contains!12208 lt!1630447 (_1!28061 (h!55378 (toList!3566 lt!1630455)))))))

(declare-fun m!5118151 () Bool)

(assert (=> bs!760492 m!5118151))

(assert (=> b!4432906 d!1344999))

(declare-fun b_lambda!144083 () Bool)

(assert (= b_lambda!144043 (or b!4432417 b_lambda!144083)))

(declare-fun bs!760493 () Bool)

(declare-fun d!1345001 () Bool)

(assert (= bs!760493 (and d!1345001 b!4432417)))

(assert (=> bs!760493 (= (dynLambda!20877 lambda!155498 (h!55383 lt!1630370)) (containsKey!1174 (toList!3566 (extractMap!850 (toList!3565 lm!1616))) (h!55383 lt!1630370)))))

(declare-fun m!5118153 () Bool)

(assert (=> bs!760493 m!5118153))

(assert (=> b!4432871 d!1345001))

(declare-fun b_lambda!144085 () Bool)

(assert (= b_lambda!143983 (or start!432912 b_lambda!144085)))

(declare-fun bs!760494 () Bool)

(declare-fun d!1345003 () Bool)

(assert (= bs!760494 (and d!1345003 start!432912)))

(assert (=> bs!760494 (= (dynLambda!20872 lambda!155418 (h!55379 (t!356742 (toList!3565 (+!1147 lm!1616 (tuple2!49537 hash!366 newBucket!194)))))) (noDuplicateKeys!789 (_2!28062 (h!55379 (t!356742 (toList!3565 (+!1147 lm!1616 (tuple2!49537 hash!366 newBucket!194))))))))))

(declare-fun m!5118155 () Bool)

(assert (=> bs!760494 m!5118155))

(assert (=> b!4432803 d!1345003))

(declare-fun b_lambda!144087 () Bool)

(assert (= b_lambda!144065 (or b!4432422 b_lambda!144087)))

(declare-fun bs!760495 () Bool)

(declare-fun d!1345005 () Bool)

(assert (= bs!760495 (and d!1345005 b!4432422)))

(assert (=> bs!760495 (= (dynLambda!20877 lambda!155496 (_1!28061 (h!55378 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))) (containsKey!1174 (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))) (_1!28061 (h!55378 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))))))))

(assert (=> bs!760495 m!5117011))

(assert (=> d!1344955 d!1345005))

(declare-fun b_lambda!144089 () Bool)

(assert (= b_lambda!144063 (or b!4432439 b_lambda!144089)))

(declare-fun bs!760496 () Bool)

(declare-fun d!1345007 () Bool)

(assert (= bs!760496 (and d!1345007 b!4432439)))

(assert (=> bs!760496 (= (dynLambda!20878 lambda!155505 (h!55378 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) (_1!28061 (h!55378 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))))))

(assert (=> b!4432933 d!1345007))

(declare-fun b_lambda!144091 () Bool)

(assert (= b_lambda!144051 (or b!4432497 b_lambda!144091)))

(declare-fun bs!760497 () Bool)

(declare-fun d!1345009 () Bool)

(assert (= bs!760497 (and d!1345009 b!4432497)))

(assert (=> bs!760497 (= (dynLambda!20874 lambda!155536 (h!55378 (toList!3566 (extractMap!850 (t!356742 (toList!3565 lm!1616)))))) (contains!12208 lt!1630447 (_1!28061 (h!55378 (toList!3566 (extractMap!850 (t!356742 (toList!3565 lm!1616))))))))))

(declare-fun m!5118157 () Bool)

(assert (=> bs!760497 m!5118157))

(assert (=> b!4432897 d!1345009))

(declare-fun b_lambda!144093 () Bool)

(assert (= b_lambda!143989 (or b!4432423 b_lambda!144093)))

(declare-fun bs!760498 () Bool)

(declare-fun d!1345011 () Bool)

(assert (= bs!760498 (and d!1345011 b!4432423)))

(assert (=> bs!760498 (= (dynLambda!20878 lambda!155499 (h!55378 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) (_1!28061 (h!55378 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))))))

(assert (=> b!4432834 d!1345011))

(declare-fun b_lambda!144095 () Bool)

(assert (= b_lambda!144049 (or b!4432497 b_lambda!144095)))

(declare-fun bs!760499 () Bool)

(declare-fun d!1345013 () Bool)

(assert (= bs!760499 (and d!1345013 b!4432497)))

(assert (=> bs!760499 (= (dynLambda!20874 lambda!155536 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616))))) (contains!12208 lt!1630447 (_1!28061 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))))))

(assert (=> bs!760499 m!5117103))

(assert (=> b!4432890 d!1345013))

(declare-fun b_lambda!144097 () Bool)

(assert (= b_lambda!143993 (or d!1344341 b_lambda!144097)))

(declare-fun bs!760500 () Bool)

(declare-fun d!1345015 () Bool)

(assert (= bs!760500 (and d!1345015 d!1344341)))

(assert (=> bs!760500 (= (dynLambda!20872 lambda!155430 (h!55379 (t!356742 (toList!3565 lm!1616)))) (noDuplicateKeys!789 (_2!28062 (h!55379 (t!356742 (toList!3565 lm!1616))))))))

(assert (=> bs!760500 m!5117153))

(assert (=> b!4432845 d!1345015))

(declare-fun b_lambda!144099 () Bool)

(assert (= b_lambda!144059 (or d!1344519 b_lambda!144099)))

(declare-fun bs!760501 () Bool)

(declare-fun d!1345017 () Bool)

(assert (= bs!760501 (and d!1345017 d!1344519)))

(assert (=> bs!760501 (= (dynLambda!20872 lambda!155538 (h!55379 (t!356742 (toList!3565 lm!1616)))) (noDuplicateKeys!789 (_2!28062 (h!55379 (t!356742 (toList!3565 lm!1616))))))))

(assert (=> bs!760501 m!5117153))

(assert (=> b!4432922 d!1345017))

(declare-fun b_lambda!144101 () Bool)

(assert (= b_lambda!144045 (or d!1344517 b_lambda!144101)))

(declare-fun bs!760502 () Bool)

(declare-fun d!1345019 () Bool)

(assert (= bs!760502 (and d!1345019 d!1344517)))

(assert (=> bs!760502 (= (dynLambda!20874 lambda!155537 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616))))) (contains!12208 lt!1630435 (_1!28061 (h!55378 (_2!28062 (h!55379 (toList!3565 lm!1616)))))))))

(declare-fun m!5118159 () Bool)

(assert (=> bs!760502 m!5118159))

(assert (=> b!4432875 d!1345019))

(declare-fun b_lambda!144103 () Bool)

(assert (= b_lambda!144069 (or b!4432416 b_lambda!144103)))

(declare-fun bs!760503 () Bool)

(declare-fun d!1345021 () Bool)

(assert (= bs!760503 (and d!1345021 b!4432416)))

(assert (=> bs!760503 (= (dynLambda!20877 lambda!155497 (h!55383 lt!1630372)) (containsKey!1174 (Cons!49677 (h!55378 (toList!3566 (extractMap!850 (toList!3565 lm!1616)))) (t!356741 (toList!3566 (extractMap!850 (toList!3565 lm!1616))))) (h!55383 lt!1630372)))))

(declare-fun m!5118161 () Bool)

(assert (=> bs!760503 m!5118161))

(assert (=> b!4433012 d!1345021))

(declare-fun b_lambda!144105 () Bool)

(assert (= b_lambda!143975 (or b!4432438 b_lambda!144105)))

(declare-fun bs!760504 () Bool)

(declare-fun d!1345023 () Bool)

(assert (= bs!760504 (and d!1345023 b!4432438)))

(assert (=> bs!760504 (= (dynLambda!20877 lambda!155504 (h!55383 lt!1630379)) (containsKey!1174 (toList!3566 (extractMap!850 (toList!3565 lm!1616))) (h!55383 lt!1630379)))))

(declare-fun m!5118163 () Bool)

(assert (=> bs!760504 m!5118163))

(assert (=> b!4432716 d!1345023))

(declare-fun b_lambda!144107 () Bool)

(assert (= b_lambda!144047 (or b!4432497 b_lambda!144107)))

(declare-fun bs!760505 () Bool)

(declare-fun d!1345025 () Bool)

(assert (= bs!760505 (and d!1345025 b!4432497)))

(assert (=> bs!760505 (= (dynLambda!20874 lambda!155536 (h!55378 (t!356741 (_2!28062 (h!55379 (toList!3565 lm!1616)))))) (contains!12208 lt!1630447 (_1!28061 (h!55378 (t!356741 (_2!28062 (h!55379 (toList!3565 lm!1616))))))))))

(declare-fun m!5118165 () Bool)

(assert (=> bs!760505 m!5118165))

(assert (=> b!4432888 d!1345025))

(declare-fun b_lambda!144109 () Bool)

(assert (= b_lambda!144055 (or b!4432497 b_lambda!144109)))

(assert (=> d!1344883 d!1345013))

(declare-fun b_lambda!144111 () Bool)

(assert (= b_lambda!144057 (or b!4432497 b_lambda!144111)))

(declare-fun bs!760506 () Bool)

(declare-fun d!1345027 () Bool)

(assert (= bs!760506 (and d!1345027 b!4432497)))

(assert (=> bs!760506 (= (dynLambda!20874 lambda!155535 (h!55378 (toList!3566 (extractMap!850 (t!356742 (toList!3565 lm!1616)))))) (contains!12208 (extractMap!850 (t!356742 (toList!3565 lm!1616))) (_1!28061 (h!55378 (toList!3566 (extractMap!850 (t!356742 (toList!3565 lm!1616))))))))))

(assert (=> bs!760506 m!5116669))

(declare-fun m!5118167 () Bool)

(assert (=> bs!760506 m!5118167))

(assert (=> b!4432911 d!1345027))

(declare-fun b_lambda!144113 () Bool)

(assert (= b_lambda!144071 (or start!432912 b_lambda!144113)))

(declare-fun bs!760507 () Bool)

(declare-fun d!1345029 () Bool)

(assert (= bs!760507 (and d!1345029 start!432912)))

(assert (=> bs!760507 (= (dynLambda!20872 lambda!155418 (h!55379 (t!356742 (t!356742 (toList!3565 lt!1630110))))) (noDuplicateKeys!789 (_2!28062 (h!55379 (t!356742 (t!356742 (toList!3565 lt!1630110)))))))))

(declare-fun m!5118169 () Bool)

(assert (=> bs!760507 m!5118169))

(assert (=> b!4433024 d!1345029))

(check-sat (not bm!308414) (not b!4432812) (not bm!308415) (not b!4432870) (not b!4432718) (not d!1344927) (not b!4432943) (not b!4433029) (not d!1344813) (not b!4432988) (not b!4432957) (not d!1344969) (not b_lambda!144081) (not d!1344767) (not b!4432915) (not b_lambda!144093) (not b!4432840) (not b_lambda!144073) (not b!4432919) (not d!1344867) (not d!1344933) (not d!1344901) (not b!4432723) (not bs!760490) (not b!4432778) (not b!4432883) (not b!4432741) (not b_lambda!144087) (not b!4432895) (not b!4432945) (not b!4432746) (not b!4432993) (not d!1344915) (not d!1344879) (not b!4432994) (not b_lambda!143991) (not bs!760495) (not b!4432972) (not b!4432921) (not d!1344973) (not b!4432878) (not d!1344699) (not b_lambda!144105) (not b!4432881) (not b!4432948) (not b!4432726) (not b!4432887) (not bs!760507) (not b!4433017) (not b!4432765) (not b!4432914) (not b_lambda!144109) (not b!4432876) (not b!4432749) (not b!4432965) (not bs!760494) (not bs!760493) (not d!1344943) (not d!1344701) (not b!4432925) (not bm!308412) (not b!4432971) (not b!4432951) (not b!4432939) (not bs!760489) (not b_lambda!144095) (not d!1344917) (not b!4432968) (not bm!308420) (not b_lambda!144083) (not d!1344935) (not b!4433013) (not b!4432999) (not b_lambda!144099) (not b!4432931) (not b!4432732) (not b!4432874) (not b!4432905) tp_is_empty!26403 (not b_lambda!144091) (not b!4432937) (not b!4432790) (not b!4432767) (not b!4432907) (not bm!308417) (not b!4432935) (not b!4432872) (not b!4433028) (not b_lambda!143937) (not b!4432867) (not b_lambda!144097) (not b!4433026) (not d!1344883) (not b!4433002) (not b!4432912) (not d!1344745) (not b!4433025) (not b_lambda!144113) (not d!1344889) (not d!1344919) (not b!4433022) (not b!4432923) (not d!1344909) (not b!4432987) (not d!1344981) (not bs!760502) (not b!4432846) (not b_lambda!144101) (not b!4432904) (not b!4432756) (not b_lambda!144089) (not d!1344963) (not bs!760504) (not b!4433005) (not b_lambda!143933) (not b_lambda!144079) (not b!4432892) (not b!4432720) (not b!4432752) (not b!4432982) (not b!4432920) (not b_lambda!144107) (not b!4432917) (not b!4432995) (not b!4432886) (not b!4432942) (not b!4432804) (not d!1344985) (not d!1344723) (not b!4433007) (not bm!308408) (not d!1344961) (not b!4432754) (not d!1344715) (not b_lambda!144111) (not b!4432848) (not b!4432936) (not b_lambda!143979) (not b!4432868) (not bs!760506) (not b!4432933) (not b!4432893) (not b!4432852) (not b!4432964) (not b!4432955) (not bs!760492) (not b!4432738) (not b!4432810) (not b!4432977) (not d!1344705) (not b!4432729) (not d!1344929) (not d!1344947) (not b_lambda!144075) (not b_lambda!143929) (not b!4432927) (not d!1344983) (not bs!760488) (not b!4433009) (not b!4432889) (not d!1344957) (not d!1344733) (not d!1344911) (not b!4432940) (not d!1344873) (not bs!760500) (not bs!760491) (not b!4432913) (not b!4432839) (not b_lambda!144103) (not b!4432725) (not b_lambda!143935) (not d!1344887) (not bm!308416) (not bs!760499) (not d!1344877) (not b!4432953) (not b_lambda!144085) (not b!4432755) (not b_lambda!143931) (not b!4432880) (not d!1344707) (not b_lambda!143927) tp_is_empty!26401 (not bs!760501) (not b_lambda!143885) (not bm!308411) (not b!4432784) (not b!4432983) (not d!1344945) (not b!4432733) (not b!4432891) (not b!4432954) (not b!4432910) (not d!1344975) (not b!4432844) (not b!4432929) (not b_lambda!144077) (not b!4432963) (not b!4432789) (not b!4432986) (not d!1344923) (not b_lambda!143887) (not b!4433027) (not bs!760505) (not bs!760497) (not d!1344955) (not b!4433019) (not b!4432744) (not b!4432781) (not b!4432941) (not b!4432950) (not b!4432894) (not b!4433015) (not b_lambda!143889) (not b!4432947) (not b!4432834) (not b!4432885) (not bm!308413) (not b!4432898) (not b!4432997) (not b!4432879) (not b!4432717) (not b!4432873) (not bs!760503) (not bm!308418))
(check-sat)

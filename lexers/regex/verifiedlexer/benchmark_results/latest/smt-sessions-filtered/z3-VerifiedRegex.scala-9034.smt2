; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!485768 () Bool)

(assert start!485768)

(declare-fun b!4753681 () Bool)

(declare-fun e!2965454 () Bool)

(declare-datatypes ((K!14575 0))(
  ( (K!14576 (val!19931 Int)) )
))
(declare-datatypes ((V!14821 0))(
  ( (V!14822 (val!19932 Int)) )
))
(declare-datatypes ((tuple2!54900 0))(
  ( (tuple2!54901 (_1!30744 K!14575) (_2!30744 V!14821)) )
))
(declare-datatypes ((List!53234 0))(
  ( (Nil!53110) (Cons!53110 (h!59507 tuple2!54900) (t!360578 List!53234)) )
))
(declare-fun l!13029 () List!53234)

(declare-fun noDuplicateKeys!2170 (List!53234) Bool)

(assert (=> b!4753681 (= e!2965454 (not (noDuplicateKeys!2170 (t!360578 l!13029))))))

(declare-datatypes ((ListMap!5585 0))(
  ( (ListMap!5586 (toList!6138 List!53234)) )
))
(declare-fun lt!1919555 () ListMap!5585)

(declare-fun lt!1919562 () ListMap!5585)

(declare-fun eq!1239 (ListMap!5585 ListMap!5585) Bool)

(assert (=> b!4753681 (eq!1239 lt!1919555 lt!1919562)))

(declare-datatypes ((Unit!136940 0))(
  ( (Unit!136941) )
))
(declare-fun lt!1919563 () Unit!136940)

(declare-fun lt!1919561 () ListMap!5585)

(declare-fun lt!1919560 () ListMap!5585)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!122 (ListMap!5585 ListMap!5585 List!53234) Unit!136940)

(assert (=> b!4753681 (= lt!1919563 (lemmaAddToMapFromBucketPreservesEquivalence!122 lt!1919561 lt!1919560 (t!360578 l!13029)))))

(declare-fun lt!1919558 () ListMap!5585)

(assert (=> b!4753681 (= lt!1919558 lt!1919555)))

(declare-fun addToMapMapFromBucket!1592 (List!53234 ListMap!5585) ListMap!5585)

(assert (=> b!4753681 (= lt!1919555 (addToMapMapFromBucket!1592 (t!360578 l!13029) lt!1919561))))

(declare-fun lt!1919554 () ListMap!5585)

(assert (=> b!4753681 (= lt!1919558 (addToMapMapFromBucket!1592 l!13029 lt!1919554))))

(declare-fun lt!1919559 () tuple2!54900)

(declare-fun lt!1919553 () ListMap!5585)

(declare-fun +!2404 (ListMap!5585 tuple2!54900) ListMap!5585)

(assert (=> b!4753681 (eq!1239 lt!1919562 (+!2404 (addToMapMapFromBucket!1592 (t!360578 l!13029) lt!1919553) lt!1919559))))

(assert (=> b!4753681 (= lt!1919562 (addToMapMapFromBucket!1592 (t!360578 l!13029) lt!1919560))))

(declare-fun value!2966 () V!14821)

(declare-fun key!4572 () K!14575)

(declare-fun lt!1919556 () Unit!136940)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!256 (ListMap!5585 K!14575 V!14821 List!53234) Unit!136940)

(assert (=> b!4753681 (= lt!1919556 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!256 lt!1919553 key!4572 value!2966 (t!360578 l!13029)))))

(assert (=> b!4753681 (eq!1239 lt!1919560 lt!1919561)))

(assert (=> b!4753681 (= lt!1919561 (+!2404 lt!1919554 (h!59507 l!13029)))))

(declare-fun lhm!63 () ListMap!5585)

(assert (=> b!4753681 (= lt!1919554 (+!2404 lhm!63 lt!1919559))))

(assert (=> b!4753681 (= lt!1919560 (+!2404 lt!1919553 lt!1919559))))

(assert (=> b!4753681 (= lt!1919559 (tuple2!54901 key!4572 value!2966))))

(declare-fun lt!1919557 () Unit!136940)

(declare-fun addCommutativeForDiffKeys!40 (ListMap!5585 K!14575 V!14821 K!14575 V!14821) Unit!136940)

(assert (=> b!4753681 (= lt!1919557 (addCommutativeForDiffKeys!40 lhm!63 (_1!30744 (h!59507 l!13029)) (_2!30744 (h!59507 l!13029)) key!4572 value!2966))))

(assert (=> b!4753681 (= lt!1919553 (+!2404 lhm!63 (h!59507 l!13029)))))

(declare-fun b!4753682 () Bool)

(declare-fun res!2016257 () Bool)

(assert (=> b!4753682 (=> (not res!2016257) (not e!2965454))))

(get-info :version)

(assert (=> b!4753682 (= res!2016257 ((_ is Cons!53110) l!13029))))

(declare-fun b!4753683 () Bool)

(declare-fun res!2016258 () Bool)

(assert (=> b!4753683 (=> (not res!2016258) (not e!2965454))))

(assert (=> b!4753683 (= res!2016258 (noDuplicateKeys!2170 l!13029))))

(declare-fun res!2016259 () Bool)

(assert (=> start!485768 (=> (not res!2016259) (not e!2965454))))

(declare-fun containsKey!3576 (List!53234 K!14575) Bool)

(assert (=> start!485768 (= res!2016259 (not (containsKey!3576 l!13029 key!4572)))))

(assert (=> start!485768 e!2965454))

(declare-fun e!2965452 () Bool)

(assert (=> start!485768 e!2965452))

(declare-fun tp_is_empty!31973 () Bool)

(assert (=> start!485768 tp_is_empty!31973))

(declare-fun tp_is_empty!31975 () Bool)

(assert (=> start!485768 tp_is_empty!31975))

(declare-fun e!2965453 () Bool)

(declare-fun inv!68445 (ListMap!5585) Bool)

(assert (=> start!485768 (and (inv!68445 lhm!63) e!2965453)))

(declare-fun b!4753684 () Bool)

(declare-fun tp!1350369 () Bool)

(assert (=> b!4753684 (= e!2965452 (and tp_is_empty!31973 tp_is_empty!31975 tp!1350369))))

(declare-fun b!4753685 () Bool)

(declare-fun tp!1350368 () Bool)

(assert (=> b!4753685 (= e!2965453 tp!1350368)))

(assert (= (and start!485768 res!2016259) b!4753683))

(assert (= (and b!4753683 res!2016258) b!4753682))

(assert (= (and b!4753682 res!2016257) b!4753681))

(assert (= (and start!485768 ((_ is Cons!53110) l!13029)) b!4753684))

(assert (= start!485768 b!4753685))

(declare-fun m!5721109 () Bool)

(assert (=> b!4753681 m!5721109))

(declare-fun m!5721111 () Bool)

(assert (=> b!4753681 m!5721111))

(declare-fun m!5721113 () Bool)

(assert (=> b!4753681 m!5721113))

(declare-fun m!5721115 () Bool)

(assert (=> b!4753681 m!5721115))

(declare-fun m!5721117 () Bool)

(assert (=> b!4753681 m!5721117))

(declare-fun m!5721119 () Bool)

(assert (=> b!4753681 m!5721119))

(declare-fun m!5721121 () Bool)

(assert (=> b!4753681 m!5721121))

(declare-fun m!5721123 () Bool)

(assert (=> b!4753681 m!5721123))

(declare-fun m!5721125 () Bool)

(assert (=> b!4753681 m!5721125))

(declare-fun m!5721127 () Bool)

(assert (=> b!4753681 m!5721127))

(declare-fun m!5721129 () Bool)

(assert (=> b!4753681 m!5721129))

(assert (=> b!4753681 m!5721109))

(assert (=> b!4753681 m!5721117))

(declare-fun m!5721131 () Bool)

(assert (=> b!4753681 m!5721131))

(declare-fun m!5721133 () Bool)

(assert (=> b!4753681 m!5721133))

(declare-fun m!5721135 () Bool)

(assert (=> b!4753681 m!5721135))

(declare-fun m!5721137 () Bool)

(assert (=> b!4753681 m!5721137))

(declare-fun m!5721139 () Bool)

(assert (=> b!4753681 m!5721139))

(declare-fun m!5721141 () Bool)

(assert (=> b!4753683 m!5721141))

(declare-fun m!5721143 () Bool)

(assert (=> start!485768 m!5721143))

(declare-fun m!5721145 () Bool)

(assert (=> start!485768 m!5721145))

(check-sat tp_is_empty!31975 (not b!4753681) (not start!485768) (not b!4753684) tp_is_empty!31973 (not b!4753685) (not b!4753683))
(check-sat)
(get-model)

(declare-fun d!1520001 () Bool)

(declare-fun res!2016264 () Bool)

(declare-fun e!2965459 () Bool)

(assert (=> d!1520001 (=> res!2016264 e!2965459)))

(assert (=> d!1520001 (= res!2016264 (not ((_ is Cons!53110) (t!360578 l!13029))))))

(assert (=> d!1520001 (= (noDuplicateKeys!2170 (t!360578 l!13029)) e!2965459)))

(declare-fun b!4753690 () Bool)

(declare-fun e!2965460 () Bool)

(assert (=> b!4753690 (= e!2965459 e!2965460)))

(declare-fun res!2016265 () Bool)

(assert (=> b!4753690 (=> (not res!2016265) (not e!2965460))))

(assert (=> b!4753690 (= res!2016265 (not (containsKey!3576 (t!360578 (t!360578 l!13029)) (_1!30744 (h!59507 (t!360578 l!13029))))))))

(declare-fun b!4753691 () Bool)

(assert (=> b!4753691 (= e!2965460 (noDuplicateKeys!2170 (t!360578 (t!360578 l!13029))))))

(assert (= (and d!1520001 (not res!2016264)) b!4753690))

(assert (= (and b!4753690 res!2016265) b!4753691))

(declare-fun m!5721147 () Bool)

(assert (=> b!4753690 m!5721147))

(declare-fun m!5721149 () Bool)

(assert (=> b!4753691 m!5721149))

(assert (=> b!4753681 d!1520001))

(declare-fun d!1520003 () Bool)

(declare-fun e!2965463 () Bool)

(assert (=> d!1520003 e!2965463))

(declare-fun res!2016271 () Bool)

(assert (=> d!1520003 (=> (not res!2016271) (not e!2965463))))

(declare-fun lt!1919574 () ListMap!5585)

(declare-fun contains!16536 (ListMap!5585 K!14575) Bool)

(assert (=> d!1520003 (= res!2016271 (contains!16536 lt!1919574 (_1!30744 lt!1919559)))))

(declare-fun lt!1919572 () List!53234)

(assert (=> d!1520003 (= lt!1919574 (ListMap!5586 lt!1919572))))

(declare-fun lt!1919575 () Unit!136940)

(declare-fun lt!1919573 () Unit!136940)

(assert (=> d!1520003 (= lt!1919575 lt!1919573)))

(declare-datatypes ((Option!12543 0))(
  ( (None!12542) (Some!12542 (v!47243 V!14821)) )
))
(declare-fun getValueByKey!2093 (List!53234 K!14575) Option!12543)

(assert (=> d!1520003 (= (getValueByKey!2093 lt!1919572 (_1!30744 lt!1919559)) (Some!12542 (_2!30744 lt!1919559)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1170 (List!53234 K!14575 V!14821) Unit!136940)

(assert (=> d!1520003 (= lt!1919573 (lemmaContainsTupThenGetReturnValue!1170 lt!1919572 (_1!30744 lt!1919559) (_2!30744 lt!1919559)))))

(declare-fun insertNoDuplicatedKeys!678 (List!53234 K!14575 V!14821) List!53234)

(assert (=> d!1520003 (= lt!1919572 (insertNoDuplicatedKeys!678 (toList!6138 lhm!63) (_1!30744 lt!1919559) (_2!30744 lt!1919559)))))

(assert (=> d!1520003 (= (+!2404 lhm!63 lt!1919559) lt!1919574)))

(declare-fun b!4753696 () Bool)

(declare-fun res!2016270 () Bool)

(assert (=> b!4753696 (=> (not res!2016270) (not e!2965463))))

(assert (=> b!4753696 (= res!2016270 (= (getValueByKey!2093 (toList!6138 lt!1919574) (_1!30744 lt!1919559)) (Some!12542 (_2!30744 lt!1919559))))))

(declare-fun b!4753697 () Bool)

(declare-fun contains!16537 (List!53234 tuple2!54900) Bool)

(assert (=> b!4753697 (= e!2965463 (contains!16537 (toList!6138 lt!1919574) lt!1919559))))

(assert (= (and d!1520003 res!2016271) b!4753696))

(assert (= (and b!4753696 res!2016270) b!4753697))

(declare-fun m!5721151 () Bool)

(assert (=> d!1520003 m!5721151))

(declare-fun m!5721153 () Bool)

(assert (=> d!1520003 m!5721153))

(declare-fun m!5721155 () Bool)

(assert (=> d!1520003 m!5721155))

(declare-fun m!5721157 () Bool)

(assert (=> d!1520003 m!5721157))

(declare-fun m!5721159 () Bool)

(assert (=> b!4753696 m!5721159))

(declare-fun m!5721161 () Bool)

(assert (=> b!4753697 m!5721161))

(assert (=> b!4753681 d!1520003))

(declare-fun d!1520005 () Bool)

(declare-fun e!2965464 () Bool)

(assert (=> d!1520005 e!2965464))

(declare-fun res!2016273 () Bool)

(assert (=> d!1520005 (=> (not res!2016273) (not e!2965464))))

(declare-fun lt!1919578 () ListMap!5585)

(assert (=> d!1520005 (= res!2016273 (contains!16536 lt!1919578 (_1!30744 lt!1919559)))))

(declare-fun lt!1919576 () List!53234)

(assert (=> d!1520005 (= lt!1919578 (ListMap!5586 lt!1919576))))

(declare-fun lt!1919579 () Unit!136940)

(declare-fun lt!1919577 () Unit!136940)

(assert (=> d!1520005 (= lt!1919579 lt!1919577)))

(assert (=> d!1520005 (= (getValueByKey!2093 lt!1919576 (_1!30744 lt!1919559)) (Some!12542 (_2!30744 lt!1919559)))))

(assert (=> d!1520005 (= lt!1919577 (lemmaContainsTupThenGetReturnValue!1170 lt!1919576 (_1!30744 lt!1919559) (_2!30744 lt!1919559)))))

(assert (=> d!1520005 (= lt!1919576 (insertNoDuplicatedKeys!678 (toList!6138 (addToMapMapFromBucket!1592 (t!360578 l!13029) lt!1919553)) (_1!30744 lt!1919559) (_2!30744 lt!1919559)))))

(assert (=> d!1520005 (= (+!2404 (addToMapMapFromBucket!1592 (t!360578 l!13029) lt!1919553) lt!1919559) lt!1919578)))

(declare-fun b!4753698 () Bool)

(declare-fun res!2016272 () Bool)

(assert (=> b!4753698 (=> (not res!2016272) (not e!2965464))))

(assert (=> b!4753698 (= res!2016272 (= (getValueByKey!2093 (toList!6138 lt!1919578) (_1!30744 lt!1919559)) (Some!12542 (_2!30744 lt!1919559))))))

(declare-fun b!4753699 () Bool)

(assert (=> b!4753699 (= e!2965464 (contains!16537 (toList!6138 lt!1919578) lt!1919559))))

(assert (= (and d!1520005 res!2016273) b!4753698))

(assert (= (and b!4753698 res!2016272) b!4753699))

(declare-fun m!5721163 () Bool)

(assert (=> d!1520005 m!5721163))

(declare-fun m!5721165 () Bool)

(assert (=> d!1520005 m!5721165))

(declare-fun m!5721167 () Bool)

(assert (=> d!1520005 m!5721167))

(declare-fun m!5721169 () Bool)

(assert (=> d!1520005 m!5721169))

(declare-fun m!5721171 () Bool)

(assert (=> b!4753698 m!5721171))

(declare-fun m!5721173 () Bool)

(assert (=> b!4753699 m!5721173))

(assert (=> b!4753681 d!1520005))

(declare-fun b!4753777 () Bool)

(assert (=> b!4753777 true))

(declare-fun bs!1145815 () Bool)

(declare-fun b!4753778 () Bool)

(assert (= bs!1145815 (and b!4753778 b!4753777)))

(declare-fun lambda!222786 () Int)

(declare-fun lambda!222785 () Int)

(assert (=> bs!1145815 (= lambda!222786 lambda!222785)))

(assert (=> b!4753778 true))

(declare-fun lt!1919797 () ListMap!5585)

(declare-fun lambda!222787 () Int)

(assert (=> bs!1145815 (= (= lt!1919797 lt!1919560) (= lambda!222787 lambda!222785))))

(assert (=> b!4753778 (= (= lt!1919797 lt!1919560) (= lambda!222787 lambda!222786))))

(assert (=> b!4753778 true))

(declare-fun bs!1145816 () Bool)

(declare-fun d!1520007 () Bool)

(assert (= bs!1145816 (and d!1520007 b!4753777)))

(declare-fun lt!1919802 () ListMap!5585)

(declare-fun lambda!222788 () Int)

(assert (=> bs!1145816 (= (= lt!1919802 lt!1919560) (= lambda!222788 lambda!222785))))

(declare-fun bs!1145817 () Bool)

(assert (= bs!1145817 (and d!1520007 b!4753778)))

(assert (=> bs!1145817 (= (= lt!1919802 lt!1919560) (= lambda!222788 lambda!222786))))

(assert (=> bs!1145817 (= (= lt!1919802 lt!1919797) (= lambda!222788 lambda!222787))))

(assert (=> d!1520007 true))

(declare-fun b!4753776 () Bool)

(declare-fun e!2965516 () Bool)

(declare-fun call!333282 () Bool)

(assert (=> b!4753776 (= e!2965516 call!333282)))

(declare-fun bm!333275 () Bool)

(declare-fun call!333280 () Unit!136940)

(declare-fun lemmaContainsAllItsOwnKeys!889 (ListMap!5585) Unit!136940)

(assert (=> bm!333275 (= call!333280 (lemmaContainsAllItsOwnKeys!889 lt!1919560))))

(declare-fun call!333281 () Bool)

(declare-fun c!811576 () Bool)

(declare-fun bm!333276 () Bool)

(declare-fun forall!11774 (List!53234 Int) Bool)

(assert (=> bm!333276 (= call!333281 (forall!11774 (ite c!811576 (toList!6138 lt!1919560) (t!360578 (t!360578 l!13029))) (ite c!811576 lambda!222785 lambda!222787)))))

(declare-fun e!2965514 () ListMap!5585)

(assert (=> b!4753777 (= e!2965514 lt!1919560)))

(declare-fun lt!1919803 () Unit!136940)

(assert (=> b!4753777 (= lt!1919803 call!333280)))

(assert (=> b!4753777 call!333281))

(declare-fun lt!1919800 () Unit!136940)

(assert (=> b!4753777 (= lt!1919800 lt!1919803)))

(assert (=> b!4753777 call!333282))

(declare-fun lt!1919786 () Unit!136940)

(declare-fun Unit!136964 () Unit!136940)

(assert (=> b!4753777 (= lt!1919786 Unit!136964)))

(assert (=> b!4753778 (= e!2965514 lt!1919797)))

(declare-fun lt!1919788 () ListMap!5585)

(assert (=> b!4753778 (= lt!1919788 (+!2404 lt!1919560 (h!59507 (t!360578 l!13029))))))

(assert (=> b!4753778 (= lt!1919797 (addToMapMapFromBucket!1592 (t!360578 (t!360578 l!13029)) (+!2404 lt!1919560 (h!59507 (t!360578 l!13029)))))))

(declare-fun lt!1919798 () Unit!136940)

(assert (=> b!4753778 (= lt!1919798 call!333280)))

(assert (=> b!4753778 (forall!11774 (toList!6138 lt!1919560) lambda!222786)))

(declare-fun lt!1919787 () Unit!136940)

(assert (=> b!4753778 (= lt!1919787 lt!1919798)))

(assert (=> b!4753778 (forall!11774 (toList!6138 lt!1919788) lambda!222787)))

(declare-fun lt!1919791 () Unit!136940)

(declare-fun Unit!136965 () Unit!136940)

(assert (=> b!4753778 (= lt!1919791 Unit!136965)))

(assert (=> b!4753778 call!333281))

(declare-fun lt!1919794 () Unit!136940)

(declare-fun Unit!136966 () Unit!136940)

(assert (=> b!4753778 (= lt!1919794 Unit!136966)))

(declare-fun lt!1919801 () Unit!136940)

(declare-fun Unit!136967 () Unit!136940)

(assert (=> b!4753778 (= lt!1919801 Unit!136967)))

(declare-fun lt!1919804 () Unit!136940)

(declare-fun forallContained!3800 (List!53234 Int tuple2!54900) Unit!136940)

(assert (=> b!4753778 (= lt!1919804 (forallContained!3800 (toList!6138 lt!1919788) lambda!222787 (h!59507 (t!360578 l!13029))))))

(assert (=> b!4753778 (contains!16536 lt!1919788 (_1!30744 (h!59507 (t!360578 l!13029))))))

(declare-fun lt!1919789 () Unit!136940)

(declare-fun Unit!136968 () Unit!136940)

(assert (=> b!4753778 (= lt!1919789 Unit!136968)))

(assert (=> b!4753778 (contains!16536 lt!1919797 (_1!30744 (h!59507 (t!360578 l!13029))))))

(declare-fun lt!1919792 () Unit!136940)

(declare-fun Unit!136969 () Unit!136940)

(assert (=> b!4753778 (= lt!1919792 Unit!136969)))

(assert (=> b!4753778 (forall!11774 (t!360578 l!13029) lambda!222787)))

(declare-fun lt!1919795 () Unit!136940)

(declare-fun Unit!136970 () Unit!136940)

(assert (=> b!4753778 (= lt!1919795 Unit!136970)))

(assert (=> b!4753778 (forall!11774 (toList!6138 lt!1919788) lambda!222787)))

(declare-fun lt!1919796 () Unit!136940)

(declare-fun Unit!136971 () Unit!136940)

(assert (=> b!4753778 (= lt!1919796 Unit!136971)))

(declare-fun lt!1919805 () Unit!136940)

(declare-fun Unit!136972 () Unit!136940)

(assert (=> b!4753778 (= lt!1919805 Unit!136972)))

(declare-fun lt!1919790 () Unit!136940)

(declare-fun addForallContainsKeyThenBeforeAdding!888 (ListMap!5585 ListMap!5585 K!14575 V!14821) Unit!136940)

(assert (=> b!4753778 (= lt!1919790 (addForallContainsKeyThenBeforeAdding!888 lt!1919560 lt!1919797 (_1!30744 (h!59507 (t!360578 l!13029))) (_2!30744 (h!59507 (t!360578 l!13029)))))))

(assert (=> b!4753778 (forall!11774 (toList!6138 lt!1919560) lambda!222787)))

(declare-fun lt!1919799 () Unit!136940)

(assert (=> b!4753778 (= lt!1919799 lt!1919790)))

(assert (=> b!4753778 (forall!11774 (toList!6138 lt!1919560) lambda!222787)))

(declare-fun lt!1919793 () Unit!136940)

(declare-fun Unit!136973 () Unit!136940)

(assert (=> b!4753778 (= lt!1919793 Unit!136973)))

(declare-fun res!2016328 () Bool)

(assert (=> b!4753778 (= res!2016328 (forall!11774 (t!360578 l!13029) lambda!222787))))

(assert (=> b!4753778 (=> (not res!2016328) (not e!2965516))))

(assert (=> b!4753778 e!2965516))

(declare-fun lt!1919785 () Unit!136940)

(declare-fun Unit!136974 () Unit!136940)

(assert (=> b!4753778 (= lt!1919785 Unit!136974)))

(declare-fun b!4753779 () Bool)

(declare-fun e!2965515 () Bool)

(declare-fun invariantList!1606 (List!53234) Bool)

(assert (=> b!4753779 (= e!2965515 (invariantList!1606 (toList!6138 lt!1919802)))))

(assert (=> d!1520007 e!2965515))

(declare-fun res!2016326 () Bool)

(assert (=> d!1520007 (=> (not res!2016326) (not e!2965515))))

(assert (=> d!1520007 (= res!2016326 (forall!11774 (t!360578 l!13029) lambda!222788))))

(assert (=> d!1520007 (= lt!1919802 e!2965514)))

(assert (=> d!1520007 (= c!811576 ((_ is Nil!53110) (t!360578 l!13029)))))

(assert (=> d!1520007 (noDuplicateKeys!2170 (t!360578 l!13029))))

(assert (=> d!1520007 (= (addToMapMapFromBucket!1592 (t!360578 l!13029) lt!1919560) lt!1919802)))

(declare-fun bm!333277 () Bool)

(assert (=> bm!333277 (= call!333282 (forall!11774 (toList!6138 lt!1919560) (ite c!811576 lambda!222785 lambda!222787)))))

(declare-fun b!4753780 () Bool)

(declare-fun res!2016327 () Bool)

(assert (=> b!4753780 (=> (not res!2016327) (not e!2965515))))

(assert (=> b!4753780 (= res!2016327 (forall!11774 (toList!6138 lt!1919560) lambda!222788))))

(assert (= (and d!1520007 c!811576) b!4753777))

(assert (= (and d!1520007 (not c!811576)) b!4753778))

(assert (= (and b!4753778 res!2016328) b!4753776))

(assert (= (or b!4753777 b!4753776) bm!333277))

(assert (= (or b!4753777 b!4753778) bm!333276))

(assert (= (or b!4753777 b!4753778) bm!333275))

(assert (= (and d!1520007 res!2016326) b!4753780))

(assert (= (and b!4753780 res!2016327) b!4753779))

(declare-fun m!5721407 () Bool)

(assert (=> b!4753778 m!5721407))

(declare-fun m!5721409 () Bool)

(assert (=> b!4753778 m!5721409))

(declare-fun m!5721411 () Bool)

(assert (=> b!4753778 m!5721411))

(assert (=> b!4753778 m!5721407))

(declare-fun m!5721413 () Bool)

(assert (=> b!4753778 m!5721413))

(assert (=> b!4753778 m!5721411))

(declare-fun m!5721415 () Bool)

(assert (=> b!4753778 m!5721415))

(declare-fun m!5721417 () Bool)

(assert (=> b!4753778 m!5721417))

(declare-fun m!5721419 () Bool)

(assert (=> b!4753778 m!5721419))

(declare-fun m!5721421 () Bool)

(assert (=> b!4753778 m!5721421))

(assert (=> b!4753778 m!5721421))

(declare-fun m!5721423 () Bool)

(assert (=> b!4753778 m!5721423))

(declare-fun m!5721425 () Bool)

(assert (=> b!4753778 m!5721425))

(assert (=> b!4753778 m!5721425))

(declare-fun m!5721427 () Bool)

(assert (=> b!4753780 m!5721427))

(declare-fun m!5721429 () Bool)

(assert (=> bm!333276 m!5721429))

(declare-fun m!5721431 () Bool)

(assert (=> b!4753779 m!5721431))

(declare-fun m!5721433 () Bool)

(assert (=> d!1520007 m!5721433))

(assert (=> d!1520007 m!5721111))

(declare-fun m!5721435 () Bool)

(assert (=> bm!333275 m!5721435))

(declare-fun m!5721437 () Bool)

(assert (=> bm!333277 m!5721437))

(assert (=> b!4753681 d!1520007))

(declare-fun d!1520045 () Bool)

(declare-fun e!2965517 () Bool)

(assert (=> d!1520045 e!2965517))

(declare-fun res!2016330 () Bool)

(assert (=> d!1520045 (=> (not res!2016330) (not e!2965517))))

(declare-fun lt!1919808 () ListMap!5585)

(assert (=> d!1520045 (= res!2016330 (contains!16536 lt!1919808 (_1!30744 (h!59507 l!13029))))))

(declare-fun lt!1919806 () List!53234)

(assert (=> d!1520045 (= lt!1919808 (ListMap!5586 lt!1919806))))

(declare-fun lt!1919809 () Unit!136940)

(declare-fun lt!1919807 () Unit!136940)

(assert (=> d!1520045 (= lt!1919809 lt!1919807)))

(assert (=> d!1520045 (= (getValueByKey!2093 lt!1919806 (_1!30744 (h!59507 l!13029))) (Some!12542 (_2!30744 (h!59507 l!13029))))))

(assert (=> d!1520045 (= lt!1919807 (lemmaContainsTupThenGetReturnValue!1170 lt!1919806 (_1!30744 (h!59507 l!13029)) (_2!30744 (h!59507 l!13029))))))

(assert (=> d!1520045 (= lt!1919806 (insertNoDuplicatedKeys!678 (toList!6138 lt!1919554) (_1!30744 (h!59507 l!13029)) (_2!30744 (h!59507 l!13029))))))

(assert (=> d!1520045 (= (+!2404 lt!1919554 (h!59507 l!13029)) lt!1919808)))

(declare-fun b!4753783 () Bool)

(declare-fun res!2016329 () Bool)

(assert (=> b!4753783 (=> (not res!2016329) (not e!2965517))))

(assert (=> b!4753783 (= res!2016329 (= (getValueByKey!2093 (toList!6138 lt!1919808) (_1!30744 (h!59507 l!13029))) (Some!12542 (_2!30744 (h!59507 l!13029)))))))

(declare-fun b!4753784 () Bool)

(assert (=> b!4753784 (= e!2965517 (contains!16537 (toList!6138 lt!1919808) (h!59507 l!13029)))))

(assert (= (and d!1520045 res!2016330) b!4753783))

(assert (= (and b!4753783 res!2016329) b!4753784))

(declare-fun m!5721439 () Bool)

(assert (=> d!1520045 m!5721439))

(declare-fun m!5721441 () Bool)

(assert (=> d!1520045 m!5721441))

(declare-fun m!5721443 () Bool)

(assert (=> d!1520045 m!5721443))

(declare-fun m!5721445 () Bool)

(assert (=> d!1520045 m!5721445))

(declare-fun m!5721447 () Bool)

(assert (=> b!4753783 m!5721447))

(declare-fun m!5721449 () Bool)

(assert (=> b!4753784 m!5721449))

(assert (=> b!4753681 d!1520045))

(declare-fun d!1520047 () Bool)

(declare-fun e!2965518 () Bool)

(assert (=> d!1520047 e!2965518))

(declare-fun res!2016332 () Bool)

(assert (=> d!1520047 (=> (not res!2016332) (not e!2965518))))

(declare-fun lt!1919812 () ListMap!5585)

(assert (=> d!1520047 (= res!2016332 (contains!16536 lt!1919812 (_1!30744 lt!1919559)))))

(declare-fun lt!1919810 () List!53234)

(assert (=> d!1520047 (= lt!1919812 (ListMap!5586 lt!1919810))))

(declare-fun lt!1919813 () Unit!136940)

(declare-fun lt!1919811 () Unit!136940)

(assert (=> d!1520047 (= lt!1919813 lt!1919811)))

(assert (=> d!1520047 (= (getValueByKey!2093 lt!1919810 (_1!30744 lt!1919559)) (Some!12542 (_2!30744 lt!1919559)))))

(assert (=> d!1520047 (= lt!1919811 (lemmaContainsTupThenGetReturnValue!1170 lt!1919810 (_1!30744 lt!1919559) (_2!30744 lt!1919559)))))

(assert (=> d!1520047 (= lt!1919810 (insertNoDuplicatedKeys!678 (toList!6138 lt!1919553) (_1!30744 lt!1919559) (_2!30744 lt!1919559)))))

(assert (=> d!1520047 (= (+!2404 lt!1919553 lt!1919559) lt!1919812)))

(declare-fun b!4753785 () Bool)

(declare-fun res!2016331 () Bool)

(assert (=> b!4753785 (=> (not res!2016331) (not e!2965518))))

(assert (=> b!4753785 (= res!2016331 (= (getValueByKey!2093 (toList!6138 lt!1919812) (_1!30744 lt!1919559)) (Some!12542 (_2!30744 lt!1919559))))))

(declare-fun b!4753786 () Bool)

(assert (=> b!4753786 (= e!2965518 (contains!16537 (toList!6138 lt!1919812) lt!1919559))))

(assert (= (and d!1520047 res!2016332) b!4753785))

(assert (= (and b!4753785 res!2016331) b!4753786))

(declare-fun m!5721451 () Bool)

(assert (=> d!1520047 m!5721451))

(declare-fun m!5721453 () Bool)

(assert (=> d!1520047 m!5721453))

(declare-fun m!5721455 () Bool)

(assert (=> d!1520047 m!5721455))

(declare-fun m!5721457 () Bool)

(assert (=> d!1520047 m!5721457))

(declare-fun m!5721459 () Bool)

(assert (=> b!4753785 m!5721459))

(declare-fun m!5721461 () Bool)

(assert (=> b!4753786 m!5721461))

(assert (=> b!4753681 d!1520047))

(declare-fun bs!1145818 () Bool)

(declare-fun b!4753788 () Bool)

(assert (= bs!1145818 (and b!4753788 b!4753777)))

(declare-fun lambda!222789 () Int)

(assert (=> bs!1145818 (= (= lt!1919553 lt!1919560) (= lambda!222789 lambda!222785))))

(declare-fun bs!1145819 () Bool)

(assert (= bs!1145819 (and b!4753788 b!4753778)))

(assert (=> bs!1145819 (= (= lt!1919553 lt!1919560) (= lambda!222789 lambda!222786))))

(assert (=> bs!1145819 (= (= lt!1919553 lt!1919797) (= lambda!222789 lambda!222787))))

(declare-fun bs!1145820 () Bool)

(assert (= bs!1145820 (and b!4753788 d!1520007)))

(assert (=> bs!1145820 (= (= lt!1919553 lt!1919802) (= lambda!222789 lambda!222788))))

(assert (=> b!4753788 true))

(declare-fun bs!1145821 () Bool)

(declare-fun b!4753789 () Bool)

(assert (= bs!1145821 (and b!4753789 b!4753778)))

(declare-fun lambda!222790 () Int)

(assert (=> bs!1145821 (= (= lt!1919553 lt!1919797) (= lambda!222790 lambda!222787))))

(assert (=> bs!1145821 (= (= lt!1919553 lt!1919560) (= lambda!222790 lambda!222786))))

(declare-fun bs!1145822 () Bool)

(assert (= bs!1145822 (and b!4753789 b!4753777)))

(assert (=> bs!1145822 (= (= lt!1919553 lt!1919560) (= lambda!222790 lambda!222785))))

(declare-fun bs!1145823 () Bool)

(assert (= bs!1145823 (and b!4753789 b!4753788)))

(assert (=> bs!1145823 (= lambda!222790 lambda!222789)))

(declare-fun bs!1145824 () Bool)

(assert (= bs!1145824 (and b!4753789 d!1520007)))

(assert (=> bs!1145824 (= (= lt!1919553 lt!1919802) (= lambda!222790 lambda!222788))))

(assert (=> b!4753789 true))

(declare-fun lambda!222791 () Int)

(declare-fun lt!1919826 () ListMap!5585)

(assert (=> bs!1145821 (= (= lt!1919826 lt!1919797) (= lambda!222791 lambda!222787))))

(assert (=> bs!1145821 (= (= lt!1919826 lt!1919560) (= lambda!222791 lambda!222786))))

(assert (=> bs!1145822 (= (= lt!1919826 lt!1919560) (= lambda!222791 lambda!222785))))

(assert (=> bs!1145823 (= (= lt!1919826 lt!1919553) (= lambda!222791 lambda!222789))))

(assert (=> bs!1145824 (= (= lt!1919826 lt!1919802) (= lambda!222791 lambda!222788))))

(assert (=> b!4753789 (= (= lt!1919826 lt!1919553) (= lambda!222791 lambda!222790))))

(assert (=> b!4753789 true))

(declare-fun bs!1145825 () Bool)

(declare-fun d!1520049 () Bool)

(assert (= bs!1145825 (and d!1520049 b!4753778)))

(declare-fun lt!1919831 () ListMap!5585)

(declare-fun lambda!222792 () Int)

(assert (=> bs!1145825 (= (= lt!1919831 lt!1919797) (= lambda!222792 lambda!222787))))

(assert (=> bs!1145825 (= (= lt!1919831 lt!1919560) (= lambda!222792 lambda!222786))))

(declare-fun bs!1145826 () Bool)

(assert (= bs!1145826 (and d!1520049 b!4753777)))

(assert (=> bs!1145826 (= (= lt!1919831 lt!1919560) (= lambda!222792 lambda!222785))))

(declare-fun bs!1145827 () Bool)

(assert (= bs!1145827 (and d!1520049 b!4753788)))

(assert (=> bs!1145827 (= (= lt!1919831 lt!1919553) (= lambda!222792 lambda!222789))))

(declare-fun bs!1145828 () Bool)

(assert (= bs!1145828 (and d!1520049 d!1520007)))

(assert (=> bs!1145828 (= (= lt!1919831 lt!1919802) (= lambda!222792 lambda!222788))))

(declare-fun bs!1145829 () Bool)

(assert (= bs!1145829 (and d!1520049 b!4753789)))

(assert (=> bs!1145829 (= (= lt!1919831 lt!1919826) (= lambda!222792 lambda!222791))))

(assert (=> bs!1145829 (= (= lt!1919831 lt!1919553) (= lambda!222792 lambda!222790))))

(assert (=> d!1520049 true))

(declare-fun b!4753787 () Bool)

(declare-fun e!2965521 () Bool)

(declare-fun call!333285 () Bool)

(assert (=> b!4753787 (= e!2965521 call!333285)))

(declare-fun bm!333278 () Bool)

(declare-fun call!333283 () Unit!136940)

(assert (=> bm!333278 (= call!333283 (lemmaContainsAllItsOwnKeys!889 lt!1919553))))

(declare-fun c!811577 () Bool)

(declare-fun call!333284 () Bool)

(declare-fun bm!333279 () Bool)

(assert (=> bm!333279 (= call!333284 (forall!11774 (ite c!811577 (toList!6138 lt!1919553) (t!360578 (t!360578 l!13029))) (ite c!811577 lambda!222789 lambda!222791)))))

(declare-fun e!2965519 () ListMap!5585)

(assert (=> b!4753788 (= e!2965519 lt!1919553)))

(declare-fun lt!1919832 () Unit!136940)

(assert (=> b!4753788 (= lt!1919832 call!333283)))

(assert (=> b!4753788 call!333284))

(declare-fun lt!1919829 () Unit!136940)

(assert (=> b!4753788 (= lt!1919829 lt!1919832)))

(assert (=> b!4753788 call!333285))

(declare-fun lt!1919815 () Unit!136940)

(declare-fun Unit!136986 () Unit!136940)

(assert (=> b!4753788 (= lt!1919815 Unit!136986)))

(assert (=> b!4753789 (= e!2965519 lt!1919826)))

(declare-fun lt!1919817 () ListMap!5585)

(assert (=> b!4753789 (= lt!1919817 (+!2404 lt!1919553 (h!59507 (t!360578 l!13029))))))

(assert (=> b!4753789 (= lt!1919826 (addToMapMapFromBucket!1592 (t!360578 (t!360578 l!13029)) (+!2404 lt!1919553 (h!59507 (t!360578 l!13029)))))))

(declare-fun lt!1919827 () Unit!136940)

(assert (=> b!4753789 (= lt!1919827 call!333283)))

(assert (=> b!4753789 (forall!11774 (toList!6138 lt!1919553) lambda!222790)))

(declare-fun lt!1919816 () Unit!136940)

(assert (=> b!4753789 (= lt!1919816 lt!1919827)))

(assert (=> b!4753789 (forall!11774 (toList!6138 lt!1919817) lambda!222791)))

(declare-fun lt!1919820 () Unit!136940)

(declare-fun Unit!136987 () Unit!136940)

(assert (=> b!4753789 (= lt!1919820 Unit!136987)))

(assert (=> b!4753789 call!333284))

(declare-fun lt!1919823 () Unit!136940)

(declare-fun Unit!136988 () Unit!136940)

(assert (=> b!4753789 (= lt!1919823 Unit!136988)))

(declare-fun lt!1919830 () Unit!136940)

(declare-fun Unit!136989 () Unit!136940)

(assert (=> b!4753789 (= lt!1919830 Unit!136989)))

(declare-fun lt!1919833 () Unit!136940)

(assert (=> b!4753789 (= lt!1919833 (forallContained!3800 (toList!6138 lt!1919817) lambda!222791 (h!59507 (t!360578 l!13029))))))

(assert (=> b!4753789 (contains!16536 lt!1919817 (_1!30744 (h!59507 (t!360578 l!13029))))))

(declare-fun lt!1919818 () Unit!136940)

(declare-fun Unit!136990 () Unit!136940)

(assert (=> b!4753789 (= lt!1919818 Unit!136990)))

(assert (=> b!4753789 (contains!16536 lt!1919826 (_1!30744 (h!59507 (t!360578 l!13029))))))

(declare-fun lt!1919821 () Unit!136940)

(declare-fun Unit!136991 () Unit!136940)

(assert (=> b!4753789 (= lt!1919821 Unit!136991)))

(assert (=> b!4753789 (forall!11774 (t!360578 l!13029) lambda!222791)))

(declare-fun lt!1919824 () Unit!136940)

(declare-fun Unit!136992 () Unit!136940)

(assert (=> b!4753789 (= lt!1919824 Unit!136992)))

(assert (=> b!4753789 (forall!11774 (toList!6138 lt!1919817) lambda!222791)))

(declare-fun lt!1919825 () Unit!136940)

(declare-fun Unit!136993 () Unit!136940)

(assert (=> b!4753789 (= lt!1919825 Unit!136993)))

(declare-fun lt!1919834 () Unit!136940)

(declare-fun Unit!136994 () Unit!136940)

(assert (=> b!4753789 (= lt!1919834 Unit!136994)))

(declare-fun lt!1919819 () Unit!136940)

(assert (=> b!4753789 (= lt!1919819 (addForallContainsKeyThenBeforeAdding!888 lt!1919553 lt!1919826 (_1!30744 (h!59507 (t!360578 l!13029))) (_2!30744 (h!59507 (t!360578 l!13029)))))))

(assert (=> b!4753789 (forall!11774 (toList!6138 lt!1919553) lambda!222791)))

(declare-fun lt!1919828 () Unit!136940)

(assert (=> b!4753789 (= lt!1919828 lt!1919819)))

(assert (=> b!4753789 (forall!11774 (toList!6138 lt!1919553) lambda!222791)))

(declare-fun lt!1919822 () Unit!136940)

(declare-fun Unit!136995 () Unit!136940)

(assert (=> b!4753789 (= lt!1919822 Unit!136995)))

(declare-fun res!2016335 () Bool)

(assert (=> b!4753789 (= res!2016335 (forall!11774 (t!360578 l!13029) lambda!222791))))

(assert (=> b!4753789 (=> (not res!2016335) (not e!2965521))))

(assert (=> b!4753789 e!2965521))

(declare-fun lt!1919814 () Unit!136940)

(declare-fun Unit!136996 () Unit!136940)

(assert (=> b!4753789 (= lt!1919814 Unit!136996)))

(declare-fun b!4753790 () Bool)

(declare-fun e!2965520 () Bool)

(assert (=> b!4753790 (= e!2965520 (invariantList!1606 (toList!6138 lt!1919831)))))

(assert (=> d!1520049 e!2965520))

(declare-fun res!2016333 () Bool)

(assert (=> d!1520049 (=> (not res!2016333) (not e!2965520))))

(assert (=> d!1520049 (= res!2016333 (forall!11774 (t!360578 l!13029) lambda!222792))))

(assert (=> d!1520049 (= lt!1919831 e!2965519)))

(assert (=> d!1520049 (= c!811577 ((_ is Nil!53110) (t!360578 l!13029)))))

(assert (=> d!1520049 (noDuplicateKeys!2170 (t!360578 l!13029))))

(assert (=> d!1520049 (= (addToMapMapFromBucket!1592 (t!360578 l!13029) lt!1919553) lt!1919831)))

(declare-fun bm!333280 () Bool)

(assert (=> bm!333280 (= call!333285 (forall!11774 (toList!6138 lt!1919553) (ite c!811577 lambda!222789 lambda!222791)))))

(declare-fun b!4753791 () Bool)

(declare-fun res!2016334 () Bool)

(assert (=> b!4753791 (=> (not res!2016334) (not e!2965520))))

(assert (=> b!4753791 (= res!2016334 (forall!11774 (toList!6138 lt!1919553) lambda!222792))))

(assert (= (and d!1520049 c!811577) b!4753788))

(assert (= (and d!1520049 (not c!811577)) b!4753789))

(assert (= (and b!4753789 res!2016335) b!4753787))

(assert (= (or b!4753788 b!4753787) bm!333280))

(assert (= (or b!4753788 b!4753789) bm!333279))

(assert (= (or b!4753788 b!4753789) bm!333278))

(assert (= (and d!1520049 res!2016333) b!4753791))

(assert (= (and b!4753791 res!2016334) b!4753790))

(declare-fun m!5721463 () Bool)

(assert (=> b!4753789 m!5721463))

(declare-fun m!5721465 () Bool)

(assert (=> b!4753789 m!5721465))

(declare-fun m!5721467 () Bool)

(assert (=> b!4753789 m!5721467))

(assert (=> b!4753789 m!5721463))

(declare-fun m!5721469 () Bool)

(assert (=> b!4753789 m!5721469))

(assert (=> b!4753789 m!5721467))

(declare-fun m!5721471 () Bool)

(assert (=> b!4753789 m!5721471))

(declare-fun m!5721473 () Bool)

(assert (=> b!4753789 m!5721473))

(declare-fun m!5721475 () Bool)

(assert (=> b!4753789 m!5721475))

(declare-fun m!5721477 () Bool)

(assert (=> b!4753789 m!5721477))

(assert (=> b!4753789 m!5721477))

(declare-fun m!5721479 () Bool)

(assert (=> b!4753789 m!5721479))

(declare-fun m!5721481 () Bool)

(assert (=> b!4753789 m!5721481))

(assert (=> b!4753789 m!5721481))

(declare-fun m!5721483 () Bool)

(assert (=> b!4753791 m!5721483))

(declare-fun m!5721485 () Bool)

(assert (=> bm!333279 m!5721485))

(declare-fun m!5721487 () Bool)

(assert (=> b!4753790 m!5721487))

(declare-fun m!5721489 () Bool)

(assert (=> d!1520049 m!5721489))

(assert (=> d!1520049 m!5721111))

(declare-fun m!5721491 () Bool)

(assert (=> bm!333278 m!5721491))

(declare-fun m!5721493 () Bool)

(assert (=> bm!333280 m!5721493))

(assert (=> b!4753681 d!1520049))

(declare-fun bs!1145830 () Bool)

(declare-fun b!4753793 () Bool)

(assert (= bs!1145830 (and b!4753793 b!4753778)))

(declare-fun lambda!222793 () Int)

(assert (=> bs!1145830 (= (= lt!1919561 lt!1919560) (= lambda!222793 lambda!222786))))

(declare-fun bs!1145831 () Bool)

(assert (= bs!1145831 (and b!4753793 b!4753777)))

(assert (=> bs!1145831 (= (= lt!1919561 lt!1919560) (= lambda!222793 lambda!222785))))

(declare-fun bs!1145832 () Bool)

(assert (= bs!1145832 (and b!4753793 b!4753788)))

(assert (=> bs!1145832 (= (= lt!1919561 lt!1919553) (= lambda!222793 lambda!222789))))

(declare-fun bs!1145833 () Bool)

(assert (= bs!1145833 (and b!4753793 d!1520007)))

(assert (=> bs!1145833 (= (= lt!1919561 lt!1919802) (= lambda!222793 lambda!222788))))

(declare-fun bs!1145834 () Bool)

(assert (= bs!1145834 (and b!4753793 b!4753789)))

(assert (=> bs!1145834 (= (= lt!1919561 lt!1919826) (= lambda!222793 lambda!222791))))

(assert (=> bs!1145834 (= (= lt!1919561 lt!1919553) (= lambda!222793 lambda!222790))))

(assert (=> bs!1145830 (= (= lt!1919561 lt!1919797) (= lambda!222793 lambda!222787))))

(declare-fun bs!1145835 () Bool)

(assert (= bs!1145835 (and b!4753793 d!1520049)))

(assert (=> bs!1145835 (= (= lt!1919561 lt!1919831) (= lambda!222793 lambda!222792))))

(assert (=> b!4753793 true))

(declare-fun bs!1145836 () Bool)

(declare-fun b!4753794 () Bool)

(assert (= bs!1145836 (and b!4753794 b!4753778)))

(declare-fun lambda!222794 () Int)

(assert (=> bs!1145836 (= (= lt!1919561 lt!1919560) (= lambda!222794 lambda!222786))))

(declare-fun bs!1145837 () Bool)

(assert (= bs!1145837 (and b!4753794 b!4753777)))

(assert (=> bs!1145837 (= (= lt!1919561 lt!1919560) (= lambda!222794 lambda!222785))))

(declare-fun bs!1145838 () Bool)

(assert (= bs!1145838 (and b!4753794 b!4753793)))

(assert (=> bs!1145838 (= lambda!222794 lambda!222793)))

(declare-fun bs!1145839 () Bool)

(assert (= bs!1145839 (and b!4753794 b!4753788)))

(assert (=> bs!1145839 (= (= lt!1919561 lt!1919553) (= lambda!222794 lambda!222789))))

(declare-fun bs!1145840 () Bool)

(assert (= bs!1145840 (and b!4753794 d!1520007)))

(assert (=> bs!1145840 (= (= lt!1919561 lt!1919802) (= lambda!222794 lambda!222788))))

(declare-fun bs!1145841 () Bool)

(assert (= bs!1145841 (and b!4753794 b!4753789)))

(assert (=> bs!1145841 (= (= lt!1919561 lt!1919826) (= lambda!222794 lambda!222791))))

(assert (=> bs!1145841 (= (= lt!1919561 lt!1919553) (= lambda!222794 lambda!222790))))

(assert (=> bs!1145836 (= (= lt!1919561 lt!1919797) (= lambda!222794 lambda!222787))))

(declare-fun bs!1145842 () Bool)

(assert (= bs!1145842 (and b!4753794 d!1520049)))

(assert (=> bs!1145842 (= (= lt!1919561 lt!1919831) (= lambda!222794 lambda!222792))))

(assert (=> b!4753794 true))

(declare-fun lt!1919847 () ListMap!5585)

(declare-fun lambda!222795 () Int)

(assert (=> bs!1145836 (= (= lt!1919847 lt!1919560) (= lambda!222795 lambda!222786))))

(assert (=> bs!1145837 (= (= lt!1919847 lt!1919560) (= lambda!222795 lambda!222785))))

(assert (=> bs!1145838 (= (= lt!1919847 lt!1919561) (= lambda!222795 lambda!222793))))

(assert (=> bs!1145839 (= (= lt!1919847 lt!1919553) (= lambda!222795 lambda!222789))))

(assert (=> b!4753794 (= (= lt!1919847 lt!1919561) (= lambda!222795 lambda!222794))))

(assert (=> bs!1145840 (= (= lt!1919847 lt!1919802) (= lambda!222795 lambda!222788))))

(assert (=> bs!1145841 (= (= lt!1919847 lt!1919826) (= lambda!222795 lambda!222791))))

(assert (=> bs!1145841 (= (= lt!1919847 lt!1919553) (= lambda!222795 lambda!222790))))

(assert (=> bs!1145836 (= (= lt!1919847 lt!1919797) (= lambda!222795 lambda!222787))))

(assert (=> bs!1145842 (= (= lt!1919847 lt!1919831) (= lambda!222795 lambda!222792))))

(assert (=> b!4753794 true))

(declare-fun bs!1145843 () Bool)

(declare-fun d!1520051 () Bool)

(assert (= bs!1145843 (and d!1520051 b!4753794)))

(declare-fun lambda!222796 () Int)

(declare-fun lt!1919852 () ListMap!5585)

(assert (=> bs!1145843 (= (= lt!1919852 lt!1919847) (= lambda!222796 lambda!222795))))

(declare-fun bs!1145844 () Bool)

(assert (= bs!1145844 (and d!1520051 b!4753778)))

(assert (=> bs!1145844 (= (= lt!1919852 lt!1919560) (= lambda!222796 lambda!222786))))

(declare-fun bs!1145845 () Bool)

(assert (= bs!1145845 (and d!1520051 b!4753777)))

(assert (=> bs!1145845 (= (= lt!1919852 lt!1919560) (= lambda!222796 lambda!222785))))

(declare-fun bs!1145846 () Bool)

(assert (= bs!1145846 (and d!1520051 b!4753793)))

(assert (=> bs!1145846 (= (= lt!1919852 lt!1919561) (= lambda!222796 lambda!222793))))

(declare-fun bs!1145847 () Bool)

(assert (= bs!1145847 (and d!1520051 b!4753788)))

(assert (=> bs!1145847 (= (= lt!1919852 lt!1919553) (= lambda!222796 lambda!222789))))

(assert (=> bs!1145843 (= (= lt!1919852 lt!1919561) (= lambda!222796 lambda!222794))))

(declare-fun bs!1145848 () Bool)

(assert (= bs!1145848 (and d!1520051 d!1520007)))

(assert (=> bs!1145848 (= (= lt!1919852 lt!1919802) (= lambda!222796 lambda!222788))))

(declare-fun bs!1145849 () Bool)

(assert (= bs!1145849 (and d!1520051 b!4753789)))

(assert (=> bs!1145849 (= (= lt!1919852 lt!1919826) (= lambda!222796 lambda!222791))))

(assert (=> bs!1145849 (= (= lt!1919852 lt!1919553) (= lambda!222796 lambda!222790))))

(assert (=> bs!1145844 (= (= lt!1919852 lt!1919797) (= lambda!222796 lambda!222787))))

(declare-fun bs!1145850 () Bool)

(assert (= bs!1145850 (and d!1520051 d!1520049)))

(assert (=> bs!1145850 (= (= lt!1919852 lt!1919831) (= lambda!222796 lambda!222792))))

(assert (=> d!1520051 true))

(declare-fun b!4753792 () Bool)

(declare-fun e!2965524 () Bool)

(declare-fun call!333288 () Bool)

(assert (=> b!4753792 (= e!2965524 call!333288)))

(declare-fun bm!333281 () Bool)

(declare-fun call!333286 () Unit!136940)

(assert (=> bm!333281 (= call!333286 (lemmaContainsAllItsOwnKeys!889 lt!1919561))))

(declare-fun call!333287 () Bool)

(declare-fun c!811578 () Bool)

(declare-fun bm!333282 () Bool)

(assert (=> bm!333282 (= call!333287 (forall!11774 (ite c!811578 (toList!6138 lt!1919561) (t!360578 (t!360578 l!13029))) (ite c!811578 lambda!222793 lambda!222795)))))

(declare-fun e!2965522 () ListMap!5585)

(assert (=> b!4753793 (= e!2965522 lt!1919561)))

(declare-fun lt!1919853 () Unit!136940)

(assert (=> b!4753793 (= lt!1919853 call!333286)))

(assert (=> b!4753793 call!333287))

(declare-fun lt!1919850 () Unit!136940)

(assert (=> b!4753793 (= lt!1919850 lt!1919853)))

(assert (=> b!4753793 call!333288))

(declare-fun lt!1919836 () Unit!136940)

(declare-fun Unit!136997 () Unit!136940)

(assert (=> b!4753793 (= lt!1919836 Unit!136997)))

(assert (=> b!4753794 (= e!2965522 lt!1919847)))

(declare-fun lt!1919838 () ListMap!5585)

(assert (=> b!4753794 (= lt!1919838 (+!2404 lt!1919561 (h!59507 (t!360578 l!13029))))))

(assert (=> b!4753794 (= lt!1919847 (addToMapMapFromBucket!1592 (t!360578 (t!360578 l!13029)) (+!2404 lt!1919561 (h!59507 (t!360578 l!13029)))))))

(declare-fun lt!1919848 () Unit!136940)

(assert (=> b!4753794 (= lt!1919848 call!333286)))

(assert (=> b!4753794 (forall!11774 (toList!6138 lt!1919561) lambda!222794)))

(declare-fun lt!1919837 () Unit!136940)

(assert (=> b!4753794 (= lt!1919837 lt!1919848)))

(assert (=> b!4753794 (forall!11774 (toList!6138 lt!1919838) lambda!222795)))

(declare-fun lt!1919841 () Unit!136940)

(declare-fun Unit!136998 () Unit!136940)

(assert (=> b!4753794 (= lt!1919841 Unit!136998)))

(assert (=> b!4753794 call!333287))

(declare-fun lt!1919844 () Unit!136940)

(declare-fun Unit!136999 () Unit!136940)

(assert (=> b!4753794 (= lt!1919844 Unit!136999)))

(declare-fun lt!1919851 () Unit!136940)

(declare-fun Unit!137000 () Unit!136940)

(assert (=> b!4753794 (= lt!1919851 Unit!137000)))

(declare-fun lt!1919854 () Unit!136940)

(assert (=> b!4753794 (= lt!1919854 (forallContained!3800 (toList!6138 lt!1919838) lambda!222795 (h!59507 (t!360578 l!13029))))))

(assert (=> b!4753794 (contains!16536 lt!1919838 (_1!30744 (h!59507 (t!360578 l!13029))))))

(declare-fun lt!1919839 () Unit!136940)

(declare-fun Unit!137002 () Unit!136940)

(assert (=> b!4753794 (= lt!1919839 Unit!137002)))

(assert (=> b!4753794 (contains!16536 lt!1919847 (_1!30744 (h!59507 (t!360578 l!13029))))))

(declare-fun lt!1919842 () Unit!136940)

(declare-fun Unit!137003 () Unit!136940)

(assert (=> b!4753794 (= lt!1919842 Unit!137003)))

(assert (=> b!4753794 (forall!11774 (t!360578 l!13029) lambda!222795)))

(declare-fun lt!1919845 () Unit!136940)

(declare-fun Unit!137004 () Unit!136940)

(assert (=> b!4753794 (= lt!1919845 Unit!137004)))

(assert (=> b!4753794 (forall!11774 (toList!6138 lt!1919838) lambda!222795)))

(declare-fun lt!1919846 () Unit!136940)

(declare-fun Unit!137005 () Unit!136940)

(assert (=> b!4753794 (= lt!1919846 Unit!137005)))

(declare-fun lt!1919855 () Unit!136940)

(declare-fun Unit!137006 () Unit!136940)

(assert (=> b!4753794 (= lt!1919855 Unit!137006)))

(declare-fun lt!1919840 () Unit!136940)

(assert (=> b!4753794 (= lt!1919840 (addForallContainsKeyThenBeforeAdding!888 lt!1919561 lt!1919847 (_1!30744 (h!59507 (t!360578 l!13029))) (_2!30744 (h!59507 (t!360578 l!13029)))))))

(assert (=> b!4753794 (forall!11774 (toList!6138 lt!1919561) lambda!222795)))

(declare-fun lt!1919849 () Unit!136940)

(assert (=> b!4753794 (= lt!1919849 lt!1919840)))

(assert (=> b!4753794 (forall!11774 (toList!6138 lt!1919561) lambda!222795)))

(declare-fun lt!1919843 () Unit!136940)

(declare-fun Unit!137007 () Unit!136940)

(assert (=> b!4753794 (= lt!1919843 Unit!137007)))

(declare-fun res!2016338 () Bool)

(assert (=> b!4753794 (= res!2016338 (forall!11774 (t!360578 l!13029) lambda!222795))))

(assert (=> b!4753794 (=> (not res!2016338) (not e!2965524))))

(assert (=> b!4753794 e!2965524))

(declare-fun lt!1919835 () Unit!136940)

(declare-fun Unit!137008 () Unit!136940)

(assert (=> b!4753794 (= lt!1919835 Unit!137008)))

(declare-fun b!4753795 () Bool)

(declare-fun e!2965523 () Bool)

(assert (=> b!4753795 (= e!2965523 (invariantList!1606 (toList!6138 lt!1919852)))))

(assert (=> d!1520051 e!2965523))

(declare-fun res!2016336 () Bool)

(assert (=> d!1520051 (=> (not res!2016336) (not e!2965523))))

(assert (=> d!1520051 (= res!2016336 (forall!11774 (t!360578 l!13029) lambda!222796))))

(assert (=> d!1520051 (= lt!1919852 e!2965522)))

(assert (=> d!1520051 (= c!811578 ((_ is Nil!53110) (t!360578 l!13029)))))

(assert (=> d!1520051 (noDuplicateKeys!2170 (t!360578 l!13029))))

(assert (=> d!1520051 (= (addToMapMapFromBucket!1592 (t!360578 l!13029) lt!1919561) lt!1919852)))

(declare-fun bm!333283 () Bool)

(assert (=> bm!333283 (= call!333288 (forall!11774 (toList!6138 lt!1919561) (ite c!811578 lambda!222793 lambda!222795)))))

(declare-fun b!4753796 () Bool)

(declare-fun res!2016337 () Bool)

(assert (=> b!4753796 (=> (not res!2016337) (not e!2965523))))

(assert (=> b!4753796 (= res!2016337 (forall!11774 (toList!6138 lt!1919561) lambda!222796))))

(assert (= (and d!1520051 c!811578) b!4753793))

(assert (= (and d!1520051 (not c!811578)) b!4753794))

(assert (= (and b!4753794 res!2016338) b!4753792))

(assert (= (or b!4753793 b!4753792) bm!333283))

(assert (= (or b!4753793 b!4753794) bm!333282))

(assert (= (or b!4753793 b!4753794) bm!333281))

(assert (= (and d!1520051 res!2016336) b!4753796))

(assert (= (and b!4753796 res!2016337) b!4753795))

(declare-fun m!5721495 () Bool)

(assert (=> b!4753794 m!5721495))

(declare-fun m!5721497 () Bool)

(assert (=> b!4753794 m!5721497))

(declare-fun m!5721499 () Bool)

(assert (=> b!4753794 m!5721499))

(assert (=> b!4753794 m!5721495))

(declare-fun m!5721501 () Bool)

(assert (=> b!4753794 m!5721501))

(assert (=> b!4753794 m!5721499))

(declare-fun m!5721503 () Bool)

(assert (=> b!4753794 m!5721503))

(declare-fun m!5721505 () Bool)

(assert (=> b!4753794 m!5721505))

(declare-fun m!5721507 () Bool)

(assert (=> b!4753794 m!5721507))

(declare-fun m!5721509 () Bool)

(assert (=> b!4753794 m!5721509))

(assert (=> b!4753794 m!5721509))

(declare-fun m!5721511 () Bool)

(assert (=> b!4753794 m!5721511))

(declare-fun m!5721513 () Bool)

(assert (=> b!4753794 m!5721513))

(assert (=> b!4753794 m!5721513))

(declare-fun m!5721515 () Bool)

(assert (=> b!4753796 m!5721515))

(declare-fun m!5721517 () Bool)

(assert (=> bm!333282 m!5721517))

(declare-fun m!5721519 () Bool)

(assert (=> b!4753795 m!5721519))

(declare-fun m!5721521 () Bool)

(assert (=> d!1520051 m!5721521))

(assert (=> d!1520051 m!5721111))

(declare-fun m!5721523 () Bool)

(assert (=> bm!333281 m!5721523))

(declare-fun m!5721525 () Bool)

(assert (=> bm!333283 m!5721525))

(assert (=> b!4753681 d!1520051))

(declare-fun d!1520053 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9543 (List!53234) (InoxSet tuple2!54900))

(assert (=> d!1520053 (= (eq!1239 lt!1919562 (+!2404 (addToMapMapFromBucket!1592 (t!360578 l!13029) lt!1919553) lt!1919559)) (= (content!9543 (toList!6138 lt!1919562)) (content!9543 (toList!6138 (+!2404 (addToMapMapFromBucket!1592 (t!360578 l!13029) lt!1919553) lt!1919559)))))))

(declare-fun bs!1145851 () Bool)

(assert (= bs!1145851 d!1520053))

(declare-fun m!5721527 () Bool)

(assert (=> bs!1145851 m!5721527))

(declare-fun m!5721529 () Bool)

(assert (=> bs!1145851 m!5721529))

(assert (=> b!4753681 d!1520053))

(declare-fun d!1520055 () Bool)

(assert (=> d!1520055 (eq!1239 (addToMapMapFromBucket!1592 (t!360578 l!13029) (+!2404 lt!1919553 (tuple2!54901 key!4572 value!2966))) (+!2404 (addToMapMapFromBucket!1592 (t!360578 l!13029) lt!1919553) (tuple2!54901 key!4572 value!2966)))))

(declare-fun lt!1919858 () Unit!136940)

(declare-fun choose!33858 (ListMap!5585 K!14575 V!14821 List!53234) Unit!136940)

(assert (=> d!1520055 (= lt!1919858 (choose!33858 lt!1919553 key!4572 value!2966 (t!360578 l!13029)))))

(assert (=> d!1520055 (not (containsKey!3576 (t!360578 l!13029) key!4572))))

(assert (=> d!1520055 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!256 lt!1919553 key!4572 value!2966 (t!360578 l!13029)) lt!1919858)))

(declare-fun bs!1145852 () Bool)

(assert (= bs!1145852 d!1520055))

(assert (=> bs!1145852 m!5721109))

(declare-fun m!5721531 () Bool)

(assert (=> bs!1145852 m!5721531))

(declare-fun m!5721533 () Bool)

(assert (=> bs!1145852 m!5721533))

(declare-fun m!5721535 () Bool)

(assert (=> bs!1145852 m!5721535))

(assert (=> bs!1145852 m!5721533))

(declare-fun m!5721537 () Bool)

(assert (=> bs!1145852 m!5721537))

(assert (=> bs!1145852 m!5721109))

(assert (=> bs!1145852 m!5721535))

(assert (=> bs!1145852 m!5721531))

(declare-fun m!5721539 () Bool)

(assert (=> bs!1145852 m!5721539))

(declare-fun m!5721541 () Bool)

(assert (=> bs!1145852 m!5721541))

(assert (=> b!4753681 d!1520055))

(declare-fun bs!1145853 () Bool)

(declare-fun b!4753798 () Bool)

(assert (= bs!1145853 (and b!4753798 b!4753794)))

(declare-fun lambda!222797 () Int)

(assert (=> bs!1145853 (= (= lt!1919554 lt!1919847) (= lambda!222797 lambda!222795))))

(declare-fun bs!1145854 () Bool)

(assert (= bs!1145854 (and b!4753798 b!4753777)))

(assert (=> bs!1145854 (= (= lt!1919554 lt!1919560) (= lambda!222797 lambda!222785))))

(declare-fun bs!1145855 () Bool)

(assert (= bs!1145855 (and b!4753798 b!4753793)))

(assert (=> bs!1145855 (= (= lt!1919554 lt!1919561) (= lambda!222797 lambda!222793))))

(declare-fun bs!1145856 () Bool)

(assert (= bs!1145856 (and b!4753798 b!4753788)))

(assert (=> bs!1145856 (= (= lt!1919554 lt!1919553) (= lambda!222797 lambda!222789))))

(assert (=> bs!1145853 (= (= lt!1919554 lt!1919561) (= lambda!222797 lambda!222794))))

(declare-fun bs!1145857 () Bool)

(assert (= bs!1145857 (and b!4753798 d!1520007)))

(assert (=> bs!1145857 (= (= lt!1919554 lt!1919802) (= lambda!222797 lambda!222788))))

(declare-fun bs!1145858 () Bool)

(assert (= bs!1145858 (and b!4753798 b!4753789)))

(assert (=> bs!1145858 (= (= lt!1919554 lt!1919826) (= lambda!222797 lambda!222791))))

(assert (=> bs!1145858 (= (= lt!1919554 lt!1919553) (= lambda!222797 lambda!222790))))

(declare-fun bs!1145859 () Bool)

(assert (= bs!1145859 (and b!4753798 b!4753778)))

(assert (=> bs!1145859 (= (= lt!1919554 lt!1919797) (= lambda!222797 lambda!222787))))

(declare-fun bs!1145860 () Bool)

(assert (= bs!1145860 (and b!4753798 d!1520049)))

(assert (=> bs!1145860 (= (= lt!1919554 lt!1919831) (= lambda!222797 lambda!222792))))

(declare-fun bs!1145861 () Bool)

(assert (= bs!1145861 (and b!4753798 d!1520051)))

(assert (=> bs!1145861 (= (= lt!1919554 lt!1919852) (= lambda!222797 lambda!222796))))

(assert (=> bs!1145859 (= (= lt!1919554 lt!1919560) (= lambda!222797 lambda!222786))))

(assert (=> b!4753798 true))

(declare-fun bs!1145862 () Bool)

(declare-fun b!4753799 () Bool)

(assert (= bs!1145862 (and b!4753799 b!4753798)))

(declare-fun lambda!222798 () Int)

(assert (=> bs!1145862 (= lambda!222798 lambda!222797)))

(declare-fun bs!1145863 () Bool)

(assert (= bs!1145863 (and b!4753799 b!4753794)))

(assert (=> bs!1145863 (= (= lt!1919554 lt!1919847) (= lambda!222798 lambda!222795))))

(declare-fun bs!1145864 () Bool)

(assert (= bs!1145864 (and b!4753799 b!4753777)))

(assert (=> bs!1145864 (= (= lt!1919554 lt!1919560) (= lambda!222798 lambda!222785))))

(declare-fun bs!1145865 () Bool)

(assert (= bs!1145865 (and b!4753799 b!4753793)))

(assert (=> bs!1145865 (= (= lt!1919554 lt!1919561) (= lambda!222798 lambda!222793))))

(declare-fun bs!1145866 () Bool)

(assert (= bs!1145866 (and b!4753799 b!4753788)))

(assert (=> bs!1145866 (= (= lt!1919554 lt!1919553) (= lambda!222798 lambda!222789))))

(assert (=> bs!1145863 (= (= lt!1919554 lt!1919561) (= lambda!222798 lambda!222794))))

(declare-fun bs!1145867 () Bool)

(assert (= bs!1145867 (and b!4753799 d!1520007)))

(assert (=> bs!1145867 (= (= lt!1919554 lt!1919802) (= lambda!222798 lambda!222788))))

(declare-fun bs!1145868 () Bool)

(assert (= bs!1145868 (and b!4753799 b!4753789)))

(assert (=> bs!1145868 (= (= lt!1919554 lt!1919826) (= lambda!222798 lambda!222791))))

(assert (=> bs!1145868 (= (= lt!1919554 lt!1919553) (= lambda!222798 lambda!222790))))

(declare-fun bs!1145869 () Bool)

(assert (= bs!1145869 (and b!4753799 b!4753778)))

(assert (=> bs!1145869 (= (= lt!1919554 lt!1919797) (= lambda!222798 lambda!222787))))

(declare-fun bs!1145870 () Bool)

(assert (= bs!1145870 (and b!4753799 d!1520049)))

(assert (=> bs!1145870 (= (= lt!1919554 lt!1919831) (= lambda!222798 lambda!222792))))

(declare-fun bs!1145871 () Bool)

(assert (= bs!1145871 (and b!4753799 d!1520051)))

(assert (=> bs!1145871 (= (= lt!1919554 lt!1919852) (= lambda!222798 lambda!222796))))

(assert (=> bs!1145869 (= (= lt!1919554 lt!1919560) (= lambda!222798 lambda!222786))))

(assert (=> b!4753799 true))

(declare-fun lt!1919871 () ListMap!5585)

(declare-fun lambda!222799 () Int)

(assert (=> bs!1145862 (= (= lt!1919871 lt!1919554) (= lambda!222799 lambda!222797))))

(assert (=> bs!1145863 (= (= lt!1919871 lt!1919847) (= lambda!222799 lambda!222795))))

(assert (=> bs!1145864 (= (= lt!1919871 lt!1919560) (= lambda!222799 lambda!222785))))

(assert (=> bs!1145865 (= (= lt!1919871 lt!1919561) (= lambda!222799 lambda!222793))))

(assert (=> bs!1145866 (= (= lt!1919871 lt!1919553) (= lambda!222799 lambda!222789))))

(assert (=> bs!1145863 (= (= lt!1919871 lt!1919561) (= lambda!222799 lambda!222794))))

(assert (=> bs!1145867 (= (= lt!1919871 lt!1919802) (= lambda!222799 lambda!222788))))

(assert (=> bs!1145868 (= (= lt!1919871 lt!1919826) (= lambda!222799 lambda!222791))))

(assert (=> b!4753799 (= (= lt!1919871 lt!1919554) (= lambda!222799 lambda!222798))))

(assert (=> bs!1145868 (= (= lt!1919871 lt!1919553) (= lambda!222799 lambda!222790))))

(assert (=> bs!1145869 (= (= lt!1919871 lt!1919797) (= lambda!222799 lambda!222787))))

(assert (=> bs!1145870 (= (= lt!1919871 lt!1919831) (= lambda!222799 lambda!222792))))

(assert (=> bs!1145871 (= (= lt!1919871 lt!1919852) (= lambda!222799 lambda!222796))))

(assert (=> bs!1145869 (= (= lt!1919871 lt!1919560) (= lambda!222799 lambda!222786))))

(assert (=> b!4753799 true))

(declare-fun bs!1145872 () Bool)

(declare-fun d!1520057 () Bool)

(assert (= bs!1145872 (and d!1520057 b!4753798)))

(declare-fun lt!1919876 () ListMap!5585)

(declare-fun lambda!222800 () Int)

(assert (=> bs!1145872 (= (= lt!1919876 lt!1919554) (= lambda!222800 lambda!222797))))

(declare-fun bs!1145873 () Bool)

(assert (= bs!1145873 (and d!1520057 b!4753794)))

(assert (=> bs!1145873 (= (= lt!1919876 lt!1919847) (= lambda!222800 lambda!222795))))

(declare-fun bs!1145874 () Bool)

(assert (= bs!1145874 (and d!1520057 b!4753777)))

(assert (=> bs!1145874 (= (= lt!1919876 lt!1919560) (= lambda!222800 lambda!222785))))

(declare-fun bs!1145875 () Bool)

(assert (= bs!1145875 (and d!1520057 b!4753793)))

(assert (=> bs!1145875 (= (= lt!1919876 lt!1919561) (= lambda!222800 lambda!222793))))

(declare-fun bs!1145876 () Bool)

(assert (= bs!1145876 (and d!1520057 b!4753788)))

(assert (=> bs!1145876 (= (= lt!1919876 lt!1919553) (= lambda!222800 lambda!222789))))

(assert (=> bs!1145873 (= (= lt!1919876 lt!1919561) (= lambda!222800 lambda!222794))))

(declare-fun bs!1145877 () Bool)

(assert (= bs!1145877 (and d!1520057 d!1520007)))

(assert (=> bs!1145877 (= (= lt!1919876 lt!1919802) (= lambda!222800 lambda!222788))))

(declare-fun bs!1145878 () Bool)

(assert (= bs!1145878 (and d!1520057 b!4753789)))

(assert (=> bs!1145878 (= (= lt!1919876 lt!1919826) (= lambda!222800 lambda!222791))))

(declare-fun bs!1145879 () Bool)

(assert (= bs!1145879 (and d!1520057 b!4753799)))

(assert (=> bs!1145879 (= (= lt!1919876 lt!1919554) (= lambda!222800 lambda!222798))))

(assert (=> bs!1145879 (= (= lt!1919876 lt!1919871) (= lambda!222800 lambda!222799))))

(assert (=> bs!1145878 (= (= lt!1919876 lt!1919553) (= lambda!222800 lambda!222790))))

(declare-fun bs!1145880 () Bool)

(assert (= bs!1145880 (and d!1520057 b!4753778)))

(assert (=> bs!1145880 (= (= lt!1919876 lt!1919797) (= lambda!222800 lambda!222787))))

(declare-fun bs!1145881 () Bool)

(assert (= bs!1145881 (and d!1520057 d!1520049)))

(assert (=> bs!1145881 (= (= lt!1919876 lt!1919831) (= lambda!222800 lambda!222792))))

(declare-fun bs!1145882 () Bool)

(assert (= bs!1145882 (and d!1520057 d!1520051)))

(assert (=> bs!1145882 (= (= lt!1919876 lt!1919852) (= lambda!222800 lambda!222796))))

(assert (=> bs!1145880 (= (= lt!1919876 lt!1919560) (= lambda!222800 lambda!222786))))

(assert (=> d!1520057 true))

(declare-fun b!4753797 () Bool)

(declare-fun e!2965527 () Bool)

(declare-fun call!333291 () Bool)

(assert (=> b!4753797 (= e!2965527 call!333291)))

(declare-fun bm!333284 () Bool)

(declare-fun call!333289 () Unit!136940)

(assert (=> bm!333284 (= call!333289 (lemmaContainsAllItsOwnKeys!889 lt!1919554))))

(declare-fun bm!333285 () Bool)

(declare-fun c!811579 () Bool)

(declare-fun call!333290 () Bool)

(assert (=> bm!333285 (= call!333290 (forall!11774 (ite c!811579 (toList!6138 lt!1919554) (t!360578 l!13029)) (ite c!811579 lambda!222797 lambda!222799)))))

(declare-fun e!2965525 () ListMap!5585)

(assert (=> b!4753798 (= e!2965525 lt!1919554)))

(declare-fun lt!1919877 () Unit!136940)

(assert (=> b!4753798 (= lt!1919877 call!333289)))

(assert (=> b!4753798 call!333290))

(declare-fun lt!1919874 () Unit!136940)

(assert (=> b!4753798 (= lt!1919874 lt!1919877)))

(assert (=> b!4753798 call!333291))

(declare-fun lt!1919860 () Unit!136940)

(declare-fun Unit!137019 () Unit!136940)

(assert (=> b!4753798 (= lt!1919860 Unit!137019)))

(assert (=> b!4753799 (= e!2965525 lt!1919871)))

(declare-fun lt!1919862 () ListMap!5585)

(assert (=> b!4753799 (= lt!1919862 (+!2404 lt!1919554 (h!59507 l!13029)))))

(assert (=> b!4753799 (= lt!1919871 (addToMapMapFromBucket!1592 (t!360578 l!13029) (+!2404 lt!1919554 (h!59507 l!13029))))))

(declare-fun lt!1919872 () Unit!136940)

(assert (=> b!4753799 (= lt!1919872 call!333289)))

(assert (=> b!4753799 (forall!11774 (toList!6138 lt!1919554) lambda!222798)))

(declare-fun lt!1919861 () Unit!136940)

(assert (=> b!4753799 (= lt!1919861 lt!1919872)))

(assert (=> b!4753799 (forall!11774 (toList!6138 lt!1919862) lambda!222799)))

(declare-fun lt!1919865 () Unit!136940)

(declare-fun Unit!137020 () Unit!136940)

(assert (=> b!4753799 (= lt!1919865 Unit!137020)))

(assert (=> b!4753799 call!333290))

(declare-fun lt!1919868 () Unit!136940)

(declare-fun Unit!137021 () Unit!136940)

(assert (=> b!4753799 (= lt!1919868 Unit!137021)))

(declare-fun lt!1919875 () Unit!136940)

(declare-fun Unit!137022 () Unit!136940)

(assert (=> b!4753799 (= lt!1919875 Unit!137022)))

(declare-fun lt!1919878 () Unit!136940)

(assert (=> b!4753799 (= lt!1919878 (forallContained!3800 (toList!6138 lt!1919862) lambda!222799 (h!59507 l!13029)))))

(assert (=> b!4753799 (contains!16536 lt!1919862 (_1!30744 (h!59507 l!13029)))))

(declare-fun lt!1919863 () Unit!136940)

(declare-fun Unit!137023 () Unit!136940)

(assert (=> b!4753799 (= lt!1919863 Unit!137023)))

(assert (=> b!4753799 (contains!16536 lt!1919871 (_1!30744 (h!59507 l!13029)))))

(declare-fun lt!1919866 () Unit!136940)

(declare-fun Unit!137024 () Unit!136940)

(assert (=> b!4753799 (= lt!1919866 Unit!137024)))

(assert (=> b!4753799 (forall!11774 l!13029 lambda!222799)))

(declare-fun lt!1919869 () Unit!136940)

(declare-fun Unit!137025 () Unit!136940)

(assert (=> b!4753799 (= lt!1919869 Unit!137025)))

(assert (=> b!4753799 (forall!11774 (toList!6138 lt!1919862) lambda!222799)))

(declare-fun lt!1919870 () Unit!136940)

(declare-fun Unit!137026 () Unit!136940)

(assert (=> b!4753799 (= lt!1919870 Unit!137026)))

(declare-fun lt!1919879 () Unit!136940)

(declare-fun Unit!137027 () Unit!136940)

(assert (=> b!4753799 (= lt!1919879 Unit!137027)))

(declare-fun lt!1919864 () Unit!136940)

(assert (=> b!4753799 (= lt!1919864 (addForallContainsKeyThenBeforeAdding!888 lt!1919554 lt!1919871 (_1!30744 (h!59507 l!13029)) (_2!30744 (h!59507 l!13029))))))

(assert (=> b!4753799 (forall!11774 (toList!6138 lt!1919554) lambda!222799)))

(declare-fun lt!1919873 () Unit!136940)

(assert (=> b!4753799 (= lt!1919873 lt!1919864)))

(assert (=> b!4753799 (forall!11774 (toList!6138 lt!1919554) lambda!222799)))

(declare-fun lt!1919867 () Unit!136940)

(declare-fun Unit!137028 () Unit!136940)

(assert (=> b!4753799 (= lt!1919867 Unit!137028)))

(declare-fun res!2016341 () Bool)

(assert (=> b!4753799 (= res!2016341 (forall!11774 l!13029 lambda!222799))))

(assert (=> b!4753799 (=> (not res!2016341) (not e!2965527))))

(assert (=> b!4753799 e!2965527))

(declare-fun lt!1919859 () Unit!136940)

(declare-fun Unit!137029 () Unit!136940)

(assert (=> b!4753799 (= lt!1919859 Unit!137029)))

(declare-fun b!4753800 () Bool)

(declare-fun e!2965526 () Bool)

(assert (=> b!4753800 (= e!2965526 (invariantList!1606 (toList!6138 lt!1919876)))))

(assert (=> d!1520057 e!2965526))

(declare-fun res!2016339 () Bool)

(assert (=> d!1520057 (=> (not res!2016339) (not e!2965526))))

(assert (=> d!1520057 (= res!2016339 (forall!11774 l!13029 lambda!222800))))

(assert (=> d!1520057 (= lt!1919876 e!2965525)))

(assert (=> d!1520057 (= c!811579 ((_ is Nil!53110) l!13029))))

(assert (=> d!1520057 (noDuplicateKeys!2170 l!13029)))

(assert (=> d!1520057 (= (addToMapMapFromBucket!1592 l!13029 lt!1919554) lt!1919876)))

(declare-fun bm!333286 () Bool)

(assert (=> bm!333286 (= call!333291 (forall!11774 (toList!6138 lt!1919554) (ite c!811579 lambda!222797 lambda!222799)))))

(declare-fun b!4753801 () Bool)

(declare-fun res!2016340 () Bool)

(assert (=> b!4753801 (=> (not res!2016340) (not e!2965526))))

(assert (=> b!4753801 (= res!2016340 (forall!11774 (toList!6138 lt!1919554) lambda!222800))))

(assert (= (and d!1520057 c!811579) b!4753798))

(assert (= (and d!1520057 (not c!811579)) b!4753799))

(assert (= (and b!4753799 res!2016341) b!4753797))

(assert (= (or b!4753798 b!4753797) bm!333286))

(assert (= (or b!4753798 b!4753799) bm!333285))

(assert (= (or b!4753798 b!4753799) bm!333284))

(assert (= (and d!1520057 res!2016339) b!4753801))

(assert (= (and b!4753801 res!2016340) b!4753800))

(declare-fun m!5721543 () Bool)

(assert (=> b!4753799 m!5721543))

(declare-fun m!5721545 () Bool)

(assert (=> b!4753799 m!5721545))

(declare-fun m!5721547 () Bool)

(assert (=> b!4753799 m!5721547))

(assert (=> b!4753799 m!5721543))

(declare-fun m!5721549 () Bool)

(assert (=> b!4753799 m!5721549))

(assert (=> b!4753799 m!5721547))

(declare-fun m!5721551 () Bool)

(assert (=> b!4753799 m!5721551))

(declare-fun m!5721553 () Bool)

(assert (=> b!4753799 m!5721553))

(declare-fun m!5721555 () Bool)

(assert (=> b!4753799 m!5721555))

(assert (=> b!4753799 m!5721113))

(assert (=> b!4753799 m!5721113))

(declare-fun m!5721557 () Bool)

(assert (=> b!4753799 m!5721557))

(declare-fun m!5721559 () Bool)

(assert (=> b!4753799 m!5721559))

(assert (=> b!4753799 m!5721559))

(declare-fun m!5721561 () Bool)

(assert (=> b!4753801 m!5721561))

(declare-fun m!5721563 () Bool)

(assert (=> bm!333285 m!5721563))

(declare-fun m!5721565 () Bool)

(assert (=> b!4753800 m!5721565))

(declare-fun m!5721567 () Bool)

(assert (=> d!1520057 m!5721567))

(assert (=> d!1520057 m!5721141))

(declare-fun m!5721569 () Bool)

(assert (=> bm!333284 m!5721569))

(declare-fun m!5721571 () Bool)

(assert (=> bm!333286 m!5721571))

(assert (=> b!4753681 d!1520057))

(declare-fun d!1520059 () Bool)

(assert (=> d!1520059 (= (eq!1239 lt!1919555 lt!1919562) (= (content!9543 (toList!6138 lt!1919555)) (content!9543 (toList!6138 lt!1919562))))))

(declare-fun bs!1145883 () Bool)

(assert (= bs!1145883 d!1520059))

(declare-fun m!5721573 () Bool)

(assert (=> bs!1145883 m!5721573))

(assert (=> bs!1145883 m!5721527))

(assert (=> b!4753681 d!1520059))

(declare-fun d!1520061 () Bool)

(declare-fun e!2965528 () Bool)

(assert (=> d!1520061 e!2965528))

(declare-fun res!2016343 () Bool)

(assert (=> d!1520061 (=> (not res!2016343) (not e!2965528))))

(declare-fun lt!1919882 () ListMap!5585)

(assert (=> d!1520061 (= res!2016343 (contains!16536 lt!1919882 (_1!30744 (h!59507 l!13029))))))

(declare-fun lt!1919880 () List!53234)

(assert (=> d!1520061 (= lt!1919882 (ListMap!5586 lt!1919880))))

(declare-fun lt!1919883 () Unit!136940)

(declare-fun lt!1919881 () Unit!136940)

(assert (=> d!1520061 (= lt!1919883 lt!1919881)))

(assert (=> d!1520061 (= (getValueByKey!2093 lt!1919880 (_1!30744 (h!59507 l!13029))) (Some!12542 (_2!30744 (h!59507 l!13029))))))

(assert (=> d!1520061 (= lt!1919881 (lemmaContainsTupThenGetReturnValue!1170 lt!1919880 (_1!30744 (h!59507 l!13029)) (_2!30744 (h!59507 l!13029))))))

(assert (=> d!1520061 (= lt!1919880 (insertNoDuplicatedKeys!678 (toList!6138 lhm!63) (_1!30744 (h!59507 l!13029)) (_2!30744 (h!59507 l!13029))))))

(assert (=> d!1520061 (= (+!2404 lhm!63 (h!59507 l!13029)) lt!1919882)))

(declare-fun b!4753802 () Bool)

(declare-fun res!2016342 () Bool)

(assert (=> b!4753802 (=> (not res!2016342) (not e!2965528))))

(assert (=> b!4753802 (= res!2016342 (= (getValueByKey!2093 (toList!6138 lt!1919882) (_1!30744 (h!59507 l!13029))) (Some!12542 (_2!30744 (h!59507 l!13029)))))))

(declare-fun b!4753803 () Bool)

(assert (=> b!4753803 (= e!2965528 (contains!16537 (toList!6138 lt!1919882) (h!59507 l!13029)))))

(assert (= (and d!1520061 res!2016343) b!4753802))

(assert (= (and b!4753802 res!2016342) b!4753803))

(declare-fun m!5721575 () Bool)

(assert (=> d!1520061 m!5721575))

(declare-fun m!5721577 () Bool)

(assert (=> d!1520061 m!5721577))

(declare-fun m!5721579 () Bool)

(assert (=> d!1520061 m!5721579))

(declare-fun m!5721581 () Bool)

(assert (=> d!1520061 m!5721581))

(declare-fun m!5721583 () Bool)

(assert (=> b!4753802 m!5721583))

(declare-fun m!5721585 () Bool)

(assert (=> b!4753803 m!5721585))

(assert (=> b!4753681 d!1520061))

(declare-fun d!1520063 () Bool)

(assert (=> d!1520063 (eq!1239 (+!2404 (+!2404 lhm!63 (tuple2!54901 (_1!30744 (h!59507 l!13029)) (_2!30744 (h!59507 l!13029)))) (tuple2!54901 key!4572 value!2966)) (+!2404 (+!2404 lhm!63 (tuple2!54901 key!4572 value!2966)) (tuple2!54901 (_1!30744 (h!59507 l!13029)) (_2!30744 (h!59507 l!13029)))))))

(declare-fun lt!1919886 () Unit!136940)

(declare-fun choose!33859 (ListMap!5585 K!14575 V!14821 K!14575 V!14821) Unit!136940)

(assert (=> d!1520063 (= lt!1919886 (choose!33859 lhm!63 (_1!30744 (h!59507 l!13029)) (_2!30744 (h!59507 l!13029)) key!4572 value!2966))))

(assert (=> d!1520063 (not (= (_1!30744 (h!59507 l!13029)) key!4572))))

(assert (=> d!1520063 (= (addCommutativeForDiffKeys!40 lhm!63 (_1!30744 (h!59507 l!13029)) (_2!30744 (h!59507 l!13029)) key!4572 value!2966) lt!1919886)))

(declare-fun bs!1145884 () Bool)

(assert (= bs!1145884 d!1520063))

(declare-fun m!5721587 () Bool)

(assert (=> bs!1145884 m!5721587))

(declare-fun m!5721589 () Bool)

(assert (=> bs!1145884 m!5721589))

(assert (=> bs!1145884 m!5721589))

(declare-fun m!5721591 () Bool)

(assert (=> bs!1145884 m!5721591))

(declare-fun m!5721593 () Bool)

(assert (=> bs!1145884 m!5721593))

(assert (=> bs!1145884 m!5721587))

(declare-fun m!5721595 () Bool)

(assert (=> bs!1145884 m!5721595))

(assert (=> bs!1145884 m!5721591))

(assert (=> bs!1145884 m!5721595))

(declare-fun m!5721597 () Bool)

(assert (=> bs!1145884 m!5721597))

(assert (=> b!4753681 d!1520063))

(declare-fun d!1520065 () Bool)

(assert (=> d!1520065 (eq!1239 (addToMapMapFromBucket!1592 (t!360578 l!13029) lt!1919561) (addToMapMapFromBucket!1592 (t!360578 l!13029) lt!1919560))))

(declare-fun lt!1919889 () Unit!136940)

(declare-fun choose!33860 (ListMap!5585 ListMap!5585 List!53234) Unit!136940)

(assert (=> d!1520065 (= lt!1919889 (choose!33860 lt!1919561 lt!1919560 (t!360578 l!13029)))))

(assert (=> d!1520065 (noDuplicateKeys!2170 (t!360578 l!13029))))

(assert (=> d!1520065 (= (lemmaAddToMapFromBucketPreservesEquivalence!122 lt!1919561 lt!1919560 (t!360578 l!13029)) lt!1919889)))

(declare-fun bs!1145885 () Bool)

(assert (= bs!1145885 d!1520065))

(assert (=> bs!1145885 m!5721111))

(assert (=> bs!1145885 m!5721137))

(assert (=> bs!1145885 m!5721125))

(assert (=> bs!1145885 m!5721137))

(assert (=> bs!1145885 m!5721125))

(declare-fun m!5721599 () Bool)

(assert (=> bs!1145885 m!5721599))

(declare-fun m!5721601 () Bool)

(assert (=> bs!1145885 m!5721601))

(assert (=> b!4753681 d!1520065))

(declare-fun d!1520067 () Bool)

(assert (=> d!1520067 (= (eq!1239 lt!1919560 lt!1919561) (= (content!9543 (toList!6138 lt!1919560)) (content!9543 (toList!6138 lt!1919561))))))

(declare-fun bs!1145886 () Bool)

(assert (= bs!1145886 d!1520067))

(declare-fun m!5721603 () Bool)

(assert (=> bs!1145886 m!5721603))

(declare-fun m!5721605 () Bool)

(assert (=> bs!1145886 m!5721605))

(assert (=> b!4753681 d!1520067))

(declare-fun d!1520069 () Bool)

(declare-fun res!2016344 () Bool)

(declare-fun e!2965529 () Bool)

(assert (=> d!1520069 (=> res!2016344 e!2965529)))

(assert (=> d!1520069 (= res!2016344 (not ((_ is Cons!53110) l!13029)))))

(assert (=> d!1520069 (= (noDuplicateKeys!2170 l!13029) e!2965529)))

(declare-fun b!4753804 () Bool)

(declare-fun e!2965530 () Bool)

(assert (=> b!4753804 (= e!2965529 e!2965530)))

(declare-fun res!2016345 () Bool)

(assert (=> b!4753804 (=> (not res!2016345) (not e!2965530))))

(assert (=> b!4753804 (= res!2016345 (not (containsKey!3576 (t!360578 l!13029) (_1!30744 (h!59507 l!13029)))))))

(declare-fun b!4753805 () Bool)

(assert (=> b!4753805 (= e!2965530 (noDuplicateKeys!2170 (t!360578 l!13029)))))

(assert (= (and d!1520069 (not res!2016344)) b!4753804))

(assert (= (and b!4753804 res!2016345) b!4753805))

(declare-fun m!5721607 () Bool)

(assert (=> b!4753804 m!5721607))

(assert (=> b!4753805 m!5721111))

(assert (=> b!4753683 d!1520069))

(declare-fun d!1520071 () Bool)

(declare-fun res!2016350 () Bool)

(declare-fun e!2965535 () Bool)

(assert (=> d!1520071 (=> res!2016350 e!2965535)))

(assert (=> d!1520071 (= res!2016350 (and ((_ is Cons!53110) l!13029) (= (_1!30744 (h!59507 l!13029)) key!4572)))))

(assert (=> d!1520071 (= (containsKey!3576 l!13029 key!4572) e!2965535)))

(declare-fun b!4753810 () Bool)

(declare-fun e!2965536 () Bool)

(assert (=> b!4753810 (= e!2965535 e!2965536)))

(declare-fun res!2016351 () Bool)

(assert (=> b!4753810 (=> (not res!2016351) (not e!2965536))))

(assert (=> b!4753810 (= res!2016351 ((_ is Cons!53110) l!13029))))

(declare-fun b!4753811 () Bool)

(assert (=> b!4753811 (= e!2965536 (containsKey!3576 (t!360578 l!13029) key!4572))))

(assert (= (and d!1520071 (not res!2016350)) b!4753810))

(assert (= (and b!4753810 res!2016351) b!4753811))

(assert (=> b!4753811 m!5721537))

(assert (=> start!485768 d!1520071))

(declare-fun d!1520073 () Bool)

(assert (=> d!1520073 (= (inv!68445 lhm!63) (invariantList!1606 (toList!6138 lhm!63)))))

(declare-fun bs!1145887 () Bool)

(assert (= bs!1145887 d!1520073))

(declare-fun m!5721609 () Bool)

(assert (=> bs!1145887 m!5721609))

(assert (=> start!485768 d!1520073))

(declare-fun b!4753816 () Bool)

(declare-fun tp!1350376 () Bool)

(declare-fun e!2965539 () Bool)

(assert (=> b!4753816 (= e!2965539 (and tp_is_empty!31973 tp_is_empty!31975 tp!1350376))))

(assert (=> b!4753684 (= tp!1350369 e!2965539)))

(assert (= (and b!4753684 ((_ is Cons!53110) (t!360578 l!13029))) b!4753816))

(declare-fun e!2965540 () Bool)

(declare-fun b!4753817 () Bool)

(declare-fun tp!1350377 () Bool)

(assert (=> b!4753817 (= e!2965540 (and tp_is_empty!31973 tp_is_empty!31975 tp!1350377))))

(assert (=> b!4753685 (= tp!1350368 e!2965540)))

(assert (= (and b!4753685 ((_ is Cons!53110) (toList!6138 lhm!63))) b!4753817))

(check-sat (not b!4753690) (not bm!333286) (not b!4753785) (not d!1520063) (not b!4753799) (not bm!333278) (not bm!333281) (not bm!333279) (not b!4753817) (not b!4753811) (not b!4753803) (not b!4753795) tp_is_empty!31975 (not d!1520053) (not bm!333285) (not b!4753780) (not bm!333276) (not b!4753804) (not b!4753784) (not d!1520007) (not bm!333283) (not b!4753791) (not b!4753778) (not d!1520061) (not b!4753786) (not d!1520057) (not b!4753805) (not b!4753796) tp_is_empty!31973 (not bm!333277) (not b!4753699) (not bm!333282) (not b!4753789) (not bm!333275) (not d!1520073) (not d!1520065) (not b!4753696) (not b!4753783) (not b!4753698) (not d!1520049) (not b!4753802) (not d!1520051) (not b!4753816) (not d!1520005) (not b!4753691) (not d!1520003) (not b!4753790) (not d!1520045) (not bm!333280) (not d!1520059) (not b!4753794) (not b!4753779) (not b!4753697) (not d!1520067) (not b!4753801) (not bm!333284) (not d!1520047) (not b!4753800) (not d!1520055))
(check-sat)

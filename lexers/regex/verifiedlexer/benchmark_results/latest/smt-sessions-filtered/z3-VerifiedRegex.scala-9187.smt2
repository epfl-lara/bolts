; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!488818 () Bool)

(assert start!488818)

(declare-fun b!4772771 () Bool)

(declare-fun res!2024704 () Bool)

(declare-fun e!2979511 () Bool)

(assert (=> b!4772771 (=> (not res!2024704) (not e!2979511))))

(declare-datatypes ((K!15224 0))(
  ( (K!15225 (val!20485 Int)) )
))
(declare-datatypes ((V!15470 0))(
  ( (V!15471 (val!20486 Int)) )
))
(declare-datatypes ((tuple2!55944 0))(
  ( (tuple2!55945 (_1!31266 K!15224) (_2!31266 V!15470)) )
))
(declare-datatypes ((List!53825 0))(
  ( (Nil!53701) (Cons!53701 (h!60113 tuple2!55944) (t!361275 List!53825)) )
))
(declare-datatypes ((tuple2!55946 0))(
  ( (tuple2!55947 (_1!31267 (_ BitVec 64)) (_2!31267 List!53825)) )
))
(declare-datatypes ((List!53826 0))(
  ( (Nil!53702) (Cons!53702 (h!60114 tuple2!55946) (t!361276 List!53826)) )
))
(declare-datatypes ((ListLongMap!4889 0))(
  ( (ListLongMap!4890 (toList!6475 List!53826)) )
))
(declare-fun lm!1309 () ListLongMap!4889)

(declare-datatypes ((Hashable!6694 0))(
  ( (HashableExt!6693 (__x!32717 Int)) )
))
(declare-fun hashF!980 () Hashable!6694)

(declare-fun allKeysSameHashInMap!2099 (ListLongMap!4889 Hashable!6694) Bool)

(assert (=> b!4772771 (= res!2024704 (allKeysSameHashInMap!2099 lm!1309 hashF!980))))

(declare-fun b!4772773 () Bool)

(declare-fun lt!1935680 () (_ BitVec 64))

(declare-datatypes ((Option!12789 0))(
  ( (None!12788) (Some!12788 (v!47927 List!53825)) )
))
(declare-fun getValueByKey!2230 (List!53826 (_ BitVec 64)) Option!12789)

(declare-fun apply!12757 (ListLongMap!4889 (_ BitVec 64)) List!53825)

(assert (=> b!4772773 (= e!2979511 (not (= (getValueByKey!2230 (toList!6475 lm!1309) lt!1935680) (Some!12788 (apply!12757 lm!1309 lt!1935680)))))))

(declare-fun contains!17125 (ListLongMap!4889 (_ BitVec 64)) Bool)

(assert (=> b!4772773 (contains!17125 lm!1309 lt!1935680)))

(declare-fun key!2872 () K!15224)

(declare-fun hash!4667 (Hashable!6694 K!15224) (_ BitVec 64))

(assert (=> b!4772773 (= lt!1935680 (hash!4667 hashF!980 key!2872))))

(declare-datatypes ((Unit!138594 0))(
  ( (Unit!138595) )
))
(declare-fun lt!1935681 () Unit!138594)

(declare-fun lemmaInGenMapThenLongMapContainsHash!906 (ListLongMap!4889 K!15224 Hashable!6694) Unit!138594)

(assert (=> b!4772773 (= lt!1935681 (lemmaInGenMapThenLongMapContainsHash!906 lm!1309 key!2872 hashF!980))))

(declare-fun res!2024703 () Bool)

(assert (=> start!488818 (=> (not res!2024703) (not e!2979511))))

(declare-fun lambda!225697 () Int)

(declare-fun forall!11958 (List!53826 Int) Bool)

(assert (=> start!488818 (= res!2024703 (forall!11958 (toList!6475 lm!1309) lambda!225697))))

(assert (=> start!488818 e!2979511))

(declare-fun e!2979512 () Bool)

(declare-fun inv!69250 (ListLongMap!4889) Bool)

(assert (=> start!488818 (and (inv!69250 lm!1309) e!2979512)))

(assert (=> start!488818 true))

(declare-fun tp_is_empty!32759 () Bool)

(assert (=> start!488818 tp_is_empty!32759))

(declare-fun b!4772772 () Bool)

(declare-fun res!2024702 () Bool)

(assert (=> b!4772772 (=> (not res!2024702) (not e!2979511))))

(declare-datatypes ((ListMap!5955 0))(
  ( (ListMap!5956 (toList!6476 List!53825)) )
))
(declare-fun contains!17126 (ListMap!5955 K!15224) Bool)

(declare-fun extractMap!2229 (List!53826) ListMap!5955)

(assert (=> b!4772772 (= res!2024702 (contains!17126 (extractMap!2229 (toList!6475 lm!1309)) key!2872))))

(declare-fun b!4772774 () Bool)

(declare-fun tp!1356798 () Bool)

(assert (=> b!4772774 (= e!2979512 tp!1356798)))

(assert (= (and start!488818 res!2024703) b!4772771))

(assert (= (and b!4772771 res!2024704) b!4772772))

(assert (= (and b!4772772 res!2024702) b!4772773))

(assert (= start!488818 b!4772774))

(declare-fun m!5745680 () Bool)

(assert (=> b!4772771 m!5745680))

(declare-fun m!5745682 () Bool)

(assert (=> b!4772773 m!5745682))

(declare-fun m!5745684 () Bool)

(assert (=> b!4772773 m!5745684))

(declare-fun m!5745686 () Bool)

(assert (=> b!4772773 m!5745686))

(declare-fun m!5745688 () Bool)

(assert (=> b!4772773 m!5745688))

(declare-fun m!5745690 () Bool)

(assert (=> b!4772773 m!5745690))

(declare-fun m!5745692 () Bool)

(assert (=> start!488818 m!5745692))

(declare-fun m!5745694 () Bool)

(assert (=> start!488818 m!5745694))

(declare-fun m!5745696 () Bool)

(assert (=> b!4772772 m!5745696))

(assert (=> b!4772772 m!5745696))

(declare-fun m!5745698 () Bool)

(assert (=> b!4772772 m!5745698))

(check-sat tp_is_empty!32759 (not b!4772774) (not b!4772772) (not b!4772773) (not b!4772771) (not start!488818))
(check-sat)
(get-model)

(declare-fun bs!1149845 () Bool)

(declare-fun d!1525168 () Bool)

(assert (= bs!1149845 (and d!1525168 start!488818)))

(declare-fun lambda!225703 () Int)

(assert (=> bs!1149845 (= lambda!225703 lambda!225697)))

(assert (=> d!1525168 (contains!17125 lm!1309 (hash!4667 hashF!980 key!2872))))

(declare-fun lt!1935687 () Unit!138594)

(declare-fun choose!34068 (ListLongMap!4889 K!15224 Hashable!6694) Unit!138594)

(assert (=> d!1525168 (= lt!1935687 (choose!34068 lm!1309 key!2872 hashF!980))))

(assert (=> d!1525168 (forall!11958 (toList!6475 lm!1309) lambda!225703)))

(assert (=> d!1525168 (= (lemmaInGenMapThenLongMapContainsHash!906 lm!1309 key!2872 hashF!980) lt!1935687)))

(declare-fun bs!1149846 () Bool)

(assert (= bs!1149846 d!1525168))

(assert (=> bs!1149846 m!5745684))

(assert (=> bs!1149846 m!5745684))

(declare-fun m!5745710 () Bool)

(assert (=> bs!1149846 m!5745710))

(declare-fun m!5745712 () Bool)

(assert (=> bs!1149846 m!5745712))

(declare-fun m!5745714 () Bool)

(assert (=> bs!1149846 m!5745714))

(assert (=> b!4772773 d!1525168))

(declare-fun b!4772805 () Bool)

(declare-fun e!2979529 () Option!12789)

(declare-fun e!2979530 () Option!12789)

(assert (=> b!4772805 (= e!2979529 e!2979530)))

(declare-fun c!813980 () Bool)

(get-info :version)

(assert (=> b!4772805 (= c!813980 (and ((_ is Cons!53702) (toList!6475 lm!1309)) (not (= (_1!31267 (h!60114 (toList!6475 lm!1309))) lt!1935680))))))

(declare-fun d!1525172 () Bool)

(declare-fun c!813979 () Bool)

(assert (=> d!1525172 (= c!813979 (and ((_ is Cons!53702) (toList!6475 lm!1309)) (= (_1!31267 (h!60114 (toList!6475 lm!1309))) lt!1935680)))))

(assert (=> d!1525172 (= (getValueByKey!2230 (toList!6475 lm!1309) lt!1935680) e!2979529)))

(declare-fun b!4772804 () Bool)

(assert (=> b!4772804 (= e!2979529 (Some!12788 (_2!31267 (h!60114 (toList!6475 lm!1309)))))))

(declare-fun b!4772806 () Bool)

(assert (=> b!4772806 (= e!2979530 (getValueByKey!2230 (t!361276 (toList!6475 lm!1309)) lt!1935680))))

(declare-fun b!4772807 () Bool)

(assert (=> b!4772807 (= e!2979530 None!12788)))

(assert (= (and d!1525172 c!813979) b!4772804))

(assert (= (and d!1525172 (not c!813979)) b!4772805))

(assert (= (and b!4772805 c!813980) b!4772806))

(assert (= (and b!4772805 (not c!813980)) b!4772807))

(declare-fun m!5745724 () Bool)

(assert (=> b!4772806 m!5745724))

(assert (=> b!4772773 d!1525172))

(declare-fun d!1525178 () Bool)

(declare-fun e!2979536 () Bool)

(assert (=> d!1525178 e!2979536))

(declare-fun res!2024710 () Bool)

(assert (=> d!1525178 (=> res!2024710 e!2979536)))

(declare-fun lt!1935710 () Bool)

(assert (=> d!1525178 (= res!2024710 (not lt!1935710))))

(declare-fun lt!1935708 () Bool)

(assert (=> d!1525178 (= lt!1935710 lt!1935708)))

(declare-fun lt!1935709 () Unit!138594)

(declare-fun e!2979535 () Unit!138594)

(assert (=> d!1525178 (= lt!1935709 e!2979535)))

(declare-fun c!813983 () Bool)

(assert (=> d!1525178 (= c!813983 lt!1935708)))

(declare-fun containsKey!3704 (List!53826 (_ BitVec 64)) Bool)

(assert (=> d!1525178 (= lt!1935708 (containsKey!3704 (toList!6475 lm!1309) lt!1935680))))

(assert (=> d!1525178 (= (contains!17125 lm!1309 lt!1935680) lt!1935710)))

(declare-fun b!4772814 () Bool)

(declare-fun lt!1935711 () Unit!138594)

(assert (=> b!4772814 (= e!2979535 lt!1935711)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2027 (List!53826 (_ BitVec 64)) Unit!138594)

(assert (=> b!4772814 (= lt!1935711 (lemmaContainsKeyImpliesGetValueByKeyDefined!2027 (toList!6475 lm!1309) lt!1935680))))

(declare-fun isDefined!9936 (Option!12789) Bool)

(assert (=> b!4772814 (isDefined!9936 (getValueByKey!2230 (toList!6475 lm!1309) lt!1935680))))

(declare-fun b!4772815 () Bool)

(declare-fun Unit!138599 () Unit!138594)

(assert (=> b!4772815 (= e!2979535 Unit!138599)))

(declare-fun b!4772816 () Bool)

(assert (=> b!4772816 (= e!2979536 (isDefined!9936 (getValueByKey!2230 (toList!6475 lm!1309) lt!1935680)))))

(assert (= (and d!1525178 c!813983) b!4772814))

(assert (= (and d!1525178 (not c!813983)) b!4772815))

(assert (= (and d!1525178 (not res!2024710)) b!4772816))

(declare-fun m!5745726 () Bool)

(assert (=> d!1525178 m!5745726))

(declare-fun m!5745728 () Bool)

(assert (=> b!4772814 m!5745728))

(assert (=> b!4772814 m!5745690))

(assert (=> b!4772814 m!5745690))

(declare-fun m!5745730 () Bool)

(assert (=> b!4772814 m!5745730))

(assert (=> b!4772816 m!5745690))

(assert (=> b!4772816 m!5745690))

(assert (=> b!4772816 m!5745730))

(assert (=> b!4772773 d!1525178))

(declare-fun d!1525180 () Bool)

(declare-fun hash!4669 (Hashable!6694 K!15224) (_ BitVec 64))

(assert (=> d!1525180 (= (hash!4667 hashF!980 key!2872) (hash!4669 hashF!980 key!2872))))

(declare-fun bs!1149848 () Bool)

(assert (= bs!1149848 d!1525180))

(declare-fun m!5745732 () Bool)

(assert (=> bs!1149848 m!5745732))

(assert (=> b!4772773 d!1525180))

(declare-fun d!1525182 () Bool)

(declare-fun get!18176 (Option!12789) List!53825)

(assert (=> d!1525182 (= (apply!12757 lm!1309 lt!1935680) (get!18176 (getValueByKey!2230 (toList!6475 lm!1309) lt!1935680)))))

(declare-fun bs!1149849 () Bool)

(assert (= bs!1149849 d!1525182))

(assert (=> bs!1149849 m!5745690))

(assert (=> bs!1149849 m!5745690))

(declare-fun m!5745734 () Bool)

(assert (=> bs!1149849 m!5745734))

(assert (=> b!4772773 d!1525182))

(declare-fun b!4772862 () Bool)

(assert (=> b!4772862 false))

(declare-fun lt!1935756 () Unit!138594)

(declare-fun lt!1935755 () Unit!138594)

(assert (=> b!4772862 (= lt!1935756 lt!1935755)))

(declare-fun containsKey!3705 (List!53825 K!15224) Bool)

(assert (=> b!4772862 (containsKey!3705 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))) key!2872)))

(declare-fun lemmaInGetKeysListThenContainsKey!1015 (List!53825 K!15224) Unit!138594)

(assert (=> b!4772862 (= lt!1935755 (lemmaInGetKeysListThenContainsKey!1015 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))) key!2872))))

(declare-fun e!2979571 () Unit!138594)

(declare-fun Unit!138600 () Unit!138594)

(assert (=> b!4772862 (= e!2979571 Unit!138600)))

(declare-fun b!4772864 () Bool)

(declare-fun e!2979572 () Bool)

(declare-datatypes ((List!53828 0))(
  ( (Nil!53704) (Cons!53704 (h!60116 K!15224) (t!361278 List!53828)) )
))
(declare-fun contains!17128 (List!53828 K!15224) Bool)

(declare-fun keys!19504 (ListMap!5955) List!53828)

(assert (=> b!4772864 (= e!2979572 (not (contains!17128 (keys!19504 (extractMap!2229 (toList!6475 lm!1309))) key!2872)))))

(declare-fun b!4772865 () Bool)

(declare-fun e!2979570 () List!53828)

(declare-fun getKeysList!1016 (List!53825) List!53828)

(assert (=> b!4772865 (= e!2979570 (getKeysList!1016 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))))

(declare-fun b!4772866 () Bool)

(assert (=> b!4772866 (= e!2979570 (keys!19504 (extractMap!2229 (toList!6475 lm!1309))))))

(declare-fun b!4772867 () Bool)

(declare-fun e!2979568 () Bool)

(assert (=> b!4772867 (= e!2979568 (contains!17128 (keys!19504 (extractMap!2229 (toList!6475 lm!1309))) key!2872))))

(declare-fun b!4772868 () Bool)

(declare-fun e!2979569 () Unit!138594)

(assert (=> b!4772868 (= e!2979569 e!2979571)))

(declare-fun c!814001 () Bool)

(declare-fun call!334506 () Bool)

(assert (=> b!4772868 (= c!814001 call!334506)))

(declare-fun bm!334501 () Bool)

(assert (=> bm!334501 (= call!334506 (contains!17128 e!2979570 key!2872))))

(declare-fun c!813999 () Bool)

(declare-fun c!814000 () Bool)

(assert (=> bm!334501 (= c!813999 c!814000)))

(declare-fun b!4772863 () Bool)

(declare-fun Unit!138601 () Unit!138594)

(assert (=> b!4772863 (= e!2979571 Unit!138601)))

(declare-fun d!1525184 () Bool)

(declare-fun e!2979567 () Bool)

(assert (=> d!1525184 e!2979567))

(declare-fun res!2024726 () Bool)

(assert (=> d!1525184 (=> res!2024726 e!2979567)))

(assert (=> d!1525184 (= res!2024726 e!2979572)))

(declare-fun res!2024727 () Bool)

(assert (=> d!1525184 (=> (not res!2024727) (not e!2979572))))

(declare-fun lt!1935757 () Bool)

(assert (=> d!1525184 (= res!2024727 (not lt!1935757))))

(declare-fun lt!1935758 () Bool)

(assert (=> d!1525184 (= lt!1935757 lt!1935758)))

(declare-fun lt!1935752 () Unit!138594)

(assert (=> d!1525184 (= lt!1935752 e!2979569)))

(assert (=> d!1525184 (= c!814000 lt!1935758)))

(assert (=> d!1525184 (= lt!1935758 (containsKey!3705 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))) key!2872))))

(assert (=> d!1525184 (= (contains!17126 (extractMap!2229 (toList!6475 lm!1309)) key!2872) lt!1935757)))

(declare-fun b!4772869 () Bool)

(declare-fun lt!1935754 () Unit!138594)

(assert (=> b!4772869 (= e!2979569 lt!1935754)))

(declare-fun lt!1935759 () Unit!138594)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2028 (List!53825 K!15224) Unit!138594)

(assert (=> b!4772869 (= lt!1935759 (lemmaContainsKeyImpliesGetValueByKeyDefined!2028 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))) key!2872))))

(declare-datatypes ((Option!12791 0))(
  ( (None!12790) (Some!12790 (v!47929 V!15470)) )
))
(declare-fun isDefined!9937 (Option!12791) Bool)

(declare-fun getValueByKey!2232 (List!53825 K!15224) Option!12791)

(assert (=> b!4772869 (isDefined!9937 (getValueByKey!2232 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))) key!2872))))

(declare-fun lt!1935753 () Unit!138594)

(assert (=> b!4772869 (= lt!1935753 lt!1935759)))

(declare-fun lemmaInListThenGetKeysListContains!1011 (List!53825 K!15224) Unit!138594)

(assert (=> b!4772869 (= lt!1935754 (lemmaInListThenGetKeysListContains!1011 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))) key!2872))))

(assert (=> b!4772869 call!334506))

(declare-fun b!4772870 () Bool)

(assert (=> b!4772870 (= e!2979567 e!2979568)))

(declare-fun res!2024728 () Bool)

(assert (=> b!4772870 (=> (not res!2024728) (not e!2979568))))

(assert (=> b!4772870 (= res!2024728 (isDefined!9937 (getValueByKey!2232 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))) key!2872)))))

(assert (= (and d!1525184 c!814000) b!4772869))

(assert (= (and d!1525184 (not c!814000)) b!4772868))

(assert (= (and b!4772868 c!814001) b!4772862))

(assert (= (and b!4772868 (not c!814001)) b!4772863))

(assert (= (or b!4772869 b!4772868) bm!334501))

(assert (= (and bm!334501 c!813999) b!4772865))

(assert (= (and bm!334501 (not c!813999)) b!4772866))

(assert (= (and d!1525184 res!2024727) b!4772864))

(assert (= (and d!1525184 (not res!2024726)) b!4772870))

(assert (= (and b!4772870 res!2024728) b!4772867))

(declare-fun m!5745756 () Bool)

(assert (=> b!4772869 m!5745756))

(declare-fun m!5745758 () Bool)

(assert (=> b!4772869 m!5745758))

(assert (=> b!4772869 m!5745758))

(declare-fun m!5745760 () Bool)

(assert (=> b!4772869 m!5745760))

(declare-fun m!5745762 () Bool)

(assert (=> b!4772869 m!5745762))

(assert (=> b!4772867 m!5745696))

(declare-fun m!5745764 () Bool)

(assert (=> b!4772867 m!5745764))

(assert (=> b!4772867 m!5745764))

(declare-fun m!5745766 () Bool)

(assert (=> b!4772867 m!5745766))

(assert (=> b!4772870 m!5745758))

(assert (=> b!4772870 m!5745758))

(assert (=> b!4772870 m!5745760))

(assert (=> b!4772864 m!5745696))

(assert (=> b!4772864 m!5745764))

(assert (=> b!4772864 m!5745764))

(assert (=> b!4772864 m!5745766))

(assert (=> b!4772866 m!5745696))

(assert (=> b!4772866 m!5745764))

(declare-fun m!5745768 () Bool)

(assert (=> b!4772862 m!5745768))

(declare-fun m!5745770 () Bool)

(assert (=> b!4772862 m!5745770))

(declare-fun m!5745772 () Bool)

(assert (=> bm!334501 m!5745772))

(assert (=> d!1525184 m!5745768))

(declare-fun m!5745774 () Bool)

(assert (=> b!4772865 m!5745774))

(assert (=> b!4772772 d!1525184))

(declare-fun bs!1149858 () Bool)

(declare-fun d!1525188 () Bool)

(assert (= bs!1149858 (and d!1525188 start!488818)))

(declare-fun lambda!225712 () Int)

(assert (=> bs!1149858 (= lambda!225712 lambda!225697)))

(declare-fun bs!1149859 () Bool)

(assert (= bs!1149859 (and d!1525188 d!1525168)))

(assert (=> bs!1149859 (= lambda!225712 lambda!225703)))

(declare-fun lt!1935765 () ListMap!5955)

(declare-fun invariantList!1674 (List!53825) Bool)

(assert (=> d!1525188 (invariantList!1674 (toList!6476 lt!1935765))))

(declare-fun e!2979587 () ListMap!5955)

(assert (=> d!1525188 (= lt!1935765 e!2979587)))

(declare-fun c!814007 () Bool)

(assert (=> d!1525188 (= c!814007 ((_ is Cons!53702) (toList!6475 lm!1309)))))

(assert (=> d!1525188 (forall!11958 (toList!6475 lm!1309) lambda!225712)))

(assert (=> d!1525188 (= (extractMap!2229 (toList!6475 lm!1309)) lt!1935765)))

(declare-fun b!4772894 () Bool)

(declare-fun addToMapMapFromBucket!1639 (List!53825 ListMap!5955) ListMap!5955)

(assert (=> b!4772894 (= e!2979587 (addToMapMapFromBucket!1639 (_2!31267 (h!60114 (toList!6475 lm!1309))) (extractMap!2229 (t!361276 (toList!6475 lm!1309)))))))

(declare-fun b!4772895 () Bool)

(assert (=> b!4772895 (= e!2979587 (ListMap!5956 Nil!53701))))

(assert (= (and d!1525188 c!814007) b!4772894))

(assert (= (and d!1525188 (not c!814007)) b!4772895))

(declare-fun m!5745794 () Bool)

(assert (=> d!1525188 m!5745794))

(declare-fun m!5745796 () Bool)

(assert (=> d!1525188 m!5745796))

(declare-fun m!5745798 () Bool)

(assert (=> b!4772894 m!5745798))

(assert (=> b!4772894 m!5745798))

(declare-fun m!5745800 () Bool)

(assert (=> b!4772894 m!5745800))

(assert (=> b!4772772 d!1525188))

(declare-fun d!1525198 () Bool)

(declare-fun res!2024739 () Bool)

(declare-fun e!2979592 () Bool)

(assert (=> d!1525198 (=> res!2024739 e!2979592)))

(assert (=> d!1525198 (= res!2024739 ((_ is Nil!53702) (toList!6475 lm!1309)))))

(assert (=> d!1525198 (= (forall!11958 (toList!6475 lm!1309) lambda!225697) e!2979592)))

(declare-fun b!4772900 () Bool)

(declare-fun e!2979593 () Bool)

(assert (=> b!4772900 (= e!2979592 e!2979593)))

(declare-fun res!2024740 () Bool)

(assert (=> b!4772900 (=> (not res!2024740) (not e!2979593))))

(declare-fun dynLambda!21978 (Int tuple2!55946) Bool)

(assert (=> b!4772900 (= res!2024740 (dynLambda!21978 lambda!225697 (h!60114 (toList!6475 lm!1309))))))

(declare-fun b!4772901 () Bool)

(assert (=> b!4772901 (= e!2979593 (forall!11958 (t!361276 (toList!6475 lm!1309)) lambda!225697))))

(assert (= (and d!1525198 (not res!2024739)) b!4772900))

(assert (= (and b!4772900 res!2024740) b!4772901))

(declare-fun b_lambda!184687 () Bool)

(assert (=> (not b_lambda!184687) (not b!4772900)))

(declare-fun m!5745802 () Bool)

(assert (=> b!4772900 m!5745802))

(declare-fun m!5745804 () Bool)

(assert (=> b!4772901 m!5745804))

(assert (=> start!488818 d!1525198))

(declare-fun d!1525200 () Bool)

(declare-fun isStrictlySorted!825 (List!53826) Bool)

(assert (=> d!1525200 (= (inv!69250 lm!1309) (isStrictlySorted!825 (toList!6475 lm!1309)))))

(declare-fun bs!1149860 () Bool)

(assert (= bs!1149860 d!1525200))

(declare-fun m!5745806 () Bool)

(assert (=> bs!1149860 m!5745806))

(assert (=> start!488818 d!1525200))

(declare-fun bs!1149861 () Bool)

(declare-fun d!1525202 () Bool)

(assert (= bs!1149861 (and d!1525202 start!488818)))

(declare-fun lambda!225715 () Int)

(assert (=> bs!1149861 (not (= lambda!225715 lambda!225697))))

(declare-fun bs!1149862 () Bool)

(assert (= bs!1149862 (and d!1525202 d!1525168)))

(assert (=> bs!1149862 (not (= lambda!225715 lambda!225703))))

(declare-fun bs!1149863 () Bool)

(assert (= bs!1149863 (and d!1525202 d!1525188)))

(assert (=> bs!1149863 (not (= lambda!225715 lambda!225712))))

(assert (=> d!1525202 true))

(assert (=> d!1525202 (= (allKeysSameHashInMap!2099 lm!1309 hashF!980) (forall!11958 (toList!6475 lm!1309) lambda!225715))))

(declare-fun bs!1149864 () Bool)

(assert (= bs!1149864 d!1525202))

(declare-fun m!5745808 () Bool)

(assert (=> bs!1149864 m!5745808))

(assert (=> b!4772771 d!1525202))

(declare-fun b!4772908 () Bool)

(declare-fun e!2979596 () Bool)

(declare-fun tp!1356809 () Bool)

(declare-fun tp!1356810 () Bool)

(assert (=> b!4772908 (= e!2979596 (and tp!1356809 tp!1356810))))

(assert (=> b!4772774 (= tp!1356798 e!2979596)))

(assert (= (and b!4772774 ((_ is Cons!53702) (toList!6475 lm!1309))) b!4772908))

(declare-fun b_lambda!184689 () Bool)

(assert (= b_lambda!184687 (or start!488818 b_lambda!184689)))

(declare-fun bs!1149865 () Bool)

(declare-fun d!1525204 () Bool)

(assert (= bs!1149865 (and d!1525204 start!488818)))

(declare-fun noDuplicateKeys!2270 (List!53825) Bool)

(assert (=> bs!1149865 (= (dynLambda!21978 lambda!225697 (h!60114 (toList!6475 lm!1309))) (noDuplicateKeys!2270 (_2!31267 (h!60114 (toList!6475 lm!1309)))))))

(declare-fun m!5745810 () Bool)

(assert (=> bs!1149865 m!5745810))

(assert (=> b!4772900 d!1525204))

(check-sat tp_is_empty!32759 (not b!4772816) (not b!4772870) (not b!4772901) (not b!4772866) (not d!1525184) (not d!1525178) (not b_lambda!184689) (not d!1525182) (not b!4772908) (not b!4772862) (not bm!334501) (not b!4772806) (not d!1525200) (not d!1525180) (not b!4772814) (not b!4772867) (not d!1525168) (not b!4772894) (not d!1525188) (not bs!1149865) (not b!4772864) (not d!1525202) (not b!4772865) (not b!4772869))
(check-sat)
(get-model)

(declare-fun d!1525206 () Bool)

(declare-fun e!2979598 () Bool)

(assert (=> d!1525206 e!2979598))

(declare-fun res!2024741 () Bool)

(assert (=> d!1525206 (=> res!2024741 e!2979598)))

(declare-fun lt!1935768 () Bool)

(assert (=> d!1525206 (= res!2024741 (not lt!1935768))))

(declare-fun lt!1935766 () Bool)

(assert (=> d!1525206 (= lt!1935768 lt!1935766)))

(declare-fun lt!1935767 () Unit!138594)

(declare-fun e!2979597 () Unit!138594)

(assert (=> d!1525206 (= lt!1935767 e!2979597)))

(declare-fun c!814008 () Bool)

(assert (=> d!1525206 (= c!814008 lt!1935766)))

(assert (=> d!1525206 (= lt!1935766 (containsKey!3704 (toList!6475 lm!1309) (hash!4667 hashF!980 key!2872)))))

(assert (=> d!1525206 (= (contains!17125 lm!1309 (hash!4667 hashF!980 key!2872)) lt!1935768)))

(declare-fun b!4772909 () Bool)

(declare-fun lt!1935769 () Unit!138594)

(assert (=> b!4772909 (= e!2979597 lt!1935769)))

(assert (=> b!4772909 (= lt!1935769 (lemmaContainsKeyImpliesGetValueByKeyDefined!2027 (toList!6475 lm!1309) (hash!4667 hashF!980 key!2872)))))

(assert (=> b!4772909 (isDefined!9936 (getValueByKey!2230 (toList!6475 lm!1309) (hash!4667 hashF!980 key!2872)))))

(declare-fun b!4772910 () Bool)

(declare-fun Unit!138602 () Unit!138594)

(assert (=> b!4772910 (= e!2979597 Unit!138602)))

(declare-fun b!4772911 () Bool)

(assert (=> b!4772911 (= e!2979598 (isDefined!9936 (getValueByKey!2230 (toList!6475 lm!1309) (hash!4667 hashF!980 key!2872))))))

(assert (= (and d!1525206 c!814008) b!4772909))

(assert (= (and d!1525206 (not c!814008)) b!4772910))

(assert (= (and d!1525206 (not res!2024741)) b!4772911))

(assert (=> d!1525206 m!5745684))

(declare-fun m!5745812 () Bool)

(assert (=> d!1525206 m!5745812))

(assert (=> b!4772909 m!5745684))

(declare-fun m!5745814 () Bool)

(assert (=> b!4772909 m!5745814))

(assert (=> b!4772909 m!5745684))

(declare-fun m!5745816 () Bool)

(assert (=> b!4772909 m!5745816))

(assert (=> b!4772909 m!5745816))

(declare-fun m!5745818 () Bool)

(assert (=> b!4772909 m!5745818))

(assert (=> b!4772911 m!5745684))

(assert (=> b!4772911 m!5745816))

(assert (=> b!4772911 m!5745816))

(assert (=> b!4772911 m!5745818))

(assert (=> d!1525168 d!1525206))

(assert (=> d!1525168 d!1525180))

(declare-fun d!1525208 () Bool)

(assert (=> d!1525208 (contains!17125 lm!1309 (hash!4667 hashF!980 key!2872))))

(assert (=> d!1525208 true))

(declare-fun _$27!1566 () Unit!138594)

(assert (=> d!1525208 (= (choose!34068 lm!1309 key!2872 hashF!980) _$27!1566)))

(declare-fun bs!1149866 () Bool)

(assert (= bs!1149866 d!1525208))

(assert (=> bs!1149866 m!5745684))

(assert (=> bs!1149866 m!5745684))

(assert (=> bs!1149866 m!5745710))

(assert (=> d!1525168 d!1525208))

(declare-fun d!1525210 () Bool)

(declare-fun res!2024742 () Bool)

(declare-fun e!2979599 () Bool)

(assert (=> d!1525210 (=> res!2024742 e!2979599)))

(assert (=> d!1525210 (= res!2024742 ((_ is Nil!53702) (toList!6475 lm!1309)))))

(assert (=> d!1525210 (= (forall!11958 (toList!6475 lm!1309) lambda!225703) e!2979599)))

(declare-fun b!4772912 () Bool)

(declare-fun e!2979600 () Bool)

(assert (=> b!4772912 (= e!2979599 e!2979600)))

(declare-fun res!2024743 () Bool)

(assert (=> b!4772912 (=> (not res!2024743) (not e!2979600))))

(assert (=> b!4772912 (= res!2024743 (dynLambda!21978 lambda!225703 (h!60114 (toList!6475 lm!1309))))))

(declare-fun b!4772913 () Bool)

(assert (=> b!4772913 (= e!2979600 (forall!11958 (t!361276 (toList!6475 lm!1309)) lambda!225703))))

(assert (= (and d!1525210 (not res!2024742)) b!4772912))

(assert (= (and b!4772912 res!2024743) b!4772913))

(declare-fun b_lambda!184691 () Bool)

(assert (=> (not b_lambda!184691) (not b!4772912)))

(declare-fun m!5745820 () Bool)

(assert (=> b!4772912 m!5745820))

(declare-fun m!5745822 () Bool)

(assert (=> b!4772913 m!5745822))

(assert (=> d!1525168 d!1525210))

(declare-fun b!4772938 () Bool)

(assert (=> b!4772938 true))

(declare-fun d!1525214 () Bool)

(declare-fun e!2979612 () Bool)

(assert (=> d!1525214 e!2979612))

(declare-fun res!2024766 () Bool)

(assert (=> d!1525214 (=> (not res!2024766) (not e!2979612))))

(declare-fun lt!1935778 () List!53828)

(declare-fun noDuplicate!887 (List!53828) Bool)

(assert (=> d!1525214 (= res!2024766 (noDuplicate!887 lt!1935778))))

(assert (=> d!1525214 (= lt!1935778 (getKeysList!1016 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))))

(assert (=> d!1525214 (= (keys!19504 (extractMap!2229 (toList!6475 lm!1309))) lt!1935778)))

(declare-fun b!4772937 () Bool)

(declare-fun res!2024767 () Bool)

(assert (=> b!4772937 (=> (not res!2024767) (not e!2979612))))

(declare-fun length!630 (List!53828) Int)

(declare-fun length!631 (List!53825) Int)

(assert (=> b!4772937 (= res!2024767 (= (length!630 lt!1935778) (length!631 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))))))

(declare-fun res!2024765 () Bool)

(assert (=> b!4772938 (=> (not res!2024765) (not e!2979612))))

(declare-fun lambda!225726 () Int)

(declare-fun forall!11960 (List!53828 Int) Bool)

(assert (=> b!4772938 (= res!2024765 (forall!11960 lt!1935778 lambda!225726))))

(declare-fun lambda!225727 () Int)

(declare-fun b!4772939 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9606 (List!53828) (InoxSet K!15224))

(declare-fun map!12095 (List!53825 Int) List!53828)

(assert (=> b!4772939 (= e!2979612 (= (content!9606 lt!1935778) (content!9606 (map!12095 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))) lambda!225727))))))

(assert (= (and d!1525214 res!2024766) b!4772937))

(assert (= (and b!4772937 res!2024767) b!4772938))

(assert (= (and b!4772938 res!2024765) b!4772939))

(declare-fun m!5745850 () Bool)

(assert (=> d!1525214 m!5745850))

(assert (=> d!1525214 m!5745774))

(declare-fun m!5745852 () Bool)

(assert (=> b!4772937 m!5745852))

(declare-fun m!5745854 () Bool)

(assert (=> b!4772937 m!5745854))

(declare-fun m!5745856 () Bool)

(assert (=> b!4772938 m!5745856))

(declare-fun m!5745858 () Bool)

(assert (=> b!4772939 m!5745858))

(declare-fun m!5745860 () Bool)

(assert (=> b!4772939 m!5745860))

(assert (=> b!4772939 m!5745860))

(declare-fun m!5745862 () Bool)

(assert (=> b!4772939 m!5745862))

(assert (=> b!4772866 d!1525214))

(declare-fun b!4772943 () Bool)

(declare-fun e!2979613 () Option!12789)

(declare-fun e!2979614 () Option!12789)

(assert (=> b!4772943 (= e!2979613 e!2979614)))

(declare-fun c!814010 () Bool)

(assert (=> b!4772943 (= c!814010 (and ((_ is Cons!53702) (t!361276 (toList!6475 lm!1309))) (not (= (_1!31267 (h!60114 (t!361276 (toList!6475 lm!1309)))) lt!1935680))))))

(declare-fun d!1525224 () Bool)

(declare-fun c!814009 () Bool)

(assert (=> d!1525224 (= c!814009 (and ((_ is Cons!53702) (t!361276 (toList!6475 lm!1309))) (= (_1!31267 (h!60114 (t!361276 (toList!6475 lm!1309)))) lt!1935680)))))

(assert (=> d!1525224 (= (getValueByKey!2230 (t!361276 (toList!6475 lm!1309)) lt!1935680) e!2979613)))

(declare-fun b!4772942 () Bool)

(assert (=> b!4772942 (= e!2979613 (Some!12788 (_2!31267 (h!60114 (t!361276 (toList!6475 lm!1309))))))))

(declare-fun b!4772944 () Bool)

(assert (=> b!4772944 (= e!2979614 (getValueByKey!2230 (t!361276 (t!361276 (toList!6475 lm!1309))) lt!1935680))))

(declare-fun b!4772945 () Bool)

(assert (=> b!4772945 (= e!2979614 None!12788)))

(assert (= (and d!1525224 c!814009) b!4772942))

(assert (= (and d!1525224 (not c!814009)) b!4772943))

(assert (= (and b!4772943 c!814010) b!4772944))

(assert (= (and b!4772943 (not c!814010)) b!4772945))

(declare-fun m!5745864 () Bool)

(assert (=> b!4772944 m!5745864))

(assert (=> b!4772806 d!1525224))

(declare-fun d!1525226 () Bool)

(declare-fun lt!1935784 () Bool)

(assert (=> d!1525226 (= lt!1935784 (select (content!9606 (keys!19504 (extractMap!2229 (toList!6475 lm!1309)))) key!2872))))

(declare-fun e!2979625 () Bool)

(assert (=> d!1525226 (= lt!1935784 e!2979625)))

(declare-fun res!2024772 () Bool)

(assert (=> d!1525226 (=> (not res!2024772) (not e!2979625))))

(assert (=> d!1525226 (= res!2024772 ((_ is Cons!53704) (keys!19504 (extractMap!2229 (toList!6475 lm!1309)))))))

(assert (=> d!1525226 (= (contains!17128 (keys!19504 (extractMap!2229 (toList!6475 lm!1309))) key!2872) lt!1935784)))

(declare-fun b!4772962 () Bool)

(declare-fun e!2979626 () Bool)

(assert (=> b!4772962 (= e!2979625 e!2979626)))

(declare-fun res!2024773 () Bool)

(assert (=> b!4772962 (=> res!2024773 e!2979626)))

(assert (=> b!4772962 (= res!2024773 (= (h!60116 (keys!19504 (extractMap!2229 (toList!6475 lm!1309)))) key!2872))))

(declare-fun b!4772963 () Bool)

(assert (=> b!4772963 (= e!2979626 (contains!17128 (t!361278 (keys!19504 (extractMap!2229 (toList!6475 lm!1309)))) key!2872))))

(assert (= (and d!1525226 res!2024772) b!4772962))

(assert (= (and b!4772962 (not res!2024773)) b!4772963))

(assert (=> d!1525226 m!5745764))

(declare-fun m!5745868 () Bool)

(assert (=> d!1525226 m!5745868))

(declare-fun m!5745870 () Bool)

(assert (=> d!1525226 m!5745870))

(declare-fun m!5745872 () Bool)

(assert (=> b!4772963 m!5745872))

(assert (=> b!4772864 d!1525226))

(assert (=> b!4772864 d!1525214))

(declare-fun bs!1149872 () Bool)

(declare-fun b!4772991 () Bool)

(assert (= bs!1149872 (and b!4772991 b!4772938)))

(declare-fun lambda!225736 () Int)

(assert (=> bs!1149872 (= (= (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))) (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))) (= lambda!225736 lambda!225726))))

(assert (=> b!4772991 true))

(declare-fun bs!1149873 () Bool)

(declare-fun b!4772993 () Bool)

(assert (= bs!1149873 (and b!4772993 b!4772938)))

(declare-fun lambda!225737 () Int)

(assert (=> bs!1149873 (= (= (Cons!53701 (h!60113 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))) (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))) (= lambda!225737 lambda!225726))))

(declare-fun bs!1149874 () Bool)

(assert (= bs!1149874 (and b!4772993 b!4772991)))

(assert (=> bs!1149874 (= (= (Cons!53701 (h!60113 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))) (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) (= lambda!225737 lambda!225736))))

(assert (=> b!4772993 true))

(declare-fun bs!1149875 () Bool)

(declare-fun b!4772998 () Bool)

(assert (= bs!1149875 (and b!4772998 b!4772938)))

(declare-fun lambda!225738 () Int)

(assert (=> bs!1149875 (= lambda!225738 lambda!225726)))

(declare-fun bs!1149876 () Bool)

(assert (= bs!1149876 (and b!4772998 b!4772991)))

(assert (=> bs!1149876 (= (= (toList!6476 (extractMap!2229 (toList!6475 lm!1309))) (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) (= lambda!225738 lambda!225736))))

(declare-fun bs!1149877 () Bool)

(assert (= bs!1149877 (and b!4772998 b!4772993)))

(assert (=> bs!1149877 (= (= (toList!6476 (extractMap!2229 (toList!6475 lm!1309))) (Cons!53701 (h!60113 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))) (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))) (= lambda!225738 lambda!225737))))

(assert (=> b!4772998 true))

(declare-fun bs!1149878 () Bool)

(declare-fun b!4772996 () Bool)

(assert (= bs!1149878 (and b!4772996 b!4772939)))

(declare-fun lambda!225739 () Int)

(assert (=> bs!1149878 (= lambda!225739 lambda!225727)))

(assert (=> b!4772991 false))

(declare-fun lt!1935808 () Unit!138594)

(declare-fun forallContained!3932 (List!53828 Int K!15224) Unit!138594)

(assert (=> b!4772991 (= lt!1935808 (forallContained!3932 (getKeysList!1016 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) lambda!225736 (_1!31266 (h!60113 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))))))

(declare-fun e!2979643 () Unit!138594)

(declare-fun Unit!138604 () Unit!138594)

(assert (=> b!4772991 (= e!2979643 Unit!138604)))

(declare-fun b!4772992 () Bool)

(declare-fun e!2979644 () List!53828)

(assert (=> b!4772992 (= e!2979644 Nil!53704)))

(assert (=> b!4772993 (= e!2979644 (Cons!53704 (_1!31266 (h!60113 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) (getKeysList!1016 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))))))

(declare-fun c!814024 () Bool)

(assert (=> b!4772993 (= c!814024 (containsKey!3705 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))) (_1!31266 (h!60113 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))))))

(declare-fun lt!1935813 () Unit!138594)

(declare-fun e!2979646 () Unit!138594)

(assert (=> b!4772993 (= lt!1935813 e!2979646)))

(declare-fun c!814025 () Bool)

(assert (=> b!4772993 (= c!814025 (contains!17128 (getKeysList!1016 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) (_1!31266 (h!60113 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))))))

(declare-fun lt!1935807 () Unit!138594)

(assert (=> b!4772993 (= lt!1935807 e!2979643)))

(declare-fun lt!1935810 () List!53828)

(assert (=> b!4772993 (= lt!1935810 (getKeysList!1016 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))))))

(declare-fun lt!1935812 () Unit!138594)

(declare-fun lemmaForallContainsAddHeadPreserves!304 (List!53825 List!53828 tuple2!55944) Unit!138594)

(assert (=> b!4772993 (= lt!1935812 (lemmaForallContainsAddHeadPreserves!304 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))) lt!1935810 (h!60113 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))))))

(assert (=> b!4772993 (forall!11960 lt!1935810 lambda!225737)))

(declare-fun lt!1935811 () Unit!138594)

(assert (=> b!4772993 (= lt!1935811 lt!1935812)))

(declare-fun b!4772994 () Bool)

(declare-fun Unit!138605 () Unit!138594)

(assert (=> b!4772994 (= e!2979643 Unit!138605)))

(declare-fun b!4772995 () Bool)

(declare-fun res!2024789 () Bool)

(declare-fun e!2979645 () Bool)

(assert (=> b!4772995 (=> (not res!2024789) (not e!2979645))))

(declare-fun lt!1935809 () List!53828)

(assert (=> b!4772995 (= res!2024789 (= (length!630 lt!1935809) (length!631 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))))))

(assert (=> b!4772996 (= e!2979645 (= (content!9606 lt!1935809) (content!9606 (map!12095 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))) lambda!225739))))))

(declare-fun b!4772997 () Bool)

(declare-fun Unit!138606 () Unit!138594)

(assert (=> b!4772997 (= e!2979646 Unit!138606)))

(declare-fun d!1525230 () Bool)

(assert (=> d!1525230 e!2979645))

(declare-fun res!2024788 () Bool)

(assert (=> d!1525230 (=> (not res!2024788) (not e!2979645))))

(assert (=> d!1525230 (= res!2024788 (noDuplicate!887 lt!1935809))))

(assert (=> d!1525230 (= lt!1935809 e!2979644)))

(declare-fun c!814026 () Bool)

(assert (=> d!1525230 (= c!814026 ((_ is Cons!53701) (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))))

(assert (=> d!1525230 (invariantList!1674 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))))

(assert (=> d!1525230 (= (getKeysList!1016 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))) lt!1935809)))

(declare-fun res!2024787 () Bool)

(assert (=> b!4772998 (=> (not res!2024787) (not e!2979645))))

(assert (=> b!4772998 (= res!2024787 (forall!11960 lt!1935809 lambda!225738))))

(declare-fun b!4772999 () Bool)

(assert (=> b!4772999 false))

(declare-fun Unit!138607 () Unit!138594)

(assert (=> b!4772999 (= e!2979646 Unit!138607)))

(assert (= (and d!1525230 c!814026) b!4772993))

(assert (= (and d!1525230 (not c!814026)) b!4772992))

(assert (= (and b!4772993 c!814024) b!4772999))

(assert (= (and b!4772993 (not c!814024)) b!4772997))

(assert (= (and b!4772993 c!814025) b!4772991))

(assert (= (and b!4772993 (not c!814025)) b!4772994))

(assert (= (and d!1525230 res!2024788) b!4772995))

(assert (= (and b!4772995 res!2024789) b!4772998))

(assert (= (and b!4772998 res!2024787) b!4772996))

(declare-fun m!5745902 () Bool)

(assert (=> b!4772996 m!5745902))

(declare-fun m!5745904 () Bool)

(assert (=> b!4772996 m!5745904))

(assert (=> b!4772996 m!5745904))

(declare-fun m!5745906 () Bool)

(assert (=> b!4772996 m!5745906))

(declare-fun m!5745908 () Bool)

(assert (=> b!4772998 m!5745908))

(declare-fun m!5745910 () Bool)

(assert (=> b!4772991 m!5745910))

(assert (=> b!4772991 m!5745910))

(declare-fun m!5745912 () Bool)

(assert (=> b!4772991 m!5745912))

(declare-fun m!5745914 () Bool)

(assert (=> d!1525230 m!5745914))

(declare-fun m!5745916 () Bool)

(assert (=> d!1525230 m!5745916))

(assert (=> b!4772993 m!5745910))

(declare-fun m!5745918 () Bool)

(assert (=> b!4772993 m!5745918))

(declare-fun m!5745920 () Bool)

(assert (=> b!4772993 m!5745920))

(assert (=> b!4772993 m!5745910))

(declare-fun m!5745922 () Bool)

(assert (=> b!4772993 m!5745922))

(declare-fun m!5745924 () Bool)

(assert (=> b!4772993 m!5745924))

(declare-fun m!5745926 () Bool)

(assert (=> b!4772995 m!5745926))

(assert (=> b!4772995 m!5745854))

(assert (=> b!4772865 d!1525230))

(declare-fun d!1525246 () Bool)

(declare-fun res!2024790 () Bool)

(declare-fun e!2979647 () Bool)

(assert (=> d!1525246 (=> res!2024790 e!2979647)))

(assert (=> d!1525246 (= res!2024790 ((_ is Nil!53702) (t!361276 (toList!6475 lm!1309))))))

(assert (=> d!1525246 (= (forall!11958 (t!361276 (toList!6475 lm!1309)) lambda!225697) e!2979647)))

(declare-fun b!4773002 () Bool)

(declare-fun e!2979648 () Bool)

(assert (=> b!4773002 (= e!2979647 e!2979648)))

(declare-fun res!2024791 () Bool)

(assert (=> b!4773002 (=> (not res!2024791) (not e!2979648))))

(assert (=> b!4773002 (= res!2024791 (dynLambda!21978 lambda!225697 (h!60114 (t!361276 (toList!6475 lm!1309)))))))

(declare-fun b!4773003 () Bool)

(assert (=> b!4773003 (= e!2979648 (forall!11958 (t!361276 (t!361276 (toList!6475 lm!1309))) lambda!225697))))

(assert (= (and d!1525246 (not res!2024790)) b!4773002))

(assert (= (and b!4773002 res!2024791) b!4773003))

(declare-fun b_lambda!184697 () Bool)

(assert (=> (not b_lambda!184697) (not b!4773002)))

(declare-fun m!5745928 () Bool)

(assert (=> b!4773002 m!5745928))

(declare-fun m!5745930 () Bool)

(assert (=> b!4773003 m!5745930))

(assert (=> b!4772901 d!1525246))

(declare-fun d!1525248 () Bool)

(declare-fun isEmpty!29309 (Option!12789) Bool)

(assert (=> d!1525248 (= (isDefined!9936 (getValueByKey!2230 (toList!6475 lm!1309) lt!1935680)) (not (isEmpty!29309 (getValueByKey!2230 (toList!6475 lm!1309) lt!1935680))))))

(declare-fun bs!1149879 () Bool)

(assert (= bs!1149879 d!1525248))

(assert (=> bs!1149879 m!5745690))

(declare-fun m!5745932 () Bool)

(assert (=> bs!1149879 m!5745932))

(assert (=> b!4772816 d!1525248))

(assert (=> b!4772816 d!1525172))

(declare-fun d!1525250 () Bool)

(assert (=> d!1525250 (isDefined!9936 (getValueByKey!2230 (toList!6475 lm!1309) lt!1935680))))

(declare-fun lt!1935816 () Unit!138594)

(declare-fun choose!34071 (List!53826 (_ BitVec 64)) Unit!138594)

(assert (=> d!1525250 (= lt!1935816 (choose!34071 (toList!6475 lm!1309) lt!1935680))))

(declare-fun e!2979651 () Bool)

(assert (=> d!1525250 e!2979651))

(declare-fun res!2024794 () Bool)

(assert (=> d!1525250 (=> (not res!2024794) (not e!2979651))))

(assert (=> d!1525250 (= res!2024794 (isStrictlySorted!825 (toList!6475 lm!1309)))))

(assert (=> d!1525250 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2027 (toList!6475 lm!1309) lt!1935680) lt!1935816)))

(declare-fun b!4773006 () Bool)

(assert (=> b!4773006 (= e!2979651 (containsKey!3704 (toList!6475 lm!1309) lt!1935680))))

(assert (= (and d!1525250 res!2024794) b!4773006))

(assert (=> d!1525250 m!5745690))

(assert (=> d!1525250 m!5745690))

(assert (=> d!1525250 m!5745730))

(declare-fun m!5745934 () Bool)

(assert (=> d!1525250 m!5745934))

(assert (=> d!1525250 m!5745806))

(assert (=> b!4773006 m!5745726))

(assert (=> b!4772814 d!1525250))

(assert (=> b!4772814 d!1525248))

(assert (=> b!4772814 d!1525172))

(declare-fun d!1525252 () Bool)

(declare-fun noDuplicatedKeys!409 (List!53825) Bool)

(assert (=> d!1525252 (= (invariantList!1674 (toList!6476 lt!1935765)) (noDuplicatedKeys!409 (toList!6476 lt!1935765)))))

(declare-fun bs!1149880 () Bool)

(assert (= bs!1149880 d!1525252))

(declare-fun m!5745936 () Bool)

(assert (=> bs!1149880 m!5745936))

(assert (=> d!1525188 d!1525252))

(declare-fun d!1525254 () Bool)

(declare-fun res!2024795 () Bool)

(declare-fun e!2979652 () Bool)

(assert (=> d!1525254 (=> res!2024795 e!2979652)))

(assert (=> d!1525254 (= res!2024795 ((_ is Nil!53702) (toList!6475 lm!1309)))))

(assert (=> d!1525254 (= (forall!11958 (toList!6475 lm!1309) lambda!225712) e!2979652)))

(declare-fun b!4773007 () Bool)

(declare-fun e!2979653 () Bool)

(assert (=> b!4773007 (= e!2979652 e!2979653)))

(declare-fun res!2024796 () Bool)

(assert (=> b!4773007 (=> (not res!2024796) (not e!2979653))))

(assert (=> b!4773007 (= res!2024796 (dynLambda!21978 lambda!225712 (h!60114 (toList!6475 lm!1309))))))

(declare-fun b!4773008 () Bool)

(assert (=> b!4773008 (= e!2979653 (forall!11958 (t!361276 (toList!6475 lm!1309)) lambda!225712))))

(assert (= (and d!1525254 (not res!2024795)) b!4773007))

(assert (= (and b!4773007 res!2024796) b!4773008))

(declare-fun b_lambda!184699 () Bool)

(assert (=> (not b_lambda!184699) (not b!4773007)))

(declare-fun m!5745938 () Bool)

(assert (=> b!4773007 m!5745938))

(declare-fun m!5745940 () Bool)

(assert (=> b!4773008 m!5745940))

(assert (=> d!1525188 d!1525254))

(declare-fun d!1525256 () Bool)

(declare-fun res!2024801 () Bool)

(declare-fun e!2979658 () Bool)

(assert (=> d!1525256 (=> res!2024801 e!2979658)))

(assert (=> d!1525256 (= res!2024801 (and ((_ is Cons!53701) (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))) (= (_1!31266 (h!60113 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) key!2872)))))

(assert (=> d!1525256 (= (containsKey!3705 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))) key!2872) e!2979658)))

(declare-fun b!4773013 () Bool)

(declare-fun e!2979659 () Bool)

(assert (=> b!4773013 (= e!2979658 e!2979659)))

(declare-fun res!2024802 () Bool)

(assert (=> b!4773013 (=> (not res!2024802) (not e!2979659))))

(assert (=> b!4773013 (= res!2024802 ((_ is Cons!53701) (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))))

(declare-fun b!4773014 () Bool)

(assert (=> b!4773014 (= e!2979659 (containsKey!3705 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))) key!2872))))

(assert (= (and d!1525256 (not res!2024801)) b!4773013))

(assert (= (and b!4773013 res!2024802) b!4773014))

(declare-fun m!5745942 () Bool)

(assert (=> b!4773014 m!5745942))

(assert (=> b!4772862 d!1525256))

(declare-fun d!1525258 () Bool)

(assert (=> d!1525258 (containsKey!3705 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))) key!2872)))

(declare-fun lt!1935819 () Unit!138594)

(declare-fun choose!34072 (List!53825 K!15224) Unit!138594)

(assert (=> d!1525258 (= lt!1935819 (choose!34072 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))) key!2872))))

(assert (=> d!1525258 (invariantList!1674 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))))

(assert (=> d!1525258 (= (lemmaInGetKeysListThenContainsKey!1015 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))) key!2872) lt!1935819)))

(declare-fun bs!1149881 () Bool)

(assert (= bs!1149881 d!1525258))

(assert (=> bs!1149881 m!5745768))

(declare-fun m!5745944 () Bool)

(assert (=> bs!1149881 m!5745944))

(assert (=> bs!1149881 m!5745916))

(assert (=> b!4772862 d!1525258))

(declare-fun d!1525260 () Bool)

(declare-fun res!2024807 () Bool)

(declare-fun e!2979664 () Bool)

(assert (=> d!1525260 (=> res!2024807 e!2979664)))

(assert (=> d!1525260 (= res!2024807 (or ((_ is Nil!53702) (toList!6475 lm!1309)) ((_ is Nil!53702) (t!361276 (toList!6475 lm!1309)))))))

(assert (=> d!1525260 (= (isStrictlySorted!825 (toList!6475 lm!1309)) e!2979664)))

(declare-fun b!4773019 () Bool)

(declare-fun e!2979665 () Bool)

(assert (=> b!4773019 (= e!2979664 e!2979665)))

(declare-fun res!2024808 () Bool)

(assert (=> b!4773019 (=> (not res!2024808) (not e!2979665))))

(assert (=> b!4773019 (= res!2024808 (bvslt (_1!31267 (h!60114 (toList!6475 lm!1309))) (_1!31267 (h!60114 (t!361276 (toList!6475 lm!1309))))))))

(declare-fun b!4773020 () Bool)

(assert (=> b!4773020 (= e!2979665 (isStrictlySorted!825 (t!361276 (toList!6475 lm!1309))))))

(assert (= (and d!1525260 (not res!2024807)) b!4773019))

(assert (= (and b!4773019 res!2024808) b!4773020))

(declare-fun m!5745946 () Bool)

(assert (=> b!4773020 m!5745946))

(assert (=> d!1525200 d!1525260))

(declare-fun d!1525262 () Bool)

(declare-fun isEmpty!29310 (Option!12791) Bool)

(assert (=> d!1525262 (= (isDefined!9937 (getValueByKey!2232 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))) key!2872)) (not (isEmpty!29310 (getValueByKey!2232 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))) key!2872))))))

(declare-fun bs!1149882 () Bool)

(assert (= bs!1149882 d!1525262))

(assert (=> bs!1149882 m!5745758))

(declare-fun m!5745948 () Bool)

(assert (=> bs!1149882 m!5745948))

(assert (=> b!4772870 d!1525262))

(declare-fun d!1525264 () Bool)

(declare-fun c!814031 () Bool)

(assert (=> d!1525264 (= c!814031 (and ((_ is Cons!53701) (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))) (= (_1!31266 (h!60113 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) key!2872)))))

(declare-fun e!2979670 () Option!12791)

(assert (=> d!1525264 (= (getValueByKey!2232 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))) key!2872) e!2979670)))

(declare-fun b!4773029 () Bool)

(assert (=> b!4773029 (= e!2979670 (Some!12790 (_2!31266 (h!60113 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))))))

(declare-fun b!4773031 () Bool)

(declare-fun e!2979671 () Option!12791)

(assert (=> b!4773031 (= e!2979671 (getValueByKey!2232 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))) key!2872))))

(declare-fun b!4773032 () Bool)

(assert (=> b!4773032 (= e!2979671 None!12790)))

(declare-fun b!4773030 () Bool)

(assert (=> b!4773030 (= e!2979670 e!2979671)))

(declare-fun c!814032 () Bool)

(assert (=> b!4773030 (= c!814032 (and ((_ is Cons!53701) (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))) (not (= (_1!31266 (h!60113 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) key!2872))))))

(assert (= (and d!1525264 c!814031) b!4773029))

(assert (= (and d!1525264 (not c!814031)) b!4773030))

(assert (= (and b!4773030 c!814032) b!4773031))

(assert (= (and b!4773030 (not c!814032)) b!4773032))

(declare-fun m!5745950 () Bool)

(assert (=> b!4773031 m!5745950))

(assert (=> b!4772870 d!1525264))

(declare-fun d!1525266 () Bool)

(declare-fun res!2024813 () Bool)

(declare-fun e!2979676 () Bool)

(assert (=> d!1525266 (=> res!2024813 e!2979676)))

(assert (=> d!1525266 (= res!2024813 (not ((_ is Cons!53701) (_2!31267 (h!60114 (toList!6475 lm!1309))))))))

(assert (=> d!1525266 (= (noDuplicateKeys!2270 (_2!31267 (h!60114 (toList!6475 lm!1309)))) e!2979676)))

(declare-fun b!4773037 () Bool)

(declare-fun e!2979677 () Bool)

(assert (=> b!4773037 (= e!2979676 e!2979677)))

(declare-fun res!2024814 () Bool)

(assert (=> b!4773037 (=> (not res!2024814) (not e!2979677))))

(declare-fun containsKey!3706 (List!53825 K!15224) Bool)

(assert (=> b!4773037 (= res!2024814 (not (containsKey!3706 (t!361275 (_2!31267 (h!60114 (toList!6475 lm!1309)))) (_1!31266 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309))))))))))

(declare-fun b!4773038 () Bool)

(assert (=> b!4773038 (= e!2979677 (noDuplicateKeys!2270 (t!361275 (_2!31267 (h!60114 (toList!6475 lm!1309))))))))

(assert (= (and d!1525266 (not res!2024813)) b!4773037))

(assert (= (and b!4773037 res!2024814) b!4773038))

(declare-fun m!5745952 () Bool)

(assert (=> b!4773037 m!5745952))

(declare-fun m!5745954 () Bool)

(assert (=> b!4773038 m!5745954))

(assert (=> bs!1149865 d!1525266))

(declare-fun d!1525268 () Bool)

(declare-fun choose!34073 (Hashable!6694 K!15224) (_ BitVec 64))

(assert (=> d!1525268 (= (hash!4669 hashF!980 key!2872) (choose!34073 hashF!980 key!2872))))

(declare-fun bs!1149883 () Bool)

(assert (= bs!1149883 d!1525268))

(declare-fun m!5745956 () Bool)

(assert (=> bs!1149883 m!5745956))

(assert (=> d!1525180 d!1525268))

(declare-fun d!1525270 () Bool)

(declare-fun res!2024819 () Bool)

(declare-fun e!2979682 () Bool)

(assert (=> d!1525270 (=> res!2024819 e!2979682)))

(assert (=> d!1525270 (= res!2024819 (and ((_ is Cons!53702) (toList!6475 lm!1309)) (= (_1!31267 (h!60114 (toList!6475 lm!1309))) lt!1935680)))))

(assert (=> d!1525270 (= (containsKey!3704 (toList!6475 lm!1309) lt!1935680) e!2979682)))

(declare-fun b!4773043 () Bool)

(declare-fun e!2979683 () Bool)

(assert (=> b!4773043 (= e!2979682 e!2979683)))

(declare-fun res!2024820 () Bool)

(assert (=> b!4773043 (=> (not res!2024820) (not e!2979683))))

(assert (=> b!4773043 (= res!2024820 (and (or (not ((_ is Cons!53702) (toList!6475 lm!1309))) (bvsle (_1!31267 (h!60114 (toList!6475 lm!1309))) lt!1935680)) ((_ is Cons!53702) (toList!6475 lm!1309)) (bvslt (_1!31267 (h!60114 (toList!6475 lm!1309))) lt!1935680)))))

(declare-fun b!4773044 () Bool)

(assert (=> b!4773044 (= e!2979683 (containsKey!3704 (t!361276 (toList!6475 lm!1309)) lt!1935680))))

(assert (= (and d!1525270 (not res!2024819)) b!4773043))

(assert (= (and b!4773043 res!2024820) b!4773044))

(declare-fun m!5745958 () Bool)

(assert (=> b!4773044 m!5745958))

(assert (=> d!1525178 d!1525270))

(declare-fun b!4773121 () Bool)

(assert (=> b!4773121 true))

(declare-fun bs!1149900 () Bool)

(declare-fun b!4773122 () Bool)

(assert (= bs!1149900 (and b!4773122 b!4773121)))

(declare-fun lambda!225814 () Int)

(declare-fun lambda!225813 () Int)

(assert (=> bs!1149900 (= lambda!225814 lambda!225813)))

(assert (=> b!4773122 true))

(declare-fun lambda!225815 () Int)

(declare-fun lt!1935969 () ListMap!5955)

(assert (=> bs!1149900 (= (= lt!1935969 (extractMap!2229 (t!361276 (toList!6475 lm!1309)))) (= lambda!225815 lambda!225813))))

(assert (=> b!4773122 (= (= lt!1935969 (extractMap!2229 (t!361276 (toList!6475 lm!1309)))) (= lambda!225815 lambda!225814))))

(assert (=> b!4773122 true))

(declare-fun bs!1149901 () Bool)

(declare-fun d!1525272 () Bool)

(assert (= bs!1149901 (and d!1525272 b!4773121)))

(declare-fun lt!1935963 () ListMap!5955)

(declare-fun lambda!225816 () Int)

(assert (=> bs!1149901 (= (= lt!1935963 (extractMap!2229 (t!361276 (toList!6475 lm!1309)))) (= lambda!225816 lambda!225813))))

(declare-fun bs!1149902 () Bool)

(assert (= bs!1149902 (and d!1525272 b!4773122)))

(assert (=> bs!1149902 (= (= lt!1935963 (extractMap!2229 (t!361276 (toList!6475 lm!1309)))) (= lambda!225816 lambda!225814))))

(assert (=> bs!1149902 (= (= lt!1935963 lt!1935969) (= lambda!225816 lambda!225815))))

(assert (=> d!1525272 true))

(declare-fun bm!334517 () Bool)

(declare-fun call!334523 () Bool)

(declare-fun c!814050 () Bool)

(declare-fun forall!11962 (List!53825 Int) Bool)

(assert (=> bm!334517 (= call!334523 (forall!11962 (ite c!814050 (toList!6476 (extractMap!2229 (t!361276 (toList!6475 lm!1309)))) (_2!31267 (h!60114 (toList!6475 lm!1309)))) (ite c!814050 lambda!225813 lambda!225815)))))

(declare-fun e!2979728 () ListMap!5955)

(assert (=> b!4773121 (= e!2979728 (extractMap!2229 (t!361276 (toList!6475 lm!1309))))))

(declare-fun lt!1935970 () Unit!138594)

(declare-fun call!334524 () Unit!138594)

(assert (=> b!4773121 (= lt!1935970 call!334524)))

(declare-fun call!334522 () Bool)

(assert (=> b!4773121 call!334522))

(declare-fun lt!1935968 () Unit!138594)

(assert (=> b!4773121 (= lt!1935968 lt!1935970)))

(assert (=> b!4773121 call!334523))

(declare-fun lt!1935957 () Unit!138594)

(declare-fun Unit!138619 () Unit!138594)

(assert (=> b!4773121 (= lt!1935957 Unit!138619)))

(declare-fun bm!334518 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!911 (ListMap!5955) Unit!138594)

(assert (=> bm!334518 (= call!334524 (lemmaContainsAllItsOwnKeys!911 (extractMap!2229 (t!361276 (toList!6475 lm!1309)))))))

(assert (=> b!4773122 (= e!2979728 lt!1935969)))

(declare-fun lt!1935954 () ListMap!5955)

(declare-fun +!2455 (ListMap!5955 tuple2!55944) ListMap!5955)

(assert (=> b!4773122 (= lt!1935954 (+!2455 (extractMap!2229 (t!361276 (toList!6475 lm!1309))) (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309))))))))

(assert (=> b!4773122 (= lt!1935969 (addToMapMapFromBucket!1639 (t!361275 (_2!31267 (h!60114 (toList!6475 lm!1309)))) (+!2455 (extractMap!2229 (t!361276 (toList!6475 lm!1309))) (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))))))

(declare-fun lt!1935966 () Unit!138594)

(assert (=> b!4773122 (= lt!1935966 call!334524)))

(assert (=> b!4773122 (forall!11962 (toList!6476 (extractMap!2229 (t!361276 (toList!6475 lm!1309)))) lambda!225814)))

(declare-fun lt!1935958 () Unit!138594)

(assert (=> b!4773122 (= lt!1935958 lt!1935966)))

(assert (=> b!4773122 (forall!11962 (toList!6476 lt!1935954) lambda!225815)))

(declare-fun lt!1935959 () Unit!138594)

(declare-fun Unit!138620 () Unit!138594)

(assert (=> b!4773122 (= lt!1935959 Unit!138620)))

(assert (=> b!4773122 (forall!11962 (t!361275 (_2!31267 (h!60114 (toList!6475 lm!1309)))) lambda!225815)))

(declare-fun lt!1935951 () Unit!138594)

(declare-fun Unit!138621 () Unit!138594)

(assert (=> b!4773122 (= lt!1935951 Unit!138621)))

(declare-fun lt!1935953 () Unit!138594)

(declare-fun Unit!138622 () Unit!138594)

(assert (=> b!4773122 (= lt!1935953 Unit!138622)))

(declare-fun lt!1935950 () Unit!138594)

(declare-fun forallContained!3934 (List!53825 Int tuple2!55944) Unit!138594)

(assert (=> b!4773122 (= lt!1935950 (forallContained!3934 (toList!6476 lt!1935954) lambda!225815 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309))))))))

(assert (=> b!4773122 (contains!17126 lt!1935954 (_1!31266 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309))))))))

(declare-fun lt!1935956 () Unit!138594)

(declare-fun Unit!138624 () Unit!138594)

(assert (=> b!4773122 (= lt!1935956 Unit!138624)))

(assert (=> b!4773122 (contains!17126 lt!1935969 (_1!31266 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309))))))))

(declare-fun lt!1935965 () Unit!138594)

(declare-fun Unit!138625 () Unit!138594)

(assert (=> b!4773122 (= lt!1935965 Unit!138625)))

(assert (=> b!4773122 call!334523))

(declare-fun lt!1935962 () Unit!138594)

(declare-fun Unit!138627 () Unit!138594)

(assert (=> b!4773122 (= lt!1935962 Unit!138627)))

(assert (=> b!4773122 (forall!11962 (toList!6476 lt!1935954) lambda!225815)))

(declare-fun lt!1935952 () Unit!138594)

(declare-fun Unit!138628 () Unit!138594)

(assert (=> b!4773122 (= lt!1935952 Unit!138628)))

(declare-fun lt!1935960 () Unit!138594)

(declare-fun Unit!138629 () Unit!138594)

(assert (=> b!4773122 (= lt!1935960 Unit!138629)))

(declare-fun lt!1935961 () Unit!138594)

(declare-fun addForallContainsKeyThenBeforeAdding!910 (ListMap!5955 ListMap!5955 K!15224 V!15470) Unit!138594)

(assert (=> b!4773122 (= lt!1935961 (addForallContainsKeyThenBeforeAdding!910 (extractMap!2229 (t!361276 (toList!6475 lm!1309))) lt!1935969 (_1!31266 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309))))) (_2!31266 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))))))

(assert (=> b!4773122 (forall!11962 (toList!6476 (extractMap!2229 (t!361276 (toList!6475 lm!1309)))) lambda!225815)))

(declare-fun lt!1935955 () Unit!138594)

(assert (=> b!4773122 (= lt!1935955 lt!1935961)))

(assert (=> b!4773122 (forall!11962 (toList!6476 (extractMap!2229 (t!361276 (toList!6475 lm!1309)))) lambda!225815)))

(declare-fun lt!1935964 () Unit!138594)

(declare-fun Unit!138630 () Unit!138594)

(assert (=> b!4773122 (= lt!1935964 Unit!138630)))

(declare-fun res!2024859 () Bool)

(assert (=> b!4773122 (= res!2024859 (forall!11962 (_2!31267 (h!60114 (toList!6475 lm!1309))) lambda!225815))))

(declare-fun e!2979730 () Bool)

(assert (=> b!4773122 (=> (not res!2024859) (not e!2979730))))

(assert (=> b!4773122 e!2979730))

(declare-fun lt!1935967 () Unit!138594)

(declare-fun Unit!138632 () Unit!138594)

(assert (=> b!4773122 (= lt!1935967 Unit!138632)))

(declare-fun b!4773123 () Bool)

(declare-fun res!2024860 () Bool)

(declare-fun e!2979729 () Bool)

(assert (=> b!4773123 (=> (not res!2024860) (not e!2979729))))

(assert (=> b!4773123 (= res!2024860 (forall!11962 (toList!6476 (extractMap!2229 (t!361276 (toList!6475 lm!1309)))) lambda!225816))))

(declare-fun b!4773124 () Bool)

(assert (=> b!4773124 (= e!2979729 (invariantList!1674 (toList!6476 lt!1935963)))))

(assert (=> d!1525272 e!2979729))

(declare-fun res!2024861 () Bool)

(assert (=> d!1525272 (=> (not res!2024861) (not e!2979729))))

(assert (=> d!1525272 (= res!2024861 (forall!11962 (_2!31267 (h!60114 (toList!6475 lm!1309))) lambda!225816))))

(assert (=> d!1525272 (= lt!1935963 e!2979728)))

(assert (=> d!1525272 (= c!814050 ((_ is Nil!53701) (_2!31267 (h!60114 (toList!6475 lm!1309)))))))

(assert (=> d!1525272 (noDuplicateKeys!2270 (_2!31267 (h!60114 (toList!6475 lm!1309))))))

(assert (=> d!1525272 (= (addToMapMapFromBucket!1639 (_2!31267 (h!60114 (toList!6475 lm!1309))) (extractMap!2229 (t!361276 (toList!6475 lm!1309)))) lt!1935963)))

(declare-fun b!4773125 () Bool)

(assert (=> b!4773125 (= e!2979730 call!334522)))

(declare-fun bm!334519 () Bool)

(assert (=> bm!334519 (= call!334522 (forall!11962 (toList!6476 (extractMap!2229 (t!361276 (toList!6475 lm!1309)))) (ite c!814050 lambda!225813 lambda!225815)))))

(assert (= (and d!1525272 c!814050) b!4773121))

(assert (= (and d!1525272 (not c!814050)) b!4773122))

(assert (= (and b!4773122 res!2024859) b!4773125))

(assert (= (or b!4773121 b!4773125) bm!334519))

(assert (= (or b!4773121 b!4773122) bm!334517))

(assert (= (or b!4773121 b!4773122) bm!334518))

(assert (= (and d!1525272 res!2024861) b!4773123))

(assert (= (and b!4773123 res!2024860) b!4773124))

(declare-fun m!5746046 () Bool)

(assert (=> bm!334517 m!5746046))

(declare-fun m!5746048 () Bool)

(assert (=> b!4773122 m!5746048))

(declare-fun m!5746050 () Bool)

(assert (=> b!4773122 m!5746050))

(declare-fun m!5746052 () Bool)

(assert (=> b!4773122 m!5746052))

(declare-fun m!5746054 () Bool)

(assert (=> b!4773122 m!5746054))

(assert (=> b!4773122 m!5745798))

(assert (=> b!4773122 m!5746050))

(declare-fun m!5746056 () Bool)

(assert (=> b!4773122 m!5746056))

(declare-fun m!5746058 () Bool)

(assert (=> b!4773122 m!5746058))

(declare-fun m!5746060 () Bool)

(assert (=> b!4773122 m!5746060))

(declare-fun m!5746062 () Bool)

(assert (=> b!4773122 m!5746062))

(declare-fun m!5746064 () Bool)

(assert (=> b!4773122 m!5746064))

(assert (=> b!4773122 m!5746054))

(declare-fun m!5746066 () Bool)

(assert (=> b!4773122 m!5746066))

(assert (=> b!4773122 m!5745798))

(declare-fun m!5746068 () Bool)

(assert (=> b!4773122 m!5746068))

(assert (=> b!4773122 m!5746048))

(declare-fun m!5746070 () Bool)

(assert (=> d!1525272 m!5746070))

(assert (=> d!1525272 m!5745810))

(declare-fun m!5746072 () Bool)

(assert (=> bm!334519 m!5746072))

(assert (=> bm!334518 m!5745798))

(declare-fun m!5746074 () Bool)

(assert (=> bm!334518 m!5746074))

(declare-fun m!5746076 () Bool)

(assert (=> b!4773124 m!5746076))

(declare-fun m!5746078 () Bool)

(assert (=> b!4773123 m!5746078))

(assert (=> b!4772894 d!1525272))

(declare-fun bs!1149904 () Bool)

(declare-fun d!1525298 () Bool)

(assert (= bs!1149904 (and d!1525298 start!488818)))

(declare-fun lambda!225817 () Int)

(assert (=> bs!1149904 (= lambda!225817 lambda!225697)))

(declare-fun bs!1149905 () Bool)

(assert (= bs!1149905 (and d!1525298 d!1525168)))

(assert (=> bs!1149905 (= lambda!225817 lambda!225703)))

(declare-fun bs!1149906 () Bool)

(assert (= bs!1149906 (and d!1525298 d!1525188)))

(assert (=> bs!1149906 (= lambda!225817 lambda!225712)))

(declare-fun bs!1149907 () Bool)

(assert (= bs!1149907 (and d!1525298 d!1525202)))

(assert (=> bs!1149907 (not (= lambda!225817 lambda!225715))))

(declare-fun lt!1935974 () ListMap!5955)

(assert (=> d!1525298 (invariantList!1674 (toList!6476 lt!1935974))))

(declare-fun e!2979736 () ListMap!5955)

(assert (=> d!1525298 (= lt!1935974 e!2979736)))

(declare-fun c!814051 () Bool)

(assert (=> d!1525298 (= c!814051 ((_ is Cons!53702) (t!361276 (toList!6475 lm!1309))))))

(assert (=> d!1525298 (forall!11958 (t!361276 (toList!6475 lm!1309)) lambda!225817)))

(assert (=> d!1525298 (= (extractMap!2229 (t!361276 (toList!6475 lm!1309))) lt!1935974)))

(declare-fun b!4773133 () Bool)

(assert (=> b!4773133 (= e!2979736 (addToMapMapFromBucket!1639 (_2!31267 (h!60114 (t!361276 (toList!6475 lm!1309)))) (extractMap!2229 (t!361276 (t!361276 (toList!6475 lm!1309))))))))

(declare-fun b!4773134 () Bool)

(assert (=> b!4773134 (= e!2979736 (ListMap!5956 Nil!53701))))

(assert (= (and d!1525298 c!814051) b!4773133))

(assert (= (and d!1525298 (not c!814051)) b!4773134))

(declare-fun m!5746080 () Bool)

(assert (=> d!1525298 m!5746080))

(declare-fun m!5746082 () Bool)

(assert (=> d!1525298 m!5746082))

(declare-fun m!5746084 () Bool)

(assert (=> b!4773133 m!5746084))

(assert (=> b!4773133 m!5746084))

(declare-fun m!5746086 () Bool)

(assert (=> b!4773133 m!5746086))

(assert (=> b!4772894 d!1525298))

(declare-fun d!1525300 () Bool)

(assert (=> d!1525300 (= (get!18176 (getValueByKey!2230 (toList!6475 lm!1309) lt!1935680)) (v!47927 (getValueByKey!2230 (toList!6475 lm!1309) lt!1935680)))))

(assert (=> d!1525182 d!1525300))

(assert (=> d!1525182 d!1525172))

(declare-fun d!1525304 () Bool)

(assert (=> d!1525304 (isDefined!9937 (getValueByKey!2232 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))) key!2872))))

(declare-fun lt!1935977 () Unit!138594)

(declare-fun choose!34075 (List!53825 K!15224) Unit!138594)

(assert (=> d!1525304 (= lt!1935977 (choose!34075 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))) key!2872))))

(assert (=> d!1525304 (invariantList!1674 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))))

(assert (=> d!1525304 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2028 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))) key!2872) lt!1935977)))

(declare-fun bs!1149908 () Bool)

(assert (= bs!1149908 d!1525304))

(assert (=> bs!1149908 m!5745758))

(assert (=> bs!1149908 m!5745758))

(assert (=> bs!1149908 m!5745760))

(declare-fun m!5746090 () Bool)

(assert (=> bs!1149908 m!5746090))

(assert (=> bs!1149908 m!5745916))

(assert (=> b!4772869 d!1525304))

(assert (=> b!4772869 d!1525262))

(assert (=> b!4772869 d!1525264))

(declare-fun d!1525308 () Bool)

(assert (=> d!1525308 (contains!17128 (getKeysList!1016 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))) key!2872)))

(declare-fun lt!1935980 () Unit!138594)

(declare-fun choose!34077 (List!53825 K!15224) Unit!138594)

(assert (=> d!1525308 (= lt!1935980 (choose!34077 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))) key!2872))))

(assert (=> d!1525308 (invariantList!1674 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))))

(assert (=> d!1525308 (= (lemmaInListThenGetKeysListContains!1011 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))) key!2872) lt!1935980)))

(declare-fun bs!1149913 () Bool)

(assert (= bs!1149913 d!1525308))

(assert (=> bs!1149913 m!5745774))

(assert (=> bs!1149913 m!5745774))

(declare-fun m!5746100 () Bool)

(assert (=> bs!1149913 m!5746100))

(declare-fun m!5746102 () Bool)

(assert (=> bs!1149913 m!5746102))

(assert (=> bs!1149913 m!5745916))

(assert (=> b!4772869 d!1525308))

(declare-fun d!1525318 () Bool)

(declare-fun res!2024879 () Bool)

(declare-fun e!2979753 () Bool)

(assert (=> d!1525318 (=> res!2024879 e!2979753)))

(assert (=> d!1525318 (= res!2024879 ((_ is Nil!53702) (toList!6475 lm!1309)))))

(assert (=> d!1525318 (= (forall!11958 (toList!6475 lm!1309) lambda!225715) e!2979753)))

(declare-fun b!4773153 () Bool)

(declare-fun e!2979754 () Bool)

(assert (=> b!4773153 (= e!2979753 e!2979754)))

(declare-fun res!2024880 () Bool)

(assert (=> b!4773153 (=> (not res!2024880) (not e!2979754))))

(assert (=> b!4773153 (= res!2024880 (dynLambda!21978 lambda!225715 (h!60114 (toList!6475 lm!1309))))))

(declare-fun b!4773154 () Bool)

(assert (=> b!4773154 (= e!2979754 (forall!11958 (t!361276 (toList!6475 lm!1309)) lambda!225715))))

(assert (= (and d!1525318 (not res!2024879)) b!4773153))

(assert (= (and b!4773153 res!2024880) b!4773154))

(declare-fun b_lambda!184713 () Bool)

(assert (=> (not b_lambda!184713) (not b!4773153)))

(declare-fun m!5746104 () Bool)

(assert (=> b!4773153 m!5746104))

(declare-fun m!5746106 () Bool)

(assert (=> b!4773154 m!5746106))

(assert (=> d!1525202 d!1525318))

(assert (=> d!1525184 d!1525256))

(declare-fun d!1525320 () Bool)

(declare-fun lt!1935981 () Bool)

(assert (=> d!1525320 (= lt!1935981 (select (content!9606 e!2979570) key!2872))))

(declare-fun e!2979755 () Bool)

(assert (=> d!1525320 (= lt!1935981 e!2979755)))

(declare-fun res!2024881 () Bool)

(assert (=> d!1525320 (=> (not res!2024881) (not e!2979755))))

(assert (=> d!1525320 (= res!2024881 ((_ is Cons!53704) e!2979570))))

(assert (=> d!1525320 (= (contains!17128 e!2979570 key!2872) lt!1935981)))

(declare-fun b!4773155 () Bool)

(declare-fun e!2979756 () Bool)

(assert (=> b!4773155 (= e!2979755 e!2979756)))

(declare-fun res!2024882 () Bool)

(assert (=> b!4773155 (=> res!2024882 e!2979756)))

(assert (=> b!4773155 (= res!2024882 (= (h!60116 e!2979570) key!2872))))

(declare-fun b!4773156 () Bool)

(assert (=> b!4773156 (= e!2979756 (contains!17128 (t!361278 e!2979570) key!2872))))

(assert (= (and d!1525320 res!2024881) b!4773155))

(assert (= (and b!4773155 (not res!2024882)) b!4773156))

(declare-fun m!5746108 () Bool)

(assert (=> d!1525320 m!5746108))

(declare-fun m!5746110 () Bool)

(assert (=> d!1525320 m!5746110))

(declare-fun m!5746112 () Bool)

(assert (=> b!4773156 m!5746112))

(assert (=> bm!334501 d!1525320))

(assert (=> b!4772867 d!1525226))

(assert (=> b!4772867 d!1525214))

(declare-fun e!2979759 () Bool)

(declare-fun tp_is_empty!32763 () Bool)

(declare-fun tp!1356818 () Bool)

(declare-fun b!4773161 () Bool)

(assert (=> b!4773161 (= e!2979759 (and tp_is_empty!32759 tp_is_empty!32763 tp!1356818))))

(assert (=> b!4772908 (= tp!1356809 e!2979759)))

(assert (= (and b!4772908 ((_ is Cons!53701) (_2!31267 (h!60114 (toList!6475 lm!1309))))) b!4773161))

(declare-fun b!4773162 () Bool)

(declare-fun e!2979760 () Bool)

(declare-fun tp!1356819 () Bool)

(declare-fun tp!1356820 () Bool)

(assert (=> b!4773162 (= e!2979760 (and tp!1356819 tp!1356820))))

(assert (=> b!4772908 (= tp!1356810 e!2979760)))

(assert (= (and b!4772908 ((_ is Cons!53702) (t!361276 (toList!6475 lm!1309)))) b!4773162))

(declare-fun b_lambda!184715 () Bool)

(assert (= b_lambda!184699 (or d!1525188 b_lambda!184715)))

(declare-fun bs!1149914 () Bool)

(declare-fun d!1525322 () Bool)

(assert (= bs!1149914 (and d!1525322 d!1525188)))

(assert (=> bs!1149914 (= (dynLambda!21978 lambda!225712 (h!60114 (toList!6475 lm!1309))) (noDuplicateKeys!2270 (_2!31267 (h!60114 (toList!6475 lm!1309)))))))

(assert (=> bs!1149914 m!5745810))

(assert (=> b!4773007 d!1525322))

(declare-fun b_lambda!184717 () Bool)

(assert (= b_lambda!184697 (or start!488818 b_lambda!184717)))

(declare-fun bs!1149915 () Bool)

(declare-fun d!1525324 () Bool)

(assert (= bs!1149915 (and d!1525324 start!488818)))

(assert (=> bs!1149915 (= (dynLambda!21978 lambda!225697 (h!60114 (t!361276 (toList!6475 lm!1309)))) (noDuplicateKeys!2270 (_2!31267 (h!60114 (t!361276 (toList!6475 lm!1309))))))))

(declare-fun m!5746114 () Bool)

(assert (=> bs!1149915 m!5746114))

(assert (=> b!4773002 d!1525324))

(declare-fun b_lambda!184719 () Bool)

(assert (= b_lambda!184713 (or d!1525202 b_lambda!184719)))

(declare-fun bs!1149916 () Bool)

(declare-fun d!1525326 () Bool)

(assert (= bs!1149916 (and d!1525326 d!1525202)))

(declare-fun allKeysSameHash!1928 (List!53825 (_ BitVec 64) Hashable!6694) Bool)

(assert (=> bs!1149916 (= (dynLambda!21978 lambda!225715 (h!60114 (toList!6475 lm!1309))) (allKeysSameHash!1928 (_2!31267 (h!60114 (toList!6475 lm!1309))) (_1!31267 (h!60114 (toList!6475 lm!1309))) hashF!980))))

(declare-fun m!5746116 () Bool)

(assert (=> bs!1149916 m!5746116))

(assert (=> b!4773153 d!1525326))

(declare-fun b_lambda!184721 () Bool)

(assert (= b_lambda!184691 (or d!1525168 b_lambda!184721)))

(declare-fun bs!1149917 () Bool)

(declare-fun d!1525328 () Bool)

(assert (= bs!1149917 (and d!1525328 d!1525168)))

(assert (=> bs!1149917 (= (dynLambda!21978 lambda!225703 (h!60114 (toList!6475 lm!1309))) (noDuplicateKeys!2270 (_2!31267 (h!60114 (toList!6475 lm!1309)))))))

(assert (=> bs!1149917 m!5745810))

(assert (=> b!4772912 d!1525328))

(check-sat (not b!4773122) tp_is_empty!32759 (not b!4772996) (not b!4773133) (not b!4773044) (not b!4773161) (not b!4772911) (not d!1525206) (not b!4772963) (not d!1525304) (not b_lambda!184717) (not b!4773038) (not b!4773124) (not b!4772909) (not d!1525258) (not b!4773123) (not b!4772993) (not b!4772937) (not d!1525308) (not b!4772991) (not b!4773006) (not bm!334518) (not d!1525320) (not b!4772944) (not d!1525272) (not d!1525248) (not b!4773020) (not b!4773156) (not d!1525250) tp_is_empty!32763 (not d!1525262) (not b!4773008) (not b!4772938) (not b!4773162) (not b!4773037) (not b!4773003) (not b!4772998) (not b_lambda!184721) (not b!4773154) (not bm!334517) (not b!4773014) (not d!1525226) (not d!1525252) (not d!1525298) (not bs!1149917) (not d!1525268) (not b_lambda!184719) (not b!4772939) (not bs!1149916) (not b_lambda!184689) (not bm!334519) (not b!4772995) (not bs!1149915) (not bs!1149914) (not d!1525214) (not b!4773031) (not d!1525230) (not b!4772913) (not b_lambda!184715) (not d!1525208))
(check-sat)
(get-model)

(assert (=> d!1525208 d!1525206))

(assert (=> d!1525208 d!1525180))

(declare-fun d!1525348 () Bool)

(declare-fun dynLambda!21981 (Int K!15224) Bool)

(assert (=> d!1525348 (dynLambda!21981 lambda!225736 (_1!31266 (h!60113 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))))))

(declare-fun lt!1935992 () Unit!138594)

(declare-fun choose!34080 (List!53828 Int K!15224) Unit!138594)

(assert (=> d!1525348 (= lt!1935992 (choose!34080 (getKeysList!1016 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) lambda!225736 (_1!31266 (h!60113 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))))))

(declare-fun e!2979780 () Bool)

(assert (=> d!1525348 e!2979780))

(declare-fun res!2024895 () Bool)

(assert (=> d!1525348 (=> (not res!2024895) (not e!2979780))))

(assert (=> d!1525348 (= res!2024895 (forall!11960 (getKeysList!1016 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) lambda!225736))))

(assert (=> d!1525348 (= (forallContained!3932 (getKeysList!1016 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) lambda!225736 (_1!31266 (h!60113 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))) lt!1935992)))

(declare-fun b!4773189 () Bool)

(assert (=> b!4773189 (= e!2979780 (contains!17128 (getKeysList!1016 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) (_1!31266 (h!60113 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))))))

(assert (= (and d!1525348 res!2024895) b!4773189))

(declare-fun b_lambda!184729 () Bool)

(assert (=> (not b_lambda!184729) (not d!1525348)))

(declare-fun m!5746154 () Bool)

(assert (=> d!1525348 m!5746154))

(assert (=> d!1525348 m!5745910))

(declare-fun m!5746156 () Bool)

(assert (=> d!1525348 m!5746156))

(assert (=> d!1525348 m!5745910))

(declare-fun m!5746158 () Bool)

(assert (=> d!1525348 m!5746158))

(assert (=> b!4773189 m!5745910))

(assert (=> b!4773189 m!5745922))

(assert (=> b!4772991 d!1525348))

(declare-fun bs!1149928 () Bool)

(declare-fun b!4773192 () Bool)

(assert (= bs!1149928 (and b!4773192 b!4772938)))

(declare-fun lambda!225824 () Int)

(assert (=> bs!1149928 (= (= (t!361275 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))) (= lambda!225824 lambda!225726))))

(declare-fun bs!1149930 () Bool)

(assert (= bs!1149930 (and b!4773192 b!4772991)))

(assert (=> bs!1149930 (= (= (t!361275 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) (= lambda!225824 lambda!225736))))

(declare-fun bs!1149931 () Bool)

(assert (= bs!1149931 (and b!4773192 b!4772993)))

(assert (=> bs!1149931 (= (= (t!361275 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) (Cons!53701 (h!60113 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))) (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))) (= lambda!225824 lambda!225737))))

(declare-fun bs!1149932 () Bool)

(assert (= bs!1149932 (and b!4773192 b!4772998)))

(assert (=> bs!1149932 (= (= (t!361275 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))) (= lambda!225824 lambda!225738))))

(assert (=> b!4773192 true))

(declare-fun bs!1149933 () Bool)

(declare-fun b!4773194 () Bool)

(assert (= bs!1149933 (and b!4773194 b!4772938)))

(declare-fun lambda!225825 () Int)

(assert (=> bs!1149933 (= (= (Cons!53701 (h!60113 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) (t!361275 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))) (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))) (= lambda!225825 lambda!225726))))

(declare-fun bs!1149934 () Bool)

(assert (= bs!1149934 (and b!4773194 b!4773192)))

(assert (=> bs!1149934 (= (= (Cons!53701 (h!60113 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) (t!361275 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))) (t!361275 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))) (= lambda!225825 lambda!225824))))

(declare-fun bs!1149935 () Bool)

(assert (= bs!1149935 (and b!4773194 b!4772991)))

(assert (=> bs!1149935 (= (= (Cons!53701 (h!60113 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) (t!361275 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))) (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) (= lambda!225825 lambda!225736))))

(declare-fun bs!1149936 () Bool)

(assert (= bs!1149936 (and b!4773194 b!4772993)))

(assert (=> bs!1149936 (= (= (Cons!53701 (h!60113 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) (t!361275 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))) (Cons!53701 (h!60113 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))) (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))) (= lambda!225825 lambda!225737))))

(declare-fun bs!1149938 () Bool)

(assert (= bs!1149938 (and b!4773194 b!4772998)))

(assert (=> bs!1149938 (= (= (Cons!53701 (h!60113 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) (t!361275 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))) (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))) (= lambda!225825 lambda!225738))))

(assert (=> b!4773194 true))

(declare-fun bs!1149943 () Bool)

(declare-fun b!4773199 () Bool)

(assert (= bs!1149943 (and b!4773199 b!4772938)))

(declare-fun lambda!225827 () Int)

(assert (=> bs!1149943 (= (= (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))) (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))) (= lambda!225827 lambda!225726))))

(declare-fun bs!1149944 () Bool)

(assert (= bs!1149944 (and b!4773199 b!4773192)))

(assert (=> bs!1149944 (= (= (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))) (t!361275 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))) (= lambda!225827 lambda!225824))))

(declare-fun bs!1149945 () Bool)

(assert (= bs!1149945 (and b!4773199 b!4773194)))

(assert (=> bs!1149945 (= (= (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))) (Cons!53701 (h!60113 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) (t!361275 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))))) (= lambda!225827 lambda!225825))))

(declare-fun bs!1149946 () Bool)

(assert (= bs!1149946 (and b!4773199 b!4772991)))

(assert (=> bs!1149946 (= lambda!225827 lambda!225736)))

(declare-fun bs!1149947 () Bool)

(assert (= bs!1149947 (and b!4773199 b!4772993)))

(assert (=> bs!1149947 (= (= (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))) (Cons!53701 (h!60113 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))) (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))) (= lambda!225827 lambda!225737))))

(declare-fun bs!1149948 () Bool)

(assert (= bs!1149948 (and b!4773199 b!4772998)))

(assert (=> bs!1149948 (= (= (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))) (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))) (= lambda!225827 lambda!225738))))

(assert (=> b!4773199 true))

(declare-fun bs!1149952 () Bool)

(declare-fun b!4773197 () Bool)

(assert (= bs!1149952 (and b!4773197 b!4772939)))

(declare-fun lambda!225829 () Int)

(assert (=> bs!1149952 (= lambda!225829 lambda!225727)))

(declare-fun bs!1149954 () Bool)

(assert (= bs!1149954 (and b!4773197 b!4772996)))

(assert (=> bs!1149954 (= lambda!225829 lambda!225739)))

(assert (=> b!4773192 false))

(declare-fun lt!1935995 () Unit!138594)

(assert (=> b!4773192 (= lt!1935995 (forallContained!3932 (getKeysList!1016 (t!361275 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))) lambda!225824 (_1!31266 (h!60113 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))))))))

(declare-fun e!2979781 () Unit!138594)

(declare-fun Unit!138634 () Unit!138594)

(assert (=> b!4773192 (= e!2979781 Unit!138634)))

(declare-fun b!4773193 () Bool)

(declare-fun e!2979782 () List!53828)

(assert (=> b!4773193 (= e!2979782 Nil!53704)))

(assert (=> b!4773194 (= e!2979782 (Cons!53704 (_1!31266 (h!60113 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))) (getKeysList!1016 (t!361275 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))))))))

(declare-fun c!814059 () Bool)

(assert (=> b!4773194 (= c!814059 (containsKey!3705 (t!361275 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) (_1!31266 (h!60113 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))))))))

(declare-fun lt!1936000 () Unit!138594)

(declare-fun e!2979784 () Unit!138594)

(assert (=> b!4773194 (= lt!1936000 e!2979784)))

(declare-fun c!814060 () Bool)

(assert (=> b!4773194 (= c!814060 (contains!17128 (getKeysList!1016 (t!361275 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))) (_1!31266 (h!60113 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))))))))

(declare-fun lt!1935994 () Unit!138594)

(assert (=> b!4773194 (= lt!1935994 e!2979781)))

(declare-fun lt!1935997 () List!53828)

(assert (=> b!4773194 (= lt!1935997 (getKeysList!1016 (t!361275 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))))))

(declare-fun lt!1935999 () Unit!138594)

(assert (=> b!4773194 (= lt!1935999 (lemmaForallContainsAddHeadPreserves!304 (t!361275 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) lt!1935997 (h!60113 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))))))

(assert (=> b!4773194 (forall!11960 lt!1935997 lambda!225825)))

(declare-fun lt!1935998 () Unit!138594)

(assert (=> b!4773194 (= lt!1935998 lt!1935999)))

(declare-fun b!4773195 () Bool)

(declare-fun Unit!138637 () Unit!138594)

(assert (=> b!4773195 (= e!2979781 Unit!138637)))

(declare-fun b!4773196 () Bool)

(declare-fun res!2024898 () Bool)

(declare-fun e!2979783 () Bool)

(assert (=> b!4773196 (=> (not res!2024898) (not e!2979783))))

(declare-fun lt!1935996 () List!53828)

(assert (=> b!4773196 (= res!2024898 (= (length!630 lt!1935996) (length!631 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))))))

(assert (=> b!4773197 (= e!2979783 (= (content!9606 lt!1935996) (content!9606 (map!12095 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))) lambda!225829))))))

(declare-fun b!4773198 () Bool)

(declare-fun Unit!138639 () Unit!138594)

(assert (=> b!4773198 (= e!2979784 Unit!138639)))

(declare-fun d!1525352 () Bool)

(assert (=> d!1525352 e!2979783))

(declare-fun res!2024897 () Bool)

(assert (=> d!1525352 (=> (not res!2024897) (not e!2979783))))

(assert (=> d!1525352 (= res!2024897 (noDuplicate!887 lt!1935996))))

(assert (=> d!1525352 (= lt!1935996 e!2979782)))

(declare-fun c!814061 () Bool)

(assert (=> d!1525352 (= c!814061 ((_ is Cons!53701) (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))))))

(assert (=> d!1525352 (invariantList!1674 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))))

(assert (=> d!1525352 (= (getKeysList!1016 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) lt!1935996)))

(declare-fun res!2024896 () Bool)

(assert (=> b!4773199 (=> (not res!2024896) (not e!2979783))))

(assert (=> b!4773199 (= res!2024896 (forall!11960 lt!1935996 lambda!225827))))

(declare-fun b!4773200 () Bool)

(assert (=> b!4773200 false))

(declare-fun Unit!138641 () Unit!138594)

(assert (=> b!4773200 (= e!2979784 Unit!138641)))

(assert (= (and d!1525352 c!814061) b!4773194))

(assert (= (and d!1525352 (not c!814061)) b!4773193))

(assert (= (and b!4773194 c!814059) b!4773200))

(assert (= (and b!4773194 (not c!814059)) b!4773198))

(assert (= (and b!4773194 c!814060) b!4773192))

(assert (= (and b!4773194 (not c!814060)) b!4773195))

(assert (= (and d!1525352 res!2024897) b!4773196))

(assert (= (and b!4773196 res!2024898) b!4773199))

(assert (= (and b!4773199 res!2024896) b!4773197))

(declare-fun m!5746172 () Bool)

(assert (=> b!4773197 m!5746172))

(declare-fun m!5746174 () Bool)

(assert (=> b!4773197 m!5746174))

(assert (=> b!4773197 m!5746174))

(declare-fun m!5746176 () Bool)

(assert (=> b!4773197 m!5746176))

(declare-fun m!5746178 () Bool)

(assert (=> b!4773199 m!5746178))

(declare-fun m!5746180 () Bool)

(assert (=> b!4773192 m!5746180))

(assert (=> b!4773192 m!5746180))

(declare-fun m!5746182 () Bool)

(assert (=> b!4773192 m!5746182))

(declare-fun m!5746184 () Bool)

(assert (=> d!1525352 m!5746184))

(declare-fun m!5746186 () Bool)

(assert (=> d!1525352 m!5746186))

(assert (=> b!4773194 m!5746180))

(declare-fun m!5746188 () Bool)

(assert (=> b!4773194 m!5746188))

(declare-fun m!5746190 () Bool)

(assert (=> b!4773194 m!5746190))

(assert (=> b!4773194 m!5746180))

(declare-fun m!5746192 () Bool)

(assert (=> b!4773194 m!5746192))

(declare-fun m!5746194 () Bool)

(assert (=> b!4773194 m!5746194))

(declare-fun m!5746196 () Bool)

(assert (=> b!4773196 m!5746196))

(declare-fun m!5746198 () Bool)

(assert (=> b!4773196 m!5746198))

(assert (=> b!4772991 d!1525352))

(declare-fun d!1525358 () Bool)

(declare-fun c!814067 () Bool)

(assert (=> d!1525358 (= c!814067 ((_ is Nil!53704) e!2979570))))

(declare-fun e!2979797 () (InoxSet K!15224))

(assert (=> d!1525358 (= (content!9606 e!2979570) e!2979797)))

(declare-fun b!4773220 () Bool)

(assert (=> b!4773220 (= e!2979797 ((as const (Array K!15224 Bool)) false))))

(declare-fun b!4773221 () Bool)

(assert (=> b!4773221 (= e!2979797 ((_ map or) (store ((as const (Array K!15224 Bool)) false) (h!60116 e!2979570) true) (content!9606 (t!361278 e!2979570))))))

(assert (= (and d!1525358 c!814067) b!4773220))

(assert (= (and d!1525358 (not c!814067)) b!4773221))

(declare-fun m!5746234 () Bool)

(assert (=> b!4773221 m!5746234))

(declare-fun m!5746236 () Bool)

(assert (=> b!4773221 m!5746236))

(assert (=> d!1525320 d!1525358))

(declare-fun d!1525366 () Bool)

(assert (=> d!1525366 (= (invariantList!1674 (toList!6476 lt!1935963)) (noDuplicatedKeys!409 (toList!6476 lt!1935963)))))

(declare-fun bs!1149966 () Bool)

(assert (= bs!1149966 d!1525366))

(declare-fun m!5746238 () Bool)

(assert (=> bs!1149966 m!5746238))

(assert (=> b!4773124 d!1525366))

(declare-fun d!1525368 () Bool)

(declare-fun res!2024918 () Bool)

(declare-fun e!2979808 () Bool)

(assert (=> d!1525368 (=> res!2024918 e!2979808)))

(assert (=> d!1525368 (= res!2024918 ((_ is Nil!53701) (toList!6476 (extractMap!2229 (t!361276 (toList!6475 lm!1309))))))))

(assert (=> d!1525368 (= (forall!11962 (toList!6476 (extractMap!2229 (t!361276 (toList!6475 lm!1309)))) (ite c!814050 lambda!225813 lambda!225815)) e!2979808)))

(declare-fun b!4773232 () Bool)

(declare-fun e!2979809 () Bool)

(assert (=> b!4773232 (= e!2979808 e!2979809)))

(declare-fun res!2024919 () Bool)

(assert (=> b!4773232 (=> (not res!2024919) (not e!2979809))))

(declare-fun dynLambda!21982 (Int tuple2!55944) Bool)

(assert (=> b!4773232 (= res!2024919 (dynLambda!21982 (ite c!814050 lambda!225813 lambda!225815) (h!60113 (toList!6476 (extractMap!2229 (t!361276 (toList!6475 lm!1309)))))))))

(declare-fun b!4773233 () Bool)

(assert (=> b!4773233 (= e!2979809 (forall!11962 (t!361275 (toList!6476 (extractMap!2229 (t!361276 (toList!6475 lm!1309))))) (ite c!814050 lambda!225813 lambda!225815)))))

(assert (= (and d!1525368 (not res!2024918)) b!4773232))

(assert (= (and b!4773232 res!2024919) b!4773233))

(declare-fun b_lambda!184733 () Bool)

(assert (=> (not b_lambda!184733) (not b!4773232)))

(declare-fun m!5746244 () Bool)

(assert (=> b!4773232 m!5746244))

(declare-fun m!5746246 () Bool)

(assert (=> b!4773233 m!5746246))

(assert (=> bm!334519 d!1525368))

(declare-fun b!4773234 () Bool)

(assert (=> b!4773234 false))

(declare-fun lt!1936014 () Unit!138594)

(declare-fun lt!1936013 () Unit!138594)

(assert (=> b!4773234 (= lt!1936014 lt!1936013)))

(assert (=> b!4773234 (containsKey!3705 (toList!6476 lt!1935954) (_1!31266 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309))))))))

(assert (=> b!4773234 (= lt!1936013 (lemmaInGetKeysListThenContainsKey!1015 (toList!6476 lt!1935954) (_1!31266 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))))))

(declare-fun e!2979814 () Unit!138594)

(declare-fun Unit!138642 () Unit!138594)

(assert (=> b!4773234 (= e!2979814 Unit!138642)))

(declare-fun b!4773236 () Bool)

(declare-fun e!2979815 () Bool)

(assert (=> b!4773236 (= e!2979815 (not (contains!17128 (keys!19504 lt!1935954) (_1!31266 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309))))))))))

(declare-fun b!4773237 () Bool)

(declare-fun e!2979813 () List!53828)

(assert (=> b!4773237 (= e!2979813 (getKeysList!1016 (toList!6476 lt!1935954)))))

(declare-fun b!4773238 () Bool)

(assert (=> b!4773238 (= e!2979813 (keys!19504 lt!1935954))))

(declare-fun b!4773239 () Bool)

(declare-fun e!2979811 () Bool)

(assert (=> b!4773239 (= e!2979811 (contains!17128 (keys!19504 lt!1935954) (_1!31266 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))))))

(declare-fun b!4773240 () Bool)

(declare-fun e!2979812 () Unit!138594)

(assert (=> b!4773240 (= e!2979812 e!2979814)))

(declare-fun c!814070 () Bool)

(declare-fun call!334525 () Bool)

(assert (=> b!4773240 (= c!814070 call!334525)))

(declare-fun bm!334520 () Bool)

(assert (=> bm!334520 (= call!334525 (contains!17128 e!2979813 (_1!31266 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))))))

(declare-fun c!814068 () Bool)

(declare-fun c!814069 () Bool)

(assert (=> bm!334520 (= c!814068 c!814069)))

(declare-fun b!4773235 () Bool)

(declare-fun Unit!138643 () Unit!138594)

(assert (=> b!4773235 (= e!2979814 Unit!138643)))

(declare-fun d!1525372 () Bool)

(declare-fun e!2979810 () Bool)

(assert (=> d!1525372 e!2979810))

(declare-fun res!2024920 () Bool)

(assert (=> d!1525372 (=> res!2024920 e!2979810)))

(assert (=> d!1525372 (= res!2024920 e!2979815)))

(declare-fun res!2024921 () Bool)

(assert (=> d!1525372 (=> (not res!2024921) (not e!2979815))))

(declare-fun lt!1936015 () Bool)

(assert (=> d!1525372 (= res!2024921 (not lt!1936015))))

(declare-fun lt!1936016 () Bool)

(assert (=> d!1525372 (= lt!1936015 lt!1936016)))

(declare-fun lt!1936010 () Unit!138594)

(assert (=> d!1525372 (= lt!1936010 e!2979812)))

(assert (=> d!1525372 (= c!814069 lt!1936016)))

(assert (=> d!1525372 (= lt!1936016 (containsKey!3705 (toList!6476 lt!1935954) (_1!31266 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))))))

(assert (=> d!1525372 (= (contains!17126 lt!1935954 (_1!31266 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))) lt!1936015)))

(declare-fun b!4773241 () Bool)

(declare-fun lt!1936012 () Unit!138594)

(assert (=> b!4773241 (= e!2979812 lt!1936012)))

(declare-fun lt!1936017 () Unit!138594)

(assert (=> b!4773241 (= lt!1936017 (lemmaContainsKeyImpliesGetValueByKeyDefined!2028 (toList!6476 lt!1935954) (_1!31266 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))))))

(assert (=> b!4773241 (isDefined!9937 (getValueByKey!2232 (toList!6476 lt!1935954) (_1!31266 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))))))

(declare-fun lt!1936011 () Unit!138594)

(assert (=> b!4773241 (= lt!1936011 lt!1936017)))

(assert (=> b!4773241 (= lt!1936012 (lemmaInListThenGetKeysListContains!1011 (toList!6476 lt!1935954) (_1!31266 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))))))

(assert (=> b!4773241 call!334525))

(declare-fun b!4773242 () Bool)

(assert (=> b!4773242 (= e!2979810 e!2979811)))

(declare-fun res!2024922 () Bool)

(assert (=> b!4773242 (=> (not res!2024922) (not e!2979811))))

(assert (=> b!4773242 (= res!2024922 (isDefined!9937 (getValueByKey!2232 (toList!6476 lt!1935954) (_1!31266 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309))))))))))

(assert (= (and d!1525372 c!814069) b!4773241))

(assert (= (and d!1525372 (not c!814069)) b!4773240))

(assert (= (and b!4773240 c!814070) b!4773234))

(assert (= (and b!4773240 (not c!814070)) b!4773235))

(assert (= (or b!4773241 b!4773240) bm!334520))

(assert (= (and bm!334520 c!814068) b!4773237))

(assert (= (and bm!334520 (not c!814068)) b!4773238))

(assert (= (and d!1525372 res!2024921) b!4773236))

(assert (= (and d!1525372 (not res!2024920)) b!4773242))

(assert (= (and b!4773242 res!2024922) b!4773239))

(declare-fun m!5746248 () Bool)

(assert (=> b!4773241 m!5746248))

(declare-fun m!5746250 () Bool)

(assert (=> b!4773241 m!5746250))

(assert (=> b!4773241 m!5746250))

(declare-fun m!5746252 () Bool)

(assert (=> b!4773241 m!5746252))

(declare-fun m!5746254 () Bool)

(assert (=> b!4773241 m!5746254))

(declare-fun m!5746256 () Bool)

(assert (=> b!4773239 m!5746256))

(assert (=> b!4773239 m!5746256))

(declare-fun m!5746258 () Bool)

(assert (=> b!4773239 m!5746258))

(assert (=> b!4773242 m!5746250))

(assert (=> b!4773242 m!5746250))

(assert (=> b!4773242 m!5746252))

(assert (=> b!4773236 m!5746256))

(assert (=> b!4773236 m!5746256))

(assert (=> b!4773236 m!5746258))

(assert (=> b!4773238 m!5746256))

(declare-fun m!5746260 () Bool)

(assert (=> b!4773234 m!5746260))

(declare-fun m!5746262 () Bool)

(assert (=> b!4773234 m!5746262))

(declare-fun m!5746264 () Bool)

(assert (=> bm!334520 m!5746264))

(assert (=> d!1525372 m!5746260))

(declare-fun m!5746266 () Bool)

(assert (=> b!4773237 m!5746266))

(assert (=> b!4773122 d!1525372))

(declare-fun d!1525374 () Bool)

(declare-fun res!2024925 () Bool)

(declare-fun e!2979818 () Bool)

(assert (=> d!1525374 (=> res!2024925 e!2979818)))

(assert (=> d!1525374 (= res!2024925 ((_ is Nil!53701) (_2!31267 (h!60114 (toList!6475 lm!1309)))))))

(assert (=> d!1525374 (= (forall!11962 (_2!31267 (h!60114 (toList!6475 lm!1309))) lambda!225815) e!2979818)))

(declare-fun b!4773245 () Bool)

(declare-fun e!2979819 () Bool)

(assert (=> b!4773245 (= e!2979818 e!2979819)))

(declare-fun res!2024926 () Bool)

(assert (=> b!4773245 (=> (not res!2024926) (not e!2979819))))

(assert (=> b!4773245 (= res!2024926 (dynLambda!21982 lambda!225815 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309))))))))

(declare-fun b!4773246 () Bool)

(assert (=> b!4773246 (= e!2979819 (forall!11962 (t!361275 (_2!31267 (h!60114 (toList!6475 lm!1309)))) lambda!225815))))

(assert (= (and d!1525374 (not res!2024925)) b!4773245))

(assert (= (and b!4773245 res!2024926) b!4773246))

(declare-fun b_lambda!184735 () Bool)

(assert (=> (not b_lambda!184735) (not b!4773245)))

(declare-fun m!5746268 () Bool)

(assert (=> b!4773245 m!5746268))

(assert (=> b!4773246 m!5746056))

(assert (=> b!4773122 d!1525374))

(declare-fun d!1525376 () Bool)

(declare-fun e!2979846 () Bool)

(assert (=> d!1525376 e!2979846))

(declare-fun res!2024949 () Bool)

(assert (=> d!1525376 (=> (not res!2024949) (not e!2979846))))

(declare-fun lt!1936032 () ListMap!5955)

(assert (=> d!1525376 (= res!2024949 (contains!17126 lt!1936032 (_1!31266 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))))))

(declare-fun lt!1936030 () List!53825)

(assert (=> d!1525376 (= lt!1936032 (ListMap!5956 lt!1936030))))

(declare-fun lt!1936033 () Unit!138594)

(declare-fun lt!1936031 () Unit!138594)

(assert (=> d!1525376 (= lt!1936033 lt!1936031)))

(assert (=> d!1525376 (= (getValueByKey!2232 lt!1936030 (_1!31266 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))) (Some!12790 (_2!31266 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1196 (List!53825 K!15224 V!15470) Unit!138594)

(assert (=> d!1525376 (= lt!1936031 (lemmaContainsTupThenGetReturnValue!1196 lt!1936030 (_1!31266 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309))))) (_2!31266 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))))))

(declare-fun insertNoDuplicatedKeys!704 (List!53825 K!15224 V!15470) List!53825)

(assert (=> d!1525376 (= lt!1936030 (insertNoDuplicatedKeys!704 (toList!6476 (extractMap!2229 (t!361276 (toList!6475 lm!1309)))) (_1!31266 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309))))) (_2!31266 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))))))

(assert (=> d!1525376 (= (+!2455 (extractMap!2229 (t!361276 (toList!6475 lm!1309))) (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309))))) lt!1936032)))

(declare-fun b!4773286 () Bool)

(declare-fun res!2024948 () Bool)

(assert (=> b!4773286 (=> (not res!2024948) (not e!2979846))))

(assert (=> b!4773286 (= res!2024948 (= (getValueByKey!2232 (toList!6476 lt!1936032) (_1!31266 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))) (Some!12790 (_2!31266 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309))))))))))

(declare-fun b!4773287 () Bool)

(declare-fun contains!17129 (List!53825 tuple2!55944) Bool)

(assert (=> b!4773287 (= e!2979846 (contains!17129 (toList!6476 lt!1936032) (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309))))))))

(assert (= (and d!1525376 res!2024949) b!4773286))

(assert (= (and b!4773286 res!2024948) b!4773287))

(declare-fun m!5746326 () Bool)

(assert (=> d!1525376 m!5746326))

(declare-fun m!5746328 () Bool)

(assert (=> d!1525376 m!5746328))

(declare-fun m!5746330 () Bool)

(assert (=> d!1525376 m!5746330))

(declare-fun m!5746332 () Bool)

(assert (=> d!1525376 m!5746332))

(declare-fun m!5746334 () Bool)

(assert (=> b!4773286 m!5746334))

(declare-fun m!5746336 () Bool)

(assert (=> b!4773287 m!5746336))

(assert (=> b!4773122 d!1525376))

(declare-fun d!1525412 () Bool)

(declare-fun res!2024950 () Bool)

(declare-fun e!2979847 () Bool)

(assert (=> d!1525412 (=> res!2024950 e!2979847)))

(assert (=> d!1525412 (= res!2024950 ((_ is Nil!53701) (toList!6476 (extractMap!2229 (t!361276 (toList!6475 lm!1309))))))))

(assert (=> d!1525412 (= (forall!11962 (toList!6476 (extractMap!2229 (t!361276 (toList!6475 lm!1309)))) lambda!225814) e!2979847)))

(declare-fun b!4773288 () Bool)

(declare-fun e!2979848 () Bool)

(assert (=> b!4773288 (= e!2979847 e!2979848)))

(declare-fun res!2024951 () Bool)

(assert (=> b!4773288 (=> (not res!2024951) (not e!2979848))))

(assert (=> b!4773288 (= res!2024951 (dynLambda!21982 lambda!225814 (h!60113 (toList!6476 (extractMap!2229 (t!361276 (toList!6475 lm!1309)))))))))

(declare-fun b!4773289 () Bool)

(assert (=> b!4773289 (= e!2979848 (forall!11962 (t!361275 (toList!6476 (extractMap!2229 (t!361276 (toList!6475 lm!1309))))) lambda!225814))))

(assert (= (and d!1525412 (not res!2024950)) b!4773288))

(assert (= (and b!4773288 res!2024951) b!4773289))

(declare-fun b_lambda!184749 () Bool)

(assert (=> (not b_lambda!184749) (not b!4773288)))

(declare-fun m!5746338 () Bool)

(assert (=> b!4773288 m!5746338))

(declare-fun m!5746340 () Bool)

(assert (=> b!4773289 m!5746340))

(assert (=> b!4773122 d!1525412))

(declare-fun d!1525414 () Bool)

(assert (=> d!1525414 (dynLambda!21982 lambda!225815 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))))

(declare-fun lt!1936037 () Unit!138594)

(declare-fun choose!34083 (List!53825 Int tuple2!55944) Unit!138594)

(assert (=> d!1525414 (= lt!1936037 (choose!34083 (toList!6476 lt!1935954) lambda!225815 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309))))))))

(declare-fun e!2979859 () Bool)

(assert (=> d!1525414 e!2979859))

(declare-fun res!2024960 () Bool)

(assert (=> d!1525414 (=> (not res!2024960) (not e!2979859))))

(assert (=> d!1525414 (= res!2024960 (forall!11962 (toList!6476 lt!1935954) lambda!225815))))

(assert (=> d!1525414 (= (forallContained!3934 (toList!6476 lt!1935954) lambda!225815 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309))))) lt!1936037)))

(declare-fun b!4773302 () Bool)

(assert (=> b!4773302 (= e!2979859 (contains!17129 (toList!6476 lt!1935954) (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309))))))))

(assert (= (and d!1525414 res!2024960) b!4773302))

(declare-fun b_lambda!184753 () Bool)

(assert (=> (not b_lambda!184753) (not d!1525414)))

(assert (=> d!1525414 m!5746268))

(declare-fun m!5746356 () Bool)

(assert (=> d!1525414 m!5746356))

(assert (=> d!1525414 m!5746054))

(declare-fun m!5746358 () Bool)

(assert (=> b!4773302 m!5746358))

(assert (=> b!4773122 d!1525414))

(declare-fun bs!1149977 () Bool)

(declare-fun b!4773305 () Bool)

(assert (= bs!1149977 (and b!4773305 b!4773121)))

(declare-fun lambda!225835 () Int)

(assert (=> bs!1149977 (= (= (+!2455 (extractMap!2229 (t!361276 (toList!6475 lm!1309))) (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309))))) (extractMap!2229 (t!361276 (toList!6475 lm!1309)))) (= lambda!225835 lambda!225813))))

(declare-fun bs!1149978 () Bool)

(assert (= bs!1149978 (and b!4773305 b!4773122)))

(assert (=> bs!1149978 (= (= (+!2455 (extractMap!2229 (t!361276 (toList!6475 lm!1309))) (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309))))) (extractMap!2229 (t!361276 (toList!6475 lm!1309)))) (= lambda!225835 lambda!225814))))

(assert (=> bs!1149978 (= (= (+!2455 (extractMap!2229 (t!361276 (toList!6475 lm!1309))) (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309))))) lt!1935969) (= lambda!225835 lambda!225815))))

(declare-fun bs!1149979 () Bool)

(assert (= bs!1149979 (and b!4773305 d!1525272)))

(assert (=> bs!1149979 (= (= (+!2455 (extractMap!2229 (t!361276 (toList!6475 lm!1309))) (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309))))) lt!1935963) (= lambda!225835 lambda!225816))))

(assert (=> b!4773305 true))

(declare-fun bs!1149980 () Bool)

(declare-fun b!4773307 () Bool)

(assert (= bs!1149980 (and b!4773307 b!4773122)))

(declare-fun lambda!225836 () Int)

(assert (=> bs!1149980 (= (= (+!2455 (extractMap!2229 (t!361276 (toList!6475 lm!1309))) (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309))))) lt!1935969) (= lambda!225836 lambda!225815))))

(declare-fun bs!1149981 () Bool)

(assert (= bs!1149981 (and b!4773307 d!1525272)))

(assert (=> bs!1149981 (= (= (+!2455 (extractMap!2229 (t!361276 (toList!6475 lm!1309))) (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309))))) lt!1935963) (= lambda!225836 lambda!225816))))

(declare-fun bs!1149982 () Bool)

(assert (= bs!1149982 (and b!4773307 b!4773305)))

(assert (=> bs!1149982 (= lambda!225836 lambda!225835)))

(assert (=> bs!1149980 (= (= (+!2455 (extractMap!2229 (t!361276 (toList!6475 lm!1309))) (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309))))) (extractMap!2229 (t!361276 (toList!6475 lm!1309)))) (= lambda!225836 lambda!225814))))

(declare-fun bs!1149983 () Bool)

(assert (= bs!1149983 (and b!4773307 b!4773121)))

(assert (=> bs!1149983 (= (= (+!2455 (extractMap!2229 (t!361276 (toList!6475 lm!1309))) (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309))))) (extractMap!2229 (t!361276 (toList!6475 lm!1309)))) (= lambda!225836 lambda!225813))))

(assert (=> b!4773307 true))

(declare-fun lt!1936057 () ListMap!5955)

(declare-fun lambda!225837 () Int)

(assert (=> bs!1149980 (= (= lt!1936057 lt!1935969) (= lambda!225837 lambda!225815))))

(assert (=> bs!1149981 (= (= lt!1936057 lt!1935963) (= lambda!225837 lambda!225816))))

(assert (=> b!4773307 (= (= lt!1936057 (+!2455 (extractMap!2229 (t!361276 (toList!6475 lm!1309))) (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))) (= lambda!225837 lambda!225836))))

(assert (=> bs!1149982 (= (= lt!1936057 (+!2455 (extractMap!2229 (t!361276 (toList!6475 lm!1309))) (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))) (= lambda!225837 lambda!225835))))

(assert (=> bs!1149980 (= (= lt!1936057 (extractMap!2229 (t!361276 (toList!6475 lm!1309)))) (= lambda!225837 lambda!225814))))

(assert (=> bs!1149983 (= (= lt!1936057 (extractMap!2229 (t!361276 (toList!6475 lm!1309)))) (= lambda!225837 lambda!225813))))

(assert (=> b!4773307 true))

(declare-fun bs!1149989 () Bool)

(declare-fun d!1525430 () Bool)

(assert (= bs!1149989 (and d!1525430 b!4773122)))

(declare-fun lambda!225839 () Int)

(declare-fun lt!1936051 () ListMap!5955)

(assert (=> bs!1149989 (= (= lt!1936051 lt!1935969) (= lambda!225839 lambda!225815))))

(declare-fun bs!1149990 () Bool)

(assert (= bs!1149990 (and d!1525430 d!1525272)))

(assert (=> bs!1149990 (= (= lt!1936051 lt!1935963) (= lambda!225839 lambda!225816))))

(declare-fun bs!1149991 () Bool)

(assert (= bs!1149991 (and d!1525430 b!4773307)))

(assert (=> bs!1149991 (= (= lt!1936051 (+!2455 (extractMap!2229 (t!361276 (toList!6475 lm!1309))) (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))) (= lambda!225839 lambda!225836))))

(declare-fun bs!1149992 () Bool)

(assert (= bs!1149992 (and d!1525430 b!4773305)))

(assert (=> bs!1149992 (= (= lt!1936051 (+!2455 (extractMap!2229 (t!361276 (toList!6475 lm!1309))) (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))) (= lambda!225839 lambda!225835))))

(assert (=> bs!1149989 (= (= lt!1936051 (extractMap!2229 (t!361276 (toList!6475 lm!1309)))) (= lambda!225839 lambda!225814))))

(assert (=> bs!1149991 (= (= lt!1936051 lt!1936057) (= lambda!225839 lambda!225837))))

(declare-fun bs!1149995 () Bool)

(assert (= bs!1149995 (and d!1525430 b!4773121)))

(assert (=> bs!1149995 (= (= lt!1936051 (extractMap!2229 (t!361276 (toList!6475 lm!1309)))) (= lambda!225839 lambda!225813))))

(assert (=> d!1525430 true))

(declare-fun c!814080 () Bool)

(declare-fun bm!334521 () Bool)

(declare-fun call!334527 () Bool)

(assert (=> bm!334521 (= call!334527 (forall!11962 (ite c!814080 (toList!6476 (+!2455 (extractMap!2229 (t!361276 (toList!6475 lm!1309))) (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))) (t!361275 (_2!31267 (h!60114 (toList!6475 lm!1309))))) (ite c!814080 lambda!225835 lambda!225837)))))

(declare-fun e!2979862 () ListMap!5955)

(assert (=> b!4773305 (= e!2979862 (+!2455 (extractMap!2229 (t!361276 (toList!6475 lm!1309))) (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309))))))))

(declare-fun lt!1936058 () Unit!138594)

(declare-fun call!334528 () Unit!138594)

(assert (=> b!4773305 (= lt!1936058 call!334528)))

(declare-fun call!334526 () Bool)

(assert (=> b!4773305 call!334526))

(declare-fun lt!1936056 () Unit!138594)

(assert (=> b!4773305 (= lt!1936056 lt!1936058)))

(assert (=> b!4773305 call!334527))

(declare-fun lt!1936045 () Unit!138594)

(declare-fun Unit!138644 () Unit!138594)

(assert (=> b!4773305 (= lt!1936045 Unit!138644)))

(declare-fun bm!334522 () Bool)

(assert (=> bm!334522 (= call!334528 (lemmaContainsAllItsOwnKeys!911 (+!2455 (extractMap!2229 (t!361276 (toList!6475 lm!1309))) (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))))))

(assert (=> b!4773307 (= e!2979862 lt!1936057)))

(declare-fun lt!1936042 () ListMap!5955)

(assert (=> b!4773307 (= lt!1936042 (+!2455 (+!2455 (extractMap!2229 (t!361276 (toList!6475 lm!1309))) (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309))))) (h!60113 (t!361275 (_2!31267 (h!60114 (toList!6475 lm!1309)))))))))

(assert (=> b!4773307 (= lt!1936057 (addToMapMapFromBucket!1639 (t!361275 (t!361275 (_2!31267 (h!60114 (toList!6475 lm!1309))))) (+!2455 (+!2455 (extractMap!2229 (t!361276 (toList!6475 lm!1309))) (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309))))) (h!60113 (t!361275 (_2!31267 (h!60114 (toList!6475 lm!1309))))))))))

(declare-fun lt!1936054 () Unit!138594)

(assert (=> b!4773307 (= lt!1936054 call!334528)))

(assert (=> b!4773307 (forall!11962 (toList!6476 (+!2455 (extractMap!2229 (t!361276 (toList!6475 lm!1309))) (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))) lambda!225836)))

(declare-fun lt!1936046 () Unit!138594)

(assert (=> b!4773307 (= lt!1936046 lt!1936054)))

(assert (=> b!4773307 (forall!11962 (toList!6476 lt!1936042) lambda!225837)))

(declare-fun lt!1936047 () Unit!138594)

(declare-fun Unit!138645 () Unit!138594)

(assert (=> b!4773307 (= lt!1936047 Unit!138645)))

(assert (=> b!4773307 (forall!11962 (t!361275 (t!361275 (_2!31267 (h!60114 (toList!6475 lm!1309))))) lambda!225837)))

(declare-fun lt!1936039 () Unit!138594)

(declare-fun Unit!138646 () Unit!138594)

(assert (=> b!4773307 (= lt!1936039 Unit!138646)))

(declare-fun lt!1936041 () Unit!138594)

(declare-fun Unit!138647 () Unit!138594)

(assert (=> b!4773307 (= lt!1936041 Unit!138647)))

(declare-fun lt!1936038 () Unit!138594)

(assert (=> b!4773307 (= lt!1936038 (forallContained!3934 (toList!6476 lt!1936042) lambda!225837 (h!60113 (t!361275 (_2!31267 (h!60114 (toList!6475 lm!1309)))))))))

(assert (=> b!4773307 (contains!17126 lt!1936042 (_1!31266 (h!60113 (t!361275 (_2!31267 (h!60114 (toList!6475 lm!1309)))))))))

(declare-fun lt!1936044 () Unit!138594)

(declare-fun Unit!138648 () Unit!138594)

(assert (=> b!4773307 (= lt!1936044 Unit!138648)))

(assert (=> b!4773307 (contains!17126 lt!1936057 (_1!31266 (h!60113 (t!361275 (_2!31267 (h!60114 (toList!6475 lm!1309)))))))))

(declare-fun lt!1936053 () Unit!138594)

(declare-fun Unit!138649 () Unit!138594)

(assert (=> b!4773307 (= lt!1936053 Unit!138649)))

(assert (=> b!4773307 call!334527))

(declare-fun lt!1936050 () Unit!138594)

(declare-fun Unit!138650 () Unit!138594)

(assert (=> b!4773307 (= lt!1936050 Unit!138650)))

(assert (=> b!4773307 (forall!11962 (toList!6476 lt!1936042) lambda!225837)))

(declare-fun lt!1936040 () Unit!138594)

(declare-fun Unit!138651 () Unit!138594)

(assert (=> b!4773307 (= lt!1936040 Unit!138651)))

(declare-fun lt!1936048 () Unit!138594)

(declare-fun Unit!138652 () Unit!138594)

(assert (=> b!4773307 (= lt!1936048 Unit!138652)))

(declare-fun lt!1936049 () Unit!138594)

(assert (=> b!4773307 (= lt!1936049 (addForallContainsKeyThenBeforeAdding!910 (+!2455 (extractMap!2229 (t!361276 (toList!6475 lm!1309))) (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309))))) lt!1936057 (_1!31266 (h!60113 (t!361275 (_2!31267 (h!60114 (toList!6475 lm!1309)))))) (_2!31266 (h!60113 (t!361275 (_2!31267 (h!60114 (toList!6475 lm!1309))))))))))

(assert (=> b!4773307 (forall!11962 (toList!6476 (+!2455 (extractMap!2229 (t!361276 (toList!6475 lm!1309))) (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))) lambda!225837)))

(declare-fun lt!1936043 () Unit!138594)

(assert (=> b!4773307 (= lt!1936043 lt!1936049)))

(assert (=> b!4773307 (forall!11962 (toList!6476 (+!2455 (extractMap!2229 (t!361276 (toList!6475 lm!1309))) (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))) lambda!225837)))

(declare-fun lt!1936052 () Unit!138594)

(declare-fun Unit!138653 () Unit!138594)

(assert (=> b!4773307 (= lt!1936052 Unit!138653)))

(declare-fun res!2024963 () Bool)

(assert (=> b!4773307 (= res!2024963 (forall!11962 (t!361275 (_2!31267 (h!60114 (toList!6475 lm!1309)))) lambda!225837))))

(declare-fun e!2979864 () Bool)

(assert (=> b!4773307 (=> (not res!2024963) (not e!2979864))))

(assert (=> b!4773307 e!2979864))

(declare-fun lt!1936055 () Unit!138594)

(declare-fun Unit!138654 () Unit!138594)

(assert (=> b!4773307 (= lt!1936055 Unit!138654)))

(declare-fun b!4773309 () Bool)

(declare-fun res!2024964 () Bool)

(declare-fun e!2979863 () Bool)

(assert (=> b!4773309 (=> (not res!2024964) (not e!2979863))))

(assert (=> b!4773309 (= res!2024964 (forall!11962 (toList!6476 (+!2455 (extractMap!2229 (t!361276 (toList!6475 lm!1309))) (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))) lambda!225839))))

(declare-fun b!4773310 () Bool)

(assert (=> b!4773310 (= e!2979863 (invariantList!1674 (toList!6476 lt!1936051)))))

(assert (=> d!1525430 e!2979863))

(declare-fun res!2024965 () Bool)

(assert (=> d!1525430 (=> (not res!2024965) (not e!2979863))))

(assert (=> d!1525430 (= res!2024965 (forall!11962 (t!361275 (_2!31267 (h!60114 (toList!6475 lm!1309)))) lambda!225839))))

(assert (=> d!1525430 (= lt!1936051 e!2979862)))

(assert (=> d!1525430 (= c!814080 ((_ is Nil!53701) (t!361275 (_2!31267 (h!60114 (toList!6475 lm!1309))))))))

(assert (=> d!1525430 (noDuplicateKeys!2270 (t!361275 (_2!31267 (h!60114 (toList!6475 lm!1309)))))))

(assert (=> d!1525430 (= (addToMapMapFromBucket!1639 (t!361275 (_2!31267 (h!60114 (toList!6475 lm!1309)))) (+!2455 (extractMap!2229 (t!361276 (toList!6475 lm!1309))) (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))) lt!1936051)))

(declare-fun b!4773311 () Bool)

(assert (=> b!4773311 (= e!2979864 call!334526)))

(declare-fun bm!334523 () Bool)

(assert (=> bm!334523 (= call!334526 (forall!11962 (toList!6476 (+!2455 (extractMap!2229 (t!361276 (toList!6475 lm!1309))) (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))) (ite c!814080 lambda!225835 lambda!225837)))))

(assert (= (and d!1525430 c!814080) b!4773305))

(assert (= (and d!1525430 (not c!814080)) b!4773307))

(assert (= (and b!4773307 res!2024963) b!4773311))

(assert (= (or b!4773305 b!4773311) bm!334523))

(assert (= (or b!4773305 b!4773307) bm!334521))

(assert (= (or b!4773305 b!4773307) bm!334522))

(assert (= (and d!1525430 res!2024965) b!4773309))

(assert (= (and b!4773309 res!2024964) b!4773310))

(declare-fun m!5746370 () Bool)

(assert (=> bm!334521 m!5746370))

(declare-fun m!5746372 () Bool)

(assert (=> b!4773307 m!5746372))

(declare-fun m!5746374 () Bool)

(assert (=> b!4773307 m!5746374))

(declare-fun m!5746376 () Bool)

(assert (=> b!4773307 m!5746376))

(declare-fun m!5746378 () Bool)

(assert (=> b!4773307 m!5746378))

(assert (=> b!4773307 m!5746050))

(assert (=> b!4773307 m!5746374))

(declare-fun m!5746380 () Bool)

(assert (=> b!4773307 m!5746380))

(declare-fun m!5746382 () Bool)

(assert (=> b!4773307 m!5746382))

(declare-fun m!5746384 () Bool)

(assert (=> b!4773307 m!5746384))

(declare-fun m!5746386 () Bool)

(assert (=> b!4773307 m!5746386))

(declare-fun m!5746388 () Bool)

(assert (=> b!4773307 m!5746388))

(assert (=> b!4773307 m!5746378))

(declare-fun m!5746390 () Bool)

(assert (=> b!4773307 m!5746390))

(assert (=> b!4773307 m!5746050))

(declare-fun m!5746392 () Bool)

(assert (=> b!4773307 m!5746392))

(assert (=> b!4773307 m!5746372))

(declare-fun m!5746394 () Bool)

(assert (=> d!1525430 m!5746394))

(assert (=> d!1525430 m!5745954))

(declare-fun m!5746396 () Bool)

(assert (=> bm!334523 m!5746396))

(assert (=> bm!334522 m!5746050))

(declare-fun m!5746398 () Bool)

(assert (=> bm!334522 m!5746398))

(declare-fun m!5746400 () Bool)

(assert (=> b!4773310 m!5746400))

(declare-fun m!5746402 () Bool)

(assert (=> b!4773309 m!5746402))

(assert (=> b!4773122 d!1525430))

(declare-fun d!1525438 () Bool)

(declare-fun res!2024977 () Bool)

(declare-fun e!2979876 () Bool)

(assert (=> d!1525438 (=> res!2024977 e!2979876)))

(assert (=> d!1525438 (= res!2024977 ((_ is Nil!53701) (toList!6476 lt!1935954)))))

(assert (=> d!1525438 (= (forall!11962 (toList!6476 lt!1935954) lambda!225815) e!2979876)))

(declare-fun b!4773323 () Bool)

(declare-fun e!2979877 () Bool)

(assert (=> b!4773323 (= e!2979876 e!2979877)))

(declare-fun res!2024978 () Bool)

(assert (=> b!4773323 (=> (not res!2024978) (not e!2979877))))

(assert (=> b!4773323 (= res!2024978 (dynLambda!21982 lambda!225815 (h!60113 (toList!6476 lt!1935954))))))

(declare-fun b!4773324 () Bool)

(assert (=> b!4773324 (= e!2979877 (forall!11962 (t!361275 (toList!6476 lt!1935954)) lambda!225815))))

(assert (= (and d!1525438 (not res!2024977)) b!4773323))

(assert (= (and b!4773323 res!2024978) b!4773324))

(declare-fun b_lambda!184757 () Bool)

(assert (=> (not b_lambda!184757) (not b!4773323)))

(declare-fun m!5746404 () Bool)

(assert (=> b!4773323 m!5746404))

(declare-fun m!5746406 () Bool)

(assert (=> b!4773324 m!5746406))

(assert (=> b!4773122 d!1525438))

(declare-fun bs!1150013 () Bool)

(declare-fun d!1525440 () Bool)

(assert (= bs!1150013 (and d!1525440 b!4773122)))

(declare-fun lambda!225848 () Int)

(assert (=> bs!1150013 (= lambda!225848 lambda!225815)))

(declare-fun bs!1150014 () Bool)

(assert (= bs!1150014 (and d!1525440 d!1525272)))

(assert (=> bs!1150014 (= (= lt!1935969 lt!1935963) (= lambda!225848 lambda!225816))))

(declare-fun bs!1150016 () Bool)

(assert (= bs!1150016 (and d!1525440 b!4773307)))

(assert (=> bs!1150016 (= (= lt!1935969 (+!2455 (extractMap!2229 (t!361276 (toList!6475 lm!1309))) (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))) (= lambda!225848 lambda!225836))))

(declare-fun bs!1150017 () Bool)

(assert (= bs!1150017 (and d!1525440 b!4773305)))

(assert (=> bs!1150017 (= (= lt!1935969 (+!2455 (extractMap!2229 (t!361276 (toList!6475 lm!1309))) (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))) (= lambda!225848 lambda!225835))))

(assert (=> bs!1150013 (= (= lt!1935969 (extractMap!2229 (t!361276 (toList!6475 lm!1309)))) (= lambda!225848 lambda!225814))))

(declare-fun bs!1150018 () Bool)

(assert (= bs!1150018 (and d!1525440 d!1525430)))

(assert (=> bs!1150018 (= (= lt!1935969 lt!1936051) (= lambda!225848 lambda!225839))))

(assert (=> bs!1150016 (= (= lt!1935969 lt!1936057) (= lambda!225848 lambda!225837))))

(declare-fun bs!1150019 () Bool)

(assert (= bs!1150019 (and d!1525440 b!4773121)))

(assert (=> bs!1150019 (= (= lt!1935969 (extractMap!2229 (t!361276 (toList!6475 lm!1309)))) (= lambda!225848 lambda!225813))))

(assert (=> d!1525440 true))

(assert (=> d!1525440 (forall!11962 (toList!6476 (extractMap!2229 (t!361276 (toList!6475 lm!1309)))) lambda!225848)))

(declare-fun lt!1936083 () Unit!138594)

(declare-fun choose!34084 (ListMap!5955 ListMap!5955 K!15224 V!15470) Unit!138594)

(assert (=> d!1525440 (= lt!1936083 (choose!34084 (extractMap!2229 (t!361276 (toList!6475 lm!1309))) lt!1935969 (_1!31266 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309))))) (_2!31266 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))))))

(assert (=> d!1525440 (forall!11962 (toList!6476 (+!2455 (extractMap!2229 (t!361276 (toList!6475 lm!1309))) (tuple2!55945 (_1!31266 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309))))) (_2!31266 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))))) lambda!225848)))

(assert (=> d!1525440 (= (addForallContainsKeyThenBeforeAdding!910 (extractMap!2229 (t!361276 (toList!6475 lm!1309))) lt!1935969 (_1!31266 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309))))) (_2!31266 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))) lt!1936083)))

(declare-fun bs!1150020 () Bool)

(assert (= bs!1150020 d!1525440))

(declare-fun m!5746466 () Bool)

(assert (=> bs!1150020 m!5746466))

(assert (=> bs!1150020 m!5745798))

(declare-fun m!5746468 () Bool)

(assert (=> bs!1150020 m!5746468))

(assert (=> bs!1150020 m!5745798))

(declare-fun m!5746470 () Bool)

(assert (=> bs!1150020 m!5746470))

(declare-fun m!5746472 () Bool)

(assert (=> bs!1150020 m!5746472))

(assert (=> b!4773122 d!1525440))

(declare-fun d!1525462 () Bool)

(declare-fun res!2024996 () Bool)

(declare-fun e!2979893 () Bool)

(assert (=> d!1525462 (=> res!2024996 e!2979893)))

(assert (=> d!1525462 (= res!2024996 ((_ is Nil!53701) (t!361275 (_2!31267 (h!60114 (toList!6475 lm!1309))))))))

(assert (=> d!1525462 (= (forall!11962 (t!361275 (_2!31267 (h!60114 (toList!6475 lm!1309)))) lambda!225815) e!2979893)))

(declare-fun b!4773342 () Bool)

(declare-fun e!2979894 () Bool)

(assert (=> b!4773342 (= e!2979893 e!2979894)))

(declare-fun res!2024997 () Bool)

(assert (=> b!4773342 (=> (not res!2024997) (not e!2979894))))

(assert (=> b!4773342 (= res!2024997 (dynLambda!21982 lambda!225815 (h!60113 (t!361275 (_2!31267 (h!60114 (toList!6475 lm!1309)))))))))

(declare-fun b!4773343 () Bool)

(assert (=> b!4773343 (= e!2979894 (forall!11962 (t!361275 (t!361275 (_2!31267 (h!60114 (toList!6475 lm!1309))))) lambda!225815))))

(assert (= (and d!1525462 (not res!2024996)) b!4773342))

(assert (= (and b!4773342 res!2024997) b!4773343))

(declare-fun b_lambda!184763 () Bool)

(assert (=> (not b_lambda!184763) (not b!4773342)))

(declare-fun m!5746480 () Bool)

(assert (=> b!4773342 m!5746480))

(declare-fun m!5746482 () Bool)

(assert (=> b!4773343 m!5746482))

(assert (=> b!4773122 d!1525462))

(declare-fun b!4773344 () Bool)

(assert (=> b!4773344 false))

(declare-fun lt!1936089 () Unit!138594)

(declare-fun lt!1936088 () Unit!138594)

(assert (=> b!4773344 (= lt!1936089 lt!1936088)))

(assert (=> b!4773344 (containsKey!3705 (toList!6476 lt!1935969) (_1!31266 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309))))))))

(assert (=> b!4773344 (= lt!1936088 (lemmaInGetKeysListThenContainsKey!1015 (toList!6476 lt!1935969) (_1!31266 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))))))

(declare-fun e!2979899 () Unit!138594)

(declare-fun Unit!138666 () Unit!138594)

(assert (=> b!4773344 (= e!2979899 Unit!138666)))

(declare-fun b!4773346 () Bool)

(declare-fun e!2979900 () Bool)

(assert (=> b!4773346 (= e!2979900 (not (contains!17128 (keys!19504 lt!1935969) (_1!31266 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309))))))))))

(declare-fun b!4773347 () Bool)

(declare-fun e!2979898 () List!53828)

(assert (=> b!4773347 (= e!2979898 (getKeysList!1016 (toList!6476 lt!1935969)))))

(declare-fun b!4773348 () Bool)

(assert (=> b!4773348 (= e!2979898 (keys!19504 lt!1935969))))

(declare-fun b!4773349 () Bool)

(declare-fun e!2979896 () Bool)

(assert (=> b!4773349 (= e!2979896 (contains!17128 (keys!19504 lt!1935969) (_1!31266 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))))))

(declare-fun b!4773350 () Bool)

(declare-fun e!2979897 () Unit!138594)

(assert (=> b!4773350 (= e!2979897 e!2979899)))

(declare-fun c!814085 () Bool)

(declare-fun call!334532 () Bool)

(assert (=> b!4773350 (= c!814085 call!334532)))

(declare-fun bm!334527 () Bool)

(assert (=> bm!334527 (= call!334532 (contains!17128 e!2979898 (_1!31266 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))))))

(declare-fun c!814083 () Bool)

(declare-fun c!814084 () Bool)

(assert (=> bm!334527 (= c!814083 c!814084)))

(declare-fun b!4773345 () Bool)

(declare-fun Unit!138667 () Unit!138594)

(assert (=> b!4773345 (= e!2979899 Unit!138667)))

(declare-fun d!1525466 () Bool)

(declare-fun e!2979895 () Bool)

(assert (=> d!1525466 e!2979895))

(declare-fun res!2024998 () Bool)

(assert (=> d!1525466 (=> res!2024998 e!2979895)))

(assert (=> d!1525466 (= res!2024998 e!2979900)))

(declare-fun res!2024999 () Bool)

(assert (=> d!1525466 (=> (not res!2024999) (not e!2979900))))

(declare-fun lt!1936090 () Bool)

(assert (=> d!1525466 (= res!2024999 (not lt!1936090))))

(declare-fun lt!1936091 () Bool)

(assert (=> d!1525466 (= lt!1936090 lt!1936091)))

(declare-fun lt!1936085 () Unit!138594)

(assert (=> d!1525466 (= lt!1936085 e!2979897)))

(assert (=> d!1525466 (= c!814084 lt!1936091)))

(assert (=> d!1525466 (= lt!1936091 (containsKey!3705 (toList!6476 lt!1935969) (_1!31266 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))))))

(assert (=> d!1525466 (= (contains!17126 lt!1935969 (_1!31266 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))) lt!1936090)))

(declare-fun b!4773351 () Bool)

(declare-fun lt!1936087 () Unit!138594)

(assert (=> b!4773351 (= e!2979897 lt!1936087)))

(declare-fun lt!1936092 () Unit!138594)

(assert (=> b!4773351 (= lt!1936092 (lemmaContainsKeyImpliesGetValueByKeyDefined!2028 (toList!6476 lt!1935969) (_1!31266 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))))))

(assert (=> b!4773351 (isDefined!9937 (getValueByKey!2232 (toList!6476 lt!1935969) (_1!31266 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))))))

(declare-fun lt!1936086 () Unit!138594)

(assert (=> b!4773351 (= lt!1936086 lt!1936092)))

(assert (=> b!4773351 (= lt!1936087 (lemmaInListThenGetKeysListContains!1011 (toList!6476 lt!1935969) (_1!31266 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))))))

(assert (=> b!4773351 call!334532))

(declare-fun b!4773352 () Bool)

(assert (=> b!4773352 (= e!2979895 e!2979896)))

(declare-fun res!2025000 () Bool)

(assert (=> b!4773352 (=> (not res!2025000) (not e!2979896))))

(assert (=> b!4773352 (= res!2025000 (isDefined!9937 (getValueByKey!2232 (toList!6476 lt!1935969) (_1!31266 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309))))))))))

(assert (= (and d!1525466 c!814084) b!4773351))

(assert (= (and d!1525466 (not c!814084)) b!4773350))

(assert (= (and b!4773350 c!814085) b!4773344))

(assert (= (and b!4773350 (not c!814085)) b!4773345))

(assert (= (or b!4773351 b!4773350) bm!334527))

(assert (= (and bm!334527 c!814083) b!4773347))

(assert (= (and bm!334527 (not c!814083)) b!4773348))

(assert (= (and d!1525466 res!2024999) b!4773346))

(assert (= (and d!1525466 (not res!2024998)) b!4773352))

(assert (= (and b!4773352 res!2025000) b!4773349))

(declare-fun m!5746484 () Bool)

(assert (=> b!4773351 m!5746484))

(declare-fun m!5746486 () Bool)

(assert (=> b!4773351 m!5746486))

(assert (=> b!4773351 m!5746486))

(declare-fun m!5746488 () Bool)

(assert (=> b!4773351 m!5746488))

(declare-fun m!5746490 () Bool)

(assert (=> b!4773351 m!5746490))

(declare-fun m!5746492 () Bool)

(assert (=> b!4773349 m!5746492))

(assert (=> b!4773349 m!5746492))

(declare-fun m!5746494 () Bool)

(assert (=> b!4773349 m!5746494))

(assert (=> b!4773352 m!5746486))

(assert (=> b!4773352 m!5746486))

(assert (=> b!4773352 m!5746488))

(assert (=> b!4773346 m!5746492))

(assert (=> b!4773346 m!5746492))

(assert (=> b!4773346 m!5746494))

(assert (=> b!4773348 m!5746492))

(declare-fun m!5746496 () Bool)

(assert (=> b!4773344 m!5746496))

(declare-fun m!5746498 () Bool)

(assert (=> b!4773344 m!5746498))

(declare-fun m!5746500 () Bool)

(assert (=> bm!334527 m!5746500))

(assert (=> d!1525466 m!5746496))

(declare-fun m!5746502 () Bool)

(assert (=> b!4773347 m!5746502))

(assert (=> b!4773122 d!1525466))

(declare-fun d!1525468 () Bool)

(declare-fun res!2025001 () Bool)

(declare-fun e!2979901 () Bool)

(assert (=> d!1525468 (=> res!2025001 e!2979901)))

(assert (=> d!1525468 (= res!2025001 ((_ is Nil!53701) (toList!6476 (extractMap!2229 (t!361276 (toList!6475 lm!1309))))))))

(assert (=> d!1525468 (= (forall!11962 (toList!6476 (extractMap!2229 (t!361276 (toList!6475 lm!1309)))) lambda!225815) e!2979901)))

(declare-fun b!4773353 () Bool)

(declare-fun e!2979902 () Bool)

(assert (=> b!4773353 (= e!2979901 e!2979902)))

(declare-fun res!2025002 () Bool)

(assert (=> b!4773353 (=> (not res!2025002) (not e!2979902))))

(assert (=> b!4773353 (= res!2025002 (dynLambda!21982 lambda!225815 (h!60113 (toList!6476 (extractMap!2229 (t!361276 (toList!6475 lm!1309)))))))))

(declare-fun b!4773354 () Bool)

(assert (=> b!4773354 (= e!2979902 (forall!11962 (t!361275 (toList!6476 (extractMap!2229 (t!361276 (toList!6475 lm!1309))))) lambda!225815))))

(assert (= (and d!1525468 (not res!2025001)) b!4773353))

(assert (= (and b!4773353 res!2025002) b!4773354))

(declare-fun b_lambda!184765 () Bool)

(assert (=> (not b_lambda!184765) (not b!4773353)))

(declare-fun m!5746504 () Bool)

(assert (=> b!4773353 m!5746504))

(declare-fun m!5746506 () Bool)

(assert (=> b!4773354 m!5746506))

(assert (=> b!4773122 d!1525468))

(declare-fun d!1525472 () Bool)

(declare-fun res!2025005 () Bool)

(declare-fun e!2979905 () Bool)

(assert (=> d!1525472 (=> res!2025005 e!2979905)))

(assert (=> d!1525472 (= res!2025005 ((_ is Nil!53702) (t!361276 (t!361276 (toList!6475 lm!1309)))))))

(assert (=> d!1525472 (= (forall!11958 (t!361276 (t!361276 (toList!6475 lm!1309))) lambda!225697) e!2979905)))

(declare-fun b!4773357 () Bool)

(declare-fun e!2979906 () Bool)

(assert (=> b!4773357 (= e!2979905 e!2979906)))

(declare-fun res!2025006 () Bool)

(assert (=> b!4773357 (=> (not res!2025006) (not e!2979906))))

(assert (=> b!4773357 (= res!2025006 (dynLambda!21978 lambda!225697 (h!60114 (t!361276 (t!361276 (toList!6475 lm!1309))))))))

(declare-fun b!4773358 () Bool)

(assert (=> b!4773358 (= e!2979906 (forall!11958 (t!361276 (t!361276 (t!361276 (toList!6475 lm!1309)))) lambda!225697))))

(assert (= (and d!1525472 (not res!2025005)) b!4773357))

(assert (= (and b!4773357 res!2025006) b!4773358))

(declare-fun b_lambda!184767 () Bool)

(assert (=> (not b_lambda!184767) (not b!4773357)))

(declare-fun m!5746510 () Bool)

(assert (=> b!4773357 m!5746510))

(declare-fun m!5746512 () Bool)

(assert (=> b!4773358 m!5746512))

(assert (=> b!4773003 d!1525472))

(declare-fun d!1525476 () Bool)

(declare-fun lt!1936093 () Bool)

(assert (=> d!1525476 (= lt!1936093 (select (content!9606 (t!361278 (keys!19504 (extractMap!2229 (toList!6475 lm!1309))))) key!2872))))

(declare-fun e!2979907 () Bool)

(assert (=> d!1525476 (= lt!1936093 e!2979907)))

(declare-fun res!2025007 () Bool)

(assert (=> d!1525476 (=> (not res!2025007) (not e!2979907))))

(assert (=> d!1525476 (= res!2025007 ((_ is Cons!53704) (t!361278 (keys!19504 (extractMap!2229 (toList!6475 lm!1309))))))))

(assert (=> d!1525476 (= (contains!17128 (t!361278 (keys!19504 (extractMap!2229 (toList!6475 lm!1309)))) key!2872) lt!1936093)))

(declare-fun b!4773359 () Bool)

(declare-fun e!2979909 () Bool)

(assert (=> b!4773359 (= e!2979907 e!2979909)))

(declare-fun res!2025008 () Bool)

(assert (=> b!4773359 (=> res!2025008 e!2979909)))

(assert (=> b!4773359 (= res!2025008 (= (h!60116 (t!361278 (keys!19504 (extractMap!2229 (toList!6475 lm!1309))))) key!2872))))

(declare-fun b!4773361 () Bool)

(assert (=> b!4773361 (= e!2979909 (contains!17128 (t!361278 (t!361278 (keys!19504 (extractMap!2229 (toList!6475 lm!1309))))) key!2872))))

(assert (= (and d!1525476 res!2025007) b!4773359))

(assert (= (and b!4773359 (not res!2025008)) b!4773361))

(declare-fun m!5746516 () Bool)

(assert (=> d!1525476 m!5746516))

(declare-fun m!5746518 () Bool)

(assert (=> d!1525476 m!5746518))

(declare-fun m!5746520 () Bool)

(assert (=> b!4773361 m!5746520))

(assert (=> b!4772963 d!1525476))

(assert (=> d!1525258 d!1525256))

(declare-fun d!1525482 () Bool)

(assert (=> d!1525482 (containsKey!3705 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))) key!2872)))

(assert (=> d!1525482 true))

(declare-fun _$15!848 () Unit!138594)

(assert (=> d!1525482 (= (choose!34072 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))) key!2872) _$15!848)))

(declare-fun bs!1150023 () Bool)

(assert (= bs!1150023 d!1525482))

(assert (=> bs!1150023 m!5745768))

(assert (=> d!1525258 d!1525482))

(declare-fun d!1525486 () Bool)

(assert (=> d!1525486 (= (invariantList!1674 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))) (noDuplicatedKeys!409 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))))

(declare-fun bs!1150024 () Bool)

(assert (= bs!1150024 d!1525486))

(declare-fun m!5746530 () Bool)

(assert (=> bs!1150024 m!5746530))

(assert (=> d!1525258 d!1525486))

(declare-fun d!1525490 () Bool)

(assert (=> d!1525490 (= (isDefined!9936 (getValueByKey!2230 (toList!6475 lm!1309) (hash!4667 hashF!980 key!2872))) (not (isEmpty!29309 (getValueByKey!2230 (toList!6475 lm!1309) (hash!4667 hashF!980 key!2872)))))))

(declare-fun bs!1150025 () Bool)

(assert (= bs!1150025 d!1525490))

(assert (=> bs!1150025 m!5745816))

(declare-fun m!5746532 () Bool)

(assert (=> bs!1150025 m!5746532))

(assert (=> b!4772911 d!1525490))

(declare-fun b!4773371 () Bool)

(declare-fun e!2979916 () Option!12789)

(declare-fun e!2979917 () Option!12789)

(assert (=> b!4773371 (= e!2979916 e!2979917)))

(declare-fun c!814089 () Bool)

(assert (=> b!4773371 (= c!814089 (and ((_ is Cons!53702) (toList!6475 lm!1309)) (not (= (_1!31267 (h!60114 (toList!6475 lm!1309))) (hash!4667 hashF!980 key!2872)))))))

(declare-fun d!1525492 () Bool)

(declare-fun c!814088 () Bool)

(assert (=> d!1525492 (= c!814088 (and ((_ is Cons!53702) (toList!6475 lm!1309)) (= (_1!31267 (h!60114 (toList!6475 lm!1309))) (hash!4667 hashF!980 key!2872))))))

(assert (=> d!1525492 (= (getValueByKey!2230 (toList!6475 lm!1309) (hash!4667 hashF!980 key!2872)) e!2979916)))

(declare-fun b!4773370 () Bool)

(assert (=> b!4773370 (= e!2979916 (Some!12788 (_2!31267 (h!60114 (toList!6475 lm!1309)))))))

(declare-fun b!4773372 () Bool)

(assert (=> b!4773372 (= e!2979917 (getValueByKey!2230 (t!361276 (toList!6475 lm!1309)) (hash!4667 hashF!980 key!2872)))))

(declare-fun b!4773373 () Bool)

(assert (=> b!4773373 (= e!2979917 None!12788)))

(assert (= (and d!1525492 c!814088) b!4773370))

(assert (= (and d!1525492 (not c!814088)) b!4773371))

(assert (= (and b!4773371 c!814089) b!4773372))

(assert (= (and b!4773371 (not c!814089)) b!4773373))

(assert (=> b!4773372 m!5745684))

(declare-fun m!5746538 () Bool)

(assert (=> b!4773372 m!5746538))

(assert (=> b!4772911 d!1525492))

(declare-fun d!1525496 () Bool)

(declare-fun res!2025016 () Bool)

(declare-fun e!2979920 () Bool)

(assert (=> d!1525496 (=> res!2025016 e!2979920)))

(assert (=> d!1525496 (= res!2025016 ((_ is Nil!53702) (t!361276 (toList!6475 lm!1309))))))

(assert (=> d!1525496 (= (forall!11958 (t!361276 (toList!6475 lm!1309)) lambda!225715) e!2979920)))

(declare-fun b!4773376 () Bool)

(declare-fun e!2979921 () Bool)

(assert (=> b!4773376 (= e!2979920 e!2979921)))

(declare-fun res!2025017 () Bool)

(assert (=> b!4773376 (=> (not res!2025017) (not e!2979921))))

(assert (=> b!4773376 (= res!2025017 (dynLambda!21978 lambda!225715 (h!60114 (t!361276 (toList!6475 lm!1309)))))))

(declare-fun b!4773377 () Bool)

(assert (=> b!4773377 (= e!2979921 (forall!11958 (t!361276 (t!361276 (toList!6475 lm!1309))) lambda!225715))))

(assert (= (and d!1525496 (not res!2025016)) b!4773376))

(assert (= (and b!4773376 res!2025017) b!4773377))

(declare-fun b_lambda!184775 () Bool)

(assert (=> (not b_lambda!184775) (not b!4773376)))

(declare-fun m!5746544 () Bool)

(assert (=> b!4773376 m!5746544))

(declare-fun m!5746546 () Bool)

(assert (=> b!4773377 m!5746546))

(assert (=> b!4773154 d!1525496))

(declare-fun bs!1150026 () Bool)

(declare-fun d!1525500 () Bool)

(assert (= bs!1150026 (and d!1525500 b!4773122)))

(declare-fun lambda!225851 () Int)

(assert (=> bs!1150026 (not (= lambda!225851 lambda!225815))))

(declare-fun bs!1150027 () Bool)

(assert (= bs!1150027 (and d!1525500 d!1525272)))

(assert (=> bs!1150027 (not (= lambda!225851 lambda!225816))))

(declare-fun bs!1150028 () Bool)

(assert (= bs!1150028 (and d!1525500 b!4773307)))

(assert (=> bs!1150028 (not (= lambda!225851 lambda!225836))))

(declare-fun bs!1150029 () Bool)

(assert (= bs!1150029 (and d!1525500 d!1525440)))

(assert (=> bs!1150029 (not (= lambda!225851 lambda!225848))))

(declare-fun bs!1150030 () Bool)

(assert (= bs!1150030 (and d!1525500 b!4773305)))

(assert (=> bs!1150030 (not (= lambda!225851 lambda!225835))))

(assert (=> bs!1150026 (not (= lambda!225851 lambda!225814))))

(declare-fun bs!1150031 () Bool)

(assert (= bs!1150031 (and d!1525500 d!1525430)))

(assert (=> bs!1150031 (not (= lambda!225851 lambda!225839))))

(assert (=> bs!1150028 (not (= lambda!225851 lambda!225837))))

(declare-fun bs!1150032 () Bool)

(assert (= bs!1150032 (and d!1525500 b!4773121)))

(assert (=> bs!1150032 (not (= lambda!225851 lambda!225813))))

(assert (=> d!1525500 true))

(assert (=> d!1525500 true))

(assert (=> d!1525500 (= (allKeysSameHash!1928 (_2!31267 (h!60114 (toList!6475 lm!1309))) (_1!31267 (h!60114 (toList!6475 lm!1309))) hashF!980) (forall!11962 (_2!31267 (h!60114 (toList!6475 lm!1309))) lambda!225851))))

(declare-fun bs!1150033 () Bool)

(assert (= bs!1150033 d!1525500))

(declare-fun m!5746554 () Bool)

(assert (=> bs!1150033 m!5746554))

(assert (=> bs!1149916 d!1525500))

(declare-fun d!1525504 () Bool)

(declare-fun res!2025028 () Bool)

(declare-fun e!2979935 () Bool)

(assert (=> d!1525504 (=> res!2025028 e!2979935)))

(assert (=> d!1525504 (= res!2025028 ((_ is Nil!53704) lt!1935778))))

(assert (=> d!1525504 (= (noDuplicate!887 lt!1935778) e!2979935)))

(declare-fun b!4773398 () Bool)

(declare-fun e!2979936 () Bool)

(assert (=> b!4773398 (= e!2979935 e!2979936)))

(declare-fun res!2025029 () Bool)

(assert (=> b!4773398 (=> (not res!2025029) (not e!2979936))))

(assert (=> b!4773398 (= res!2025029 (not (contains!17128 (t!361278 lt!1935778) (h!60116 lt!1935778))))))

(declare-fun b!4773399 () Bool)

(assert (=> b!4773399 (= e!2979936 (noDuplicate!887 (t!361278 lt!1935778)))))

(assert (= (and d!1525504 (not res!2025028)) b!4773398))

(assert (= (and b!4773398 res!2025029) b!4773399))

(declare-fun m!5746576 () Bool)

(assert (=> b!4773398 m!5746576))

(declare-fun m!5746578 () Bool)

(assert (=> b!4773399 m!5746578))

(assert (=> d!1525214 d!1525504))

(assert (=> d!1525214 d!1525230))

(declare-fun d!1525508 () Bool)

(assert (=> d!1525508 (isDefined!9936 (getValueByKey!2230 (toList!6475 lm!1309) (hash!4667 hashF!980 key!2872)))))

(declare-fun lt!1936106 () Unit!138594)

(assert (=> d!1525508 (= lt!1936106 (choose!34071 (toList!6475 lm!1309) (hash!4667 hashF!980 key!2872)))))

(declare-fun e!2979937 () Bool)

(assert (=> d!1525508 e!2979937))

(declare-fun res!2025030 () Bool)

(assert (=> d!1525508 (=> (not res!2025030) (not e!2979937))))

(assert (=> d!1525508 (= res!2025030 (isStrictlySorted!825 (toList!6475 lm!1309)))))

(assert (=> d!1525508 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2027 (toList!6475 lm!1309) (hash!4667 hashF!980 key!2872)) lt!1936106)))

(declare-fun b!4773400 () Bool)

(assert (=> b!4773400 (= e!2979937 (containsKey!3704 (toList!6475 lm!1309) (hash!4667 hashF!980 key!2872)))))

(assert (= (and d!1525508 res!2025030) b!4773400))

(assert (=> d!1525508 m!5745684))

(assert (=> d!1525508 m!5745816))

(assert (=> d!1525508 m!5745816))

(assert (=> d!1525508 m!5745818))

(assert (=> d!1525508 m!5745684))

(declare-fun m!5746580 () Bool)

(assert (=> d!1525508 m!5746580))

(assert (=> d!1525508 m!5745806))

(assert (=> b!4773400 m!5745684))

(assert (=> b!4773400 m!5745812))

(assert (=> b!4772909 d!1525508))

(assert (=> b!4772909 d!1525490))

(assert (=> b!4772909 d!1525492))

(declare-fun d!1525510 () Bool)

(declare-fun res!2025031 () Bool)

(declare-fun e!2979938 () Bool)

(assert (=> d!1525510 (=> res!2025031 e!2979938)))

(assert (=> d!1525510 (= res!2025031 (and ((_ is Cons!53701) (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) (= (_1!31266 (h!60113 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))) key!2872)))))

(assert (=> d!1525510 (= (containsKey!3705 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))) key!2872) e!2979938)))

(declare-fun b!4773401 () Bool)

(declare-fun e!2979939 () Bool)

(assert (=> b!4773401 (= e!2979938 e!2979939)))

(declare-fun res!2025032 () Bool)

(assert (=> b!4773401 (=> (not res!2025032) (not e!2979939))))

(assert (=> b!4773401 (= res!2025032 ((_ is Cons!53701) (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))))))

(declare-fun b!4773402 () Bool)

(assert (=> b!4773402 (= e!2979939 (containsKey!3705 (t!361275 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) key!2872))))

(assert (= (and d!1525510 (not res!2025031)) b!4773401))

(assert (= (and b!4773401 res!2025032) b!4773402))

(declare-fun m!5746582 () Bool)

(assert (=> b!4773402 m!5746582))

(assert (=> b!4773014 d!1525510))

(declare-fun bs!1150034 () Bool)

(declare-fun b!4773403 () Bool)

(assert (= bs!1150034 (and b!4773403 b!4773122)))

(declare-fun lambda!225852 () Int)

(assert (=> bs!1150034 (= (= (extractMap!2229 (t!361276 (t!361276 (toList!6475 lm!1309)))) lt!1935969) (= lambda!225852 lambda!225815))))

(declare-fun bs!1150035 () Bool)

(assert (= bs!1150035 (and b!4773403 d!1525272)))

(assert (=> bs!1150035 (= (= (extractMap!2229 (t!361276 (t!361276 (toList!6475 lm!1309)))) lt!1935963) (= lambda!225852 lambda!225816))))

(declare-fun bs!1150036 () Bool)

(assert (= bs!1150036 (and b!4773403 b!4773307)))

(assert (=> bs!1150036 (= (= (extractMap!2229 (t!361276 (t!361276 (toList!6475 lm!1309)))) (+!2455 (extractMap!2229 (t!361276 (toList!6475 lm!1309))) (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))) (= lambda!225852 lambda!225836))))

(declare-fun bs!1150037 () Bool)

(assert (= bs!1150037 (and b!4773403 d!1525440)))

(assert (=> bs!1150037 (= (= (extractMap!2229 (t!361276 (t!361276 (toList!6475 lm!1309)))) lt!1935969) (= lambda!225852 lambda!225848))))

(declare-fun bs!1150038 () Bool)

(assert (= bs!1150038 (and b!4773403 b!4773305)))

(assert (=> bs!1150038 (= (= (extractMap!2229 (t!361276 (t!361276 (toList!6475 lm!1309)))) (+!2455 (extractMap!2229 (t!361276 (toList!6475 lm!1309))) (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))) (= lambda!225852 lambda!225835))))

(assert (=> bs!1150034 (= (= (extractMap!2229 (t!361276 (t!361276 (toList!6475 lm!1309)))) (extractMap!2229 (t!361276 (toList!6475 lm!1309)))) (= lambda!225852 lambda!225814))))

(declare-fun bs!1150039 () Bool)

(assert (= bs!1150039 (and b!4773403 d!1525430)))

(assert (=> bs!1150039 (= (= (extractMap!2229 (t!361276 (t!361276 (toList!6475 lm!1309)))) lt!1936051) (= lambda!225852 lambda!225839))))

(assert (=> bs!1150036 (= (= (extractMap!2229 (t!361276 (t!361276 (toList!6475 lm!1309)))) lt!1936057) (= lambda!225852 lambda!225837))))

(declare-fun bs!1150040 () Bool)

(assert (= bs!1150040 (and b!4773403 b!4773121)))

(assert (=> bs!1150040 (= (= (extractMap!2229 (t!361276 (t!361276 (toList!6475 lm!1309)))) (extractMap!2229 (t!361276 (toList!6475 lm!1309)))) (= lambda!225852 lambda!225813))))

(declare-fun bs!1150041 () Bool)

(assert (= bs!1150041 (and b!4773403 d!1525500)))

(assert (=> bs!1150041 (not (= lambda!225852 lambda!225851))))

(assert (=> b!4773403 true))

(declare-fun bs!1150042 () Bool)

(declare-fun b!4773404 () Bool)

(assert (= bs!1150042 (and b!4773404 b!4773122)))

(declare-fun lambda!225853 () Int)

(assert (=> bs!1150042 (= (= (extractMap!2229 (t!361276 (t!361276 (toList!6475 lm!1309)))) lt!1935969) (= lambda!225853 lambda!225815))))

(declare-fun bs!1150043 () Bool)

(assert (= bs!1150043 (and b!4773404 d!1525272)))

(assert (=> bs!1150043 (= (= (extractMap!2229 (t!361276 (t!361276 (toList!6475 lm!1309)))) lt!1935963) (= lambda!225853 lambda!225816))))

(declare-fun bs!1150044 () Bool)

(assert (= bs!1150044 (and b!4773404 b!4773307)))

(assert (=> bs!1150044 (= (= (extractMap!2229 (t!361276 (t!361276 (toList!6475 lm!1309)))) (+!2455 (extractMap!2229 (t!361276 (toList!6475 lm!1309))) (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))) (= lambda!225853 lambda!225836))))

(declare-fun bs!1150045 () Bool)

(assert (= bs!1150045 (and b!4773404 b!4773305)))

(assert (=> bs!1150045 (= (= (extractMap!2229 (t!361276 (t!361276 (toList!6475 lm!1309)))) (+!2455 (extractMap!2229 (t!361276 (toList!6475 lm!1309))) (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))) (= lambda!225853 lambda!225835))))

(assert (=> bs!1150042 (= (= (extractMap!2229 (t!361276 (t!361276 (toList!6475 lm!1309)))) (extractMap!2229 (t!361276 (toList!6475 lm!1309)))) (= lambda!225853 lambda!225814))))

(declare-fun bs!1150046 () Bool)

(assert (= bs!1150046 (and b!4773404 d!1525430)))

(assert (=> bs!1150046 (= (= (extractMap!2229 (t!361276 (t!361276 (toList!6475 lm!1309)))) lt!1936051) (= lambda!225853 lambda!225839))))

(assert (=> bs!1150044 (= (= (extractMap!2229 (t!361276 (t!361276 (toList!6475 lm!1309)))) lt!1936057) (= lambda!225853 lambda!225837))))

(declare-fun bs!1150047 () Bool)

(assert (= bs!1150047 (and b!4773404 b!4773121)))

(assert (=> bs!1150047 (= (= (extractMap!2229 (t!361276 (t!361276 (toList!6475 lm!1309)))) (extractMap!2229 (t!361276 (toList!6475 lm!1309)))) (= lambda!225853 lambda!225813))))

(declare-fun bs!1150048 () Bool)

(assert (= bs!1150048 (and b!4773404 d!1525500)))

(assert (=> bs!1150048 (not (= lambda!225853 lambda!225851))))

(declare-fun bs!1150049 () Bool)

(assert (= bs!1150049 (and b!4773404 d!1525440)))

(assert (=> bs!1150049 (= (= (extractMap!2229 (t!361276 (t!361276 (toList!6475 lm!1309)))) lt!1935969) (= lambda!225853 lambda!225848))))

(declare-fun bs!1150050 () Bool)

(assert (= bs!1150050 (and b!4773404 b!4773403)))

(assert (=> bs!1150050 (= lambda!225853 lambda!225852)))

(assert (=> b!4773404 true))

(declare-fun lambda!225854 () Int)

(declare-fun lt!1936126 () ListMap!5955)

(assert (=> bs!1150042 (= (= lt!1936126 lt!1935969) (= lambda!225854 lambda!225815))))

(assert (=> b!4773404 (= (= lt!1936126 (extractMap!2229 (t!361276 (t!361276 (toList!6475 lm!1309))))) (= lambda!225854 lambda!225853))))

(assert (=> bs!1150043 (= (= lt!1936126 lt!1935963) (= lambda!225854 lambda!225816))))

(assert (=> bs!1150044 (= (= lt!1936126 (+!2455 (extractMap!2229 (t!361276 (toList!6475 lm!1309))) (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))) (= lambda!225854 lambda!225836))))

(assert (=> bs!1150045 (= (= lt!1936126 (+!2455 (extractMap!2229 (t!361276 (toList!6475 lm!1309))) (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))) (= lambda!225854 lambda!225835))))

(assert (=> bs!1150042 (= (= lt!1936126 (extractMap!2229 (t!361276 (toList!6475 lm!1309)))) (= lambda!225854 lambda!225814))))

(assert (=> bs!1150046 (= (= lt!1936126 lt!1936051) (= lambda!225854 lambda!225839))))

(assert (=> bs!1150044 (= (= lt!1936126 lt!1936057) (= lambda!225854 lambda!225837))))

(assert (=> bs!1150047 (= (= lt!1936126 (extractMap!2229 (t!361276 (toList!6475 lm!1309)))) (= lambda!225854 lambda!225813))))

(assert (=> bs!1150048 (not (= lambda!225854 lambda!225851))))

(assert (=> bs!1150049 (= (= lt!1936126 lt!1935969) (= lambda!225854 lambda!225848))))

(assert (=> bs!1150050 (= (= lt!1936126 (extractMap!2229 (t!361276 (t!361276 (toList!6475 lm!1309))))) (= lambda!225854 lambda!225852))))

(assert (=> b!4773404 true))

(declare-fun bs!1150051 () Bool)

(declare-fun d!1525512 () Bool)

(assert (= bs!1150051 (and d!1525512 b!4773122)))

(declare-fun lambda!225855 () Int)

(declare-fun lt!1936120 () ListMap!5955)

(assert (=> bs!1150051 (= (= lt!1936120 lt!1935969) (= lambda!225855 lambda!225815))))

(declare-fun bs!1150052 () Bool)

(assert (= bs!1150052 (and d!1525512 b!4773404)))

(assert (=> bs!1150052 (= (= lt!1936120 (extractMap!2229 (t!361276 (t!361276 (toList!6475 lm!1309))))) (= lambda!225855 lambda!225853))))

(declare-fun bs!1150053 () Bool)

(assert (= bs!1150053 (and d!1525512 d!1525272)))

(assert (=> bs!1150053 (= (= lt!1936120 lt!1935963) (= lambda!225855 lambda!225816))))

(declare-fun bs!1150054 () Bool)

(assert (= bs!1150054 (and d!1525512 b!4773307)))

(assert (=> bs!1150054 (= (= lt!1936120 (+!2455 (extractMap!2229 (t!361276 (toList!6475 lm!1309))) (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))) (= lambda!225855 lambda!225836))))

(declare-fun bs!1150055 () Bool)

(assert (= bs!1150055 (and d!1525512 b!4773305)))

(assert (=> bs!1150055 (= (= lt!1936120 (+!2455 (extractMap!2229 (t!361276 (toList!6475 lm!1309))) (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))) (= lambda!225855 lambda!225835))))

(assert (=> bs!1150051 (= (= lt!1936120 (extractMap!2229 (t!361276 (toList!6475 lm!1309)))) (= lambda!225855 lambda!225814))))

(assert (=> bs!1150052 (= (= lt!1936120 lt!1936126) (= lambda!225855 lambda!225854))))

(declare-fun bs!1150056 () Bool)

(assert (= bs!1150056 (and d!1525512 d!1525430)))

(assert (=> bs!1150056 (= (= lt!1936120 lt!1936051) (= lambda!225855 lambda!225839))))

(assert (=> bs!1150054 (= (= lt!1936120 lt!1936057) (= lambda!225855 lambda!225837))))

(declare-fun bs!1150057 () Bool)

(assert (= bs!1150057 (and d!1525512 b!4773121)))

(assert (=> bs!1150057 (= (= lt!1936120 (extractMap!2229 (t!361276 (toList!6475 lm!1309)))) (= lambda!225855 lambda!225813))))

(declare-fun bs!1150058 () Bool)

(assert (= bs!1150058 (and d!1525512 d!1525500)))

(assert (=> bs!1150058 (not (= lambda!225855 lambda!225851))))

(declare-fun bs!1150059 () Bool)

(assert (= bs!1150059 (and d!1525512 d!1525440)))

(assert (=> bs!1150059 (= (= lt!1936120 lt!1935969) (= lambda!225855 lambda!225848))))

(declare-fun bs!1150060 () Bool)

(assert (= bs!1150060 (and d!1525512 b!4773403)))

(assert (=> bs!1150060 (= (= lt!1936120 (extractMap!2229 (t!361276 (t!361276 (toList!6475 lm!1309))))) (= lambda!225855 lambda!225852))))

(assert (=> d!1525512 true))

(declare-fun c!814093 () Bool)

(declare-fun bm!334529 () Bool)

(declare-fun call!334535 () Bool)

(assert (=> bm!334529 (= call!334535 (forall!11962 (ite c!814093 (toList!6476 (extractMap!2229 (t!361276 (t!361276 (toList!6475 lm!1309))))) (_2!31267 (h!60114 (t!361276 (toList!6475 lm!1309))))) (ite c!814093 lambda!225852 lambda!225854)))))

(declare-fun e!2979940 () ListMap!5955)

(assert (=> b!4773403 (= e!2979940 (extractMap!2229 (t!361276 (t!361276 (toList!6475 lm!1309)))))))

(declare-fun lt!1936127 () Unit!138594)

(declare-fun call!334536 () Unit!138594)

(assert (=> b!4773403 (= lt!1936127 call!334536)))

(declare-fun call!334534 () Bool)

(assert (=> b!4773403 call!334534))

(declare-fun lt!1936125 () Unit!138594)

(assert (=> b!4773403 (= lt!1936125 lt!1936127)))

(assert (=> b!4773403 call!334535))

(declare-fun lt!1936114 () Unit!138594)

(declare-fun Unit!138672 () Unit!138594)

(assert (=> b!4773403 (= lt!1936114 Unit!138672)))

(declare-fun bm!334530 () Bool)

(assert (=> bm!334530 (= call!334536 (lemmaContainsAllItsOwnKeys!911 (extractMap!2229 (t!361276 (t!361276 (toList!6475 lm!1309))))))))

(assert (=> b!4773404 (= e!2979940 lt!1936126)))

(declare-fun lt!1936111 () ListMap!5955)

(assert (=> b!4773404 (= lt!1936111 (+!2455 (extractMap!2229 (t!361276 (t!361276 (toList!6475 lm!1309)))) (h!60113 (_2!31267 (h!60114 (t!361276 (toList!6475 lm!1309)))))))))

(assert (=> b!4773404 (= lt!1936126 (addToMapMapFromBucket!1639 (t!361275 (_2!31267 (h!60114 (t!361276 (toList!6475 lm!1309))))) (+!2455 (extractMap!2229 (t!361276 (t!361276 (toList!6475 lm!1309)))) (h!60113 (_2!31267 (h!60114 (t!361276 (toList!6475 lm!1309))))))))))

(declare-fun lt!1936123 () Unit!138594)

(assert (=> b!4773404 (= lt!1936123 call!334536)))

(assert (=> b!4773404 (forall!11962 (toList!6476 (extractMap!2229 (t!361276 (t!361276 (toList!6475 lm!1309))))) lambda!225853)))

(declare-fun lt!1936115 () Unit!138594)

(assert (=> b!4773404 (= lt!1936115 lt!1936123)))

(assert (=> b!4773404 (forall!11962 (toList!6476 lt!1936111) lambda!225854)))

(declare-fun lt!1936116 () Unit!138594)

(declare-fun Unit!138673 () Unit!138594)

(assert (=> b!4773404 (= lt!1936116 Unit!138673)))

(assert (=> b!4773404 (forall!11962 (t!361275 (_2!31267 (h!60114 (t!361276 (toList!6475 lm!1309))))) lambda!225854)))

(declare-fun lt!1936108 () Unit!138594)

(declare-fun Unit!138674 () Unit!138594)

(assert (=> b!4773404 (= lt!1936108 Unit!138674)))

(declare-fun lt!1936110 () Unit!138594)

(declare-fun Unit!138675 () Unit!138594)

(assert (=> b!4773404 (= lt!1936110 Unit!138675)))

(declare-fun lt!1936107 () Unit!138594)

(assert (=> b!4773404 (= lt!1936107 (forallContained!3934 (toList!6476 lt!1936111) lambda!225854 (h!60113 (_2!31267 (h!60114 (t!361276 (toList!6475 lm!1309)))))))))

(assert (=> b!4773404 (contains!17126 lt!1936111 (_1!31266 (h!60113 (_2!31267 (h!60114 (t!361276 (toList!6475 lm!1309)))))))))

(declare-fun lt!1936113 () Unit!138594)

(declare-fun Unit!138676 () Unit!138594)

(assert (=> b!4773404 (= lt!1936113 Unit!138676)))

(assert (=> b!4773404 (contains!17126 lt!1936126 (_1!31266 (h!60113 (_2!31267 (h!60114 (t!361276 (toList!6475 lm!1309)))))))))

(declare-fun lt!1936122 () Unit!138594)

(declare-fun Unit!138677 () Unit!138594)

(assert (=> b!4773404 (= lt!1936122 Unit!138677)))

(assert (=> b!4773404 call!334535))

(declare-fun lt!1936119 () Unit!138594)

(declare-fun Unit!138678 () Unit!138594)

(assert (=> b!4773404 (= lt!1936119 Unit!138678)))

(assert (=> b!4773404 (forall!11962 (toList!6476 lt!1936111) lambda!225854)))

(declare-fun lt!1936109 () Unit!138594)

(declare-fun Unit!138679 () Unit!138594)

(assert (=> b!4773404 (= lt!1936109 Unit!138679)))

(declare-fun lt!1936117 () Unit!138594)

(declare-fun Unit!138680 () Unit!138594)

(assert (=> b!4773404 (= lt!1936117 Unit!138680)))

(declare-fun lt!1936118 () Unit!138594)

(assert (=> b!4773404 (= lt!1936118 (addForallContainsKeyThenBeforeAdding!910 (extractMap!2229 (t!361276 (t!361276 (toList!6475 lm!1309)))) lt!1936126 (_1!31266 (h!60113 (_2!31267 (h!60114 (t!361276 (toList!6475 lm!1309)))))) (_2!31266 (h!60113 (_2!31267 (h!60114 (t!361276 (toList!6475 lm!1309))))))))))

(assert (=> b!4773404 (forall!11962 (toList!6476 (extractMap!2229 (t!361276 (t!361276 (toList!6475 lm!1309))))) lambda!225854)))

(declare-fun lt!1936112 () Unit!138594)

(assert (=> b!4773404 (= lt!1936112 lt!1936118)))

(assert (=> b!4773404 (forall!11962 (toList!6476 (extractMap!2229 (t!361276 (t!361276 (toList!6475 lm!1309))))) lambda!225854)))

(declare-fun lt!1936121 () Unit!138594)

(declare-fun Unit!138681 () Unit!138594)

(assert (=> b!4773404 (= lt!1936121 Unit!138681)))

(declare-fun res!2025033 () Bool)

(assert (=> b!4773404 (= res!2025033 (forall!11962 (_2!31267 (h!60114 (t!361276 (toList!6475 lm!1309)))) lambda!225854))))

(declare-fun e!2979942 () Bool)

(assert (=> b!4773404 (=> (not res!2025033) (not e!2979942))))

(assert (=> b!4773404 e!2979942))

(declare-fun lt!1936124 () Unit!138594)

(declare-fun Unit!138682 () Unit!138594)

(assert (=> b!4773404 (= lt!1936124 Unit!138682)))

(declare-fun b!4773405 () Bool)

(declare-fun res!2025034 () Bool)

(declare-fun e!2979941 () Bool)

(assert (=> b!4773405 (=> (not res!2025034) (not e!2979941))))

(assert (=> b!4773405 (= res!2025034 (forall!11962 (toList!6476 (extractMap!2229 (t!361276 (t!361276 (toList!6475 lm!1309))))) lambda!225855))))

(declare-fun b!4773406 () Bool)

(assert (=> b!4773406 (= e!2979941 (invariantList!1674 (toList!6476 lt!1936120)))))

(assert (=> d!1525512 e!2979941))

(declare-fun res!2025035 () Bool)

(assert (=> d!1525512 (=> (not res!2025035) (not e!2979941))))

(assert (=> d!1525512 (= res!2025035 (forall!11962 (_2!31267 (h!60114 (t!361276 (toList!6475 lm!1309)))) lambda!225855))))

(assert (=> d!1525512 (= lt!1936120 e!2979940)))

(assert (=> d!1525512 (= c!814093 ((_ is Nil!53701) (_2!31267 (h!60114 (t!361276 (toList!6475 lm!1309))))))))

(assert (=> d!1525512 (noDuplicateKeys!2270 (_2!31267 (h!60114 (t!361276 (toList!6475 lm!1309)))))))

(assert (=> d!1525512 (= (addToMapMapFromBucket!1639 (_2!31267 (h!60114 (t!361276 (toList!6475 lm!1309)))) (extractMap!2229 (t!361276 (t!361276 (toList!6475 lm!1309))))) lt!1936120)))

(declare-fun b!4773407 () Bool)

(assert (=> b!4773407 (= e!2979942 call!334534)))

(declare-fun bm!334531 () Bool)

(assert (=> bm!334531 (= call!334534 (forall!11962 (toList!6476 (extractMap!2229 (t!361276 (t!361276 (toList!6475 lm!1309))))) (ite c!814093 lambda!225852 lambda!225854)))))

(assert (= (and d!1525512 c!814093) b!4773403))

(assert (= (and d!1525512 (not c!814093)) b!4773404))

(assert (= (and b!4773404 res!2025033) b!4773407))

(assert (= (or b!4773403 b!4773407) bm!334531))

(assert (= (or b!4773403 b!4773404) bm!334529))

(assert (= (or b!4773403 b!4773404) bm!334530))

(assert (= (and d!1525512 res!2025035) b!4773405))

(assert (= (and b!4773405 res!2025034) b!4773406))

(declare-fun m!5746584 () Bool)

(assert (=> bm!334529 m!5746584))

(declare-fun m!5746586 () Bool)

(assert (=> b!4773404 m!5746586))

(declare-fun m!5746588 () Bool)

(assert (=> b!4773404 m!5746588))

(declare-fun m!5746590 () Bool)

(assert (=> b!4773404 m!5746590))

(declare-fun m!5746592 () Bool)

(assert (=> b!4773404 m!5746592))

(assert (=> b!4773404 m!5746084))

(assert (=> b!4773404 m!5746588))

(declare-fun m!5746594 () Bool)

(assert (=> b!4773404 m!5746594))

(declare-fun m!5746596 () Bool)

(assert (=> b!4773404 m!5746596))

(declare-fun m!5746598 () Bool)

(assert (=> b!4773404 m!5746598))

(declare-fun m!5746602 () Bool)

(assert (=> b!4773404 m!5746602))

(declare-fun m!5746604 () Bool)

(assert (=> b!4773404 m!5746604))

(assert (=> b!4773404 m!5746592))

(declare-fun m!5746610 () Bool)

(assert (=> b!4773404 m!5746610))

(assert (=> b!4773404 m!5746084))

(declare-fun m!5746614 () Bool)

(assert (=> b!4773404 m!5746614))

(assert (=> b!4773404 m!5746586))

(declare-fun m!5746620 () Bool)

(assert (=> d!1525512 m!5746620))

(assert (=> d!1525512 m!5746114))

(declare-fun m!5746622 () Bool)

(assert (=> bm!334531 m!5746622))

(assert (=> bm!334530 m!5746084))

(declare-fun m!5746624 () Bool)

(assert (=> bm!334530 m!5746624))

(declare-fun m!5746626 () Bool)

(assert (=> b!4773406 m!5746626))

(declare-fun m!5746628 () Bool)

(assert (=> b!4773405 m!5746628))

(assert (=> b!4773133 d!1525512))

(declare-fun bs!1150061 () Bool)

(declare-fun d!1525516 () Bool)

(assert (= bs!1150061 (and d!1525516 d!1525298)))

(declare-fun lambda!225856 () Int)

(assert (=> bs!1150061 (= lambda!225856 lambda!225817)))

(declare-fun bs!1150062 () Bool)

(assert (= bs!1150062 (and d!1525516 d!1525202)))

(assert (=> bs!1150062 (not (= lambda!225856 lambda!225715))))

(declare-fun bs!1150063 () Bool)

(assert (= bs!1150063 (and d!1525516 d!1525168)))

(assert (=> bs!1150063 (= lambda!225856 lambda!225703)))

(declare-fun bs!1150064 () Bool)

(assert (= bs!1150064 (and d!1525516 d!1525188)))

(assert (=> bs!1150064 (= lambda!225856 lambda!225712)))

(declare-fun bs!1150065 () Bool)

(assert (= bs!1150065 (and d!1525516 start!488818)))

(assert (=> bs!1150065 (= lambda!225856 lambda!225697)))

(declare-fun lt!1936148 () ListMap!5955)

(assert (=> d!1525516 (invariantList!1674 (toList!6476 lt!1936148))))

(declare-fun e!2979952 () ListMap!5955)

(assert (=> d!1525516 (= lt!1936148 e!2979952)))

(declare-fun c!814097 () Bool)

(assert (=> d!1525516 (= c!814097 ((_ is Cons!53702) (t!361276 (t!361276 (toList!6475 lm!1309)))))))

(assert (=> d!1525516 (forall!11958 (t!361276 (t!361276 (toList!6475 lm!1309))) lambda!225856)))

(assert (=> d!1525516 (= (extractMap!2229 (t!361276 (t!361276 (toList!6475 lm!1309)))) lt!1936148)))

(declare-fun b!4773423 () Bool)

(assert (=> b!4773423 (= e!2979952 (addToMapMapFromBucket!1639 (_2!31267 (h!60114 (t!361276 (t!361276 (toList!6475 lm!1309))))) (extractMap!2229 (t!361276 (t!361276 (t!361276 (toList!6475 lm!1309)))))))))

(declare-fun b!4773424 () Bool)

(assert (=> b!4773424 (= e!2979952 (ListMap!5956 Nil!53701))))

(assert (= (and d!1525516 c!814097) b!4773423))

(assert (= (and d!1525516 (not c!814097)) b!4773424))

(declare-fun m!5746648 () Bool)

(assert (=> d!1525516 m!5746648))

(declare-fun m!5746650 () Bool)

(assert (=> d!1525516 m!5746650))

(declare-fun m!5746652 () Bool)

(assert (=> b!4773423 m!5746652))

(assert (=> b!4773423 m!5746652))

(declare-fun m!5746656 () Bool)

(assert (=> b!4773423 m!5746656))

(assert (=> b!4773133 d!1525516))

(declare-fun d!1525520 () Bool)

(declare-fun lt!1936149 () Bool)

(assert (=> d!1525520 (= lt!1936149 (select (content!9606 (t!361278 e!2979570)) key!2872))))

(declare-fun e!2979953 () Bool)

(assert (=> d!1525520 (= lt!1936149 e!2979953)))

(declare-fun res!2025045 () Bool)

(assert (=> d!1525520 (=> (not res!2025045) (not e!2979953))))

(assert (=> d!1525520 (= res!2025045 ((_ is Cons!53704) (t!361278 e!2979570)))))

(assert (=> d!1525520 (= (contains!17128 (t!361278 e!2979570) key!2872) lt!1936149)))

(declare-fun b!4773425 () Bool)

(declare-fun e!2979954 () Bool)

(assert (=> b!4773425 (= e!2979953 e!2979954)))

(declare-fun res!2025046 () Bool)

(assert (=> b!4773425 (=> res!2025046 e!2979954)))

(assert (=> b!4773425 (= res!2025046 (= (h!60116 (t!361278 e!2979570)) key!2872))))

(declare-fun b!4773426 () Bool)

(assert (=> b!4773426 (= e!2979954 (contains!17128 (t!361278 (t!361278 e!2979570)) key!2872))))

(assert (= (and d!1525520 res!2025045) b!4773425))

(assert (= (and b!4773425 (not res!2025046)) b!4773426))

(assert (=> d!1525520 m!5746236))

(declare-fun m!5746658 () Bool)

(assert (=> d!1525520 m!5746658))

(declare-fun m!5746660 () Bool)

(assert (=> b!4773426 m!5746660))

(assert (=> b!4773156 d!1525520))

(declare-fun d!1525522 () Bool)

(declare-fun res!2025054 () Bool)

(declare-fun e!2979962 () Bool)

(assert (=> d!1525522 (=> res!2025054 e!2979962)))

(assert (=> d!1525522 (= res!2025054 (or ((_ is Nil!53701) (toList!6476 lt!1935765)) ((_ is Nil!53701) (t!361275 (toList!6476 lt!1935765)))))))

(assert (=> d!1525522 (= (noDuplicatedKeys!409 (toList!6476 lt!1935765)) e!2979962)))

(declare-fun b!4773436 () Bool)

(declare-fun e!2979963 () Bool)

(assert (=> b!4773436 (= e!2979962 e!2979963)))

(declare-fun res!2025055 () Bool)

(assert (=> b!4773436 (=> (not res!2025055) (not e!2979963))))

(assert (=> b!4773436 (= res!2025055 (not (containsKey!3705 (t!361275 (toList!6476 lt!1935765)) (_1!31266 (h!60113 (toList!6476 lt!1935765))))))))

(declare-fun b!4773437 () Bool)

(assert (=> b!4773437 (= e!2979963 (noDuplicatedKeys!409 (t!361275 (toList!6476 lt!1935765))))))

(assert (= (and d!1525522 (not res!2025054)) b!4773436))

(assert (= (and b!4773436 res!2025055) b!4773437))

(declare-fun m!5746662 () Bool)

(assert (=> b!4773436 m!5746662))

(declare-fun m!5746664 () Bool)

(assert (=> b!4773437 m!5746664))

(assert (=> d!1525252 d!1525522))

(declare-fun d!1525524 () Bool)

(declare-fun c!814099 () Bool)

(assert (=> d!1525524 (= c!814099 ((_ is Nil!53704) lt!1935778))))

(declare-fun e!2979964 () (InoxSet K!15224))

(assert (=> d!1525524 (= (content!9606 lt!1935778) e!2979964)))

(declare-fun b!4773438 () Bool)

(assert (=> b!4773438 (= e!2979964 ((as const (Array K!15224 Bool)) false))))

(declare-fun b!4773439 () Bool)

(assert (=> b!4773439 (= e!2979964 ((_ map or) (store ((as const (Array K!15224 Bool)) false) (h!60116 lt!1935778) true) (content!9606 (t!361278 lt!1935778))))))

(assert (= (and d!1525524 c!814099) b!4773438))

(assert (= (and d!1525524 (not c!814099)) b!4773439))

(declare-fun m!5746666 () Bool)

(assert (=> b!4773439 m!5746666))

(declare-fun m!5746668 () Bool)

(assert (=> b!4773439 m!5746668))

(assert (=> b!4772939 d!1525524))

(declare-fun d!1525526 () Bool)

(declare-fun c!814100 () Bool)

(assert (=> d!1525526 (= c!814100 ((_ is Nil!53704) (map!12095 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))) lambda!225727)))))

(declare-fun e!2979965 () (InoxSet K!15224))

(assert (=> d!1525526 (= (content!9606 (map!12095 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))) lambda!225727)) e!2979965)))

(declare-fun b!4773440 () Bool)

(assert (=> b!4773440 (= e!2979965 ((as const (Array K!15224 Bool)) false))))

(declare-fun b!4773441 () Bool)

(assert (=> b!4773441 (= e!2979965 ((_ map or) (store ((as const (Array K!15224 Bool)) false) (h!60116 (map!12095 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))) lambda!225727)) true) (content!9606 (t!361278 (map!12095 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))) lambda!225727)))))))

(assert (= (and d!1525526 c!814100) b!4773440))

(assert (= (and d!1525526 (not c!814100)) b!4773441))

(declare-fun m!5746670 () Bool)

(assert (=> b!4773441 m!5746670))

(declare-fun m!5746672 () Bool)

(assert (=> b!4773441 m!5746672))

(assert (=> b!4772939 d!1525526))

(declare-fun d!1525528 () Bool)

(declare-fun lt!1936173 () List!53828)

(declare-fun size!36353 (List!53828) Int)

(declare-fun size!36354 (List!53825) Int)

(assert (=> d!1525528 (= (size!36353 lt!1936173) (size!36354 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))))

(declare-fun e!2979968 () List!53828)

(assert (=> d!1525528 (= lt!1936173 e!2979968)))

(declare-fun c!814103 () Bool)

(assert (=> d!1525528 (= c!814103 ((_ is Nil!53701) (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))))

(assert (=> d!1525528 (= (map!12095 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))) lambda!225727) lt!1936173)))

(declare-fun b!4773446 () Bool)

(assert (=> b!4773446 (= e!2979968 Nil!53704)))

(declare-fun b!4773447 () Bool)

(declare-fun $colon$colon!1101 (List!53828 K!15224) List!53828)

(declare-fun dynLambda!21984 (Int tuple2!55944) K!15224)

(assert (=> b!4773447 (= e!2979968 ($colon$colon!1101 (map!12095 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))) lambda!225727) (dynLambda!21984 lambda!225727 (h!60113 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))))))

(assert (= (and d!1525528 c!814103) b!4773446))

(assert (= (and d!1525528 (not c!814103)) b!4773447))

(declare-fun b_lambda!184779 () Bool)

(assert (=> (not b_lambda!184779) (not b!4773447)))

(declare-fun m!5746674 () Bool)

(assert (=> d!1525528 m!5746674))

(declare-fun m!5746676 () Bool)

(assert (=> d!1525528 m!5746676))

(declare-fun m!5746678 () Bool)

(assert (=> b!4773447 m!5746678))

(declare-fun m!5746680 () Bool)

(assert (=> b!4773447 m!5746680))

(assert (=> b!4773447 m!5746678))

(assert (=> b!4773447 m!5746680))

(declare-fun m!5746682 () Bool)

(assert (=> b!4773447 m!5746682))

(assert (=> b!4772939 d!1525528))

(declare-fun d!1525530 () Bool)

(assert (=> d!1525530 (= (length!630 lt!1935778) (size!36353 lt!1935778))))

(declare-fun bs!1150093 () Bool)

(assert (= bs!1150093 d!1525530))

(declare-fun m!5746684 () Bool)

(assert (=> bs!1150093 m!5746684))

(assert (=> b!4772937 d!1525530))

(declare-fun d!1525532 () Bool)

(assert (=> d!1525532 (= (length!631 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))) (size!36354 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))))

(declare-fun bs!1150094 () Bool)

(assert (= bs!1150094 d!1525532))

(assert (=> bs!1150094 m!5746676))

(assert (=> b!4772937 d!1525532))

(declare-fun d!1525534 () Bool)

(declare-fun res!2025062 () Bool)

(declare-fun e!2979975 () Bool)

(assert (=> d!1525534 (=> res!2025062 e!2979975)))

(assert (=> d!1525534 (= res!2025062 ((_ is Nil!53704) lt!1935809))))

(assert (=> d!1525534 (= (forall!11960 lt!1935809 lambda!225738) e!2979975)))

(declare-fun b!4773454 () Bool)

(declare-fun e!2979976 () Bool)

(assert (=> b!4773454 (= e!2979975 e!2979976)))

(declare-fun res!2025063 () Bool)

(assert (=> b!4773454 (=> (not res!2025063) (not e!2979976))))

(assert (=> b!4773454 (= res!2025063 (dynLambda!21981 lambda!225738 (h!60116 lt!1935809)))))

(declare-fun b!4773455 () Bool)

(assert (=> b!4773455 (= e!2979976 (forall!11960 (t!361278 lt!1935809) lambda!225738))))

(assert (= (and d!1525534 (not res!2025062)) b!4773454))

(assert (= (and b!4773454 res!2025063) b!4773455))

(declare-fun b_lambda!184783 () Bool)

(assert (=> (not b_lambda!184783) (not b!4773454)))

(declare-fun m!5746718 () Bool)

(assert (=> b!4773454 m!5746718))

(declare-fun m!5746720 () Bool)

(assert (=> b!4773455 m!5746720))

(assert (=> b!4772998 d!1525534))

(declare-fun d!1525540 () Bool)

(declare-fun res!2025064 () Bool)

(declare-fun e!2979977 () Bool)

(assert (=> d!1525540 (=> res!2025064 e!2979977)))

(assert (=> d!1525540 (= res!2025064 ((_ is Nil!53701) (_2!31267 (h!60114 (toList!6475 lm!1309)))))))

(assert (=> d!1525540 (= (forall!11962 (_2!31267 (h!60114 (toList!6475 lm!1309))) lambda!225816) e!2979977)))

(declare-fun b!4773456 () Bool)

(declare-fun e!2979978 () Bool)

(assert (=> b!4773456 (= e!2979977 e!2979978)))

(declare-fun res!2025065 () Bool)

(assert (=> b!4773456 (=> (not res!2025065) (not e!2979978))))

(assert (=> b!4773456 (= res!2025065 (dynLambda!21982 lambda!225816 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309))))))))

(declare-fun b!4773457 () Bool)

(assert (=> b!4773457 (= e!2979978 (forall!11962 (t!361275 (_2!31267 (h!60114 (toList!6475 lm!1309)))) lambda!225816))))

(assert (= (and d!1525540 (not res!2025064)) b!4773456))

(assert (= (and b!4773456 res!2025065) b!4773457))

(declare-fun b_lambda!184785 () Bool)

(assert (=> (not b_lambda!184785) (not b!4773456)))

(declare-fun m!5746722 () Bool)

(assert (=> b!4773456 m!5746722))

(declare-fun m!5746724 () Bool)

(assert (=> b!4773457 m!5746724))

(assert (=> d!1525272 d!1525540))

(assert (=> d!1525272 d!1525266))

(declare-fun d!1525542 () Bool)

(declare-fun c!814104 () Bool)

(assert (=> d!1525542 (= c!814104 ((_ is Nil!53704) lt!1935809))))

(declare-fun e!2979979 () (InoxSet K!15224))

(assert (=> d!1525542 (= (content!9606 lt!1935809) e!2979979)))

(declare-fun b!4773458 () Bool)

(assert (=> b!4773458 (= e!2979979 ((as const (Array K!15224 Bool)) false))))

(declare-fun b!4773459 () Bool)

(assert (=> b!4773459 (= e!2979979 ((_ map or) (store ((as const (Array K!15224 Bool)) false) (h!60116 lt!1935809) true) (content!9606 (t!361278 lt!1935809))))))

(assert (= (and d!1525542 c!814104) b!4773458))

(assert (= (and d!1525542 (not c!814104)) b!4773459))

(declare-fun m!5746726 () Bool)

(assert (=> b!4773459 m!5746726))

(declare-fun m!5746728 () Bool)

(assert (=> b!4773459 m!5746728))

(assert (=> b!4772996 d!1525542))

(declare-fun d!1525544 () Bool)

(declare-fun c!814105 () Bool)

(assert (=> d!1525544 (= c!814105 ((_ is Nil!53704) (map!12095 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))) lambda!225739)))))

(declare-fun e!2979980 () (InoxSet K!15224))

(assert (=> d!1525544 (= (content!9606 (map!12095 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))) lambda!225739)) e!2979980)))

(declare-fun b!4773460 () Bool)

(assert (=> b!4773460 (= e!2979980 ((as const (Array K!15224 Bool)) false))))

(declare-fun b!4773461 () Bool)

(assert (=> b!4773461 (= e!2979980 ((_ map or) (store ((as const (Array K!15224 Bool)) false) (h!60116 (map!12095 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))) lambda!225739)) true) (content!9606 (t!361278 (map!12095 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))) lambda!225739)))))))

(assert (= (and d!1525544 c!814105) b!4773460))

(assert (= (and d!1525544 (not c!814105)) b!4773461))

(declare-fun m!5746730 () Bool)

(assert (=> b!4773461 m!5746730))

(declare-fun m!5746732 () Bool)

(assert (=> b!4773461 m!5746732))

(assert (=> b!4772996 d!1525544))

(declare-fun d!1525546 () Bool)

(declare-fun lt!1936174 () List!53828)

(assert (=> d!1525546 (= (size!36353 lt!1936174) (size!36354 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))))

(declare-fun e!2979981 () List!53828)

(assert (=> d!1525546 (= lt!1936174 e!2979981)))

(declare-fun c!814106 () Bool)

(assert (=> d!1525546 (= c!814106 ((_ is Nil!53701) (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))))

(assert (=> d!1525546 (= (map!12095 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))) lambda!225739) lt!1936174)))

(declare-fun b!4773462 () Bool)

(assert (=> b!4773462 (= e!2979981 Nil!53704)))

(declare-fun b!4773463 () Bool)

(assert (=> b!4773463 (= e!2979981 ($colon$colon!1101 (map!12095 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))) lambda!225739) (dynLambda!21984 lambda!225739 (h!60113 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))))))

(assert (= (and d!1525546 c!814106) b!4773462))

(assert (= (and d!1525546 (not c!814106)) b!4773463))

(declare-fun b_lambda!184787 () Bool)

(assert (=> (not b_lambda!184787) (not b!4773463)))

(declare-fun m!5746734 () Bool)

(assert (=> d!1525546 m!5746734))

(assert (=> d!1525546 m!5746676))

(declare-fun m!5746736 () Bool)

(assert (=> b!4773463 m!5746736))

(declare-fun m!5746738 () Bool)

(assert (=> b!4773463 m!5746738))

(assert (=> b!4773463 m!5746736))

(assert (=> b!4773463 m!5746738))

(declare-fun m!5746740 () Bool)

(assert (=> b!4773463 m!5746740))

(assert (=> b!4772996 d!1525546))

(declare-fun d!1525548 () Bool)

(declare-fun res!2025070 () Bool)

(declare-fun e!2979986 () Bool)

(assert (=> d!1525548 (=> res!2025070 e!2979986)))

(assert (=> d!1525548 (= res!2025070 (and ((_ is Cons!53701) (t!361275 (_2!31267 (h!60114 (toList!6475 lm!1309))))) (= (_1!31266 (h!60113 (t!361275 (_2!31267 (h!60114 (toList!6475 lm!1309)))))) (_1!31266 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309))))))))))

(assert (=> d!1525548 (= (containsKey!3706 (t!361275 (_2!31267 (h!60114 (toList!6475 lm!1309)))) (_1!31266 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))) e!2979986)))

(declare-fun b!4773468 () Bool)

(declare-fun e!2979987 () Bool)

(assert (=> b!4773468 (= e!2979986 e!2979987)))

(declare-fun res!2025071 () Bool)

(assert (=> b!4773468 (=> (not res!2025071) (not e!2979987))))

(assert (=> b!4773468 (= res!2025071 ((_ is Cons!53701) (t!361275 (_2!31267 (h!60114 (toList!6475 lm!1309))))))))

(declare-fun b!4773469 () Bool)

(assert (=> b!4773469 (= e!2979987 (containsKey!3706 (t!361275 (t!361275 (_2!31267 (h!60114 (toList!6475 lm!1309))))) (_1!31266 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))))))

(assert (= (and d!1525548 (not res!2025070)) b!4773468))

(assert (= (and b!4773468 res!2025071) b!4773469))

(declare-fun m!5746742 () Bool)

(assert (=> b!4773469 m!5746742))

(assert (=> b!4773037 d!1525548))

(assert (=> b!4773006 d!1525270))

(assert (=> bs!1149914 d!1525266))

(declare-fun d!1525550 () Bool)

(declare-fun res!2025072 () Bool)

(declare-fun e!2979988 () Bool)

(assert (=> d!1525550 (=> res!2025072 e!2979988)))

(assert (=> d!1525550 (= res!2025072 ((_ is Nil!53702) (t!361276 (toList!6475 lm!1309))))))

(assert (=> d!1525550 (= (forall!11958 (t!361276 (toList!6475 lm!1309)) lambda!225703) e!2979988)))

(declare-fun b!4773470 () Bool)

(declare-fun e!2979989 () Bool)

(assert (=> b!4773470 (= e!2979988 e!2979989)))

(declare-fun res!2025073 () Bool)

(assert (=> b!4773470 (=> (not res!2025073) (not e!2979989))))

(assert (=> b!4773470 (= res!2025073 (dynLambda!21978 lambda!225703 (h!60114 (t!361276 (toList!6475 lm!1309)))))))

(declare-fun b!4773471 () Bool)

(assert (=> b!4773471 (= e!2979989 (forall!11958 (t!361276 (t!361276 (toList!6475 lm!1309))) lambda!225703))))

(assert (= (and d!1525550 (not res!2025072)) b!4773470))

(assert (= (and b!4773470 res!2025073) b!4773471))

(declare-fun b_lambda!184789 () Bool)

(assert (=> (not b_lambda!184789) (not b!4773470)))

(declare-fun m!5746744 () Bool)

(assert (=> b!4773470 m!5746744))

(declare-fun m!5746746 () Bool)

(assert (=> b!4773471 m!5746746))

(assert (=> b!4772913 d!1525550))

(declare-fun d!1525552 () Bool)

(assert (=> d!1525552 (= (invariantList!1674 (toList!6476 lt!1935974)) (noDuplicatedKeys!409 (toList!6476 lt!1935974)))))

(declare-fun bs!1150095 () Bool)

(assert (= bs!1150095 d!1525552))

(declare-fun m!5746748 () Bool)

(assert (=> bs!1150095 m!5746748))

(assert (=> d!1525298 d!1525552))

(declare-fun d!1525554 () Bool)

(declare-fun res!2025074 () Bool)

(declare-fun e!2979990 () Bool)

(assert (=> d!1525554 (=> res!2025074 e!2979990)))

(assert (=> d!1525554 (= res!2025074 ((_ is Nil!53702) (t!361276 (toList!6475 lm!1309))))))

(assert (=> d!1525554 (= (forall!11958 (t!361276 (toList!6475 lm!1309)) lambda!225817) e!2979990)))

(declare-fun b!4773472 () Bool)

(declare-fun e!2979991 () Bool)

(assert (=> b!4773472 (= e!2979990 e!2979991)))

(declare-fun res!2025075 () Bool)

(assert (=> b!4773472 (=> (not res!2025075) (not e!2979991))))

(assert (=> b!4773472 (= res!2025075 (dynLambda!21978 lambda!225817 (h!60114 (t!361276 (toList!6475 lm!1309)))))))

(declare-fun b!4773473 () Bool)

(assert (=> b!4773473 (= e!2979991 (forall!11958 (t!361276 (t!361276 (toList!6475 lm!1309))) lambda!225817))))

(assert (= (and d!1525554 (not res!2025074)) b!4773472))

(assert (= (and b!4773472 res!2025075) b!4773473))

(declare-fun b_lambda!184791 () Bool)

(assert (=> (not b_lambda!184791) (not b!4773472)))

(declare-fun m!5746750 () Bool)

(assert (=> b!4773472 m!5746750))

(declare-fun m!5746752 () Bool)

(assert (=> b!4773473 m!5746752))

(assert (=> d!1525298 d!1525554))

(declare-fun d!1525556 () Bool)

(declare-fun res!2025076 () Bool)

(declare-fun e!2979992 () Bool)

(assert (=> d!1525556 (=> res!2025076 e!2979992)))

(assert (=> d!1525556 (= res!2025076 (and ((_ is Cons!53702) (t!361276 (toList!6475 lm!1309))) (= (_1!31267 (h!60114 (t!361276 (toList!6475 lm!1309)))) lt!1935680)))))

(assert (=> d!1525556 (= (containsKey!3704 (t!361276 (toList!6475 lm!1309)) lt!1935680) e!2979992)))

(declare-fun b!4773474 () Bool)

(declare-fun e!2979993 () Bool)

(assert (=> b!4773474 (= e!2979992 e!2979993)))

(declare-fun res!2025077 () Bool)

(assert (=> b!4773474 (=> (not res!2025077) (not e!2979993))))

(assert (=> b!4773474 (= res!2025077 (and (or (not ((_ is Cons!53702) (t!361276 (toList!6475 lm!1309)))) (bvsle (_1!31267 (h!60114 (t!361276 (toList!6475 lm!1309)))) lt!1935680)) ((_ is Cons!53702) (t!361276 (toList!6475 lm!1309))) (bvslt (_1!31267 (h!60114 (t!361276 (toList!6475 lm!1309)))) lt!1935680)))))

(declare-fun b!4773475 () Bool)

(assert (=> b!4773475 (= e!2979993 (containsKey!3704 (t!361276 (t!361276 (toList!6475 lm!1309))) lt!1935680))))

(assert (= (and d!1525556 (not res!2025076)) b!4773474))

(assert (= (and b!4773474 res!2025077) b!4773475))

(declare-fun m!5746754 () Bool)

(assert (=> b!4773475 m!5746754))

(assert (=> b!4773044 d!1525556))

(declare-fun d!1525558 () Bool)

(declare-fun c!814107 () Bool)

(assert (=> d!1525558 (= c!814107 (and ((_ is Cons!53701) (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) (= (_1!31266 (h!60113 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))) key!2872)))))

(declare-fun e!2979994 () Option!12791)

(assert (=> d!1525558 (= (getValueByKey!2232 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))) key!2872) e!2979994)))

(declare-fun b!4773477 () Bool)

(assert (=> b!4773477 (= e!2979994 (Some!12790 (_2!31266 (h!60113 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))))))))

(declare-fun b!4773479 () Bool)

(declare-fun e!2979995 () Option!12791)

(assert (=> b!4773479 (= e!2979995 (getValueByKey!2232 (t!361275 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) key!2872))))

(declare-fun b!4773480 () Bool)

(assert (=> b!4773480 (= e!2979995 None!12790)))

(declare-fun b!4773478 () Bool)

(assert (=> b!4773478 (= e!2979994 e!2979995)))

(declare-fun c!814108 () Bool)

(assert (=> b!4773478 (= c!814108 (and ((_ is Cons!53701) (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) (not (= (_1!31266 (h!60113 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))) key!2872))))))

(assert (= (and d!1525558 c!814107) b!4773477))

(assert (= (and d!1525558 (not c!814107)) b!4773478))

(assert (= (and b!4773478 c!814108) b!4773479))

(assert (= (and b!4773478 (not c!814108)) b!4773480))

(declare-fun m!5746756 () Bool)

(assert (=> b!4773479 m!5746756))

(assert (=> b!4773031 d!1525558))

(declare-fun d!1525560 () Bool)

(declare-fun res!2025078 () Bool)

(declare-fun e!2979996 () Bool)

(assert (=> d!1525560 (=> res!2025078 e!2979996)))

(assert (=> d!1525560 (= res!2025078 (and ((_ is Cons!53702) (toList!6475 lm!1309)) (= (_1!31267 (h!60114 (toList!6475 lm!1309))) (hash!4667 hashF!980 key!2872))))))

(assert (=> d!1525560 (= (containsKey!3704 (toList!6475 lm!1309) (hash!4667 hashF!980 key!2872)) e!2979996)))

(declare-fun b!4773481 () Bool)

(declare-fun e!2979997 () Bool)

(assert (=> b!4773481 (= e!2979996 e!2979997)))

(declare-fun res!2025079 () Bool)

(assert (=> b!4773481 (=> (not res!2025079) (not e!2979997))))

(assert (=> b!4773481 (= res!2025079 (and (or (not ((_ is Cons!53702) (toList!6475 lm!1309))) (bvsle (_1!31267 (h!60114 (toList!6475 lm!1309))) (hash!4667 hashF!980 key!2872))) ((_ is Cons!53702) (toList!6475 lm!1309)) (bvslt (_1!31267 (h!60114 (toList!6475 lm!1309))) (hash!4667 hashF!980 key!2872))))))

(declare-fun b!4773482 () Bool)

(assert (=> b!4773482 (= e!2979997 (containsKey!3704 (t!361276 (toList!6475 lm!1309)) (hash!4667 hashF!980 key!2872)))))

(assert (= (and d!1525560 (not res!2025078)) b!4773481))

(assert (= (and b!4773481 res!2025079) b!4773482))

(assert (=> b!4773482 m!5745684))

(declare-fun m!5746758 () Bool)

(assert (=> b!4773482 m!5746758))

(assert (=> d!1525206 d!1525560))

(declare-fun b!4773484 () Bool)

(declare-fun e!2979998 () Option!12789)

(declare-fun e!2979999 () Option!12789)

(assert (=> b!4773484 (= e!2979998 e!2979999)))

(declare-fun c!814110 () Bool)

(assert (=> b!4773484 (= c!814110 (and ((_ is Cons!53702) (t!361276 (t!361276 (toList!6475 lm!1309)))) (not (= (_1!31267 (h!60114 (t!361276 (t!361276 (toList!6475 lm!1309))))) lt!1935680))))))

(declare-fun d!1525562 () Bool)

(declare-fun c!814109 () Bool)

(assert (=> d!1525562 (= c!814109 (and ((_ is Cons!53702) (t!361276 (t!361276 (toList!6475 lm!1309)))) (= (_1!31267 (h!60114 (t!361276 (t!361276 (toList!6475 lm!1309))))) lt!1935680)))))

(assert (=> d!1525562 (= (getValueByKey!2230 (t!361276 (t!361276 (toList!6475 lm!1309))) lt!1935680) e!2979998)))

(declare-fun b!4773483 () Bool)

(assert (=> b!4773483 (= e!2979998 (Some!12788 (_2!31267 (h!60114 (t!361276 (t!361276 (toList!6475 lm!1309)))))))))

(declare-fun b!4773485 () Bool)

(assert (=> b!4773485 (= e!2979999 (getValueByKey!2230 (t!361276 (t!361276 (t!361276 (toList!6475 lm!1309)))) lt!1935680))))

(declare-fun b!4773486 () Bool)

(assert (=> b!4773486 (= e!2979999 None!12788)))

(assert (= (and d!1525562 c!814109) b!4773483))

(assert (= (and d!1525562 (not c!814109)) b!4773484))

(assert (= (and b!4773484 c!814110) b!4773485))

(assert (= (and b!4773484 (not c!814110)) b!4773486))

(declare-fun m!5746760 () Bool)

(assert (=> b!4773485 m!5746760))

(assert (=> b!4772944 d!1525562))

(assert (=> bs!1149917 d!1525266))

(declare-fun d!1525564 () Bool)

(declare-fun res!2025080 () Bool)

(declare-fun e!2980000 () Bool)

(assert (=> d!1525564 (=> res!2025080 e!2980000)))

(assert (=> d!1525564 (= res!2025080 ((_ is Nil!53701) (toList!6476 (extractMap!2229 (t!361276 (toList!6475 lm!1309))))))))

(assert (=> d!1525564 (= (forall!11962 (toList!6476 (extractMap!2229 (t!361276 (toList!6475 lm!1309)))) lambda!225816) e!2980000)))

(declare-fun b!4773487 () Bool)

(declare-fun e!2980001 () Bool)

(assert (=> b!4773487 (= e!2980000 e!2980001)))

(declare-fun res!2025081 () Bool)

(assert (=> b!4773487 (=> (not res!2025081) (not e!2980001))))

(assert (=> b!4773487 (= res!2025081 (dynLambda!21982 lambda!225816 (h!60113 (toList!6476 (extractMap!2229 (t!361276 (toList!6475 lm!1309)))))))))

(declare-fun b!4773488 () Bool)

(assert (=> b!4773488 (= e!2980001 (forall!11962 (t!361275 (toList!6476 (extractMap!2229 (t!361276 (toList!6475 lm!1309))))) lambda!225816))))

(assert (= (and d!1525564 (not res!2025080)) b!4773487))

(assert (= (and b!4773487 res!2025081) b!4773488))

(declare-fun b_lambda!184793 () Bool)

(assert (=> (not b_lambda!184793) (not b!4773487)))

(declare-fun m!5746762 () Bool)

(assert (=> b!4773487 m!5746762))

(declare-fun m!5746764 () Bool)

(assert (=> b!4773488 m!5746764))

(assert (=> b!4773123 d!1525564))

(declare-fun d!1525566 () Bool)

(declare-fun res!2025082 () Bool)

(declare-fun e!2980002 () Bool)

(assert (=> d!1525566 (=> res!2025082 e!2980002)))

(assert (=> d!1525566 (= res!2025082 ((_ is Nil!53701) (ite c!814050 (toList!6476 (extractMap!2229 (t!361276 (toList!6475 lm!1309)))) (_2!31267 (h!60114 (toList!6475 lm!1309))))))))

(assert (=> d!1525566 (= (forall!11962 (ite c!814050 (toList!6476 (extractMap!2229 (t!361276 (toList!6475 lm!1309)))) (_2!31267 (h!60114 (toList!6475 lm!1309)))) (ite c!814050 lambda!225813 lambda!225815)) e!2980002)))

(declare-fun b!4773489 () Bool)

(declare-fun e!2980003 () Bool)

(assert (=> b!4773489 (= e!2980002 e!2980003)))

(declare-fun res!2025083 () Bool)

(assert (=> b!4773489 (=> (not res!2025083) (not e!2980003))))

(assert (=> b!4773489 (= res!2025083 (dynLambda!21982 (ite c!814050 lambda!225813 lambda!225815) (h!60113 (ite c!814050 (toList!6476 (extractMap!2229 (t!361276 (toList!6475 lm!1309)))) (_2!31267 (h!60114 (toList!6475 lm!1309)))))))))

(declare-fun b!4773490 () Bool)

(assert (=> b!4773490 (= e!2980003 (forall!11962 (t!361275 (ite c!814050 (toList!6476 (extractMap!2229 (t!361276 (toList!6475 lm!1309)))) (_2!31267 (h!60114 (toList!6475 lm!1309))))) (ite c!814050 lambda!225813 lambda!225815)))))

(assert (= (and d!1525566 (not res!2025082)) b!4773489))

(assert (= (and b!4773489 res!2025083) b!4773490))

(declare-fun b_lambda!184795 () Bool)

(assert (=> (not b_lambda!184795) (not b!4773489)))

(declare-fun m!5746766 () Bool)

(assert (=> b!4773489 m!5746766))

(declare-fun m!5746768 () Bool)

(assert (=> b!4773490 m!5746768))

(assert (=> bm!334517 d!1525566))

(assert (=> d!1525304 d!1525262))

(assert (=> d!1525304 d!1525264))

(declare-fun d!1525568 () Bool)

(assert (=> d!1525568 (isDefined!9937 (getValueByKey!2232 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))) key!2872))))

(assert (=> d!1525568 true))

(declare-fun _$29!757 () Unit!138594)

(assert (=> d!1525568 (= (choose!34075 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))) key!2872) _$29!757)))

(declare-fun bs!1150102 () Bool)

(assert (= bs!1150102 d!1525568))

(assert (=> bs!1150102 m!5745758))

(assert (=> bs!1150102 m!5745758))

(assert (=> bs!1150102 m!5745760))

(assert (=> d!1525304 d!1525568))

(assert (=> d!1525304 d!1525486))

(declare-fun bs!1150126 () Bool)

(declare-fun d!1525570 () Bool)

(assert (= bs!1150126 (and d!1525570 d!1525512)))

(declare-fun lambda!225868 () Int)

(assert (=> bs!1150126 (= (= (extractMap!2229 (t!361276 (toList!6475 lm!1309))) lt!1936120) (= lambda!225868 lambda!225855))))

(declare-fun bs!1150127 () Bool)

(assert (= bs!1150127 (and d!1525570 b!4773122)))

(assert (=> bs!1150127 (= (= (extractMap!2229 (t!361276 (toList!6475 lm!1309))) lt!1935969) (= lambda!225868 lambda!225815))))

(declare-fun bs!1150128 () Bool)

(assert (= bs!1150128 (and d!1525570 b!4773404)))

(assert (=> bs!1150128 (= (= (extractMap!2229 (t!361276 (toList!6475 lm!1309))) (extractMap!2229 (t!361276 (t!361276 (toList!6475 lm!1309))))) (= lambda!225868 lambda!225853))))

(declare-fun bs!1150129 () Bool)

(assert (= bs!1150129 (and d!1525570 d!1525272)))

(assert (=> bs!1150129 (= (= (extractMap!2229 (t!361276 (toList!6475 lm!1309))) lt!1935963) (= lambda!225868 lambda!225816))))

(declare-fun bs!1150130 () Bool)

(assert (= bs!1150130 (and d!1525570 b!4773307)))

(assert (=> bs!1150130 (= (= (extractMap!2229 (t!361276 (toList!6475 lm!1309))) (+!2455 (extractMap!2229 (t!361276 (toList!6475 lm!1309))) (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))) (= lambda!225868 lambda!225836))))

(declare-fun bs!1150131 () Bool)

(assert (= bs!1150131 (and d!1525570 b!4773305)))

(assert (=> bs!1150131 (= (= (extractMap!2229 (t!361276 (toList!6475 lm!1309))) (+!2455 (extractMap!2229 (t!361276 (toList!6475 lm!1309))) (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))) (= lambda!225868 lambda!225835))))

(assert (=> bs!1150127 (= lambda!225868 lambda!225814)))

(assert (=> bs!1150128 (= (= (extractMap!2229 (t!361276 (toList!6475 lm!1309))) lt!1936126) (= lambda!225868 lambda!225854))))

(declare-fun bs!1150132 () Bool)

(assert (= bs!1150132 (and d!1525570 d!1525430)))

(assert (=> bs!1150132 (= (= (extractMap!2229 (t!361276 (toList!6475 lm!1309))) lt!1936051) (= lambda!225868 lambda!225839))))

(assert (=> bs!1150130 (= (= (extractMap!2229 (t!361276 (toList!6475 lm!1309))) lt!1936057) (= lambda!225868 lambda!225837))))

(declare-fun bs!1150133 () Bool)

(assert (= bs!1150133 (and d!1525570 b!4773121)))

(assert (=> bs!1150133 (= lambda!225868 lambda!225813)))

(declare-fun bs!1150134 () Bool)

(assert (= bs!1150134 (and d!1525570 d!1525500)))

(assert (=> bs!1150134 (not (= lambda!225868 lambda!225851))))

(declare-fun bs!1150135 () Bool)

(assert (= bs!1150135 (and d!1525570 d!1525440)))

(assert (=> bs!1150135 (= (= (extractMap!2229 (t!361276 (toList!6475 lm!1309))) lt!1935969) (= lambda!225868 lambda!225848))))

(declare-fun bs!1150136 () Bool)

(assert (= bs!1150136 (and d!1525570 b!4773403)))

(assert (=> bs!1150136 (= (= (extractMap!2229 (t!361276 (toList!6475 lm!1309))) (extractMap!2229 (t!361276 (t!361276 (toList!6475 lm!1309))))) (= lambda!225868 lambda!225852))))

(assert (=> d!1525570 true))

(assert (=> d!1525570 (forall!11962 (toList!6476 (extractMap!2229 (t!361276 (toList!6475 lm!1309)))) lambda!225868)))

(declare-fun lt!1936180 () Unit!138594)

(declare-fun choose!34087 (ListMap!5955) Unit!138594)

(assert (=> d!1525570 (= lt!1936180 (choose!34087 (extractMap!2229 (t!361276 (toList!6475 lm!1309)))))))

(assert (=> d!1525570 (= (lemmaContainsAllItsOwnKeys!911 (extractMap!2229 (t!361276 (toList!6475 lm!1309)))) lt!1936180)))

(declare-fun bs!1150137 () Bool)

(assert (= bs!1150137 d!1525570))

(declare-fun m!5746806 () Bool)

(assert (=> bs!1150137 m!5746806))

(assert (=> bs!1150137 m!5745798))

(declare-fun m!5746808 () Bool)

(assert (=> bs!1150137 m!5746808))

(assert (=> bm!334518 d!1525570))

(declare-fun d!1525610 () Bool)

(assert (=> d!1525610 true))

(assert (=> d!1525610 true))

(declare-fun res!2025090 () (_ BitVec 64))

(assert (=> d!1525610 (= (choose!34073 hashF!980 key!2872) res!2025090)))

(assert (=> d!1525268 d!1525610))

(assert (=> d!1525250 d!1525248))

(assert (=> d!1525250 d!1525172))

(declare-fun d!1525612 () Bool)

(assert (=> d!1525612 (isDefined!9936 (getValueByKey!2230 (toList!6475 lm!1309) lt!1935680))))

(assert (=> d!1525612 true))

(declare-fun _$13!1630 () Unit!138594)

(assert (=> d!1525612 (= (choose!34071 (toList!6475 lm!1309) lt!1935680) _$13!1630)))

(declare-fun bs!1150138 () Bool)

(assert (= bs!1150138 d!1525612))

(assert (=> bs!1150138 m!5745690))

(assert (=> bs!1150138 m!5745690))

(assert (=> bs!1150138 m!5745730))

(assert (=> d!1525250 d!1525612))

(assert (=> d!1525250 d!1525260))

(declare-fun d!1525614 () Bool)

(assert (=> d!1525614 (= (isEmpty!29310 (getValueByKey!2232 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))) key!2872)) (not ((_ is Some!12790) (getValueByKey!2232 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))) key!2872))))))

(assert (=> d!1525262 d!1525614))

(declare-fun d!1525616 () Bool)

(declare-fun res!2025091 () Bool)

(declare-fun e!2980011 () Bool)

(assert (=> d!1525616 (=> res!2025091 e!2980011)))

(assert (=> d!1525616 (= res!2025091 (not ((_ is Cons!53701) (t!361275 (_2!31267 (h!60114 (toList!6475 lm!1309)))))))))

(assert (=> d!1525616 (= (noDuplicateKeys!2270 (t!361275 (_2!31267 (h!60114 (toList!6475 lm!1309))))) e!2980011)))

(declare-fun b!4773498 () Bool)

(declare-fun e!2980012 () Bool)

(assert (=> b!4773498 (= e!2980011 e!2980012)))

(declare-fun res!2025092 () Bool)

(assert (=> b!4773498 (=> (not res!2025092) (not e!2980012))))

(assert (=> b!4773498 (= res!2025092 (not (containsKey!3706 (t!361275 (t!361275 (_2!31267 (h!60114 (toList!6475 lm!1309))))) (_1!31266 (h!60113 (t!361275 (_2!31267 (h!60114 (toList!6475 lm!1309)))))))))))

(declare-fun b!4773499 () Bool)

(assert (=> b!4773499 (= e!2980012 (noDuplicateKeys!2270 (t!361275 (t!361275 (_2!31267 (h!60114 (toList!6475 lm!1309)))))))))

(assert (= (and d!1525616 (not res!2025091)) b!4773498))

(assert (= (and b!4773498 res!2025092) b!4773499))

(declare-fun m!5746810 () Bool)

(assert (=> b!4773498 m!5746810))

(declare-fun m!5746812 () Bool)

(assert (=> b!4773499 m!5746812))

(assert (=> b!4773038 d!1525616))

(declare-fun d!1525618 () Bool)

(declare-fun res!2025093 () Bool)

(declare-fun e!2980013 () Bool)

(assert (=> d!1525618 (=> res!2025093 e!2980013)))

(assert (=> d!1525618 (= res!2025093 ((_ is Nil!53704) lt!1935778))))

(assert (=> d!1525618 (= (forall!11960 lt!1935778 lambda!225726) e!2980013)))

(declare-fun b!4773500 () Bool)

(declare-fun e!2980014 () Bool)

(assert (=> b!4773500 (= e!2980013 e!2980014)))

(declare-fun res!2025094 () Bool)

(assert (=> b!4773500 (=> (not res!2025094) (not e!2980014))))

(assert (=> b!4773500 (= res!2025094 (dynLambda!21981 lambda!225726 (h!60116 lt!1935778)))))

(declare-fun b!4773501 () Bool)

(assert (=> b!4773501 (= e!2980014 (forall!11960 (t!361278 lt!1935778) lambda!225726))))

(assert (= (and d!1525618 (not res!2025093)) b!4773500))

(assert (= (and b!4773500 res!2025094) b!4773501))

(declare-fun b_lambda!184835 () Bool)

(assert (=> (not b_lambda!184835) (not b!4773500)))

(declare-fun m!5746814 () Bool)

(assert (=> b!4773500 m!5746814))

(declare-fun m!5746816 () Bool)

(assert (=> b!4773501 m!5746816))

(assert (=> b!4772938 d!1525618))

(declare-fun d!1525620 () Bool)

(declare-fun res!2025095 () Bool)

(declare-fun e!2980015 () Bool)

(assert (=> d!1525620 (=> res!2025095 e!2980015)))

(assert (=> d!1525620 (= res!2025095 (or ((_ is Nil!53702) (t!361276 (toList!6475 lm!1309))) ((_ is Nil!53702) (t!361276 (t!361276 (toList!6475 lm!1309))))))))

(assert (=> d!1525620 (= (isStrictlySorted!825 (t!361276 (toList!6475 lm!1309))) e!2980015)))

(declare-fun b!4773502 () Bool)

(declare-fun e!2980016 () Bool)

(assert (=> b!4773502 (= e!2980015 e!2980016)))

(declare-fun res!2025096 () Bool)

(assert (=> b!4773502 (=> (not res!2025096) (not e!2980016))))

(assert (=> b!4773502 (= res!2025096 (bvslt (_1!31267 (h!60114 (t!361276 (toList!6475 lm!1309)))) (_1!31267 (h!60114 (t!361276 (t!361276 (toList!6475 lm!1309)))))))))

(declare-fun b!4773503 () Bool)

(assert (=> b!4773503 (= e!2980016 (isStrictlySorted!825 (t!361276 (t!361276 (toList!6475 lm!1309)))))))

(assert (= (and d!1525620 (not res!2025095)) b!4773502))

(assert (= (and b!4773502 res!2025096) b!4773503))

(declare-fun m!5746818 () Bool)

(assert (=> b!4773503 m!5746818))

(assert (=> b!4773020 d!1525620))

(declare-fun d!1525622 () Bool)

(declare-fun res!2025097 () Bool)

(declare-fun e!2980017 () Bool)

(assert (=> d!1525622 (=> res!2025097 e!2980017)))

(assert (=> d!1525622 (= res!2025097 (not ((_ is Cons!53701) (_2!31267 (h!60114 (t!361276 (toList!6475 lm!1309)))))))))

(assert (=> d!1525622 (= (noDuplicateKeys!2270 (_2!31267 (h!60114 (t!361276 (toList!6475 lm!1309))))) e!2980017)))

(declare-fun b!4773504 () Bool)

(declare-fun e!2980018 () Bool)

(assert (=> b!4773504 (= e!2980017 e!2980018)))

(declare-fun res!2025098 () Bool)

(assert (=> b!4773504 (=> (not res!2025098) (not e!2980018))))

(assert (=> b!4773504 (= res!2025098 (not (containsKey!3706 (t!361275 (_2!31267 (h!60114 (t!361276 (toList!6475 lm!1309))))) (_1!31266 (h!60113 (_2!31267 (h!60114 (t!361276 (toList!6475 lm!1309)))))))))))

(declare-fun b!4773505 () Bool)

(assert (=> b!4773505 (= e!2980018 (noDuplicateKeys!2270 (t!361275 (_2!31267 (h!60114 (t!361276 (toList!6475 lm!1309)))))))))

(assert (= (and d!1525622 (not res!2025097)) b!4773504))

(assert (= (and b!4773504 res!2025098) b!4773505))

(declare-fun m!5746820 () Bool)

(assert (=> b!4773504 m!5746820))

(declare-fun m!5746822 () Bool)

(assert (=> b!4773505 m!5746822))

(assert (=> bs!1149915 d!1525622))

(declare-fun d!1525624 () Bool)

(assert (=> d!1525624 (= (length!630 lt!1935809) (size!36353 lt!1935809))))

(declare-fun bs!1150139 () Bool)

(assert (= bs!1150139 d!1525624))

(declare-fun m!5746824 () Bool)

(assert (=> bs!1150139 m!5746824))

(assert (=> b!4772995 d!1525624))

(assert (=> b!4772995 d!1525532))

(declare-fun d!1525626 () Bool)

(declare-fun lt!1936181 () Bool)

(assert (=> d!1525626 (= lt!1936181 (select (content!9606 (getKeysList!1016 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) key!2872))))

(declare-fun e!2980019 () Bool)

(assert (=> d!1525626 (= lt!1936181 e!2980019)))

(declare-fun res!2025099 () Bool)

(assert (=> d!1525626 (=> (not res!2025099) (not e!2980019))))

(assert (=> d!1525626 (= res!2025099 ((_ is Cons!53704) (getKeysList!1016 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))))))

(assert (=> d!1525626 (= (contains!17128 (getKeysList!1016 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))) key!2872) lt!1936181)))

(declare-fun b!4773506 () Bool)

(declare-fun e!2980020 () Bool)

(assert (=> b!4773506 (= e!2980019 e!2980020)))

(declare-fun res!2025100 () Bool)

(assert (=> b!4773506 (=> res!2025100 e!2980020)))

(assert (=> b!4773506 (= res!2025100 (= (h!60116 (getKeysList!1016 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) key!2872))))

(declare-fun b!4773507 () Bool)

(assert (=> b!4773507 (= e!2980020 (contains!17128 (t!361278 (getKeysList!1016 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) key!2872))))

(assert (= (and d!1525626 res!2025099) b!4773506))

(assert (= (and b!4773506 (not res!2025100)) b!4773507))

(assert (=> d!1525626 m!5745774))

(declare-fun m!5746826 () Bool)

(assert (=> d!1525626 m!5746826))

(declare-fun m!5746828 () Bool)

(assert (=> d!1525626 m!5746828))

(declare-fun m!5746830 () Bool)

(assert (=> b!4773507 m!5746830))

(assert (=> d!1525308 d!1525626))

(assert (=> d!1525308 d!1525230))

(declare-fun d!1525628 () Bool)

(assert (=> d!1525628 (contains!17128 (getKeysList!1016 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))) key!2872)))

(assert (=> d!1525628 true))

(declare-fun _$14!1568 () Unit!138594)

(assert (=> d!1525628 (= (choose!34077 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))) key!2872) _$14!1568)))

(declare-fun bs!1150140 () Bool)

(assert (= bs!1150140 d!1525628))

(assert (=> bs!1150140 m!5745774))

(assert (=> bs!1150140 m!5745774))

(assert (=> bs!1150140 m!5746100))

(assert (=> d!1525308 d!1525628))

(assert (=> d!1525308 d!1525486))

(declare-fun bs!1150141 () Bool)

(declare-fun d!1525630 () Bool)

(assert (= bs!1150141 (and d!1525630 b!4772938)))

(declare-fun lambda!225871 () Int)

(assert (=> bs!1150141 (= (= (Cons!53701 (h!60113 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))) (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))) (= lambda!225871 lambda!225726))))

(declare-fun bs!1150142 () Bool)

(assert (= bs!1150142 (and d!1525630 b!4773199)))

(assert (=> bs!1150142 (= (= (Cons!53701 (h!60113 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))) (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) (= lambda!225871 lambda!225827))))

(declare-fun bs!1150143 () Bool)

(assert (= bs!1150143 (and d!1525630 b!4773192)))

(assert (=> bs!1150143 (= (= (Cons!53701 (h!60113 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))) (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) (t!361275 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))) (= lambda!225871 lambda!225824))))

(declare-fun bs!1150144 () Bool)

(assert (= bs!1150144 (and d!1525630 b!4773194)))

(assert (=> bs!1150144 (= (= (Cons!53701 (h!60113 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))) (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) (Cons!53701 (h!60113 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) (t!361275 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))))) (= lambda!225871 lambda!225825))))

(declare-fun bs!1150145 () Bool)

(assert (= bs!1150145 (and d!1525630 b!4772991)))

(assert (=> bs!1150145 (= (= (Cons!53701 (h!60113 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))) (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) (= lambda!225871 lambda!225736))))

(declare-fun bs!1150146 () Bool)

(assert (= bs!1150146 (and d!1525630 b!4772993)))

(assert (=> bs!1150146 (= lambda!225871 lambda!225737)))

(declare-fun bs!1150147 () Bool)

(assert (= bs!1150147 (and d!1525630 b!4772998)))

(assert (=> bs!1150147 (= (= (Cons!53701 (h!60113 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))) (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))) (= lambda!225871 lambda!225738))))

(assert (=> d!1525630 true))

(assert (=> d!1525630 true))

(assert (=> d!1525630 (forall!11960 lt!1935810 lambda!225871)))

(declare-fun lt!1936184 () Unit!138594)

(declare-fun choose!34088 (List!53825 List!53828 tuple2!55944) Unit!138594)

(assert (=> d!1525630 (= lt!1936184 (choose!34088 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))) lt!1935810 (h!60113 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))))))

(assert (=> d!1525630 (invariantList!1674 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))))

(assert (=> d!1525630 (= (lemmaForallContainsAddHeadPreserves!304 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))) lt!1935810 (h!60113 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) lt!1936184)))

(declare-fun bs!1150148 () Bool)

(assert (= bs!1150148 d!1525630))

(declare-fun m!5746832 () Bool)

(assert (=> bs!1150148 m!5746832))

(declare-fun m!5746834 () Bool)

(assert (=> bs!1150148 m!5746834))

(assert (=> bs!1150148 m!5746186))

(assert (=> b!4772993 d!1525630))

(declare-fun d!1525632 () Bool)

(declare-fun lt!1936185 () Bool)

(assert (=> d!1525632 (= lt!1936185 (select (content!9606 (getKeysList!1016 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))) (_1!31266 (h!60113 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))))))

(declare-fun e!2980021 () Bool)

(assert (=> d!1525632 (= lt!1936185 e!2980021)))

(declare-fun res!2025101 () Bool)

(assert (=> d!1525632 (=> (not res!2025101) (not e!2980021))))

(assert (=> d!1525632 (= res!2025101 ((_ is Cons!53704) (getKeysList!1016 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))))))

(assert (=> d!1525632 (= (contains!17128 (getKeysList!1016 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) (_1!31266 (h!60113 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))) lt!1936185)))

(declare-fun b!4773510 () Bool)

(declare-fun e!2980022 () Bool)

(assert (=> b!4773510 (= e!2980021 e!2980022)))

(declare-fun res!2025102 () Bool)

(assert (=> b!4773510 (=> res!2025102 e!2980022)))

(assert (=> b!4773510 (= res!2025102 (= (h!60116 (getKeysList!1016 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))) (_1!31266 (h!60113 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))))))

(declare-fun b!4773511 () Bool)

(assert (=> b!4773511 (= e!2980022 (contains!17128 (t!361278 (getKeysList!1016 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))) (_1!31266 (h!60113 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))))))

(assert (= (and d!1525632 res!2025101) b!4773510))

(assert (= (and b!4773510 (not res!2025102)) b!4773511))

(assert (=> d!1525632 m!5745910))

(declare-fun m!5746836 () Bool)

(assert (=> d!1525632 m!5746836))

(declare-fun m!5746838 () Bool)

(assert (=> d!1525632 m!5746838))

(declare-fun m!5746840 () Bool)

(assert (=> b!4773511 m!5746840))

(assert (=> b!4772993 d!1525632))

(assert (=> b!4772993 d!1525352))

(declare-fun d!1525634 () Bool)

(declare-fun res!2025103 () Bool)

(declare-fun e!2980023 () Bool)

(assert (=> d!1525634 (=> res!2025103 e!2980023)))

(assert (=> d!1525634 (= res!2025103 (and ((_ is Cons!53701) (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) (= (_1!31266 (h!60113 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))) (_1!31266 (h!60113 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))))))))

(assert (=> d!1525634 (= (containsKey!3705 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))) (_1!31266 (h!60113 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))) e!2980023)))

(declare-fun b!4773512 () Bool)

(declare-fun e!2980024 () Bool)

(assert (=> b!4773512 (= e!2980023 e!2980024)))

(declare-fun res!2025104 () Bool)

(assert (=> b!4773512 (=> (not res!2025104) (not e!2980024))))

(assert (=> b!4773512 (= res!2025104 ((_ is Cons!53701) (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))))))

(declare-fun b!4773513 () Bool)

(assert (=> b!4773513 (= e!2980024 (containsKey!3705 (t!361275 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) (_1!31266 (h!60113 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))))))

(assert (= (and d!1525634 (not res!2025103)) b!4773512))

(assert (= (and b!4773512 res!2025104) b!4773513))

(declare-fun m!5746842 () Bool)

(assert (=> b!4773513 m!5746842))

(assert (=> b!4772993 d!1525634))

(declare-fun d!1525636 () Bool)

(declare-fun res!2025105 () Bool)

(declare-fun e!2980025 () Bool)

(assert (=> d!1525636 (=> res!2025105 e!2980025)))

(assert (=> d!1525636 (= res!2025105 ((_ is Nil!53704) lt!1935810))))

(assert (=> d!1525636 (= (forall!11960 lt!1935810 lambda!225737) e!2980025)))

(declare-fun b!4773514 () Bool)

(declare-fun e!2980026 () Bool)

(assert (=> b!4773514 (= e!2980025 e!2980026)))

(declare-fun res!2025106 () Bool)

(assert (=> b!4773514 (=> (not res!2025106) (not e!2980026))))

(assert (=> b!4773514 (= res!2025106 (dynLambda!21981 lambda!225737 (h!60116 lt!1935810)))))

(declare-fun b!4773515 () Bool)

(assert (=> b!4773515 (= e!2980026 (forall!11960 (t!361278 lt!1935810) lambda!225737))))

(assert (= (and d!1525636 (not res!2025105)) b!4773514))

(assert (= (and b!4773514 res!2025106) b!4773515))

(declare-fun b_lambda!184837 () Bool)

(assert (=> (not b_lambda!184837) (not b!4773514)))

(declare-fun m!5746844 () Bool)

(assert (=> b!4773514 m!5746844))

(declare-fun m!5746846 () Bool)

(assert (=> b!4773515 m!5746846))

(assert (=> b!4772993 d!1525636))

(declare-fun d!1525638 () Bool)

(declare-fun c!814111 () Bool)

(assert (=> d!1525638 (= c!814111 ((_ is Nil!53704) (keys!19504 (extractMap!2229 (toList!6475 lm!1309)))))))

(declare-fun e!2980027 () (InoxSet K!15224))

(assert (=> d!1525638 (= (content!9606 (keys!19504 (extractMap!2229 (toList!6475 lm!1309)))) e!2980027)))

(declare-fun b!4773516 () Bool)

(assert (=> b!4773516 (= e!2980027 ((as const (Array K!15224 Bool)) false))))

(declare-fun b!4773517 () Bool)

(assert (=> b!4773517 (= e!2980027 ((_ map or) (store ((as const (Array K!15224 Bool)) false) (h!60116 (keys!19504 (extractMap!2229 (toList!6475 lm!1309)))) true) (content!9606 (t!361278 (keys!19504 (extractMap!2229 (toList!6475 lm!1309)))))))))

(assert (= (and d!1525638 c!814111) b!4773516))

(assert (= (and d!1525638 (not c!814111)) b!4773517))

(declare-fun m!5746848 () Bool)

(assert (=> b!4773517 m!5746848))

(assert (=> b!4773517 m!5746516))

(assert (=> d!1525226 d!1525638))

(declare-fun d!1525640 () Bool)

(declare-fun res!2025107 () Bool)

(declare-fun e!2980028 () Bool)

(assert (=> d!1525640 (=> res!2025107 e!2980028)))

(assert (=> d!1525640 (= res!2025107 ((_ is Nil!53702) (t!361276 (toList!6475 lm!1309))))))

(assert (=> d!1525640 (= (forall!11958 (t!361276 (toList!6475 lm!1309)) lambda!225712) e!2980028)))

(declare-fun b!4773518 () Bool)

(declare-fun e!2980029 () Bool)

(assert (=> b!4773518 (= e!2980028 e!2980029)))

(declare-fun res!2025108 () Bool)

(assert (=> b!4773518 (=> (not res!2025108) (not e!2980029))))

(assert (=> b!4773518 (= res!2025108 (dynLambda!21978 lambda!225712 (h!60114 (t!361276 (toList!6475 lm!1309)))))))

(declare-fun b!4773519 () Bool)

(assert (=> b!4773519 (= e!2980029 (forall!11958 (t!361276 (t!361276 (toList!6475 lm!1309))) lambda!225712))))

(assert (= (and d!1525640 (not res!2025107)) b!4773518))

(assert (= (and b!4773518 res!2025108) b!4773519))

(declare-fun b_lambda!184839 () Bool)

(assert (=> (not b_lambda!184839) (not b!4773518)))

(declare-fun m!5746850 () Bool)

(assert (=> b!4773518 m!5746850))

(declare-fun m!5746852 () Bool)

(assert (=> b!4773519 m!5746852))

(assert (=> b!4773008 d!1525640))

(declare-fun d!1525642 () Bool)

(assert (=> d!1525642 (= (isEmpty!29309 (getValueByKey!2230 (toList!6475 lm!1309) lt!1935680)) (not ((_ is Some!12788) (getValueByKey!2230 (toList!6475 lm!1309) lt!1935680))))))

(assert (=> d!1525248 d!1525642))

(declare-fun d!1525644 () Bool)

(declare-fun res!2025109 () Bool)

(declare-fun e!2980030 () Bool)

(assert (=> d!1525644 (=> res!2025109 e!2980030)))

(assert (=> d!1525644 (= res!2025109 ((_ is Nil!53704) lt!1935809))))

(assert (=> d!1525644 (= (noDuplicate!887 lt!1935809) e!2980030)))

(declare-fun b!4773520 () Bool)

(declare-fun e!2980031 () Bool)

(assert (=> b!4773520 (= e!2980030 e!2980031)))

(declare-fun res!2025110 () Bool)

(assert (=> b!4773520 (=> (not res!2025110) (not e!2980031))))

(assert (=> b!4773520 (= res!2025110 (not (contains!17128 (t!361278 lt!1935809) (h!60116 lt!1935809))))))

(declare-fun b!4773521 () Bool)

(assert (=> b!4773521 (= e!2980031 (noDuplicate!887 (t!361278 lt!1935809)))))

(assert (= (and d!1525644 (not res!2025109)) b!4773520))

(assert (= (and b!4773520 res!2025110) b!4773521))

(declare-fun m!5746854 () Bool)

(assert (=> b!4773520 m!5746854))

(declare-fun m!5746856 () Bool)

(assert (=> b!4773521 m!5746856))

(assert (=> d!1525230 d!1525644))

(assert (=> d!1525230 d!1525486))

(declare-fun tp!1356825 () Bool)

(declare-fun b!4773522 () Bool)

(declare-fun e!2980032 () Bool)

(assert (=> b!4773522 (= e!2980032 (and tp_is_empty!32759 tp_is_empty!32763 tp!1356825))))

(assert (=> b!4773162 (= tp!1356819 e!2980032)))

(assert (= (and b!4773162 ((_ is Cons!53701) (_2!31267 (h!60114 (t!361276 (toList!6475 lm!1309)))))) b!4773522))

(declare-fun b!4773523 () Bool)

(declare-fun e!2980033 () Bool)

(declare-fun tp!1356826 () Bool)

(declare-fun tp!1356827 () Bool)

(assert (=> b!4773523 (= e!2980033 (and tp!1356826 tp!1356827))))

(assert (=> b!4773162 (= tp!1356820 e!2980033)))

(assert (= (and b!4773162 ((_ is Cons!53702) (t!361276 (t!361276 (toList!6475 lm!1309))))) b!4773523))

(declare-fun b!4773524 () Bool)

(declare-fun e!2980034 () Bool)

(declare-fun tp!1356828 () Bool)

(assert (=> b!4773524 (= e!2980034 (and tp_is_empty!32759 tp_is_empty!32763 tp!1356828))))

(assert (=> b!4773161 (= tp!1356818 e!2980034)))

(assert (= (and b!4773161 ((_ is Cons!53701) (t!361275 (_2!31267 (h!60114 (toList!6475 lm!1309)))))) b!4773524))

(declare-fun b_lambda!184841 () Bool)

(assert (= b_lambda!184791 (or d!1525298 b_lambda!184841)))

(declare-fun bs!1150149 () Bool)

(declare-fun d!1525646 () Bool)

(assert (= bs!1150149 (and d!1525646 d!1525298)))

(assert (=> bs!1150149 (= (dynLambda!21978 lambda!225817 (h!60114 (t!361276 (toList!6475 lm!1309)))) (noDuplicateKeys!2270 (_2!31267 (h!60114 (t!361276 (toList!6475 lm!1309))))))))

(assert (=> bs!1150149 m!5746114))

(assert (=> b!4773472 d!1525646))

(declare-fun b_lambda!184843 () Bool)

(assert (= b_lambda!184839 (or d!1525188 b_lambda!184843)))

(declare-fun bs!1150150 () Bool)

(declare-fun d!1525648 () Bool)

(assert (= bs!1150150 (and d!1525648 d!1525188)))

(assert (=> bs!1150150 (= (dynLambda!21978 lambda!225712 (h!60114 (t!361276 (toList!6475 lm!1309)))) (noDuplicateKeys!2270 (_2!31267 (h!60114 (t!361276 (toList!6475 lm!1309))))))))

(assert (=> bs!1150150 m!5746114))

(assert (=> b!4773518 d!1525648))

(declare-fun b_lambda!184845 () Bool)

(assert (= b_lambda!184767 (or start!488818 b_lambda!184845)))

(declare-fun bs!1150151 () Bool)

(declare-fun d!1525650 () Bool)

(assert (= bs!1150151 (and d!1525650 start!488818)))

(assert (=> bs!1150151 (= (dynLambda!21978 lambda!225697 (h!60114 (t!361276 (t!361276 (toList!6475 lm!1309))))) (noDuplicateKeys!2270 (_2!31267 (h!60114 (t!361276 (t!361276 (toList!6475 lm!1309)))))))))

(declare-fun m!5746858 () Bool)

(assert (=> bs!1150151 m!5746858))

(assert (=> b!4773357 d!1525650))

(declare-fun b_lambda!184847 () Bool)

(assert (= b_lambda!184785 (or d!1525272 b_lambda!184847)))

(declare-fun bs!1150152 () Bool)

(declare-fun d!1525652 () Bool)

(assert (= bs!1150152 (and d!1525652 d!1525272)))

(assert (=> bs!1150152 (= (dynLambda!21982 lambda!225816 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309))))) (contains!17126 lt!1935963 (_1!31266 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))))))

(declare-fun m!5746860 () Bool)

(assert (=> bs!1150152 m!5746860))

(assert (=> b!4773456 d!1525652))

(declare-fun b_lambda!184849 () Bool)

(assert (= b_lambda!184779 (or b!4772939 b_lambda!184849)))

(declare-fun bs!1150153 () Bool)

(declare-fun d!1525654 () Bool)

(assert (= bs!1150153 (and d!1525654 b!4772939)))

(assert (=> bs!1150153 (= (dynLambda!21984 lambda!225727 (h!60113 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) (_1!31266 (h!60113 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))))))

(assert (=> b!4773447 d!1525654))

(declare-fun b_lambda!184851 () Bool)

(assert (= b_lambda!184735 (or b!4773122 b_lambda!184851)))

(declare-fun bs!1150154 () Bool)

(declare-fun d!1525656 () Bool)

(assert (= bs!1150154 (and d!1525656 b!4773122)))

(assert (=> bs!1150154 (= (dynLambda!21982 lambda!225815 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309))))) (contains!17126 lt!1935969 (_1!31266 (h!60113 (_2!31267 (h!60114 (toList!6475 lm!1309)))))))))

(assert (=> bs!1150154 m!5746058))

(assert (=> b!4773245 d!1525656))

(declare-fun b_lambda!184853 () Bool)

(assert (= b_lambda!184729 (or b!4772991 b_lambda!184853)))

(declare-fun bs!1150155 () Bool)

(declare-fun d!1525658 () Bool)

(assert (= bs!1150155 (and d!1525658 b!4772991)))

(assert (=> bs!1150155 (= (dynLambda!21981 lambda!225736 (_1!31266 (h!60113 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))) (containsKey!3705 (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))) (_1!31266 (h!60113 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))))))))

(assert (=> bs!1150155 m!5745920))

(assert (=> d!1525348 d!1525658))

(declare-fun b_lambda!184855 () Bool)

(assert (= b_lambda!184753 (or b!4773122 b_lambda!184855)))

(assert (=> d!1525414 d!1525656))

(declare-fun b_lambda!184857 () Bool)

(assert (= b_lambda!184787 (or b!4772996 b_lambda!184857)))

(declare-fun bs!1150156 () Bool)

(declare-fun d!1525660 () Bool)

(assert (= bs!1150156 (and d!1525660 b!4772996)))

(assert (=> bs!1150156 (= (dynLambda!21984 lambda!225739 (h!60113 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) (_1!31266 (h!60113 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))))))

(assert (=> b!4773463 d!1525660))

(declare-fun b_lambda!184859 () Bool)

(assert (= b_lambda!184763 (or b!4773122 b_lambda!184859)))

(declare-fun bs!1150157 () Bool)

(declare-fun d!1525662 () Bool)

(assert (= bs!1150157 (and d!1525662 b!4773122)))

(assert (=> bs!1150157 (= (dynLambda!21982 lambda!225815 (h!60113 (t!361275 (_2!31267 (h!60114 (toList!6475 lm!1309)))))) (contains!17126 lt!1935969 (_1!31266 (h!60113 (t!361275 (_2!31267 (h!60114 (toList!6475 lm!1309))))))))))

(declare-fun m!5746862 () Bool)

(assert (=> bs!1150157 m!5746862))

(assert (=> b!4773342 d!1525662))

(declare-fun b_lambda!184861 () Bool)

(assert (= b_lambda!184835 (or b!4772938 b_lambda!184861)))

(declare-fun bs!1150158 () Bool)

(declare-fun d!1525664 () Bool)

(assert (= bs!1150158 (and d!1525664 b!4772938)))

(assert (=> bs!1150158 (= (dynLambda!21981 lambda!225726 (h!60116 lt!1935778)) (containsKey!3705 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))) (h!60116 lt!1935778)))))

(declare-fun m!5746864 () Bool)

(assert (=> bs!1150158 m!5746864))

(assert (=> b!4773500 d!1525664))

(declare-fun b_lambda!184863 () Bool)

(assert (= b_lambda!184775 (or d!1525202 b_lambda!184863)))

(declare-fun bs!1150159 () Bool)

(declare-fun d!1525666 () Bool)

(assert (= bs!1150159 (and d!1525666 d!1525202)))

(assert (=> bs!1150159 (= (dynLambda!21978 lambda!225715 (h!60114 (t!361276 (toList!6475 lm!1309)))) (allKeysSameHash!1928 (_2!31267 (h!60114 (t!361276 (toList!6475 lm!1309)))) (_1!31267 (h!60114 (t!361276 (toList!6475 lm!1309)))) hashF!980))))

(declare-fun m!5746866 () Bool)

(assert (=> bs!1150159 m!5746866))

(assert (=> b!4773376 d!1525666))

(declare-fun b_lambda!184865 () Bool)

(assert (= b_lambda!184765 (or b!4773122 b_lambda!184865)))

(declare-fun bs!1150160 () Bool)

(declare-fun d!1525668 () Bool)

(assert (= bs!1150160 (and d!1525668 b!4773122)))

(assert (=> bs!1150160 (= (dynLambda!21982 lambda!225815 (h!60113 (toList!6476 (extractMap!2229 (t!361276 (toList!6475 lm!1309)))))) (contains!17126 lt!1935969 (_1!31266 (h!60113 (toList!6476 (extractMap!2229 (t!361276 (toList!6475 lm!1309))))))))))

(declare-fun m!5746868 () Bool)

(assert (=> bs!1150160 m!5746868))

(assert (=> b!4773353 d!1525668))

(declare-fun b_lambda!184867 () Bool)

(assert (= b_lambda!184789 (or d!1525168 b_lambda!184867)))

(declare-fun bs!1150161 () Bool)

(declare-fun d!1525670 () Bool)

(assert (= bs!1150161 (and d!1525670 d!1525168)))

(assert (=> bs!1150161 (= (dynLambda!21978 lambda!225703 (h!60114 (t!361276 (toList!6475 lm!1309)))) (noDuplicateKeys!2270 (_2!31267 (h!60114 (t!361276 (toList!6475 lm!1309))))))))

(assert (=> bs!1150161 m!5746114))

(assert (=> b!4773470 d!1525670))

(declare-fun b_lambda!184869 () Bool)

(assert (= b_lambda!184793 (or d!1525272 b_lambda!184869)))

(declare-fun bs!1150162 () Bool)

(declare-fun d!1525672 () Bool)

(assert (= bs!1150162 (and d!1525672 d!1525272)))

(assert (=> bs!1150162 (= (dynLambda!21982 lambda!225816 (h!60113 (toList!6476 (extractMap!2229 (t!361276 (toList!6475 lm!1309)))))) (contains!17126 lt!1935963 (_1!31266 (h!60113 (toList!6476 (extractMap!2229 (t!361276 (toList!6475 lm!1309))))))))))

(declare-fun m!5746870 () Bool)

(assert (=> bs!1150162 m!5746870))

(assert (=> b!4773487 d!1525672))

(declare-fun b_lambda!184871 () Bool)

(assert (= b_lambda!184757 (or b!4773122 b_lambda!184871)))

(declare-fun bs!1150163 () Bool)

(declare-fun d!1525674 () Bool)

(assert (= bs!1150163 (and d!1525674 b!4773122)))

(assert (=> bs!1150163 (= (dynLambda!21982 lambda!225815 (h!60113 (toList!6476 lt!1935954))) (contains!17126 lt!1935969 (_1!31266 (h!60113 (toList!6476 lt!1935954)))))))

(declare-fun m!5746872 () Bool)

(assert (=> bs!1150163 m!5746872))

(assert (=> b!4773323 d!1525674))

(declare-fun b_lambda!184873 () Bool)

(assert (= b_lambda!184749 (or b!4773122 b_lambda!184873)))

(declare-fun bs!1150164 () Bool)

(declare-fun d!1525676 () Bool)

(assert (= bs!1150164 (and d!1525676 b!4773122)))

(assert (=> bs!1150164 (= (dynLambda!21982 lambda!225814 (h!60113 (toList!6476 (extractMap!2229 (t!361276 (toList!6475 lm!1309)))))) (contains!17126 (extractMap!2229 (t!361276 (toList!6475 lm!1309))) (_1!31266 (h!60113 (toList!6476 (extractMap!2229 (t!361276 (toList!6475 lm!1309))))))))))

(assert (=> bs!1150164 m!5745798))

(declare-fun m!5746874 () Bool)

(assert (=> bs!1150164 m!5746874))

(assert (=> b!4773288 d!1525676))

(declare-fun b_lambda!184875 () Bool)

(assert (= b_lambda!184837 (or b!4772993 b_lambda!184875)))

(declare-fun bs!1150165 () Bool)

(declare-fun d!1525678 () Bool)

(assert (= bs!1150165 (and d!1525678 b!4772993)))

(assert (=> bs!1150165 (= (dynLambda!21981 lambda!225737 (h!60116 lt!1935810)) (containsKey!3705 (Cons!53701 (h!60113 (toList!6476 (extractMap!2229 (toList!6475 lm!1309)))) (t!361275 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))))) (h!60116 lt!1935810)))))

(declare-fun m!5746876 () Bool)

(assert (=> bs!1150165 m!5746876))

(assert (=> b!4773514 d!1525678))

(declare-fun b_lambda!184877 () Bool)

(assert (= b_lambda!184783 (or b!4772998 b_lambda!184877)))

(declare-fun bs!1150166 () Bool)

(declare-fun d!1525680 () Bool)

(assert (= bs!1150166 (and d!1525680 b!4772998)))

(assert (=> bs!1150166 (= (dynLambda!21981 lambda!225738 (h!60116 lt!1935809)) (containsKey!3705 (toList!6476 (extractMap!2229 (toList!6475 lm!1309))) (h!60116 lt!1935809)))))

(declare-fun m!5746878 () Bool)

(assert (=> bs!1150166 m!5746878))

(assert (=> b!4773454 d!1525680))

(check-sat (not bm!334531) (not bs!1150162) (not b!4773513) (not b_lambda!184875) (not bm!334523) (not b_lambda!184845) (not b!4773511) (not d!1525486) (not b_lambda!184849) (not b!4773289) (not b!4773348) (not b!4773520) (not b!4773307) (not b!4773473) (not b!4773194) (not b!4773241) (not bs!1150152) (not b!4773519) (not b!4773237) (not b!4773463) (not d!1525512) tp_is_empty!32759 (not b!4773354) (not b!4773302) (not b!4773505) (not b!4773197) (not b!4773426) (not b!4773377) (not b!4773501) (not d!1525414) (not d!1525352) (not d!1525530) (not b!4773406) (not b_lambda!184859) (not d!1525626) (not b!4773504) (not b!4773482) (not d!1525552) (not b!4773399) (not d!1525500) (not d!1525520) (not b!4773402) (not b_lambda!184841) (not d!1525546) (not b!4773233) (not b!4773372) (not d!1525366) (not b!4773437) (not bm!334521) (not bs!1150161) (not d!1525372) (not d!1525570) (not d!1525430) (not b!4773471) (not b!4773344) (not bs!1150151) (not bs!1150159) (not b_lambda!184869) (not bs!1150158) (not b!4773459) (not b!4773461) (not b_lambda!184877) tp_is_empty!32763 (not bs!1150149) (not b!4773242) (not b!4773498) (not d!1525508) (not b!4773234) (not bs!1150166) (not bs!1150165) (not d!1525516) (not bs!1150157) (not b!4773189) (not b!4773515) (not b!4773457) (not bm!334527) (not bs!1150163) (not b!4773221) (not b!4773499) (not b_lambda!184795) (not d!1525624) (not b!4773349) (not b!4773469) (not bm!334530) (not d!1525628) (not b!4773507) (not b!4773488) (not b!4773485) (not b!4773455) (not bs!1150164) (not b!4773405) (not b!4773196) (not b!4773343) (not b!4773239) (not b!4773246) (not b_lambda!184721) (not b!4773287) (not bs!1150154) (not b!4773309) (not b!4773351) (not b_lambda!184857) (not b_lambda!184851) (not b!4773236) (not d!1525612) (not b!4773521) (not b_lambda!184853) (not d!1525490) (not b_lambda!184871) (not b!4773503) (not b!4773346) (not d!1525348) (not b_lambda!184719) (not b!4773517) (not b!4773404) (not b!4773352) (not b!4773361) (not bm!334529) (not bs!1150155) (not d!1525632) (not b_lambda!184865) (not b_lambda!184689) (not b!4773192) (not b_lambda!184873) (not d!1525528) (not b!4773475) (not b!4773436) (not b!4773286) (not d!1525482) (not bs!1150150) (not d!1525630) (not b!4773358) (not b!4773398) (not bm!334520) (not d!1525466) (not bm!334522) (not d!1525440) (not b_lambda!184847) (not b!4773423) (not b!4773238) (not b_lambda!184855) (not b!4773522) (not bs!1150160) (not b!4773324) (not b!4773441) (not d!1525476) (not b!4773400) (not b!4773524) (not d!1525532) (not b_lambda!184717) (not b_lambda!184843) (not b_lambda!184867) (not b!4773447) (not b_lambda!184861) (not b!4773347) (not b!4773523) (not b_lambda!184863) (not b!4773199) (not b!4773310) (not b_lambda!184733) (not d!1525568) (not b!4773439) (not b_lambda!184715) (not b!4773490) (not b!4773479) (not d!1525376))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!502566 () Bool)

(assert start!502566)

(declare-fun b!4834745 () Bool)

(declare-fun res!2059689 () Bool)

(declare-fun e!3021368 () Bool)

(assert (=> b!4834745 (=> (not res!2059689) (not e!3021368))))

(declare-datatypes ((K!16844 0))(
  ( (K!16845 (val!21781 Int)) )
))
(declare-datatypes ((V!17090 0))(
  ( (V!17091 (val!21782 Int)) )
))
(declare-datatypes ((tuple2!58436 0))(
  ( (tuple2!58437 (_1!32512 K!16844) (_2!32512 V!17090)) )
))
(declare-datatypes ((List!55249 0))(
  ( (Nil!55125) (Cons!55125 (h!61559 tuple2!58436) (t!362745 List!55249)) )
))
(declare-fun l!14180 () List!55249)

(get-info :version)

(assert (=> b!4834745 (= res!2059689 (not ((_ is Nil!55125) l!14180)))))

(declare-fun res!2059688 () Bool)

(assert (=> start!502566 (=> (not res!2059688) (not e!3021368))))

(declare-fun noDuplicateKeys!2508 (List!55249) Bool)

(assert (=> start!502566 (= res!2059688 (noDuplicateKeys!2508 l!14180))))

(assert (=> start!502566 e!3021368))

(declare-fun e!3021367 () Bool)

(assert (=> start!502566 e!3021367))

(declare-datatypes ((ListMap!6997 0))(
  ( (ListMap!6998 (toList!7594 List!55249)) )
))
(declare-fun acc!1183 () ListMap!6997)

(declare-fun e!3021366 () Bool)

(declare-fun inv!70744 (ListMap!6997) Bool)

(assert (=> start!502566 (and (inv!70744 acc!1183) e!3021366)))

(declare-fun tp_is_empty!34713 () Bool)

(assert (=> start!502566 tp_is_empty!34713))

(declare-fun b!4834746 () Bool)

(declare-fun e!3021365 () Bool)

(declare-fun lt!1980667 () ListMap!6997)

(declare-fun key!5666 () K!16844)

(declare-fun contains!18949 (ListMap!6997 K!16844) Bool)

(assert (=> b!4834746 (= e!3021365 (contains!18949 lt!1980667 key!5666))))

(declare-fun b!4834747 () Bool)

(declare-fun tp_is_empty!34715 () Bool)

(declare-fun tp!1363237 () Bool)

(assert (=> b!4834747 (= e!3021367 (and tp_is_empty!34713 tp_is_empty!34715 tp!1363237))))

(declare-fun b!4834748 () Bool)

(declare-fun tp!1363238 () Bool)

(assert (=> b!4834748 (= e!3021366 tp!1363238)))

(declare-fun b!4834749 () Bool)

(declare-fun res!2059687 () Bool)

(declare-fun e!3021369 () Bool)

(assert (=> b!4834749 (=> res!2059687 e!3021369)))

(declare-fun lt!1980672 () Bool)

(assert (=> b!4834749 (= res!2059687 (or (= (_1!32512 (h!61559 l!14180)) key!5666) lt!1980672))))

(declare-fun b!4834750 () Bool)

(assert (=> b!4834750 (= e!3021368 (not e!3021369))))

(declare-fun res!2059690 () Bool)

(assert (=> b!4834750 (=> res!2059690 e!3021369)))

(assert (=> b!4834750 (= res!2059690 (contains!18949 acc!1183 key!5666))))

(declare-fun lt!1980673 () Bool)

(assert (=> b!4834750 (= lt!1980673 e!3021365)))

(declare-fun res!2059691 () Bool)

(assert (=> b!4834750 (=> res!2059691 e!3021365)))

(assert (=> b!4834750 (= res!2059691 lt!1980672)))

(declare-fun lt!1980671 () ListMap!6997)

(assert (=> b!4834750 (= lt!1980673 (contains!18949 lt!1980671 key!5666))))

(declare-fun containsKey!4489 (List!55249 K!16844) Bool)

(assert (=> b!4834750 (= lt!1980672 (containsKey!4489 (t!362745 l!14180) key!5666))))

(declare-datatypes ((Unit!144455 0))(
  ( (Unit!144456) )
))
(declare-fun lt!1980669 () Unit!144455)

(declare-fun lemmaAddToMapFromBucketContainsIIFInAccOrL!76 (List!55249 ListMap!6997 K!16844) Unit!144455)

(assert (=> b!4834750 (= lt!1980669 (lemmaAddToMapFromBucketContainsIIFInAccOrL!76 (t!362745 l!14180) lt!1980667 key!5666))))

(declare-fun addToMapMapFromBucket!1863 (List!55249 ListMap!6997) ListMap!6997)

(assert (=> b!4834750 (= lt!1980671 (addToMapMapFromBucket!1863 (t!362745 l!14180) lt!1980667))))

(declare-fun +!2587 (ListMap!6997 tuple2!58436) ListMap!6997)

(assert (=> b!4834750 (= lt!1980667 (+!2587 acc!1183 (h!61559 l!14180)))))

(declare-fun b!4834751 () Bool)

(assert (=> b!4834751 (= e!3021369 (= (contains!18949 (addToMapMapFromBucket!1863 l!14180 acc!1183) key!5666) (containsKey!4489 l!14180 key!5666)))))

(declare-fun lt!1980668 () Bool)

(assert (=> b!4834751 (not lt!1980668)))

(declare-fun lt!1980670 () Unit!144455)

(declare-fun addStillNotContains!7 (ListMap!6997 K!16844 V!17090 K!16844) Unit!144455)

(assert (=> b!4834751 (= lt!1980670 (addStillNotContains!7 acc!1183 (_1!32512 (h!61559 l!14180)) (_2!32512 (h!61559 l!14180)) key!5666))))

(assert (=> b!4834751 (= lt!1980673 lt!1980668)))

(assert (=> b!4834751 (= lt!1980668 (contains!18949 lt!1980667 key!5666))))

(assert (= (and start!502566 res!2059688) b!4834745))

(assert (= (and b!4834745 res!2059689) b!4834750))

(assert (= (and b!4834750 (not res!2059691)) b!4834746))

(assert (= (and b!4834750 (not res!2059690)) b!4834749))

(assert (= (and b!4834749 (not res!2059687)) b!4834751))

(assert (= (and start!502566 ((_ is Cons!55125) l!14180)) b!4834747))

(assert (= start!502566 b!4834748))

(declare-fun m!5829710 () Bool)

(assert (=> start!502566 m!5829710))

(declare-fun m!5829712 () Bool)

(assert (=> start!502566 m!5829712))

(declare-fun m!5829714 () Bool)

(assert (=> b!4834746 m!5829714))

(declare-fun m!5829716 () Bool)

(assert (=> b!4834750 m!5829716))

(declare-fun m!5829718 () Bool)

(assert (=> b!4834750 m!5829718))

(declare-fun m!5829720 () Bool)

(assert (=> b!4834750 m!5829720))

(declare-fun m!5829722 () Bool)

(assert (=> b!4834750 m!5829722))

(declare-fun m!5829724 () Bool)

(assert (=> b!4834750 m!5829724))

(declare-fun m!5829726 () Bool)

(assert (=> b!4834750 m!5829726))

(declare-fun m!5829728 () Bool)

(assert (=> b!4834751 m!5829728))

(declare-fun m!5829730 () Bool)

(assert (=> b!4834751 m!5829730))

(declare-fun m!5829732 () Bool)

(assert (=> b!4834751 m!5829732))

(assert (=> b!4834751 m!5829728))

(declare-fun m!5829734 () Bool)

(assert (=> b!4834751 m!5829734))

(assert (=> b!4834751 m!5829714))

(check-sat tp_is_empty!34713 (not b!4834751) (not b!4834747) (not b!4834746) (not start!502566) tp_is_empty!34715 (not b!4834750) (not b!4834748))
(check-sat)
(get-model)

(declare-fun b!4834809 () Bool)

(declare-fun e!3021414 () Unit!144455)

(declare-fun e!3021410 () Unit!144455)

(assert (=> b!4834809 (= e!3021414 e!3021410)))

(declare-fun c!823793 () Bool)

(declare-fun call!337015 () Bool)

(assert (=> b!4834809 (= c!823793 call!337015)))

(declare-fun b!4834810 () Bool)

(declare-fun e!3021409 () Bool)

(declare-fun e!3021411 () Bool)

(assert (=> b!4834810 (= e!3021409 e!3021411)))

(declare-fun res!2059714 () Bool)

(assert (=> b!4834810 (=> (not res!2059714) (not e!3021411))))

(declare-datatypes ((Option!13554 0))(
  ( (None!13553) (Some!13553 (v!49254 V!17090)) )
))
(declare-fun isDefined!10665 (Option!13554) Bool)

(declare-fun getValueByKey!2681 (List!55249 K!16844) Option!13554)

(assert (=> b!4834810 (= res!2059714 (isDefined!10665 (getValueByKey!2681 (toList!7594 lt!1980667) key!5666)))))

(declare-fun b!4834811 () Bool)

(declare-fun Unit!144476 () Unit!144455)

(assert (=> b!4834811 (= e!3021410 Unit!144476)))

(declare-fun b!4834812 () Bool)

(declare-datatypes ((List!55251 0))(
  ( (Nil!55127) (Cons!55127 (h!61561 K!16844) (t!362747 List!55251)) )
))
(declare-fun e!3021412 () List!55251)

(declare-fun getKeysList!1192 (List!55249) List!55251)

(assert (=> b!4834812 (= e!3021412 (getKeysList!1192 (toList!7594 lt!1980667)))))

(declare-fun b!4834813 () Bool)

(declare-fun e!3021413 () Bool)

(declare-fun contains!18952 (List!55251 K!16844) Bool)

(declare-fun keys!20335 (ListMap!6997) List!55251)

(assert (=> b!4834813 (= e!3021413 (not (contains!18952 (keys!20335 lt!1980667) key!5666)))))

(declare-fun b!4834814 () Bool)

(declare-fun lt!1980727 () Unit!144455)

(assert (=> b!4834814 (= e!3021414 lt!1980727)))

(declare-fun lt!1980731 () Unit!144455)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2462 (List!55249 K!16844) Unit!144455)

(assert (=> b!4834814 (= lt!1980731 (lemmaContainsKeyImpliesGetValueByKeyDefined!2462 (toList!7594 lt!1980667) key!5666))))

(assert (=> b!4834814 (isDefined!10665 (getValueByKey!2681 (toList!7594 lt!1980667) key!5666))))

(declare-fun lt!1980725 () Unit!144455)

(assert (=> b!4834814 (= lt!1980725 lt!1980731)))

(declare-fun lemmaInListThenGetKeysListContains!1187 (List!55249 K!16844) Unit!144455)

(assert (=> b!4834814 (= lt!1980727 (lemmaInListThenGetKeysListContains!1187 (toList!7594 lt!1980667) key!5666))))

(assert (=> b!4834814 call!337015))

(declare-fun d!1550086 () Bool)

(assert (=> d!1550086 e!3021409))

(declare-fun res!2059713 () Bool)

(assert (=> d!1550086 (=> res!2059713 e!3021409)))

(assert (=> d!1550086 (= res!2059713 e!3021413)))

(declare-fun res!2059715 () Bool)

(assert (=> d!1550086 (=> (not res!2059715) (not e!3021413))))

(declare-fun lt!1980729 () Bool)

(assert (=> d!1550086 (= res!2059715 (not lt!1980729))))

(declare-fun lt!1980730 () Bool)

(assert (=> d!1550086 (= lt!1980729 lt!1980730)))

(declare-fun lt!1980732 () Unit!144455)

(assert (=> d!1550086 (= lt!1980732 e!3021414)))

(declare-fun c!823794 () Bool)

(assert (=> d!1550086 (= c!823794 lt!1980730)))

(declare-fun containsKey!4491 (List!55249 K!16844) Bool)

(assert (=> d!1550086 (= lt!1980730 (containsKey!4491 (toList!7594 lt!1980667) key!5666))))

(assert (=> d!1550086 (= (contains!18949 lt!1980667 key!5666) lt!1980729)))

(declare-fun b!4834815 () Bool)

(assert (=> b!4834815 (= e!3021412 (keys!20335 lt!1980667))))

(declare-fun b!4834816 () Bool)

(assert (=> b!4834816 (= e!3021411 (contains!18952 (keys!20335 lt!1980667) key!5666))))

(declare-fun bm!337010 () Bool)

(assert (=> bm!337010 (= call!337015 (contains!18952 e!3021412 key!5666))))

(declare-fun c!823792 () Bool)

(assert (=> bm!337010 (= c!823792 c!823794)))

(declare-fun b!4834817 () Bool)

(assert (=> b!4834817 false))

(declare-fun lt!1980726 () Unit!144455)

(declare-fun lt!1980728 () Unit!144455)

(assert (=> b!4834817 (= lt!1980726 lt!1980728)))

(assert (=> b!4834817 (containsKey!4491 (toList!7594 lt!1980667) key!5666)))

(declare-fun lemmaInGetKeysListThenContainsKey!1192 (List!55249 K!16844) Unit!144455)

(assert (=> b!4834817 (= lt!1980728 (lemmaInGetKeysListThenContainsKey!1192 (toList!7594 lt!1980667) key!5666))))

(declare-fun Unit!144483 () Unit!144455)

(assert (=> b!4834817 (= e!3021410 Unit!144483)))

(assert (= (and d!1550086 c!823794) b!4834814))

(assert (= (and d!1550086 (not c!823794)) b!4834809))

(assert (= (and b!4834809 c!823793) b!4834817))

(assert (= (and b!4834809 (not c!823793)) b!4834811))

(assert (= (or b!4834814 b!4834809) bm!337010))

(assert (= (and bm!337010 c!823792) b!4834812))

(assert (= (and bm!337010 (not c!823792)) b!4834815))

(assert (= (and d!1550086 res!2059715) b!4834813))

(assert (= (and d!1550086 (not res!2059713)) b!4834810))

(assert (= (and b!4834810 res!2059714) b!4834816))

(declare-fun m!5829782 () Bool)

(assert (=> b!4834814 m!5829782))

(declare-fun m!5829784 () Bool)

(assert (=> b!4834814 m!5829784))

(assert (=> b!4834814 m!5829784))

(declare-fun m!5829786 () Bool)

(assert (=> b!4834814 m!5829786))

(declare-fun m!5829788 () Bool)

(assert (=> b!4834814 m!5829788))

(declare-fun m!5829790 () Bool)

(assert (=> b!4834815 m!5829790))

(declare-fun m!5829792 () Bool)

(assert (=> d!1550086 m!5829792))

(declare-fun m!5829794 () Bool)

(assert (=> bm!337010 m!5829794))

(declare-fun m!5829796 () Bool)

(assert (=> b!4834812 m!5829796))

(assert (=> b!4834817 m!5829792))

(declare-fun m!5829798 () Bool)

(assert (=> b!4834817 m!5829798))

(assert (=> b!4834810 m!5829784))

(assert (=> b!4834810 m!5829784))

(assert (=> b!4834810 m!5829786))

(assert (=> b!4834816 m!5829790))

(assert (=> b!4834816 m!5829790))

(declare-fun m!5829800 () Bool)

(assert (=> b!4834816 m!5829800))

(assert (=> b!4834813 m!5829790))

(assert (=> b!4834813 m!5829790))

(assert (=> b!4834813 m!5829800))

(assert (=> b!4834746 d!1550086))

(declare-fun d!1550094 () Bool)

(declare-fun res!2059720 () Bool)

(declare-fun e!3021419 () Bool)

(assert (=> d!1550094 (=> res!2059720 e!3021419)))

(assert (=> d!1550094 (= res!2059720 (and ((_ is Cons!55125) l!14180) (= (_1!32512 (h!61559 l!14180)) key!5666)))))

(assert (=> d!1550094 (= (containsKey!4489 l!14180 key!5666) e!3021419)))

(declare-fun b!4834822 () Bool)

(declare-fun e!3021420 () Bool)

(assert (=> b!4834822 (= e!3021419 e!3021420)))

(declare-fun res!2059721 () Bool)

(assert (=> b!4834822 (=> (not res!2059721) (not e!3021420))))

(assert (=> b!4834822 (= res!2059721 ((_ is Cons!55125) l!14180))))

(declare-fun b!4834823 () Bool)

(assert (=> b!4834823 (= e!3021420 (containsKey!4489 (t!362745 l!14180) key!5666))))

(assert (= (and d!1550094 (not res!2059720)) b!4834822))

(assert (= (and b!4834822 res!2059721) b!4834823))

(assert (=> b!4834823 m!5829722))

(assert (=> b!4834751 d!1550094))

(declare-fun b!4834908 () Bool)

(assert (=> b!4834908 true))

(declare-fun bs!1167358 () Bool)

(declare-fun b!4834907 () Bool)

(assert (= bs!1167358 (and b!4834907 b!4834908)))

(declare-fun lambda!239130 () Int)

(declare-fun lambda!239129 () Int)

(assert (=> bs!1167358 (= lambda!239130 lambda!239129)))

(assert (=> b!4834907 true))

(declare-fun lambda!239131 () Int)

(declare-fun lt!1980906 () ListMap!6997)

(assert (=> bs!1167358 (= (= lt!1980906 acc!1183) (= lambda!239131 lambda!239129))))

(assert (=> b!4834907 (= (= lt!1980906 acc!1183) (= lambda!239131 lambda!239130))))

(assert (=> b!4834907 true))

(declare-fun bs!1167359 () Bool)

(declare-fun d!1550096 () Bool)

(assert (= bs!1167359 (and d!1550096 b!4834908)))

(declare-fun lambda!239132 () Int)

(declare-fun lt!1980894 () ListMap!6997)

(assert (=> bs!1167359 (= (= lt!1980894 acc!1183) (= lambda!239132 lambda!239129))))

(declare-fun bs!1167360 () Bool)

(assert (= bs!1167360 (and d!1550096 b!4834907)))

(assert (=> bs!1167360 (= (= lt!1980894 acc!1183) (= lambda!239132 lambda!239130))))

(assert (=> bs!1167360 (= (= lt!1980894 lt!1980906) (= lambda!239132 lambda!239131))))

(assert (=> d!1550096 true))

(declare-fun bm!337031 () Bool)

(declare-fun call!337037 () Unit!144455)

(declare-fun lemmaContainsAllItsOwnKeys!1027 (ListMap!6997) Unit!144455)

(assert (=> bm!337031 (= call!337037 (lemmaContainsAllItsOwnKeys!1027 acc!1183))))

(declare-fun b!4834904 () Bool)

(declare-fun e!3021476 () Bool)

(declare-fun forall!12709 (List!55249 Int) Bool)

(assert (=> b!4834904 (= e!3021476 (forall!12709 (toList!7594 acc!1183) lambda!239131))))

(declare-fun e!3021477 () Bool)

(assert (=> d!1550096 e!3021477))

(declare-fun res!2059771 () Bool)

(assert (=> d!1550096 (=> (not res!2059771) (not e!3021477))))

(assert (=> d!1550096 (= res!2059771 (forall!12709 l!14180 lambda!239132))))

(declare-fun e!3021475 () ListMap!6997)

(assert (=> d!1550096 (= lt!1980894 e!3021475)))

(declare-fun c!823807 () Bool)

(assert (=> d!1550096 (= c!823807 ((_ is Nil!55125) l!14180))))

(assert (=> d!1550096 (noDuplicateKeys!2508 l!14180)))

(assert (=> d!1550096 (= (addToMapMapFromBucket!1863 l!14180 acc!1183) lt!1980894)))

(declare-fun b!4834905 () Bool)

(declare-fun res!2059770 () Bool)

(assert (=> b!4834905 (=> (not res!2059770) (not e!3021477))))

(assert (=> b!4834905 (= res!2059770 (forall!12709 (toList!7594 acc!1183) lambda!239132))))

(declare-fun b!4834906 () Bool)

(declare-fun invariantList!1850 (List!55249) Bool)

(assert (=> b!4834906 (= e!3021477 (invariantList!1850 (toList!7594 lt!1980894)))))

(declare-fun call!337038 () Bool)

(declare-fun bm!337032 () Bool)

(assert (=> bm!337032 (= call!337038 (forall!12709 (ite c!823807 (toList!7594 acc!1183) (t!362745 l!14180)) (ite c!823807 lambda!239129 lambda!239131)))))

(declare-fun bm!337033 () Bool)

(declare-fun call!337036 () Bool)

(assert (=> bm!337033 (= call!337036 (forall!12709 (toList!7594 acc!1183) (ite c!823807 lambda!239129 lambda!239130)))))

(assert (=> b!4834907 (= e!3021475 lt!1980906)))

(declare-fun lt!1980899 () ListMap!6997)

(assert (=> b!4834907 (= lt!1980899 (+!2587 acc!1183 (h!61559 l!14180)))))

(assert (=> b!4834907 (= lt!1980906 (addToMapMapFromBucket!1863 (t!362745 l!14180) (+!2587 acc!1183 (h!61559 l!14180))))))

(declare-fun lt!1980893 () Unit!144455)

(assert (=> b!4834907 (= lt!1980893 call!337037)))

(assert (=> b!4834907 call!337036))

(declare-fun lt!1980901 () Unit!144455)

(assert (=> b!4834907 (= lt!1980901 lt!1980893)))

(assert (=> b!4834907 (forall!12709 (toList!7594 lt!1980899) lambda!239131)))

(declare-fun lt!1980890 () Unit!144455)

(declare-fun Unit!144486 () Unit!144455)

(assert (=> b!4834907 (= lt!1980890 Unit!144486)))

(assert (=> b!4834907 call!337038))

(declare-fun lt!1980905 () Unit!144455)

(declare-fun Unit!144487 () Unit!144455)

(assert (=> b!4834907 (= lt!1980905 Unit!144487)))

(declare-fun lt!1980900 () Unit!144455)

(declare-fun Unit!144488 () Unit!144455)

(assert (=> b!4834907 (= lt!1980900 Unit!144488)))

(declare-fun lt!1980908 () Unit!144455)

(declare-fun forallContained!4439 (List!55249 Int tuple2!58436) Unit!144455)

(assert (=> b!4834907 (= lt!1980908 (forallContained!4439 (toList!7594 lt!1980899) lambda!239131 (h!61559 l!14180)))))

(assert (=> b!4834907 (contains!18949 lt!1980899 (_1!32512 (h!61559 l!14180)))))

(declare-fun lt!1980909 () Unit!144455)

(declare-fun Unit!144489 () Unit!144455)

(assert (=> b!4834907 (= lt!1980909 Unit!144489)))

(assert (=> b!4834907 (contains!18949 lt!1980906 (_1!32512 (h!61559 l!14180)))))

(declare-fun lt!1980896 () Unit!144455)

(declare-fun Unit!144490 () Unit!144455)

(assert (=> b!4834907 (= lt!1980896 Unit!144490)))

(assert (=> b!4834907 (forall!12709 l!14180 lambda!239131)))

(declare-fun lt!1980904 () Unit!144455)

(declare-fun Unit!144491 () Unit!144455)

(assert (=> b!4834907 (= lt!1980904 Unit!144491)))

(assert (=> b!4834907 (forall!12709 (toList!7594 lt!1980899) lambda!239131)))

(declare-fun lt!1980907 () Unit!144455)

(declare-fun Unit!144492 () Unit!144455)

(assert (=> b!4834907 (= lt!1980907 Unit!144492)))

(declare-fun lt!1980895 () Unit!144455)

(declare-fun Unit!144494 () Unit!144455)

(assert (=> b!4834907 (= lt!1980895 Unit!144494)))

(declare-fun lt!1980892 () Unit!144455)

(declare-fun addForallContainsKeyThenBeforeAdding!1026 (ListMap!6997 ListMap!6997 K!16844 V!17090) Unit!144455)

(assert (=> b!4834907 (= lt!1980892 (addForallContainsKeyThenBeforeAdding!1026 acc!1183 lt!1980906 (_1!32512 (h!61559 l!14180)) (_2!32512 (h!61559 l!14180))))))

(assert (=> b!4834907 (forall!12709 (toList!7594 acc!1183) lambda!239131)))

(declare-fun lt!1980902 () Unit!144455)

(assert (=> b!4834907 (= lt!1980902 lt!1980892)))

(assert (=> b!4834907 (forall!12709 (toList!7594 acc!1183) lambda!239131)))

(declare-fun lt!1980903 () Unit!144455)

(declare-fun Unit!144495 () Unit!144455)

(assert (=> b!4834907 (= lt!1980903 Unit!144495)))

(declare-fun res!2059769 () Bool)

(assert (=> b!4834907 (= res!2059769 (forall!12709 l!14180 lambda!239131))))

(assert (=> b!4834907 (=> (not res!2059769) (not e!3021476))))

(assert (=> b!4834907 e!3021476))

(declare-fun lt!1980891 () Unit!144455)

(declare-fun Unit!144496 () Unit!144455)

(assert (=> b!4834907 (= lt!1980891 Unit!144496)))

(assert (=> b!4834908 (= e!3021475 acc!1183)))

(declare-fun lt!1980910 () Unit!144455)

(assert (=> b!4834908 (= lt!1980910 call!337037)))

(assert (=> b!4834908 call!337036))

(declare-fun lt!1980898 () Unit!144455)

(assert (=> b!4834908 (= lt!1980898 lt!1980910)))

(assert (=> b!4834908 call!337038))

(declare-fun lt!1980897 () Unit!144455)

(declare-fun Unit!144497 () Unit!144455)

(assert (=> b!4834908 (= lt!1980897 Unit!144497)))

(assert (= (and d!1550096 c!823807) b!4834908))

(assert (= (and d!1550096 (not c!823807)) b!4834907))

(assert (= (and b!4834907 res!2059769) b!4834904))

(assert (= (or b!4834908 b!4834907) bm!337033))

(assert (= (or b!4834908 b!4834907) bm!337032))

(assert (= (or b!4834908 b!4834907) bm!337031))

(assert (= (and d!1550096 res!2059771) b!4834905))

(assert (= (and b!4834905 res!2059770) b!4834906))

(declare-fun m!5829932 () Bool)

(assert (=> b!4834904 m!5829932))

(declare-fun m!5829934 () Bool)

(assert (=> bm!337032 m!5829934))

(declare-fun m!5829936 () Bool)

(assert (=> bm!337033 m!5829936))

(declare-fun m!5829938 () Bool)

(assert (=> b!4834905 m!5829938))

(declare-fun m!5829940 () Bool)

(assert (=> bm!337031 m!5829940))

(declare-fun m!5829942 () Bool)

(assert (=> d!1550096 m!5829942))

(assert (=> d!1550096 m!5829710))

(declare-fun m!5829944 () Bool)

(assert (=> b!4834907 m!5829944))

(assert (=> b!4834907 m!5829724))

(declare-fun m!5829946 () Bool)

(assert (=> b!4834907 m!5829946))

(declare-fun m!5829948 () Bool)

(assert (=> b!4834907 m!5829948))

(assert (=> b!4834907 m!5829932))

(assert (=> b!4834907 m!5829932))

(declare-fun m!5829950 () Bool)

(assert (=> b!4834907 m!5829950))

(assert (=> b!4834907 m!5829944))

(declare-fun m!5829952 () Bool)

(assert (=> b!4834907 m!5829952))

(assert (=> b!4834907 m!5829724))

(declare-fun m!5829954 () Bool)

(assert (=> b!4834907 m!5829954))

(assert (=> b!4834907 m!5829946))

(declare-fun m!5829956 () Bool)

(assert (=> b!4834907 m!5829956))

(declare-fun m!5829958 () Bool)

(assert (=> b!4834906 m!5829958))

(assert (=> b!4834751 d!1550096))

(declare-fun d!1550116 () Bool)

(assert (=> d!1550116 (not (contains!18949 (+!2587 acc!1183 (tuple2!58437 (_1!32512 (h!61559 l!14180)) (_2!32512 (h!61559 l!14180)))) key!5666))))

(declare-fun lt!1980913 () Unit!144455)

(declare-fun choose!35317 (ListMap!6997 K!16844 V!17090 K!16844) Unit!144455)

(assert (=> d!1550116 (= lt!1980913 (choose!35317 acc!1183 (_1!32512 (h!61559 l!14180)) (_2!32512 (h!61559 l!14180)) key!5666))))

(declare-fun e!3021480 () Bool)

(assert (=> d!1550116 e!3021480))

(declare-fun res!2059774 () Bool)

(assert (=> d!1550116 (=> (not res!2059774) (not e!3021480))))

(assert (=> d!1550116 (= res!2059774 (not (contains!18949 acc!1183 key!5666)))))

(assert (=> d!1550116 (= (addStillNotContains!7 acc!1183 (_1!32512 (h!61559 l!14180)) (_2!32512 (h!61559 l!14180)) key!5666) lt!1980913)))

(declare-fun b!4834914 () Bool)

(assert (=> b!4834914 (= e!3021480 (not (= (_1!32512 (h!61559 l!14180)) key!5666)))))

(assert (= (and d!1550116 res!2059774) b!4834914))

(declare-fun m!5829960 () Bool)

(assert (=> d!1550116 m!5829960))

(assert (=> d!1550116 m!5829960))

(declare-fun m!5829962 () Bool)

(assert (=> d!1550116 m!5829962))

(declare-fun m!5829964 () Bool)

(assert (=> d!1550116 m!5829964))

(assert (=> d!1550116 m!5829726))

(assert (=> b!4834751 d!1550116))

(assert (=> b!4834751 d!1550086))

(declare-fun b!4834915 () Bool)

(declare-fun e!3021486 () Unit!144455)

(declare-fun e!3021482 () Unit!144455)

(assert (=> b!4834915 (= e!3021486 e!3021482)))

(declare-fun c!823809 () Bool)

(declare-fun call!337039 () Bool)

(assert (=> b!4834915 (= c!823809 call!337039)))

(declare-fun b!4834916 () Bool)

(declare-fun e!3021481 () Bool)

(declare-fun e!3021483 () Bool)

(assert (=> b!4834916 (= e!3021481 e!3021483)))

(declare-fun res!2059776 () Bool)

(assert (=> b!4834916 (=> (not res!2059776) (not e!3021483))))

(assert (=> b!4834916 (= res!2059776 (isDefined!10665 (getValueByKey!2681 (toList!7594 (addToMapMapFromBucket!1863 l!14180 acc!1183)) key!5666)))))

(declare-fun b!4834917 () Bool)

(declare-fun Unit!144499 () Unit!144455)

(assert (=> b!4834917 (= e!3021482 Unit!144499)))

(declare-fun b!4834918 () Bool)

(declare-fun e!3021484 () List!55251)

(assert (=> b!4834918 (= e!3021484 (getKeysList!1192 (toList!7594 (addToMapMapFromBucket!1863 l!14180 acc!1183))))))

(declare-fun e!3021485 () Bool)

(declare-fun b!4834919 () Bool)

(assert (=> b!4834919 (= e!3021485 (not (contains!18952 (keys!20335 (addToMapMapFromBucket!1863 l!14180 acc!1183)) key!5666)))))

(declare-fun b!4834920 () Bool)

(declare-fun lt!1980916 () Unit!144455)

(assert (=> b!4834920 (= e!3021486 lt!1980916)))

(declare-fun lt!1980920 () Unit!144455)

(assert (=> b!4834920 (= lt!1980920 (lemmaContainsKeyImpliesGetValueByKeyDefined!2462 (toList!7594 (addToMapMapFromBucket!1863 l!14180 acc!1183)) key!5666))))

(assert (=> b!4834920 (isDefined!10665 (getValueByKey!2681 (toList!7594 (addToMapMapFromBucket!1863 l!14180 acc!1183)) key!5666))))

(declare-fun lt!1980914 () Unit!144455)

(assert (=> b!4834920 (= lt!1980914 lt!1980920)))

(assert (=> b!4834920 (= lt!1980916 (lemmaInListThenGetKeysListContains!1187 (toList!7594 (addToMapMapFromBucket!1863 l!14180 acc!1183)) key!5666))))

(assert (=> b!4834920 call!337039))

(declare-fun d!1550118 () Bool)

(assert (=> d!1550118 e!3021481))

(declare-fun res!2059775 () Bool)

(assert (=> d!1550118 (=> res!2059775 e!3021481)))

(assert (=> d!1550118 (= res!2059775 e!3021485)))

(declare-fun res!2059777 () Bool)

(assert (=> d!1550118 (=> (not res!2059777) (not e!3021485))))

(declare-fun lt!1980918 () Bool)

(assert (=> d!1550118 (= res!2059777 (not lt!1980918))))

(declare-fun lt!1980919 () Bool)

(assert (=> d!1550118 (= lt!1980918 lt!1980919)))

(declare-fun lt!1980921 () Unit!144455)

(assert (=> d!1550118 (= lt!1980921 e!3021486)))

(declare-fun c!823810 () Bool)

(assert (=> d!1550118 (= c!823810 lt!1980919)))

(assert (=> d!1550118 (= lt!1980919 (containsKey!4491 (toList!7594 (addToMapMapFromBucket!1863 l!14180 acc!1183)) key!5666))))

(assert (=> d!1550118 (= (contains!18949 (addToMapMapFromBucket!1863 l!14180 acc!1183) key!5666) lt!1980918)))

(declare-fun b!4834921 () Bool)

(assert (=> b!4834921 (= e!3021484 (keys!20335 (addToMapMapFromBucket!1863 l!14180 acc!1183)))))

(declare-fun b!4834922 () Bool)

(assert (=> b!4834922 (= e!3021483 (contains!18952 (keys!20335 (addToMapMapFromBucket!1863 l!14180 acc!1183)) key!5666))))

(declare-fun bm!337034 () Bool)

(assert (=> bm!337034 (= call!337039 (contains!18952 e!3021484 key!5666))))

(declare-fun c!823808 () Bool)

(assert (=> bm!337034 (= c!823808 c!823810)))

(declare-fun b!4834923 () Bool)

(assert (=> b!4834923 false))

(declare-fun lt!1980915 () Unit!144455)

(declare-fun lt!1980917 () Unit!144455)

(assert (=> b!4834923 (= lt!1980915 lt!1980917)))

(assert (=> b!4834923 (containsKey!4491 (toList!7594 (addToMapMapFromBucket!1863 l!14180 acc!1183)) key!5666)))

(assert (=> b!4834923 (= lt!1980917 (lemmaInGetKeysListThenContainsKey!1192 (toList!7594 (addToMapMapFromBucket!1863 l!14180 acc!1183)) key!5666))))

(declare-fun Unit!144501 () Unit!144455)

(assert (=> b!4834923 (= e!3021482 Unit!144501)))

(assert (= (and d!1550118 c!823810) b!4834920))

(assert (= (and d!1550118 (not c!823810)) b!4834915))

(assert (= (and b!4834915 c!823809) b!4834923))

(assert (= (and b!4834915 (not c!823809)) b!4834917))

(assert (= (or b!4834920 b!4834915) bm!337034))

(assert (= (and bm!337034 c!823808) b!4834918))

(assert (= (and bm!337034 (not c!823808)) b!4834921))

(assert (= (and d!1550118 res!2059777) b!4834919))

(assert (= (and d!1550118 (not res!2059775)) b!4834916))

(assert (= (and b!4834916 res!2059776) b!4834922))

(declare-fun m!5829966 () Bool)

(assert (=> b!4834920 m!5829966))

(declare-fun m!5829968 () Bool)

(assert (=> b!4834920 m!5829968))

(assert (=> b!4834920 m!5829968))

(declare-fun m!5829970 () Bool)

(assert (=> b!4834920 m!5829970))

(declare-fun m!5829972 () Bool)

(assert (=> b!4834920 m!5829972))

(assert (=> b!4834921 m!5829728))

(declare-fun m!5829974 () Bool)

(assert (=> b!4834921 m!5829974))

(declare-fun m!5829976 () Bool)

(assert (=> d!1550118 m!5829976))

(declare-fun m!5829978 () Bool)

(assert (=> bm!337034 m!5829978))

(declare-fun m!5829980 () Bool)

(assert (=> b!4834918 m!5829980))

(assert (=> b!4834923 m!5829976))

(declare-fun m!5829982 () Bool)

(assert (=> b!4834923 m!5829982))

(assert (=> b!4834916 m!5829968))

(assert (=> b!4834916 m!5829968))

(assert (=> b!4834916 m!5829970))

(assert (=> b!4834922 m!5829728))

(assert (=> b!4834922 m!5829974))

(assert (=> b!4834922 m!5829974))

(declare-fun m!5829984 () Bool)

(assert (=> b!4834922 m!5829984))

(assert (=> b!4834919 m!5829728))

(assert (=> b!4834919 m!5829974))

(assert (=> b!4834919 m!5829974))

(assert (=> b!4834919 m!5829984))

(assert (=> b!4834751 d!1550118))

(declare-fun b!4834924 () Bool)

(declare-fun e!3021492 () Unit!144455)

(declare-fun e!3021488 () Unit!144455)

(assert (=> b!4834924 (= e!3021492 e!3021488)))

(declare-fun c!823812 () Bool)

(declare-fun call!337040 () Bool)

(assert (=> b!4834924 (= c!823812 call!337040)))

(declare-fun b!4834925 () Bool)

(declare-fun e!3021487 () Bool)

(declare-fun e!3021489 () Bool)

(assert (=> b!4834925 (= e!3021487 e!3021489)))

(declare-fun res!2059779 () Bool)

(assert (=> b!4834925 (=> (not res!2059779) (not e!3021489))))

(assert (=> b!4834925 (= res!2059779 (isDefined!10665 (getValueByKey!2681 (toList!7594 acc!1183) key!5666)))))

(declare-fun b!4834926 () Bool)

(declare-fun Unit!144502 () Unit!144455)

(assert (=> b!4834926 (= e!3021488 Unit!144502)))

(declare-fun b!4834927 () Bool)

(declare-fun e!3021490 () List!55251)

(assert (=> b!4834927 (= e!3021490 (getKeysList!1192 (toList!7594 acc!1183)))))

(declare-fun b!4834928 () Bool)

(declare-fun e!3021491 () Bool)

(assert (=> b!4834928 (= e!3021491 (not (contains!18952 (keys!20335 acc!1183) key!5666)))))

(declare-fun b!4834929 () Bool)

(declare-fun lt!1980924 () Unit!144455)

(assert (=> b!4834929 (= e!3021492 lt!1980924)))

(declare-fun lt!1980928 () Unit!144455)

(assert (=> b!4834929 (= lt!1980928 (lemmaContainsKeyImpliesGetValueByKeyDefined!2462 (toList!7594 acc!1183) key!5666))))

(assert (=> b!4834929 (isDefined!10665 (getValueByKey!2681 (toList!7594 acc!1183) key!5666))))

(declare-fun lt!1980922 () Unit!144455)

(assert (=> b!4834929 (= lt!1980922 lt!1980928)))

(assert (=> b!4834929 (= lt!1980924 (lemmaInListThenGetKeysListContains!1187 (toList!7594 acc!1183) key!5666))))

(assert (=> b!4834929 call!337040))

(declare-fun d!1550120 () Bool)

(assert (=> d!1550120 e!3021487))

(declare-fun res!2059778 () Bool)

(assert (=> d!1550120 (=> res!2059778 e!3021487)))

(assert (=> d!1550120 (= res!2059778 e!3021491)))

(declare-fun res!2059780 () Bool)

(assert (=> d!1550120 (=> (not res!2059780) (not e!3021491))))

(declare-fun lt!1980926 () Bool)

(assert (=> d!1550120 (= res!2059780 (not lt!1980926))))

(declare-fun lt!1980927 () Bool)

(assert (=> d!1550120 (= lt!1980926 lt!1980927)))

(declare-fun lt!1980929 () Unit!144455)

(assert (=> d!1550120 (= lt!1980929 e!3021492)))

(declare-fun c!823813 () Bool)

(assert (=> d!1550120 (= c!823813 lt!1980927)))

(assert (=> d!1550120 (= lt!1980927 (containsKey!4491 (toList!7594 acc!1183) key!5666))))

(assert (=> d!1550120 (= (contains!18949 acc!1183 key!5666) lt!1980926)))

(declare-fun b!4834930 () Bool)

(assert (=> b!4834930 (= e!3021490 (keys!20335 acc!1183))))

(declare-fun b!4834931 () Bool)

(assert (=> b!4834931 (= e!3021489 (contains!18952 (keys!20335 acc!1183) key!5666))))

(declare-fun bm!337035 () Bool)

(assert (=> bm!337035 (= call!337040 (contains!18952 e!3021490 key!5666))))

(declare-fun c!823811 () Bool)

(assert (=> bm!337035 (= c!823811 c!823813)))

(declare-fun b!4834932 () Bool)

(assert (=> b!4834932 false))

(declare-fun lt!1980923 () Unit!144455)

(declare-fun lt!1980925 () Unit!144455)

(assert (=> b!4834932 (= lt!1980923 lt!1980925)))

(assert (=> b!4834932 (containsKey!4491 (toList!7594 acc!1183) key!5666)))

(assert (=> b!4834932 (= lt!1980925 (lemmaInGetKeysListThenContainsKey!1192 (toList!7594 acc!1183) key!5666))))

(declare-fun Unit!144503 () Unit!144455)

(assert (=> b!4834932 (= e!3021488 Unit!144503)))

(assert (= (and d!1550120 c!823813) b!4834929))

(assert (= (and d!1550120 (not c!823813)) b!4834924))

(assert (= (and b!4834924 c!823812) b!4834932))

(assert (= (and b!4834924 (not c!823812)) b!4834926))

(assert (= (or b!4834929 b!4834924) bm!337035))

(assert (= (and bm!337035 c!823811) b!4834927))

(assert (= (and bm!337035 (not c!823811)) b!4834930))

(assert (= (and d!1550120 res!2059780) b!4834928))

(assert (= (and d!1550120 (not res!2059778)) b!4834925))

(assert (= (and b!4834925 res!2059779) b!4834931))

(declare-fun m!5829986 () Bool)

(assert (=> b!4834929 m!5829986))

(declare-fun m!5829988 () Bool)

(assert (=> b!4834929 m!5829988))

(assert (=> b!4834929 m!5829988))

(declare-fun m!5829990 () Bool)

(assert (=> b!4834929 m!5829990))

(declare-fun m!5829992 () Bool)

(assert (=> b!4834929 m!5829992))

(declare-fun m!5829994 () Bool)

(assert (=> b!4834930 m!5829994))

(declare-fun m!5829996 () Bool)

(assert (=> d!1550120 m!5829996))

(declare-fun m!5829998 () Bool)

(assert (=> bm!337035 m!5829998))

(declare-fun m!5830000 () Bool)

(assert (=> b!4834927 m!5830000))

(assert (=> b!4834932 m!5829996))

(declare-fun m!5830002 () Bool)

(assert (=> b!4834932 m!5830002))

(assert (=> b!4834925 m!5829988))

(assert (=> b!4834925 m!5829988))

(assert (=> b!4834925 m!5829990))

(assert (=> b!4834931 m!5829994))

(assert (=> b!4834931 m!5829994))

(declare-fun m!5830004 () Bool)

(assert (=> b!4834931 m!5830004))

(assert (=> b!4834928 m!5829994))

(assert (=> b!4834928 m!5829994))

(assert (=> b!4834928 m!5830004))

(assert (=> b!4834750 d!1550120))

(declare-fun bs!1167361 () Bool)

(declare-fun b!4834937 () Bool)

(assert (= bs!1167361 (and b!4834937 b!4834908)))

(declare-fun lambda!239133 () Int)

(assert (=> bs!1167361 (= (= lt!1980667 acc!1183) (= lambda!239133 lambda!239129))))

(declare-fun bs!1167362 () Bool)

(assert (= bs!1167362 (and b!4834937 b!4834907)))

(assert (=> bs!1167362 (= (= lt!1980667 acc!1183) (= lambda!239133 lambda!239130))))

(assert (=> bs!1167362 (= (= lt!1980667 lt!1980906) (= lambda!239133 lambda!239131))))

(declare-fun bs!1167363 () Bool)

(assert (= bs!1167363 (and b!4834937 d!1550096)))

(assert (=> bs!1167363 (= (= lt!1980667 lt!1980894) (= lambda!239133 lambda!239132))))

(assert (=> b!4834937 true))

(declare-fun bs!1167364 () Bool)

(declare-fun b!4834936 () Bool)

(assert (= bs!1167364 (and b!4834936 b!4834937)))

(declare-fun lambda!239134 () Int)

(assert (=> bs!1167364 (= lambda!239134 lambda!239133)))

(declare-fun bs!1167365 () Bool)

(assert (= bs!1167365 (and b!4834936 b!4834907)))

(assert (=> bs!1167365 (= (= lt!1980667 acc!1183) (= lambda!239134 lambda!239130))))

(declare-fun bs!1167366 () Bool)

(assert (= bs!1167366 (and b!4834936 b!4834908)))

(assert (=> bs!1167366 (= (= lt!1980667 acc!1183) (= lambda!239134 lambda!239129))))

(declare-fun bs!1167367 () Bool)

(assert (= bs!1167367 (and b!4834936 d!1550096)))

(assert (=> bs!1167367 (= (= lt!1980667 lt!1980894) (= lambda!239134 lambda!239132))))

(assert (=> bs!1167365 (= (= lt!1980667 lt!1980906) (= lambda!239134 lambda!239131))))

(assert (=> b!4834936 true))

(declare-fun lambda!239135 () Int)

(declare-fun lt!1980946 () ListMap!6997)

(assert (=> bs!1167364 (= (= lt!1980946 lt!1980667) (= lambda!239135 lambda!239133))))

(assert (=> bs!1167365 (= (= lt!1980946 acc!1183) (= lambda!239135 lambda!239130))))

(assert (=> b!4834936 (= (= lt!1980946 lt!1980667) (= lambda!239135 lambda!239134))))

(assert (=> bs!1167366 (= (= lt!1980946 acc!1183) (= lambda!239135 lambda!239129))))

(assert (=> bs!1167367 (= (= lt!1980946 lt!1980894) (= lambda!239135 lambda!239132))))

(assert (=> bs!1167365 (= (= lt!1980946 lt!1980906) (= lambda!239135 lambda!239131))))

(assert (=> b!4834936 true))

(declare-fun bs!1167368 () Bool)

(declare-fun d!1550122 () Bool)

(assert (= bs!1167368 (and d!1550122 b!4834937)))

(declare-fun lt!1980934 () ListMap!6997)

(declare-fun lambda!239136 () Int)

(assert (=> bs!1167368 (= (= lt!1980934 lt!1980667) (= lambda!239136 lambda!239133))))

(declare-fun bs!1167369 () Bool)

(assert (= bs!1167369 (and d!1550122 b!4834907)))

(assert (=> bs!1167369 (= (= lt!1980934 acc!1183) (= lambda!239136 lambda!239130))))

(declare-fun bs!1167370 () Bool)

(assert (= bs!1167370 (and d!1550122 b!4834936)))

(assert (=> bs!1167370 (= (= lt!1980934 lt!1980946) (= lambda!239136 lambda!239135))))

(assert (=> bs!1167370 (= (= lt!1980934 lt!1980667) (= lambda!239136 lambda!239134))))

(declare-fun bs!1167371 () Bool)

(assert (= bs!1167371 (and d!1550122 b!4834908)))

(assert (=> bs!1167371 (= (= lt!1980934 acc!1183) (= lambda!239136 lambda!239129))))

(declare-fun bs!1167372 () Bool)

(assert (= bs!1167372 (and d!1550122 d!1550096)))

(assert (=> bs!1167372 (= (= lt!1980934 lt!1980894) (= lambda!239136 lambda!239132))))

(assert (=> bs!1167369 (= (= lt!1980934 lt!1980906) (= lambda!239136 lambda!239131))))

(assert (=> d!1550122 true))

(declare-fun bm!337036 () Bool)

(declare-fun call!337042 () Unit!144455)

(assert (=> bm!337036 (= call!337042 (lemmaContainsAllItsOwnKeys!1027 lt!1980667))))

(declare-fun b!4834933 () Bool)

(declare-fun e!3021494 () Bool)

(assert (=> b!4834933 (= e!3021494 (forall!12709 (toList!7594 lt!1980667) lambda!239135))))

(declare-fun e!3021495 () Bool)

(assert (=> d!1550122 e!3021495))

(declare-fun res!2059783 () Bool)

(assert (=> d!1550122 (=> (not res!2059783) (not e!3021495))))

(assert (=> d!1550122 (= res!2059783 (forall!12709 (t!362745 l!14180) lambda!239136))))

(declare-fun e!3021493 () ListMap!6997)

(assert (=> d!1550122 (= lt!1980934 e!3021493)))

(declare-fun c!823814 () Bool)

(assert (=> d!1550122 (= c!823814 ((_ is Nil!55125) (t!362745 l!14180)))))

(assert (=> d!1550122 (noDuplicateKeys!2508 (t!362745 l!14180))))

(assert (=> d!1550122 (= (addToMapMapFromBucket!1863 (t!362745 l!14180) lt!1980667) lt!1980934)))

(declare-fun b!4834934 () Bool)

(declare-fun res!2059782 () Bool)

(assert (=> b!4834934 (=> (not res!2059782) (not e!3021495))))

(assert (=> b!4834934 (= res!2059782 (forall!12709 (toList!7594 lt!1980667) lambda!239136))))

(declare-fun b!4834935 () Bool)

(assert (=> b!4834935 (= e!3021495 (invariantList!1850 (toList!7594 lt!1980934)))))

(declare-fun call!337043 () Bool)

(declare-fun bm!337037 () Bool)

(assert (=> bm!337037 (= call!337043 (forall!12709 (ite c!823814 (toList!7594 lt!1980667) (t!362745 (t!362745 l!14180))) (ite c!823814 lambda!239133 lambda!239135)))))

(declare-fun bm!337038 () Bool)

(declare-fun call!337041 () Bool)

(assert (=> bm!337038 (= call!337041 (forall!12709 (toList!7594 lt!1980667) (ite c!823814 lambda!239133 lambda!239134)))))

(assert (=> b!4834936 (= e!3021493 lt!1980946)))

(declare-fun lt!1980939 () ListMap!6997)

(assert (=> b!4834936 (= lt!1980939 (+!2587 lt!1980667 (h!61559 (t!362745 l!14180))))))

(assert (=> b!4834936 (= lt!1980946 (addToMapMapFromBucket!1863 (t!362745 (t!362745 l!14180)) (+!2587 lt!1980667 (h!61559 (t!362745 l!14180)))))))

(declare-fun lt!1980933 () Unit!144455)

(assert (=> b!4834936 (= lt!1980933 call!337042)))

(assert (=> b!4834936 call!337041))

(declare-fun lt!1980941 () Unit!144455)

(assert (=> b!4834936 (= lt!1980941 lt!1980933)))

(assert (=> b!4834936 (forall!12709 (toList!7594 lt!1980939) lambda!239135)))

(declare-fun lt!1980930 () Unit!144455)

(declare-fun Unit!144504 () Unit!144455)

(assert (=> b!4834936 (= lt!1980930 Unit!144504)))

(assert (=> b!4834936 call!337043))

(declare-fun lt!1980945 () Unit!144455)

(declare-fun Unit!144505 () Unit!144455)

(assert (=> b!4834936 (= lt!1980945 Unit!144505)))

(declare-fun lt!1980940 () Unit!144455)

(declare-fun Unit!144506 () Unit!144455)

(assert (=> b!4834936 (= lt!1980940 Unit!144506)))

(declare-fun lt!1980948 () Unit!144455)

(assert (=> b!4834936 (= lt!1980948 (forallContained!4439 (toList!7594 lt!1980939) lambda!239135 (h!61559 (t!362745 l!14180))))))

(assert (=> b!4834936 (contains!18949 lt!1980939 (_1!32512 (h!61559 (t!362745 l!14180))))))

(declare-fun lt!1980949 () Unit!144455)

(declare-fun Unit!144507 () Unit!144455)

(assert (=> b!4834936 (= lt!1980949 Unit!144507)))

(assert (=> b!4834936 (contains!18949 lt!1980946 (_1!32512 (h!61559 (t!362745 l!14180))))))

(declare-fun lt!1980936 () Unit!144455)

(declare-fun Unit!144508 () Unit!144455)

(assert (=> b!4834936 (= lt!1980936 Unit!144508)))

(assert (=> b!4834936 (forall!12709 (t!362745 l!14180) lambda!239135)))

(declare-fun lt!1980944 () Unit!144455)

(declare-fun Unit!144509 () Unit!144455)

(assert (=> b!4834936 (= lt!1980944 Unit!144509)))

(assert (=> b!4834936 (forall!12709 (toList!7594 lt!1980939) lambda!239135)))

(declare-fun lt!1980947 () Unit!144455)

(declare-fun Unit!144510 () Unit!144455)

(assert (=> b!4834936 (= lt!1980947 Unit!144510)))

(declare-fun lt!1980935 () Unit!144455)

(declare-fun Unit!144511 () Unit!144455)

(assert (=> b!4834936 (= lt!1980935 Unit!144511)))

(declare-fun lt!1980932 () Unit!144455)

(assert (=> b!4834936 (= lt!1980932 (addForallContainsKeyThenBeforeAdding!1026 lt!1980667 lt!1980946 (_1!32512 (h!61559 (t!362745 l!14180))) (_2!32512 (h!61559 (t!362745 l!14180)))))))

(assert (=> b!4834936 (forall!12709 (toList!7594 lt!1980667) lambda!239135)))

(declare-fun lt!1980942 () Unit!144455)

(assert (=> b!4834936 (= lt!1980942 lt!1980932)))

(assert (=> b!4834936 (forall!12709 (toList!7594 lt!1980667) lambda!239135)))

(declare-fun lt!1980943 () Unit!144455)

(declare-fun Unit!144512 () Unit!144455)

(assert (=> b!4834936 (= lt!1980943 Unit!144512)))

(declare-fun res!2059781 () Bool)

(assert (=> b!4834936 (= res!2059781 (forall!12709 (t!362745 l!14180) lambda!239135))))

(assert (=> b!4834936 (=> (not res!2059781) (not e!3021494))))

(assert (=> b!4834936 e!3021494))

(declare-fun lt!1980931 () Unit!144455)

(declare-fun Unit!144513 () Unit!144455)

(assert (=> b!4834936 (= lt!1980931 Unit!144513)))

(assert (=> b!4834937 (= e!3021493 lt!1980667)))

(declare-fun lt!1980950 () Unit!144455)

(assert (=> b!4834937 (= lt!1980950 call!337042)))

(assert (=> b!4834937 call!337041))

(declare-fun lt!1980938 () Unit!144455)

(assert (=> b!4834937 (= lt!1980938 lt!1980950)))

(assert (=> b!4834937 call!337043))

(declare-fun lt!1980937 () Unit!144455)

(declare-fun Unit!144514 () Unit!144455)

(assert (=> b!4834937 (= lt!1980937 Unit!144514)))

(assert (= (and d!1550122 c!823814) b!4834937))

(assert (= (and d!1550122 (not c!823814)) b!4834936))

(assert (= (and b!4834936 res!2059781) b!4834933))

(assert (= (or b!4834937 b!4834936) bm!337038))

(assert (= (or b!4834937 b!4834936) bm!337037))

(assert (= (or b!4834937 b!4834936) bm!337036))

(assert (= (and d!1550122 res!2059783) b!4834934))

(assert (= (and b!4834934 res!2059782) b!4834935))

(declare-fun m!5830006 () Bool)

(assert (=> b!4834933 m!5830006))

(declare-fun m!5830008 () Bool)

(assert (=> bm!337037 m!5830008))

(declare-fun m!5830010 () Bool)

(assert (=> bm!337038 m!5830010))

(declare-fun m!5830012 () Bool)

(assert (=> b!4834934 m!5830012))

(declare-fun m!5830014 () Bool)

(assert (=> bm!337036 m!5830014))

(declare-fun m!5830016 () Bool)

(assert (=> d!1550122 m!5830016))

(declare-fun m!5830018 () Bool)

(assert (=> d!1550122 m!5830018))

(declare-fun m!5830020 () Bool)

(assert (=> b!4834936 m!5830020))

(declare-fun m!5830022 () Bool)

(assert (=> b!4834936 m!5830022))

(declare-fun m!5830024 () Bool)

(assert (=> b!4834936 m!5830024))

(declare-fun m!5830026 () Bool)

(assert (=> b!4834936 m!5830026))

(assert (=> b!4834936 m!5830006))

(assert (=> b!4834936 m!5830006))

(declare-fun m!5830028 () Bool)

(assert (=> b!4834936 m!5830028))

(assert (=> b!4834936 m!5830020))

(declare-fun m!5830030 () Bool)

(assert (=> b!4834936 m!5830030))

(assert (=> b!4834936 m!5830022))

(declare-fun m!5830032 () Bool)

(assert (=> b!4834936 m!5830032))

(assert (=> b!4834936 m!5830024))

(declare-fun m!5830034 () Bool)

(assert (=> b!4834936 m!5830034))

(declare-fun m!5830036 () Bool)

(assert (=> b!4834935 m!5830036))

(assert (=> b!4834750 d!1550122))

(declare-fun d!1550124 () Bool)

(declare-fun e!3021498 () Bool)

(assert (=> d!1550124 e!3021498))

(declare-fun res!2059788 () Bool)

(assert (=> d!1550124 (=> (not res!2059788) (not e!3021498))))

(declare-fun lt!1980959 () ListMap!6997)

(assert (=> d!1550124 (= res!2059788 (contains!18949 lt!1980959 (_1!32512 (h!61559 l!14180))))))

(declare-fun lt!1980962 () List!55249)

(assert (=> d!1550124 (= lt!1980959 (ListMap!6998 lt!1980962))))

(declare-fun lt!1980960 () Unit!144455)

(declare-fun lt!1980961 () Unit!144455)

(assert (=> d!1550124 (= lt!1980960 lt!1980961)))

(assert (=> d!1550124 (= (getValueByKey!2681 lt!1980962 (_1!32512 (h!61559 l!14180))) (Some!13553 (_2!32512 (h!61559 l!14180))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1251 (List!55249 K!16844 V!17090) Unit!144455)

(assert (=> d!1550124 (= lt!1980961 (lemmaContainsTupThenGetReturnValue!1251 lt!1980962 (_1!32512 (h!61559 l!14180)) (_2!32512 (h!61559 l!14180))))))

(declare-fun insertNoDuplicatedKeys!759 (List!55249 K!16844 V!17090) List!55249)

(assert (=> d!1550124 (= lt!1980962 (insertNoDuplicatedKeys!759 (toList!7594 acc!1183) (_1!32512 (h!61559 l!14180)) (_2!32512 (h!61559 l!14180))))))

(assert (=> d!1550124 (= (+!2587 acc!1183 (h!61559 l!14180)) lt!1980959)))

(declare-fun b!4834942 () Bool)

(declare-fun res!2059789 () Bool)

(assert (=> b!4834942 (=> (not res!2059789) (not e!3021498))))

(assert (=> b!4834942 (= res!2059789 (= (getValueByKey!2681 (toList!7594 lt!1980959) (_1!32512 (h!61559 l!14180))) (Some!13553 (_2!32512 (h!61559 l!14180)))))))

(declare-fun b!4834943 () Bool)

(declare-fun contains!18953 (List!55249 tuple2!58436) Bool)

(assert (=> b!4834943 (= e!3021498 (contains!18953 (toList!7594 lt!1980959) (h!61559 l!14180)))))

(assert (= (and d!1550124 res!2059788) b!4834942))

(assert (= (and b!4834942 res!2059789) b!4834943))

(declare-fun m!5830038 () Bool)

(assert (=> d!1550124 m!5830038))

(declare-fun m!5830040 () Bool)

(assert (=> d!1550124 m!5830040))

(declare-fun m!5830042 () Bool)

(assert (=> d!1550124 m!5830042))

(declare-fun m!5830044 () Bool)

(assert (=> d!1550124 m!5830044))

(declare-fun m!5830046 () Bool)

(assert (=> b!4834942 m!5830046))

(declare-fun m!5830048 () Bool)

(assert (=> b!4834943 m!5830048))

(assert (=> b!4834750 d!1550124))

(declare-fun e!3021501 () Bool)

(declare-fun d!1550126 () Bool)

(assert (=> d!1550126 (= (contains!18949 (addToMapMapFromBucket!1863 (t!362745 l!14180) lt!1980667) key!5666) e!3021501)))

(declare-fun res!2059792 () Bool)

(assert (=> d!1550126 (=> res!2059792 e!3021501)))

(assert (=> d!1550126 (= res!2059792 (containsKey!4489 (t!362745 l!14180) key!5666))))

(declare-fun lt!1980965 () Unit!144455)

(declare-fun choose!35318 (List!55249 ListMap!6997 K!16844) Unit!144455)

(assert (=> d!1550126 (= lt!1980965 (choose!35318 (t!362745 l!14180) lt!1980667 key!5666))))

(assert (=> d!1550126 (noDuplicateKeys!2508 (t!362745 l!14180))))

(assert (=> d!1550126 (= (lemmaAddToMapFromBucketContainsIIFInAccOrL!76 (t!362745 l!14180) lt!1980667 key!5666) lt!1980965)))

(declare-fun b!4834946 () Bool)

(assert (=> b!4834946 (= e!3021501 (contains!18949 lt!1980667 key!5666))))

(assert (= (and d!1550126 (not res!2059792)) b!4834946))

(assert (=> d!1550126 m!5830018))

(assert (=> d!1550126 m!5829720))

(assert (=> d!1550126 m!5829722))

(declare-fun m!5830050 () Bool)

(assert (=> d!1550126 m!5830050))

(assert (=> d!1550126 m!5829720))

(declare-fun m!5830052 () Bool)

(assert (=> d!1550126 m!5830052))

(assert (=> b!4834946 m!5829714))

(assert (=> b!4834750 d!1550126))

(declare-fun b!4834947 () Bool)

(declare-fun e!3021507 () Unit!144455)

(declare-fun e!3021503 () Unit!144455)

(assert (=> b!4834947 (= e!3021507 e!3021503)))

(declare-fun c!823816 () Bool)

(declare-fun call!337044 () Bool)

(assert (=> b!4834947 (= c!823816 call!337044)))

(declare-fun b!4834948 () Bool)

(declare-fun e!3021502 () Bool)

(declare-fun e!3021504 () Bool)

(assert (=> b!4834948 (= e!3021502 e!3021504)))

(declare-fun res!2059794 () Bool)

(assert (=> b!4834948 (=> (not res!2059794) (not e!3021504))))

(assert (=> b!4834948 (= res!2059794 (isDefined!10665 (getValueByKey!2681 (toList!7594 lt!1980671) key!5666)))))

(declare-fun b!4834949 () Bool)

(declare-fun Unit!144515 () Unit!144455)

(assert (=> b!4834949 (= e!3021503 Unit!144515)))

(declare-fun b!4834950 () Bool)

(declare-fun e!3021505 () List!55251)

(assert (=> b!4834950 (= e!3021505 (getKeysList!1192 (toList!7594 lt!1980671)))))

(declare-fun b!4834951 () Bool)

(declare-fun e!3021506 () Bool)

(assert (=> b!4834951 (= e!3021506 (not (contains!18952 (keys!20335 lt!1980671) key!5666)))))

(declare-fun b!4834952 () Bool)

(declare-fun lt!1980968 () Unit!144455)

(assert (=> b!4834952 (= e!3021507 lt!1980968)))

(declare-fun lt!1980972 () Unit!144455)

(assert (=> b!4834952 (= lt!1980972 (lemmaContainsKeyImpliesGetValueByKeyDefined!2462 (toList!7594 lt!1980671) key!5666))))

(assert (=> b!4834952 (isDefined!10665 (getValueByKey!2681 (toList!7594 lt!1980671) key!5666))))

(declare-fun lt!1980966 () Unit!144455)

(assert (=> b!4834952 (= lt!1980966 lt!1980972)))

(assert (=> b!4834952 (= lt!1980968 (lemmaInListThenGetKeysListContains!1187 (toList!7594 lt!1980671) key!5666))))

(assert (=> b!4834952 call!337044))

(declare-fun d!1550128 () Bool)

(assert (=> d!1550128 e!3021502))

(declare-fun res!2059793 () Bool)

(assert (=> d!1550128 (=> res!2059793 e!3021502)))

(assert (=> d!1550128 (= res!2059793 e!3021506)))

(declare-fun res!2059795 () Bool)

(assert (=> d!1550128 (=> (not res!2059795) (not e!3021506))))

(declare-fun lt!1980970 () Bool)

(assert (=> d!1550128 (= res!2059795 (not lt!1980970))))

(declare-fun lt!1980971 () Bool)

(assert (=> d!1550128 (= lt!1980970 lt!1980971)))

(declare-fun lt!1980973 () Unit!144455)

(assert (=> d!1550128 (= lt!1980973 e!3021507)))

(declare-fun c!823817 () Bool)

(assert (=> d!1550128 (= c!823817 lt!1980971)))

(assert (=> d!1550128 (= lt!1980971 (containsKey!4491 (toList!7594 lt!1980671) key!5666))))

(assert (=> d!1550128 (= (contains!18949 lt!1980671 key!5666) lt!1980970)))

(declare-fun b!4834953 () Bool)

(assert (=> b!4834953 (= e!3021505 (keys!20335 lt!1980671))))

(declare-fun b!4834954 () Bool)

(assert (=> b!4834954 (= e!3021504 (contains!18952 (keys!20335 lt!1980671) key!5666))))

(declare-fun bm!337039 () Bool)

(assert (=> bm!337039 (= call!337044 (contains!18952 e!3021505 key!5666))))

(declare-fun c!823815 () Bool)

(assert (=> bm!337039 (= c!823815 c!823817)))

(declare-fun b!4834955 () Bool)

(assert (=> b!4834955 false))

(declare-fun lt!1980967 () Unit!144455)

(declare-fun lt!1980969 () Unit!144455)

(assert (=> b!4834955 (= lt!1980967 lt!1980969)))

(assert (=> b!4834955 (containsKey!4491 (toList!7594 lt!1980671) key!5666)))

(assert (=> b!4834955 (= lt!1980969 (lemmaInGetKeysListThenContainsKey!1192 (toList!7594 lt!1980671) key!5666))))

(declare-fun Unit!144516 () Unit!144455)

(assert (=> b!4834955 (= e!3021503 Unit!144516)))

(assert (= (and d!1550128 c!823817) b!4834952))

(assert (= (and d!1550128 (not c!823817)) b!4834947))

(assert (= (and b!4834947 c!823816) b!4834955))

(assert (= (and b!4834947 (not c!823816)) b!4834949))

(assert (= (or b!4834952 b!4834947) bm!337039))

(assert (= (and bm!337039 c!823815) b!4834950))

(assert (= (and bm!337039 (not c!823815)) b!4834953))

(assert (= (and d!1550128 res!2059795) b!4834951))

(assert (= (and d!1550128 (not res!2059793)) b!4834948))

(assert (= (and b!4834948 res!2059794) b!4834954))

(declare-fun m!5830054 () Bool)

(assert (=> b!4834952 m!5830054))

(declare-fun m!5830056 () Bool)

(assert (=> b!4834952 m!5830056))

(assert (=> b!4834952 m!5830056))

(declare-fun m!5830058 () Bool)

(assert (=> b!4834952 m!5830058))

(declare-fun m!5830060 () Bool)

(assert (=> b!4834952 m!5830060))

(declare-fun m!5830062 () Bool)

(assert (=> b!4834953 m!5830062))

(declare-fun m!5830064 () Bool)

(assert (=> d!1550128 m!5830064))

(declare-fun m!5830066 () Bool)

(assert (=> bm!337039 m!5830066))

(declare-fun m!5830068 () Bool)

(assert (=> b!4834950 m!5830068))

(assert (=> b!4834955 m!5830064))

(declare-fun m!5830070 () Bool)

(assert (=> b!4834955 m!5830070))

(assert (=> b!4834948 m!5830056))

(assert (=> b!4834948 m!5830056))

(assert (=> b!4834948 m!5830058))

(assert (=> b!4834954 m!5830062))

(assert (=> b!4834954 m!5830062))

(declare-fun m!5830072 () Bool)

(assert (=> b!4834954 m!5830072))

(assert (=> b!4834951 m!5830062))

(assert (=> b!4834951 m!5830062))

(assert (=> b!4834951 m!5830072))

(assert (=> b!4834750 d!1550128))

(declare-fun d!1550130 () Bool)

(declare-fun res!2059796 () Bool)

(declare-fun e!3021508 () Bool)

(assert (=> d!1550130 (=> res!2059796 e!3021508)))

(assert (=> d!1550130 (= res!2059796 (and ((_ is Cons!55125) (t!362745 l!14180)) (= (_1!32512 (h!61559 (t!362745 l!14180))) key!5666)))))

(assert (=> d!1550130 (= (containsKey!4489 (t!362745 l!14180) key!5666) e!3021508)))

(declare-fun b!4834956 () Bool)

(declare-fun e!3021509 () Bool)

(assert (=> b!4834956 (= e!3021508 e!3021509)))

(declare-fun res!2059797 () Bool)

(assert (=> b!4834956 (=> (not res!2059797) (not e!3021509))))

(assert (=> b!4834956 (= res!2059797 ((_ is Cons!55125) (t!362745 l!14180)))))

(declare-fun b!4834957 () Bool)

(assert (=> b!4834957 (= e!3021509 (containsKey!4489 (t!362745 (t!362745 l!14180)) key!5666))))

(assert (= (and d!1550130 (not res!2059796)) b!4834956))

(assert (= (and b!4834956 res!2059797) b!4834957))

(declare-fun m!5830074 () Bool)

(assert (=> b!4834957 m!5830074))

(assert (=> b!4834750 d!1550130))

(declare-fun d!1550132 () Bool)

(declare-fun res!2059802 () Bool)

(declare-fun e!3021514 () Bool)

(assert (=> d!1550132 (=> res!2059802 e!3021514)))

(assert (=> d!1550132 (= res!2059802 (not ((_ is Cons!55125) l!14180)))))

(assert (=> d!1550132 (= (noDuplicateKeys!2508 l!14180) e!3021514)))

(declare-fun b!4834962 () Bool)

(declare-fun e!3021515 () Bool)

(assert (=> b!4834962 (= e!3021514 e!3021515)))

(declare-fun res!2059803 () Bool)

(assert (=> b!4834962 (=> (not res!2059803) (not e!3021515))))

(assert (=> b!4834962 (= res!2059803 (not (containsKey!4489 (t!362745 l!14180) (_1!32512 (h!61559 l!14180)))))))

(declare-fun b!4834963 () Bool)

(assert (=> b!4834963 (= e!3021515 (noDuplicateKeys!2508 (t!362745 l!14180)))))

(assert (= (and d!1550132 (not res!2059802)) b!4834962))

(assert (= (and b!4834962 res!2059803) b!4834963))

(declare-fun m!5830076 () Bool)

(assert (=> b!4834962 m!5830076))

(assert (=> b!4834963 m!5830018))

(assert (=> start!502566 d!1550132))

(declare-fun d!1550134 () Bool)

(assert (=> d!1550134 (= (inv!70744 acc!1183) (invariantList!1850 (toList!7594 acc!1183)))))

(declare-fun bs!1167373 () Bool)

(assert (= bs!1167373 d!1550134))

(declare-fun m!5830078 () Bool)

(assert (=> bs!1167373 m!5830078))

(assert (=> start!502566 d!1550134))

(declare-fun e!3021518 () Bool)

(declare-fun tp!1363245 () Bool)

(declare-fun b!4834968 () Bool)

(assert (=> b!4834968 (= e!3021518 (and tp_is_empty!34713 tp_is_empty!34715 tp!1363245))))

(assert (=> b!4834748 (= tp!1363238 e!3021518)))

(assert (= (and b!4834748 ((_ is Cons!55125) (toList!7594 acc!1183))) b!4834968))

(declare-fun b!4834969 () Bool)

(declare-fun tp!1363246 () Bool)

(declare-fun e!3021519 () Bool)

(assert (=> b!4834969 (= e!3021519 (and tp_is_empty!34713 tp_is_empty!34715 tp!1363246))))

(assert (=> b!4834747 (= tp!1363237 e!3021519)))

(assert (= (and b!4834747 ((_ is Cons!55125) (t!362745 l!14180))) b!4834969))

(check-sat (not d!1550116) (not b!4834923) (not d!1550086) (not d!1550128) (not b!4834921) (not b!4834810) (not b!4834942) (not b!4834907) (not bm!337039) (not d!1550124) (not d!1550134) (not b!4834813) (not b!4834943) (not b!4834946) (not b!4834928) (not bm!337038) (not b!4834962) (not b!4834815) (not b!4834951) (not b!4834922) (not b!4834931) tp_is_empty!34713 (not d!1550120) (not bm!337034) (not d!1550126) (not b!4834927) (not b!4834935) (not b!4834932) (not b!4834954) (not b!4834817) (not b!4834814) (not b!4834906) (not b!4834905) (not d!1550122) (not b!4834812) (not b!4834968) (not b!4834957) (not bm!337031) (not bm!337036) (not b!4834916) tp_is_empty!34715 (not bm!337033) (not b!4834823) (not b!4834918) (not b!4834930) (not b!4834919) (not b!4834948) (not b!4834969) (not bm!337035) (not d!1550096) (not b!4834952) (not d!1550118) (not bm!337032) (not b!4834933) (not b!4834920) (not b!4834904) (not b!4834936) (not bm!337037) (not bm!337010) (not b!4834953) (not b!4834925) (not b!4834963) (not b!4834934) (not b!4834816) (not b!4834955) (not b!4834950) (not b!4834929))
(check-sat)

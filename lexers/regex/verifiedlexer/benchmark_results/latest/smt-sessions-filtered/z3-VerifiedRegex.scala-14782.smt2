; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!759540 () Bool)

(assert start!759540)

(declare-fun res!3188560 () Bool)

(declare-fun e!4749727 () Bool)

(assert (=> start!759540 (=> (not res!3188560) (not e!4749727))))

(declare-datatypes ((K!23043 0))(
  ( (K!23044 (val!33107 Int)) )
))
(declare-datatypes ((B!4513 0))(
  ( (B!4514 (val!33108 Int)) )
))
(declare-datatypes ((tuple2!71072 0))(
  ( (tuple2!71073 (_1!38839 K!23043) (_2!38839 B!4513)) )
))
(declare-datatypes ((List!75797 0))(
  ( (Nil!75671) (Cons!75671 (h!82119 tuple2!71072) (t!391569 List!75797)) )
))
(declare-datatypes ((ListMap!7435 0))(
  ( (ListMap!7436 (toList!11992 List!75797)) )
))
(declare-fun thiss!41850 () ListMap!7435)

(declare-fun key!1604 () K!23043)

(declare-fun contains!21340 (ListMap!7435 K!23043) Bool)

(assert (=> start!759540 (= res!3188560 (contains!21340 thiss!41850 key!1604))))

(assert (=> start!759540 e!4749727))

(declare-fun e!4749728 () Bool)

(declare-fun inv!97512 (ListMap!7435) Bool)

(assert (=> start!759540 (and (inv!97512 thiss!41850) e!4749728)))

(declare-fun tp_is_empty!55257 () Bool)

(assert (=> start!759540 tp_is_empty!55257))

(declare-fun b!8059686 () Bool)

(declare-datatypes ((Option!18035 0))(
  ( (None!18034) (Some!18034 (v!55395 B!4513)) )
))
(declare-fun isDefined!14562 (Option!18035) Bool)

(declare-fun getValueByKey!2819 (List!75797 K!23043) Option!18035)

(assert (=> b!8059686 (= e!4749727 (not (isDefined!14562 (getValueByKey!2819 (toList!11992 thiss!41850) key!1604))))))

(declare-fun b!8059687 () Bool)

(declare-fun tp!2414424 () Bool)

(assert (=> b!8059687 (= e!4749728 tp!2414424)))

(assert (= (and start!759540 res!3188560) b!8059686))

(assert (= start!759540 b!8059687))

(declare-fun m!8412868 () Bool)

(assert (=> start!759540 m!8412868))

(declare-fun m!8412870 () Bool)

(assert (=> start!759540 m!8412870))

(declare-fun m!8412872 () Bool)

(assert (=> b!8059686 m!8412872))

(assert (=> b!8059686 m!8412872))

(declare-fun m!8412874 () Bool)

(assert (=> b!8059686 m!8412874))

(check-sat (not start!759540) (not b!8059686) (not b!8059687) tp_is_empty!55257)
(check-sat)
(get-model)

(declare-fun b!8059736 () Bool)

(declare-datatypes ((List!75798 0))(
  ( (Nil!75672) (Cons!75672 (h!82120 K!23043) (t!391570 List!75798)) )
))
(declare-fun e!4749764 () List!75798)

(declare-fun keys!30958 (ListMap!7435) List!75798)

(assert (=> b!8059736 (= e!4749764 (keys!30958 thiss!41850))))

(declare-fun b!8059737 () Bool)

(declare-datatypes ((Unit!172788 0))(
  ( (Unit!172789) )
))
(declare-fun e!4749763 () Unit!172788)

(declare-fun e!4749760 () Unit!172788)

(assert (=> b!8059737 (= e!4749763 e!4749760)))

(declare-fun c!1477002 () Bool)

(declare-fun call!747774 () Bool)

(assert (=> b!8059737 (= c!1477002 call!747774)))

(declare-fun b!8059738 () Bool)

(declare-fun lt!2732914 () Unit!172788)

(assert (=> b!8059738 (= e!4749763 lt!2732914)))

(declare-fun lt!2732915 () Unit!172788)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2583 (List!75797 K!23043) Unit!172788)

(assert (=> b!8059738 (= lt!2732915 (lemmaContainsKeyImpliesGetValueByKeyDefined!2583 (toList!11992 thiss!41850) key!1604))))

(assert (=> b!8059738 (isDefined!14562 (getValueByKey!2819 (toList!11992 thiss!41850) key!1604))))

(declare-fun lt!2732918 () Unit!172788)

(assert (=> b!8059738 (= lt!2732918 lt!2732915)))

(declare-fun lemmaInListThenGetKeysListContains!1270 (List!75797 K!23043) Unit!172788)

(assert (=> b!8059738 (= lt!2732914 (lemmaInListThenGetKeysListContains!1270 (toList!11992 thiss!41850) key!1604))))

(assert (=> b!8059738 call!747774))

(declare-fun d!2399397 () Bool)

(declare-fun e!4749762 () Bool)

(assert (=> d!2399397 e!4749762))

(declare-fun res!3188575 () Bool)

(assert (=> d!2399397 (=> res!3188575 e!4749762)))

(declare-fun e!4749759 () Bool)

(assert (=> d!2399397 (= res!3188575 e!4749759)))

(declare-fun res!3188573 () Bool)

(assert (=> d!2399397 (=> (not res!3188573) (not e!4749759))))

(declare-fun lt!2732920 () Bool)

(assert (=> d!2399397 (= res!3188573 (not lt!2732920))))

(declare-fun lt!2732917 () Bool)

(assert (=> d!2399397 (= lt!2732920 lt!2732917)))

(declare-fun lt!2732919 () Unit!172788)

(assert (=> d!2399397 (= lt!2732919 e!4749763)))

(declare-fun c!1477001 () Bool)

(assert (=> d!2399397 (= c!1477001 lt!2732917)))

(declare-fun containsKey!4944 (List!75797 K!23043) Bool)

(assert (=> d!2399397 (= lt!2732917 (containsKey!4944 (toList!11992 thiss!41850) key!1604))))

(assert (=> d!2399397 (= (contains!21340 thiss!41850 key!1604) lt!2732920)))

(declare-fun b!8059739 () Bool)

(declare-fun getKeysList!1275 (List!75797) List!75798)

(assert (=> b!8059739 (= e!4749764 (getKeysList!1275 (toList!11992 thiss!41850)))))

(declare-fun b!8059740 () Bool)

(declare-fun contains!21342 (List!75798 K!23043) Bool)

(assert (=> b!8059740 (= e!4749759 (not (contains!21342 (keys!30958 thiss!41850) key!1604)))))

(declare-fun b!8059741 () Bool)

(declare-fun e!4749761 () Bool)

(assert (=> b!8059741 (= e!4749762 e!4749761)))

(declare-fun res!3188574 () Bool)

(assert (=> b!8059741 (=> (not res!3188574) (not e!4749761))))

(assert (=> b!8059741 (= res!3188574 (isDefined!14562 (getValueByKey!2819 (toList!11992 thiss!41850) key!1604)))))

(declare-fun b!8059742 () Bool)

(assert (=> b!8059742 (= e!4749761 (contains!21342 (keys!30958 thiss!41850) key!1604))))

(declare-fun bm!747769 () Bool)

(assert (=> bm!747769 (= call!747774 (contains!21342 e!4749764 key!1604))))

(declare-fun c!1477000 () Bool)

(assert (=> bm!747769 (= c!1477000 c!1477001)))

(declare-fun b!8059743 () Bool)

(declare-fun Unit!172793 () Unit!172788)

(assert (=> b!8059743 (= e!4749760 Unit!172793)))

(declare-fun b!8059744 () Bool)

(assert (=> b!8059744 false))

(declare-fun lt!2732913 () Unit!172788)

(declare-fun lt!2732916 () Unit!172788)

(assert (=> b!8059744 (= lt!2732913 lt!2732916)))

(assert (=> b!8059744 (containsKey!4944 (toList!11992 thiss!41850) key!1604)))

(declare-fun lemmaInGetKeysListThenContainsKey!1275 (List!75797 K!23043) Unit!172788)

(assert (=> b!8059744 (= lt!2732916 (lemmaInGetKeysListThenContainsKey!1275 (toList!11992 thiss!41850) key!1604))))

(declare-fun Unit!172794 () Unit!172788)

(assert (=> b!8059744 (= e!4749760 Unit!172794)))

(assert (= (and d!2399397 c!1477001) b!8059738))

(assert (= (and d!2399397 (not c!1477001)) b!8059737))

(assert (= (and b!8059737 c!1477002) b!8059744))

(assert (= (and b!8059737 (not c!1477002)) b!8059743))

(assert (= (or b!8059738 b!8059737) bm!747769))

(assert (= (and bm!747769 c!1477000) b!8059739))

(assert (= (and bm!747769 (not c!1477000)) b!8059736))

(assert (= (and d!2399397 res!3188573) b!8059740))

(assert (= (and d!2399397 (not res!3188575)) b!8059741))

(assert (= (and b!8059741 res!3188574) b!8059742))

(assert (=> b!8059741 m!8412872))

(assert (=> b!8059741 m!8412872))

(assert (=> b!8059741 m!8412874))

(declare-fun m!8412880 () Bool)

(assert (=> bm!747769 m!8412880))

(declare-fun m!8412882 () Bool)

(assert (=> b!8059744 m!8412882))

(declare-fun m!8412884 () Bool)

(assert (=> b!8059744 m!8412884))

(declare-fun m!8412886 () Bool)

(assert (=> b!8059738 m!8412886))

(assert (=> b!8059738 m!8412872))

(assert (=> b!8059738 m!8412872))

(assert (=> b!8059738 m!8412874))

(declare-fun m!8412888 () Bool)

(assert (=> b!8059738 m!8412888))

(declare-fun m!8412890 () Bool)

(assert (=> b!8059739 m!8412890))

(declare-fun m!8412892 () Bool)

(assert (=> b!8059736 m!8412892))

(assert (=> d!2399397 m!8412882))

(assert (=> b!8059740 m!8412892))

(assert (=> b!8059740 m!8412892))

(declare-fun m!8412894 () Bool)

(assert (=> b!8059740 m!8412894))

(assert (=> b!8059742 m!8412892))

(assert (=> b!8059742 m!8412892))

(assert (=> b!8059742 m!8412894))

(assert (=> start!759540 d!2399397))

(declare-fun d!2399401 () Bool)

(declare-fun invariantList!1980 (List!75797) Bool)

(assert (=> d!2399401 (= (inv!97512 thiss!41850) (invariantList!1980 (toList!11992 thiss!41850)))))

(declare-fun bs!1973574 () Bool)

(assert (= bs!1973574 d!2399401))

(declare-fun m!8412896 () Bool)

(assert (=> bs!1973574 m!8412896))

(assert (=> start!759540 d!2399401))

(declare-fun d!2399403 () Bool)

(declare-fun isEmpty!43041 (Option!18035) Bool)

(assert (=> d!2399403 (= (isDefined!14562 (getValueByKey!2819 (toList!11992 thiss!41850) key!1604)) (not (isEmpty!43041 (getValueByKey!2819 (toList!11992 thiss!41850) key!1604))))))

(declare-fun bs!1973575 () Bool)

(assert (= bs!1973575 d!2399403))

(assert (=> bs!1973575 m!8412872))

(declare-fun m!8412898 () Bool)

(assert (=> bs!1973575 m!8412898))

(assert (=> b!8059686 d!2399403))

(declare-fun b!8059768 () Bool)

(declare-fun e!4749778 () Option!18035)

(assert (=> b!8059768 (= e!4749778 (getValueByKey!2819 (t!391569 (toList!11992 thiss!41850)) key!1604))))

(declare-fun b!8059766 () Bool)

(declare-fun e!4749777 () Option!18035)

(assert (=> b!8059766 (= e!4749777 (Some!18034 (_2!38839 (h!82119 (toList!11992 thiss!41850)))))))

(declare-fun d!2399405 () Bool)

(declare-fun c!1477010 () Bool)

(get-info :version)

(assert (=> d!2399405 (= c!1477010 (and ((_ is Cons!75671) (toList!11992 thiss!41850)) (= (_1!38839 (h!82119 (toList!11992 thiss!41850))) key!1604)))))

(assert (=> d!2399405 (= (getValueByKey!2819 (toList!11992 thiss!41850) key!1604) e!4749777)))

(declare-fun b!8059767 () Bool)

(assert (=> b!8059767 (= e!4749777 e!4749778)))

(declare-fun c!1477011 () Bool)

(assert (=> b!8059767 (= c!1477011 (and ((_ is Cons!75671) (toList!11992 thiss!41850)) (not (= (_1!38839 (h!82119 (toList!11992 thiss!41850))) key!1604))))))

(declare-fun b!8059769 () Bool)

(assert (=> b!8059769 (= e!4749778 None!18034)))

(assert (= (and d!2399405 c!1477010) b!8059766))

(assert (= (and d!2399405 (not c!1477010)) b!8059767))

(assert (= (and b!8059767 c!1477011) b!8059768))

(assert (= (and b!8059767 (not c!1477011)) b!8059769))

(declare-fun m!8412918 () Bool)

(assert (=> b!8059768 m!8412918))

(assert (=> b!8059686 d!2399405))

(declare-fun e!4749782 () Bool)

(declare-fun tp_is_empty!55261 () Bool)

(declare-fun b!8059775 () Bool)

(declare-fun tp!2414430 () Bool)

(assert (=> b!8059775 (= e!4749782 (and tp_is_empty!55257 tp_is_empty!55261 tp!2414430))))

(assert (=> b!8059687 (= tp!2414424 e!4749782)))

(assert (= (and b!8059687 ((_ is Cons!75671) (toList!11992 thiss!41850))) b!8059775))

(check-sat (not b!8059768) tp_is_empty!55257 (not b!8059738) tp_is_empty!55261 (not b!8059740) (not b!8059744) (not b!8059739) (not d!2399401) (not bm!747769) (not d!2399397) (not d!2399403) (not b!8059741) (not b!8059775) (not b!8059742) (not b!8059736))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!437440 () Bool)

(assert start!437440)

(declare-fun b!4460849 () Bool)

(declare-fun e!2777754 () Bool)

(declare-fun tp!1335702 () Bool)

(assert (=> b!4460849 (= e!2777754 tp!1335702)))

(declare-fun b!4460850 () Bool)

(declare-fun e!2777755 () Bool)

(declare-datatypes ((K!11570 0))(
  ( (K!11571 (val!17527 Int)) )
))
(declare-datatypes ((V!11816 0))(
  ( (V!11817 (val!17528 Int)) )
))
(declare-datatypes ((tuple2!50336 0))(
  ( (tuple2!50337 (_1!28462 K!11570) (_2!28462 V!11816)) )
))
(declare-datatypes ((List!50291 0))(
  ( (Nil!50167) (Cons!50167 (h!55912 tuple2!50336) (t!357241 List!50291)) )
))
(declare-datatypes ((ListMap!3213 0))(
  ( (ListMap!3214 (toList!3958 List!50291)) )
))
(declare-fun lt!1652035 () ListMap!3213)

(declare-fun l!12755 () List!50291)

(declare-fun contains!12673 (ListMap!3213 K!11570) Bool)

(assert (=> b!4460850 (= e!2777755 (not (contains!12673 lt!1652035 (_1!28462 (h!55912 l!12755)))))))

(declare-fun key!4289 () K!11570)

(assert (=> b!4460850 (contains!12673 lt!1652035 key!4289)))

(declare-fun value!2940 () V!11816)

(declare-datatypes ((Unit!86787 0))(
  ( (Unit!86788) )
))
(declare-fun lt!1652036 () Unit!86787)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!110 (List!50291 K!11570 V!11816 ListMap!3213) Unit!86787)

(assert (=> b!4460850 (= lt!1652036 (lemmaAddToMapContainsAndNotInListThenInAcc!110 (t!357241 l!12755) key!4289 value!2940 lt!1652035))))

(declare-fun b!4460851 () Bool)

(declare-fun res!1849862 () Bool)

(declare-fun e!2777757 () Bool)

(assert (=> b!4460851 (=> (not res!1849862) (not e!2777757))))

(get-info :version)

(assert (=> b!4460851 (= res!1849862 ((_ is Cons!50167) l!12755))))

(declare-fun b!4460852 () Bool)

(declare-fun res!1849861 () Bool)

(assert (=> b!4460852 (=> (not res!1849861) (not e!2777757))))

(declare-fun acc!957 () ListMap!3213)

(declare-fun addToMapMapFromBucket!565 (List!50291 ListMap!3213) ListMap!3213)

(assert (=> b!4460852 (= res!1849861 (contains!12673 (addToMapMapFromBucket!565 l!12755 acc!957) key!4289))))

(declare-fun b!4460853 () Bool)

(declare-fun res!1849864 () Bool)

(assert (=> b!4460853 (=> (not res!1849864) (not e!2777757))))

(declare-fun containsKey!1396 (List!50291 K!11570) Bool)

(assert (=> b!4460853 (= res!1849864 (not (containsKey!1396 l!12755 key!4289)))))

(declare-fun b!4460854 () Bool)

(assert (=> b!4460854 (= e!2777757 e!2777755)))

(declare-fun res!1849865 () Bool)

(assert (=> b!4460854 (=> (not res!1849865) (not e!2777755))))

(assert (=> b!4460854 (= res!1849865 (not (= (_1!28462 (h!55912 l!12755)) key!4289)))))

(declare-fun +!1339 (ListMap!3213 tuple2!50336) ListMap!3213)

(assert (=> b!4460854 (= lt!1652035 (+!1339 acc!957 (h!55912 l!12755)))))

(declare-fun res!1849863 () Bool)

(assert (=> start!437440 (=> (not res!1849863) (not e!2777757))))

(declare-fun noDuplicateKeys!986 (List!50291) Bool)

(assert (=> start!437440 (= res!1849863 (noDuplicateKeys!986 l!12755))))

(assert (=> start!437440 e!2777757))

(declare-fun e!2777756 () Bool)

(assert (=> start!437440 e!2777756))

(declare-fun tp_is_empty!27165 () Bool)

(assert (=> start!437440 tp_is_empty!27165))

(declare-fun inv!65754 (ListMap!3213) Bool)

(assert (=> start!437440 (and (inv!65754 acc!957) e!2777754)))

(declare-fun tp_is_empty!27167 () Bool)

(assert (=> start!437440 tp_is_empty!27167))

(declare-fun b!4460855 () Bool)

(declare-fun tp!1335703 () Bool)

(assert (=> b!4460855 (= e!2777756 (and tp_is_empty!27165 tp_is_empty!27167 tp!1335703))))

(assert (= (and start!437440 res!1849863) b!4460853))

(assert (= (and b!4460853 res!1849864) b!4460852))

(assert (= (and b!4460852 res!1849861) b!4460851))

(assert (= (and b!4460851 res!1849862) b!4460854))

(assert (= (and b!4460854 res!1849865) b!4460850))

(assert (= (and start!437440 ((_ is Cons!50167) l!12755)) b!4460855))

(assert (= start!437440 b!4460849))

(declare-fun m!5163851 () Bool)

(assert (=> b!4460850 m!5163851))

(declare-fun m!5163853 () Bool)

(assert (=> b!4460850 m!5163853))

(declare-fun m!5163855 () Bool)

(assert (=> b!4460850 m!5163855))

(declare-fun m!5163857 () Bool)

(assert (=> b!4460854 m!5163857))

(declare-fun m!5163859 () Bool)

(assert (=> b!4460852 m!5163859))

(assert (=> b!4460852 m!5163859))

(declare-fun m!5163861 () Bool)

(assert (=> b!4460852 m!5163861))

(declare-fun m!5163863 () Bool)

(assert (=> start!437440 m!5163863))

(declare-fun m!5163865 () Bool)

(assert (=> start!437440 m!5163865))

(declare-fun m!5163867 () Bool)

(assert (=> b!4460853 m!5163867))

(check-sat tp_is_empty!27165 (not b!4460849) (not b!4460852) (not b!4460855) (not b!4460854) (not b!4460850) (not b!4460853) (not start!437440) tp_is_empty!27167)
(check-sat)
(get-model)

(declare-fun d!1360206 () Bool)

(declare-fun res!1849870 () Bool)

(declare-fun e!2777762 () Bool)

(assert (=> d!1360206 (=> res!1849870 e!2777762)))

(assert (=> d!1360206 (= res!1849870 (not ((_ is Cons!50167) l!12755)))))

(assert (=> d!1360206 (= (noDuplicateKeys!986 l!12755) e!2777762)))

(declare-fun b!4460860 () Bool)

(declare-fun e!2777763 () Bool)

(assert (=> b!4460860 (= e!2777762 e!2777763)))

(declare-fun res!1849871 () Bool)

(assert (=> b!4460860 (=> (not res!1849871) (not e!2777763))))

(assert (=> b!4460860 (= res!1849871 (not (containsKey!1396 (t!357241 l!12755) (_1!28462 (h!55912 l!12755)))))))

(declare-fun b!4460861 () Bool)

(assert (=> b!4460861 (= e!2777763 (noDuplicateKeys!986 (t!357241 l!12755)))))

(assert (= (and d!1360206 (not res!1849870)) b!4460860))

(assert (= (and b!4460860 res!1849871) b!4460861))

(declare-fun m!5163869 () Bool)

(assert (=> b!4460860 m!5163869))

(declare-fun m!5163871 () Bool)

(assert (=> b!4460861 m!5163871))

(assert (=> start!437440 d!1360206))

(declare-fun d!1360208 () Bool)

(declare-fun invariantList!907 (List!50291) Bool)

(assert (=> d!1360208 (= (inv!65754 acc!957) (invariantList!907 (toList!3958 acc!957)))))

(declare-fun bs!791479 () Bool)

(assert (= bs!791479 d!1360208))

(declare-fun m!5163873 () Bool)

(assert (=> bs!791479 m!5163873))

(assert (=> start!437440 d!1360208))

(declare-fun b!4460907 () Bool)

(declare-fun e!2777797 () Bool)

(declare-fun e!2777798 () Bool)

(assert (=> b!4460907 (= e!2777797 e!2777798)))

(declare-fun res!1849887 () Bool)

(assert (=> b!4460907 (=> (not res!1849887) (not e!2777798))))

(declare-datatypes ((Option!10887 0))(
  ( (None!10886) (Some!10886 (v!44144 V!11816)) )
))
(declare-fun isDefined!8175 (Option!10887) Bool)

(declare-fun getValueByKey!873 (List!50291 K!11570) Option!10887)

(assert (=> b!4460907 (= res!1849887 (isDefined!8175 (getValueByKey!873 (toList!3958 lt!1652035) (_1!28462 (h!55912 l!12755)))))))

(declare-fun d!1360210 () Bool)

(assert (=> d!1360210 e!2777797))

(declare-fun res!1849889 () Bool)

(assert (=> d!1360210 (=> res!1849889 e!2777797)))

(declare-fun e!2777796 () Bool)

(assert (=> d!1360210 (= res!1849889 e!2777796)))

(declare-fun res!1849888 () Bool)

(assert (=> d!1360210 (=> (not res!1849888) (not e!2777796))))

(declare-fun lt!1652082 () Bool)

(assert (=> d!1360210 (= res!1849888 (not lt!1652082))))

(declare-fun lt!1652079 () Bool)

(assert (=> d!1360210 (= lt!1652082 lt!1652079)))

(declare-fun lt!1652081 () Unit!86787)

(declare-fun e!2777799 () Unit!86787)

(assert (=> d!1360210 (= lt!1652081 e!2777799)))

(declare-fun c!759200 () Bool)

(assert (=> d!1360210 (= c!759200 lt!1652079)))

(declare-fun containsKey!1398 (List!50291 K!11570) Bool)

(assert (=> d!1360210 (= lt!1652079 (containsKey!1398 (toList!3958 lt!1652035) (_1!28462 (h!55912 l!12755))))))

(assert (=> d!1360210 (= (contains!12673 lt!1652035 (_1!28462 (h!55912 l!12755))) lt!1652082)))

(declare-fun b!4460908 () Bool)

(declare-datatypes ((List!50293 0))(
  ( (Nil!50169) (Cons!50169 (h!55914 K!11570) (t!357243 List!50293)) )
))
(declare-fun contains!12675 (List!50293 K!11570) Bool)

(declare-fun keys!17290 (ListMap!3213) List!50293)

(assert (=> b!4460908 (= e!2777796 (not (contains!12675 (keys!17290 lt!1652035) (_1!28462 (h!55912 l!12755)))))))

(declare-fun b!4460909 () Bool)

(assert (=> b!4460909 (= e!2777798 (contains!12675 (keys!17290 lt!1652035) (_1!28462 (h!55912 l!12755))))))

(declare-fun b!4460910 () Bool)

(declare-fun lt!1652080 () Unit!86787)

(assert (=> b!4460910 (= e!2777799 lt!1652080)))

(declare-fun lt!1652084 () Unit!86787)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!778 (List!50291 K!11570) Unit!86787)

(assert (=> b!4460910 (= lt!1652084 (lemmaContainsKeyImpliesGetValueByKeyDefined!778 (toList!3958 lt!1652035) (_1!28462 (h!55912 l!12755))))))

(assert (=> b!4460910 (isDefined!8175 (getValueByKey!873 (toList!3958 lt!1652035) (_1!28462 (h!55912 l!12755))))))

(declare-fun lt!1652077 () Unit!86787)

(assert (=> b!4460910 (= lt!1652077 lt!1652084)))

(declare-fun lemmaInListThenGetKeysListContains!351 (List!50291 K!11570) Unit!86787)

(assert (=> b!4460910 (= lt!1652080 (lemmaInListThenGetKeysListContains!351 (toList!3958 lt!1652035) (_1!28462 (h!55912 l!12755))))))

(declare-fun call!310580 () Bool)

(assert (=> b!4460910 call!310580))

(declare-fun b!4460911 () Bool)

(declare-fun e!2777794 () List!50293)

(declare-fun getKeysList!355 (List!50291) List!50293)

(assert (=> b!4460911 (= e!2777794 (getKeysList!355 (toList!3958 lt!1652035)))))

(declare-fun b!4460912 () Bool)

(assert (=> b!4460912 (= e!2777794 (keys!17290 lt!1652035))))

(declare-fun b!4460913 () Bool)

(assert (=> b!4460913 false))

(declare-fun lt!1652078 () Unit!86787)

(declare-fun lt!1652083 () Unit!86787)

(assert (=> b!4460913 (= lt!1652078 lt!1652083)))

(assert (=> b!4460913 (containsKey!1398 (toList!3958 lt!1652035) (_1!28462 (h!55912 l!12755)))))

(declare-fun lemmaInGetKeysListThenContainsKey!354 (List!50291 K!11570) Unit!86787)

(assert (=> b!4460913 (= lt!1652083 (lemmaInGetKeysListThenContainsKey!354 (toList!3958 lt!1652035) (_1!28462 (h!55912 l!12755))))))

(declare-fun e!2777795 () Unit!86787)

(declare-fun Unit!86802 () Unit!86787)

(assert (=> b!4460913 (= e!2777795 Unit!86802)))

(declare-fun b!4460914 () Bool)

(assert (=> b!4460914 (= e!2777799 e!2777795)))

(declare-fun c!759201 () Bool)

(assert (=> b!4460914 (= c!759201 call!310580)))

(declare-fun bm!310575 () Bool)

(assert (=> bm!310575 (= call!310580 (contains!12675 e!2777794 (_1!28462 (h!55912 l!12755))))))

(declare-fun c!759202 () Bool)

(assert (=> bm!310575 (= c!759202 c!759200)))

(declare-fun b!4460915 () Bool)

(declare-fun Unit!86803 () Unit!86787)

(assert (=> b!4460915 (= e!2777795 Unit!86803)))

(assert (= (and d!1360210 c!759200) b!4460910))

(assert (= (and d!1360210 (not c!759200)) b!4460914))

(assert (= (and b!4460914 c!759201) b!4460913))

(assert (= (and b!4460914 (not c!759201)) b!4460915))

(assert (= (or b!4460910 b!4460914) bm!310575))

(assert (= (and bm!310575 c!759202) b!4460911))

(assert (= (and bm!310575 (not c!759202)) b!4460912))

(assert (= (and d!1360210 res!1849888) b!4460908))

(assert (= (and d!1360210 (not res!1849889)) b!4460907))

(assert (= (and b!4460907 res!1849887) b!4460909))

(declare-fun m!5163895 () Bool)

(assert (=> bm!310575 m!5163895))

(declare-fun m!5163897 () Bool)

(assert (=> b!4460912 m!5163897))

(declare-fun m!5163899 () Bool)

(assert (=> b!4460911 m!5163899))

(assert (=> b!4460909 m!5163897))

(assert (=> b!4460909 m!5163897))

(declare-fun m!5163901 () Bool)

(assert (=> b!4460909 m!5163901))

(declare-fun m!5163903 () Bool)

(assert (=> b!4460910 m!5163903))

(declare-fun m!5163905 () Bool)

(assert (=> b!4460910 m!5163905))

(assert (=> b!4460910 m!5163905))

(declare-fun m!5163907 () Bool)

(assert (=> b!4460910 m!5163907))

(declare-fun m!5163909 () Bool)

(assert (=> b!4460910 m!5163909))

(declare-fun m!5163911 () Bool)

(assert (=> d!1360210 m!5163911))

(assert (=> b!4460908 m!5163897))

(assert (=> b!4460908 m!5163897))

(assert (=> b!4460908 m!5163901))

(assert (=> b!4460913 m!5163911))

(declare-fun m!5163913 () Bool)

(assert (=> b!4460913 m!5163913))

(assert (=> b!4460907 m!5163905))

(assert (=> b!4460907 m!5163905))

(assert (=> b!4460907 m!5163907))

(assert (=> b!4460850 d!1360210))

(declare-fun b!4460916 () Bool)

(declare-fun e!2777803 () Bool)

(declare-fun e!2777804 () Bool)

(assert (=> b!4460916 (= e!2777803 e!2777804)))

(declare-fun res!1849890 () Bool)

(assert (=> b!4460916 (=> (not res!1849890) (not e!2777804))))

(assert (=> b!4460916 (= res!1849890 (isDefined!8175 (getValueByKey!873 (toList!3958 lt!1652035) key!4289)))))

(declare-fun d!1360214 () Bool)

(assert (=> d!1360214 e!2777803))

(declare-fun res!1849892 () Bool)

(assert (=> d!1360214 (=> res!1849892 e!2777803)))

(declare-fun e!2777802 () Bool)

(assert (=> d!1360214 (= res!1849892 e!2777802)))

(declare-fun res!1849891 () Bool)

(assert (=> d!1360214 (=> (not res!1849891) (not e!2777802))))

(declare-fun lt!1652090 () Bool)

(assert (=> d!1360214 (= res!1849891 (not lt!1652090))))

(declare-fun lt!1652087 () Bool)

(assert (=> d!1360214 (= lt!1652090 lt!1652087)))

(declare-fun lt!1652089 () Unit!86787)

(declare-fun e!2777805 () Unit!86787)

(assert (=> d!1360214 (= lt!1652089 e!2777805)))

(declare-fun c!759203 () Bool)

(assert (=> d!1360214 (= c!759203 lt!1652087)))

(assert (=> d!1360214 (= lt!1652087 (containsKey!1398 (toList!3958 lt!1652035) key!4289))))

(assert (=> d!1360214 (= (contains!12673 lt!1652035 key!4289) lt!1652090)))

(declare-fun b!4460917 () Bool)

(assert (=> b!4460917 (= e!2777802 (not (contains!12675 (keys!17290 lt!1652035) key!4289)))))

(declare-fun b!4460918 () Bool)

(assert (=> b!4460918 (= e!2777804 (contains!12675 (keys!17290 lt!1652035) key!4289))))

(declare-fun b!4460919 () Bool)

(declare-fun lt!1652088 () Unit!86787)

(assert (=> b!4460919 (= e!2777805 lt!1652088)))

(declare-fun lt!1652092 () Unit!86787)

(assert (=> b!4460919 (= lt!1652092 (lemmaContainsKeyImpliesGetValueByKeyDefined!778 (toList!3958 lt!1652035) key!4289))))

(assert (=> b!4460919 (isDefined!8175 (getValueByKey!873 (toList!3958 lt!1652035) key!4289))))

(declare-fun lt!1652085 () Unit!86787)

(assert (=> b!4460919 (= lt!1652085 lt!1652092)))

(assert (=> b!4460919 (= lt!1652088 (lemmaInListThenGetKeysListContains!351 (toList!3958 lt!1652035) key!4289))))

(declare-fun call!310581 () Bool)

(assert (=> b!4460919 call!310581))

(declare-fun b!4460920 () Bool)

(declare-fun e!2777800 () List!50293)

(assert (=> b!4460920 (= e!2777800 (getKeysList!355 (toList!3958 lt!1652035)))))

(declare-fun b!4460921 () Bool)

(assert (=> b!4460921 (= e!2777800 (keys!17290 lt!1652035))))

(declare-fun b!4460922 () Bool)

(assert (=> b!4460922 false))

(declare-fun lt!1652086 () Unit!86787)

(declare-fun lt!1652091 () Unit!86787)

(assert (=> b!4460922 (= lt!1652086 lt!1652091)))

(assert (=> b!4460922 (containsKey!1398 (toList!3958 lt!1652035) key!4289)))

(assert (=> b!4460922 (= lt!1652091 (lemmaInGetKeysListThenContainsKey!354 (toList!3958 lt!1652035) key!4289))))

(declare-fun e!2777801 () Unit!86787)

(declare-fun Unit!86804 () Unit!86787)

(assert (=> b!4460922 (= e!2777801 Unit!86804)))

(declare-fun b!4460923 () Bool)

(assert (=> b!4460923 (= e!2777805 e!2777801)))

(declare-fun c!759204 () Bool)

(assert (=> b!4460923 (= c!759204 call!310581)))

(declare-fun bm!310576 () Bool)

(assert (=> bm!310576 (= call!310581 (contains!12675 e!2777800 key!4289))))

(declare-fun c!759205 () Bool)

(assert (=> bm!310576 (= c!759205 c!759203)))

(declare-fun b!4460924 () Bool)

(declare-fun Unit!86805 () Unit!86787)

(assert (=> b!4460924 (= e!2777801 Unit!86805)))

(assert (= (and d!1360214 c!759203) b!4460919))

(assert (= (and d!1360214 (not c!759203)) b!4460923))

(assert (= (and b!4460923 c!759204) b!4460922))

(assert (= (and b!4460923 (not c!759204)) b!4460924))

(assert (= (or b!4460919 b!4460923) bm!310576))

(assert (= (and bm!310576 c!759205) b!4460920))

(assert (= (and bm!310576 (not c!759205)) b!4460921))

(assert (= (and d!1360214 res!1849891) b!4460917))

(assert (= (and d!1360214 (not res!1849892)) b!4460916))

(assert (= (and b!4460916 res!1849890) b!4460918))

(declare-fun m!5163915 () Bool)

(assert (=> bm!310576 m!5163915))

(assert (=> b!4460921 m!5163897))

(assert (=> b!4460920 m!5163899))

(assert (=> b!4460918 m!5163897))

(assert (=> b!4460918 m!5163897))

(declare-fun m!5163917 () Bool)

(assert (=> b!4460918 m!5163917))

(declare-fun m!5163919 () Bool)

(assert (=> b!4460919 m!5163919))

(declare-fun m!5163921 () Bool)

(assert (=> b!4460919 m!5163921))

(assert (=> b!4460919 m!5163921))

(declare-fun m!5163923 () Bool)

(assert (=> b!4460919 m!5163923))

(declare-fun m!5163925 () Bool)

(assert (=> b!4460919 m!5163925))

(declare-fun m!5163927 () Bool)

(assert (=> d!1360214 m!5163927))

(assert (=> b!4460917 m!5163897))

(assert (=> b!4460917 m!5163897))

(assert (=> b!4460917 m!5163917))

(assert (=> b!4460922 m!5163927))

(declare-fun m!5163929 () Bool)

(assert (=> b!4460922 m!5163929))

(assert (=> b!4460916 m!5163921))

(assert (=> b!4460916 m!5163921))

(assert (=> b!4460916 m!5163923))

(assert (=> b!4460850 d!1360214))

(declare-fun d!1360216 () Bool)

(assert (=> d!1360216 (contains!12673 lt!1652035 key!4289)))

(declare-fun lt!1652095 () Unit!86787)

(declare-fun choose!28411 (List!50291 K!11570 V!11816 ListMap!3213) Unit!86787)

(assert (=> d!1360216 (= lt!1652095 (choose!28411 (t!357241 l!12755) key!4289 value!2940 lt!1652035))))

(assert (=> d!1360216 (noDuplicateKeys!986 (t!357241 l!12755))))

(assert (=> d!1360216 (= (lemmaAddToMapContainsAndNotInListThenInAcc!110 (t!357241 l!12755) key!4289 value!2940 lt!1652035) lt!1652095)))

(declare-fun bs!791480 () Bool)

(assert (= bs!791480 d!1360216))

(assert (=> bs!791480 m!5163853))

(declare-fun m!5163931 () Bool)

(assert (=> bs!791480 m!5163931))

(assert (=> bs!791480 m!5163871))

(assert (=> b!4460850 d!1360216))

(declare-fun d!1360218 () Bool)

(declare-fun e!2777808 () Bool)

(assert (=> d!1360218 e!2777808))

(declare-fun res!1849898 () Bool)

(assert (=> d!1360218 (=> (not res!1849898) (not e!2777808))))

(declare-fun lt!1652104 () ListMap!3213)

(assert (=> d!1360218 (= res!1849898 (contains!12673 lt!1652104 (_1!28462 (h!55912 l!12755))))))

(declare-fun lt!1652107 () List!50291)

(assert (=> d!1360218 (= lt!1652104 (ListMap!3214 lt!1652107))))

(declare-fun lt!1652106 () Unit!86787)

(declare-fun lt!1652105 () Unit!86787)

(assert (=> d!1360218 (= lt!1652106 lt!1652105)))

(assert (=> d!1360218 (= (getValueByKey!873 lt!1652107 (_1!28462 (h!55912 l!12755))) (Some!10886 (_2!28462 (h!55912 l!12755))))))

(declare-fun lemmaContainsTupThenGetReturnValue!568 (List!50291 K!11570 V!11816) Unit!86787)

(assert (=> d!1360218 (= lt!1652105 (lemmaContainsTupThenGetReturnValue!568 lt!1652107 (_1!28462 (h!55912 l!12755)) (_2!28462 (h!55912 l!12755))))))

(declare-fun insertNoDuplicatedKeys!262 (List!50291 K!11570 V!11816) List!50291)

(assert (=> d!1360218 (= lt!1652107 (insertNoDuplicatedKeys!262 (toList!3958 acc!957) (_1!28462 (h!55912 l!12755)) (_2!28462 (h!55912 l!12755))))))

(assert (=> d!1360218 (= (+!1339 acc!957 (h!55912 l!12755)) lt!1652104)))

(declare-fun b!4460929 () Bool)

(declare-fun res!1849897 () Bool)

(assert (=> b!4460929 (=> (not res!1849897) (not e!2777808))))

(assert (=> b!4460929 (= res!1849897 (= (getValueByKey!873 (toList!3958 lt!1652104) (_1!28462 (h!55912 l!12755))) (Some!10886 (_2!28462 (h!55912 l!12755)))))))

(declare-fun b!4460930 () Bool)

(declare-fun contains!12677 (List!50291 tuple2!50336) Bool)

(assert (=> b!4460930 (= e!2777808 (contains!12677 (toList!3958 lt!1652104) (h!55912 l!12755)))))

(assert (= (and d!1360218 res!1849898) b!4460929))

(assert (= (and b!4460929 res!1849897) b!4460930))

(declare-fun m!5163933 () Bool)

(assert (=> d!1360218 m!5163933))

(declare-fun m!5163935 () Bool)

(assert (=> d!1360218 m!5163935))

(declare-fun m!5163937 () Bool)

(assert (=> d!1360218 m!5163937))

(declare-fun m!5163939 () Bool)

(assert (=> d!1360218 m!5163939))

(declare-fun m!5163941 () Bool)

(assert (=> b!4460929 m!5163941))

(declare-fun m!5163943 () Bool)

(assert (=> b!4460930 m!5163943))

(assert (=> b!4460854 d!1360218))

(declare-fun d!1360220 () Bool)

(declare-fun res!1849903 () Bool)

(declare-fun e!2777813 () Bool)

(assert (=> d!1360220 (=> res!1849903 e!2777813)))

(assert (=> d!1360220 (= res!1849903 (and ((_ is Cons!50167) l!12755) (= (_1!28462 (h!55912 l!12755)) key!4289)))))

(assert (=> d!1360220 (= (containsKey!1396 l!12755 key!4289) e!2777813)))

(declare-fun b!4460935 () Bool)

(declare-fun e!2777814 () Bool)

(assert (=> b!4460935 (= e!2777813 e!2777814)))

(declare-fun res!1849904 () Bool)

(assert (=> b!4460935 (=> (not res!1849904) (not e!2777814))))

(assert (=> b!4460935 (= res!1849904 ((_ is Cons!50167) l!12755))))

(declare-fun b!4460936 () Bool)

(assert (=> b!4460936 (= e!2777814 (containsKey!1396 (t!357241 l!12755) key!4289))))

(assert (= (and d!1360220 (not res!1849903)) b!4460935))

(assert (= (and b!4460935 res!1849904) b!4460936))

(declare-fun m!5163945 () Bool)

(assert (=> b!4460936 m!5163945))

(assert (=> b!4460853 d!1360220))

(declare-fun b!4460937 () Bool)

(declare-fun e!2777818 () Bool)

(declare-fun e!2777819 () Bool)

(assert (=> b!4460937 (= e!2777818 e!2777819)))

(declare-fun res!1849905 () Bool)

(assert (=> b!4460937 (=> (not res!1849905) (not e!2777819))))

(assert (=> b!4460937 (= res!1849905 (isDefined!8175 (getValueByKey!873 (toList!3958 (addToMapMapFromBucket!565 l!12755 acc!957)) key!4289)))))

(declare-fun d!1360222 () Bool)

(assert (=> d!1360222 e!2777818))

(declare-fun res!1849907 () Bool)

(assert (=> d!1360222 (=> res!1849907 e!2777818)))

(declare-fun e!2777817 () Bool)

(assert (=> d!1360222 (= res!1849907 e!2777817)))

(declare-fun res!1849906 () Bool)

(assert (=> d!1360222 (=> (not res!1849906) (not e!2777817))))

(declare-fun lt!1652113 () Bool)

(assert (=> d!1360222 (= res!1849906 (not lt!1652113))))

(declare-fun lt!1652110 () Bool)

(assert (=> d!1360222 (= lt!1652113 lt!1652110)))

(declare-fun lt!1652112 () Unit!86787)

(declare-fun e!2777820 () Unit!86787)

(assert (=> d!1360222 (= lt!1652112 e!2777820)))

(declare-fun c!759206 () Bool)

(assert (=> d!1360222 (= c!759206 lt!1652110)))

(assert (=> d!1360222 (= lt!1652110 (containsKey!1398 (toList!3958 (addToMapMapFromBucket!565 l!12755 acc!957)) key!4289))))

(assert (=> d!1360222 (= (contains!12673 (addToMapMapFromBucket!565 l!12755 acc!957) key!4289) lt!1652113)))

(declare-fun b!4460938 () Bool)

(assert (=> b!4460938 (= e!2777817 (not (contains!12675 (keys!17290 (addToMapMapFromBucket!565 l!12755 acc!957)) key!4289)))))

(declare-fun b!4460939 () Bool)

(assert (=> b!4460939 (= e!2777819 (contains!12675 (keys!17290 (addToMapMapFromBucket!565 l!12755 acc!957)) key!4289))))

(declare-fun b!4460940 () Bool)

(declare-fun lt!1652111 () Unit!86787)

(assert (=> b!4460940 (= e!2777820 lt!1652111)))

(declare-fun lt!1652115 () Unit!86787)

(assert (=> b!4460940 (= lt!1652115 (lemmaContainsKeyImpliesGetValueByKeyDefined!778 (toList!3958 (addToMapMapFromBucket!565 l!12755 acc!957)) key!4289))))

(assert (=> b!4460940 (isDefined!8175 (getValueByKey!873 (toList!3958 (addToMapMapFromBucket!565 l!12755 acc!957)) key!4289))))

(declare-fun lt!1652108 () Unit!86787)

(assert (=> b!4460940 (= lt!1652108 lt!1652115)))

(assert (=> b!4460940 (= lt!1652111 (lemmaInListThenGetKeysListContains!351 (toList!3958 (addToMapMapFromBucket!565 l!12755 acc!957)) key!4289))))

(declare-fun call!310582 () Bool)

(assert (=> b!4460940 call!310582))

(declare-fun b!4460941 () Bool)

(declare-fun e!2777815 () List!50293)

(assert (=> b!4460941 (= e!2777815 (getKeysList!355 (toList!3958 (addToMapMapFromBucket!565 l!12755 acc!957))))))

(declare-fun b!4460942 () Bool)

(assert (=> b!4460942 (= e!2777815 (keys!17290 (addToMapMapFromBucket!565 l!12755 acc!957)))))

(declare-fun b!4460943 () Bool)

(assert (=> b!4460943 false))

(declare-fun lt!1652109 () Unit!86787)

(declare-fun lt!1652114 () Unit!86787)

(assert (=> b!4460943 (= lt!1652109 lt!1652114)))

(assert (=> b!4460943 (containsKey!1398 (toList!3958 (addToMapMapFromBucket!565 l!12755 acc!957)) key!4289)))

(assert (=> b!4460943 (= lt!1652114 (lemmaInGetKeysListThenContainsKey!354 (toList!3958 (addToMapMapFromBucket!565 l!12755 acc!957)) key!4289))))

(declare-fun e!2777816 () Unit!86787)

(declare-fun Unit!86810 () Unit!86787)

(assert (=> b!4460943 (= e!2777816 Unit!86810)))

(declare-fun b!4460944 () Bool)

(assert (=> b!4460944 (= e!2777820 e!2777816)))

(declare-fun c!759207 () Bool)

(assert (=> b!4460944 (= c!759207 call!310582)))

(declare-fun bm!310577 () Bool)

(assert (=> bm!310577 (= call!310582 (contains!12675 e!2777815 key!4289))))

(declare-fun c!759208 () Bool)

(assert (=> bm!310577 (= c!759208 c!759206)))

(declare-fun b!4460945 () Bool)

(declare-fun Unit!86811 () Unit!86787)

(assert (=> b!4460945 (= e!2777816 Unit!86811)))

(assert (= (and d!1360222 c!759206) b!4460940))

(assert (= (and d!1360222 (not c!759206)) b!4460944))

(assert (= (and b!4460944 c!759207) b!4460943))

(assert (= (and b!4460944 (not c!759207)) b!4460945))

(assert (= (or b!4460940 b!4460944) bm!310577))

(assert (= (and bm!310577 c!759208) b!4460941))

(assert (= (and bm!310577 (not c!759208)) b!4460942))

(assert (= (and d!1360222 res!1849906) b!4460938))

(assert (= (and d!1360222 (not res!1849907)) b!4460937))

(assert (= (and b!4460937 res!1849905) b!4460939))

(declare-fun m!5163947 () Bool)

(assert (=> bm!310577 m!5163947))

(assert (=> b!4460942 m!5163859))

(declare-fun m!5163949 () Bool)

(assert (=> b!4460942 m!5163949))

(declare-fun m!5163951 () Bool)

(assert (=> b!4460941 m!5163951))

(assert (=> b!4460939 m!5163859))

(assert (=> b!4460939 m!5163949))

(assert (=> b!4460939 m!5163949))

(declare-fun m!5163953 () Bool)

(assert (=> b!4460939 m!5163953))

(declare-fun m!5163955 () Bool)

(assert (=> b!4460940 m!5163955))

(declare-fun m!5163957 () Bool)

(assert (=> b!4460940 m!5163957))

(assert (=> b!4460940 m!5163957))

(declare-fun m!5163959 () Bool)

(assert (=> b!4460940 m!5163959))

(declare-fun m!5163961 () Bool)

(assert (=> b!4460940 m!5163961))

(declare-fun m!5163963 () Bool)

(assert (=> d!1360222 m!5163963))

(assert (=> b!4460938 m!5163859))

(assert (=> b!4460938 m!5163949))

(assert (=> b!4460938 m!5163949))

(assert (=> b!4460938 m!5163953))

(assert (=> b!4460943 m!5163963))

(declare-fun m!5163965 () Bool)

(assert (=> b!4460943 m!5163965))

(assert (=> b!4460937 m!5163957))

(assert (=> b!4460937 m!5163957))

(assert (=> b!4460937 m!5163959))

(assert (=> b!4460852 d!1360222))

(declare-fun b!4461017 () Bool)

(assert (=> b!4461017 true))

(declare-fun bs!791486 () Bool)

(declare-fun b!4461018 () Bool)

(assert (= bs!791486 (and b!4461018 b!4461017)))

(declare-fun lambda!161769 () Int)

(declare-fun lambda!161768 () Int)

(assert (=> bs!791486 (= lambda!161769 lambda!161768)))

(assert (=> b!4461018 true))

(declare-fun lambda!161770 () Int)

(declare-fun lt!1652264 () ListMap!3213)

(assert (=> bs!791486 (= (= lt!1652264 acc!957) (= lambda!161770 lambda!161768))))

(assert (=> b!4461018 (= (= lt!1652264 acc!957) (= lambda!161770 lambda!161769))))

(assert (=> b!4461018 true))

(declare-fun bs!791487 () Bool)

(declare-fun d!1360224 () Bool)

(assert (= bs!791487 (and d!1360224 b!4461017)))

(declare-fun lt!1652257 () ListMap!3213)

(declare-fun lambda!161771 () Int)

(assert (=> bs!791487 (= (= lt!1652257 acc!957) (= lambda!161771 lambda!161768))))

(declare-fun bs!791488 () Bool)

(assert (= bs!791488 (and d!1360224 b!4461018)))

(assert (=> bs!791488 (= (= lt!1652257 acc!957) (= lambda!161771 lambda!161769))))

(assert (=> bs!791488 (= (= lt!1652257 lt!1652264) (= lambda!161771 lambda!161770))))

(assert (=> d!1360224 true))

(declare-fun bm!310595 () Bool)

(declare-fun call!310600 () Unit!86787)

(declare-fun lemmaContainsAllItsOwnKeys!256 (ListMap!3213) Unit!86787)

(assert (=> bm!310595 (= call!310600 (lemmaContainsAllItsOwnKeys!256 acc!957))))

(declare-fun b!4461015 () Bool)

(declare-fun e!2777868 () Bool)

(assert (=> b!4461015 (= e!2777868 (invariantList!907 (toList!3958 lt!1652257)))))

(assert (=> d!1360224 e!2777868))

(declare-fun res!1849947 () Bool)

(assert (=> d!1360224 (=> (not res!1849947) (not e!2777868))))

(declare-fun forall!9917 (List!50291 Int) Bool)

(assert (=> d!1360224 (= res!1849947 (forall!9917 l!12755 lambda!161771))))

(declare-fun e!2777867 () ListMap!3213)

(assert (=> d!1360224 (= lt!1652257 e!2777867)))

(declare-fun c!759220 () Bool)

(assert (=> d!1360224 (= c!759220 ((_ is Nil!50167) l!12755))))

(assert (=> d!1360224 (noDuplicateKeys!986 l!12755)))

(assert (=> d!1360224 (= (addToMapMapFromBucket!565 l!12755 acc!957) lt!1652257)))

(declare-fun b!4461016 () Bool)

(declare-fun res!1849949 () Bool)

(assert (=> b!4461016 (=> (not res!1849949) (not e!2777868))))

(assert (=> b!4461016 (= res!1849949 (forall!9917 (toList!3958 acc!957) lambda!161771))))

(assert (=> b!4461017 (= e!2777867 acc!957)))

(declare-fun lt!1652260 () Unit!86787)

(assert (=> b!4461017 (= lt!1652260 call!310600)))

(declare-fun call!310601 () Bool)

(assert (=> b!4461017 call!310601))

(declare-fun lt!1652271 () Unit!86787)

(assert (=> b!4461017 (= lt!1652271 lt!1652260)))

(declare-fun call!310602 () Bool)

(assert (=> b!4461017 call!310602))

(declare-fun lt!1652253 () Unit!86787)

(declare-fun Unit!86812 () Unit!86787)

(assert (=> b!4461017 (= lt!1652253 Unit!86812)))

(assert (=> b!4461018 (= e!2777867 lt!1652264)))

(declare-fun lt!1652267 () ListMap!3213)

(assert (=> b!4461018 (= lt!1652267 (+!1339 acc!957 (h!55912 l!12755)))))

(assert (=> b!4461018 (= lt!1652264 (addToMapMapFromBucket!565 (t!357241 l!12755) (+!1339 acc!957 (h!55912 l!12755))))))

(declare-fun lt!1652261 () Unit!86787)

(assert (=> b!4461018 (= lt!1652261 call!310600)))

(assert (=> b!4461018 (forall!9917 (toList!3958 acc!957) lambda!161769)))

(declare-fun lt!1652258 () Unit!86787)

(assert (=> b!4461018 (= lt!1652258 lt!1652261)))

(assert (=> b!4461018 call!310601))

(declare-fun lt!1652255 () Unit!86787)

(declare-fun Unit!86813 () Unit!86787)

(assert (=> b!4461018 (= lt!1652255 Unit!86813)))

(assert (=> b!4461018 (forall!9917 (t!357241 l!12755) lambda!161770)))

(declare-fun lt!1652262 () Unit!86787)

(declare-fun Unit!86814 () Unit!86787)

(assert (=> b!4461018 (= lt!1652262 Unit!86814)))

(declare-fun lt!1652252 () Unit!86787)

(declare-fun Unit!86815 () Unit!86787)

(assert (=> b!4461018 (= lt!1652252 Unit!86815)))

(declare-fun lt!1652265 () Unit!86787)

(declare-fun forallContained!2206 (List!50291 Int tuple2!50336) Unit!86787)

(assert (=> b!4461018 (= lt!1652265 (forallContained!2206 (toList!3958 lt!1652267) lambda!161770 (h!55912 l!12755)))))

(assert (=> b!4461018 (contains!12673 lt!1652267 (_1!28462 (h!55912 l!12755)))))

(declare-fun lt!1652270 () Unit!86787)

(declare-fun Unit!86816 () Unit!86787)

(assert (=> b!4461018 (= lt!1652270 Unit!86816)))

(assert (=> b!4461018 (contains!12673 lt!1652264 (_1!28462 (h!55912 l!12755)))))

(declare-fun lt!1652254 () Unit!86787)

(declare-fun Unit!86817 () Unit!86787)

(assert (=> b!4461018 (= lt!1652254 Unit!86817)))

(assert (=> b!4461018 (forall!9917 l!12755 lambda!161770)))

(declare-fun lt!1652268 () Unit!86787)

(declare-fun Unit!86818 () Unit!86787)

(assert (=> b!4461018 (= lt!1652268 Unit!86818)))

(assert (=> b!4461018 call!310602))

(declare-fun lt!1652269 () Unit!86787)

(declare-fun Unit!86819 () Unit!86787)

(assert (=> b!4461018 (= lt!1652269 Unit!86819)))

(declare-fun lt!1652263 () Unit!86787)

(declare-fun Unit!86820 () Unit!86787)

(assert (=> b!4461018 (= lt!1652263 Unit!86820)))

(declare-fun lt!1652259 () Unit!86787)

(declare-fun addForallContainsKeyThenBeforeAdding!255 (ListMap!3213 ListMap!3213 K!11570 V!11816) Unit!86787)

(assert (=> b!4461018 (= lt!1652259 (addForallContainsKeyThenBeforeAdding!255 acc!957 lt!1652264 (_1!28462 (h!55912 l!12755)) (_2!28462 (h!55912 l!12755))))))

(assert (=> b!4461018 (forall!9917 (toList!3958 acc!957) lambda!161770)))

(declare-fun lt!1652256 () Unit!86787)

(assert (=> b!4461018 (= lt!1652256 lt!1652259)))

(assert (=> b!4461018 (forall!9917 (toList!3958 acc!957) lambda!161770)))

(declare-fun lt!1652266 () Unit!86787)

(declare-fun Unit!86821 () Unit!86787)

(assert (=> b!4461018 (= lt!1652266 Unit!86821)))

(declare-fun res!1849948 () Bool)

(assert (=> b!4461018 (= res!1849948 (forall!9917 l!12755 lambda!161770))))

(declare-fun e!2777869 () Bool)

(assert (=> b!4461018 (=> (not res!1849948) (not e!2777869))))

(assert (=> b!4461018 e!2777869))

(declare-fun lt!1652272 () Unit!86787)

(declare-fun Unit!86822 () Unit!86787)

(assert (=> b!4461018 (= lt!1652272 Unit!86822)))

(declare-fun b!4461019 () Bool)

(assert (=> b!4461019 (= e!2777869 (forall!9917 (toList!3958 acc!957) lambda!161770))))

(declare-fun bm!310596 () Bool)

(assert (=> bm!310596 (= call!310602 (forall!9917 (ite c!759220 (toList!3958 acc!957) (toList!3958 lt!1652267)) (ite c!759220 lambda!161768 lambda!161770)))))

(declare-fun bm!310597 () Bool)

(assert (=> bm!310597 (= call!310601 (forall!9917 (ite c!759220 (toList!3958 acc!957) (toList!3958 lt!1652267)) (ite c!759220 lambda!161768 lambda!161770)))))

(assert (= (and d!1360224 c!759220) b!4461017))

(assert (= (and d!1360224 (not c!759220)) b!4461018))

(assert (= (and b!4461018 res!1849948) b!4461019))

(assert (= (or b!4461017 b!4461018) bm!310596))

(assert (= (or b!4461017 b!4461018) bm!310597))

(assert (= (or b!4461017 b!4461018) bm!310595))

(assert (= (and d!1360224 res!1849947) b!4461016))

(assert (= (and b!4461016 res!1849949) b!4461015))

(declare-fun m!5164053 () Bool)

(assert (=> b!4461016 m!5164053))

(declare-fun m!5164055 () Bool)

(assert (=> d!1360224 m!5164055))

(assert (=> d!1360224 m!5163863))

(declare-fun m!5164057 () Bool)

(assert (=> b!4461015 m!5164057))

(declare-fun m!5164059 () Bool)

(assert (=> bm!310597 m!5164059))

(declare-fun m!5164061 () Bool)

(assert (=> bm!310595 m!5164061))

(declare-fun m!5164063 () Bool)

(assert (=> b!4461019 m!5164063))

(assert (=> bm!310596 m!5164059))

(assert (=> b!4461018 m!5164063))

(declare-fun m!5164065 () Bool)

(assert (=> b!4461018 m!5164065))

(declare-fun m!5164067 () Bool)

(assert (=> b!4461018 m!5164067))

(declare-fun m!5164069 () Bool)

(assert (=> b!4461018 m!5164069))

(assert (=> b!4461018 m!5163857))

(assert (=> b!4461018 m!5164063))

(declare-fun m!5164071 () Bool)

(assert (=> b!4461018 m!5164071))

(assert (=> b!4461018 m!5164065))

(declare-fun m!5164073 () Bool)

(assert (=> b!4461018 m!5164073))

(declare-fun m!5164075 () Bool)

(assert (=> b!4461018 m!5164075))

(declare-fun m!5164077 () Bool)

(assert (=> b!4461018 m!5164077))

(assert (=> b!4461018 m!5163857))

(declare-fun m!5164079 () Bool)

(assert (=> b!4461018 m!5164079))

(assert (=> b!4460852 d!1360224))

(declare-fun e!2777872 () Bool)

(declare-fun b!4461026 () Bool)

(declare-fun tp!1335710 () Bool)

(assert (=> b!4461026 (= e!2777872 (and tp_is_empty!27165 tp_is_empty!27167 tp!1335710))))

(assert (=> b!4460855 (= tp!1335703 e!2777872)))

(assert (= (and b!4460855 ((_ is Cons!50167) (t!357241 l!12755))) b!4461026))

(declare-fun e!2777873 () Bool)

(declare-fun tp!1335711 () Bool)

(declare-fun b!4461027 () Bool)

(assert (=> b!4461027 (= e!2777873 (and tp_is_empty!27165 tp_is_empty!27167 tp!1335711))))

(assert (=> b!4460849 (= tp!1335702 e!2777873)))

(assert (= (and b!4460849 ((_ is Cons!50167) (toList!3958 acc!957))) b!4461027))

(check-sat (not d!1360222) (not b!4460941) (not b!4461016) (not b!4460929) (not b!4460930) (not b!4460910) (not bm!310595) (not b!4460918) (not b!4460920) (not bm!310575) (not d!1360216) (not b!4461015) (not b!4460922) (not b!4461026) (not b!4460907) (not b!4460917) (not b!4460861) (not b!4460938) (not bm!310597) tp_is_empty!27165 (not b!4460942) (not bm!310596) (not b!4461019) (not b!4460860) (not d!1360214) (not b!4460943) (not b!4460912) (not b!4460913) (not b!4460911) (not d!1360208) (not bm!310576) (not b!4460916) (not b!4460937) (not b!4460909) (not b!4461027) (not d!1360224) (not b!4460940) (not b!4460921) (not bm!310577) (not b!4460908) (not d!1360218) (not b!4460936) tp_is_empty!27167 (not b!4461018) (not b!4460939) (not d!1360210) (not b!4460919))
(check-sat)

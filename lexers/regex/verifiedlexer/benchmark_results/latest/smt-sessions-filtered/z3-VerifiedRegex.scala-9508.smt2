; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!502466 () Bool)

(assert start!502466)

(declare-fun b!4834023 () Bool)

(declare-fun e!3020873 () Bool)

(declare-fun e!3020872 () Bool)

(assert (=> b!4834023 (= e!3020873 (not e!3020872))))

(declare-fun res!2059298 () Bool)

(assert (=> b!4834023 (=> res!2059298 e!3020872)))

(declare-datatypes ((K!16829 0))(
  ( (K!16830 (val!21769 Int)) )
))
(declare-datatypes ((V!17075 0))(
  ( (V!17076 (val!21770 Int)) )
))
(declare-datatypes ((tuple2!58424 0))(
  ( (tuple2!58425 (_1!32506 K!16829) (_2!32506 V!17075)) )
))
(declare-datatypes ((List!55237 0))(
  ( (Nil!55113) (Cons!55113 (h!61547 tuple2!58424) (t!362733 List!55237)) )
))
(declare-datatypes ((ListMap!6985 0))(
  ( (ListMap!6986 (toList!7588 List!55237)) )
))
(declare-fun acc!1183 () ListMap!6985)

(declare-fun key!5666 () K!16829)

(declare-fun contains!18931 (ListMap!6985 K!16829) Bool)

(assert (=> b!4834023 (= res!2059298 (contains!18931 acc!1183 key!5666))))

(declare-fun lt!1979807 () ListMap!6985)

(declare-fun e!3020875 () Bool)

(assert (=> b!4834023 (= (contains!18931 lt!1979807 key!5666) e!3020875)))

(declare-fun res!2059299 () Bool)

(assert (=> b!4834023 (=> res!2059299 e!3020875)))

(declare-fun lt!1979808 () Bool)

(assert (=> b!4834023 (= res!2059299 lt!1979808)))

(declare-fun l!14180 () List!55237)

(declare-fun containsKey!4477 (List!55237 K!16829) Bool)

(assert (=> b!4834023 (= lt!1979808 (containsKey!4477 (t!362733 l!14180) key!5666))))

(declare-datatypes ((Unit!144315 0))(
  ( (Unit!144316) )
))
(declare-fun lt!1979806 () Unit!144315)

(declare-fun lt!1979809 () ListMap!6985)

(declare-fun lemmaAddToMapFromBucketContainsIIFInAccOrL!70 (List!55237 ListMap!6985 K!16829) Unit!144315)

(assert (=> b!4834023 (= lt!1979806 (lemmaAddToMapFromBucketContainsIIFInAccOrL!70 (t!362733 l!14180) lt!1979809 key!5666))))

(declare-fun addToMapMapFromBucket!1857 (List!55237 ListMap!6985) ListMap!6985)

(assert (=> b!4834023 (= lt!1979807 (addToMapMapFromBucket!1857 (t!362733 l!14180) lt!1979809))))

(declare-fun +!2581 (ListMap!6985 tuple2!58424) ListMap!6985)

(assert (=> b!4834023 (= lt!1979809 (+!2581 acc!1183 (h!61547 l!14180)))))

(declare-fun b!4834024 () Bool)

(declare-fun res!2059301 () Bool)

(assert (=> b!4834024 (=> (not res!2059301) (not e!3020873))))

(get-info :version)

(assert (=> b!4834024 (= res!2059301 (not ((_ is Nil!55113) l!14180)))))

(declare-fun b!4834025 () Bool)

(assert (=> b!4834025 (= e!3020875 (contains!18931 lt!1979809 key!5666))))

(declare-fun tp_is_empty!34691 () Bool)

(declare-fun tp_is_empty!34689 () Bool)

(declare-fun b!4834026 () Bool)

(declare-fun tp!1363177 () Bool)

(declare-fun e!3020871 () Bool)

(assert (=> b!4834026 (= e!3020871 (and tp_is_empty!34689 tp_is_empty!34691 tp!1363177))))

(declare-fun res!2059300 () Bool)

(assert (=> start!502466 (=> (not res!2059300) (not e!3020873))))

(declare-fun noDuplicateKeys!2502 (List!55237) Bool)

(assert (=> start!502466 (= res!2059300 (noDuplicateKeys!2502 l!14180))))

(assert (=> start!502466 e!3020873))

(assert (=> start!502466 e!3020871))

(declare-fun e!3020874 () Bool)

(declare-fun inv!70729 (ListMap!6985) Bool)

(assert (=> start!502466 (and (inv!70729 acc!1183) e!3020874)))

(assert (=> start!502466 tp_is_empty!34689))

(declare-fun b!4834027 () Bool)

(assert (=> b!4834027 (= e!3020872 (= (contains!18931 (addToMapMapFromBucket!1857 l!14180 acc!1183) key!5666) (containsKey!4477 l!14180 key!5666)))))

(declare-fun b!4834028 () Bool)

(declare-fun res!2059297 () Bool)

(assert (=> b!4834028 (=> res!2059297 e!3020872)))

(assert (=> b!4834028 (= res!2059297 (or (= (_1!32506 (h!61547 l!14180)) key!5666) (not lt!1979808)))))

(declare-fun b!4834029 () Bool)

(declare-fun tp!1363178 () Bool)

(assert (=> b!4834029 (= e!3020874 tp!1363178)))

(assert (= (and start!502466 res!2059300) b!4834024))

(assert (= (and b!4834024 res!2059301) b!4834023))

(assert (= (and b!4834023 (not res!2059299)) b!4834025))

(assert (= (and b!4834023 (not res!2059298)) b!4834028))

(assert (= (and b!4834028 (not res!2059297)) b!4834027))

(assert (= (and start!502466 ((_ is Cons!55113) l!14180)) b!4834026))

(assert (= start!502466 b!4834029))

(declare-fun m!5828758 () Bool)

(assert (=> b!4834023 m!5828758))

(declare-fun m!5828760 () Bool)

(assert (=> b!4834023 m!5828760))

(declare-fun m!5828762 () Bool)

(assert (=> b!4834023 m!5828762))

(declare-fun m!5828764 () Bool)

(assert (=> b!4834023 m!5828764))

(declare-fun m!5828766 () Bool)

(assert (=> b!4834023 m!5828766))

(declare-fun m!5828768 () Bool)

(assert (=> b!4834023 m!5828768))

(declare-fun m!5828770 () Bool)

(assert (=> b!4834025 m!5828770))

(declare-fun m!5828772 () Bool)

(assert (=> start!502466 m!5828772))

(declare-fun m!5828774 () Bool)

(assert (=> start!502466 m!5828774))

(declare-fun m!5828776 () Bool)

(assert (=> b!4834027 m!5828776))

(assert (=> b!4834027 m!5828776))

(declare-fun m!5828778 () Bool)

(assert (=> b!4834027 m!5828778))

(declare-fun m!5828780 () Bool)

(assert (=> b!4834027 m!5828780))

(check-sat tp_is_empty!34691 (not b!4834029) tp_is_empty!34689 (not b!4834026) (not b!4834027) (not start!502466) (not b!4834025) (not b!4834023))
(check-sat)
(get-model)

(declare-fun bm!336916 () Bool)

(declare-fun call!336921 () Bool)

(declare-datatypes ((List!55239 0))(
  ( (Nil!55115) (Cons!55115 (h!61549 K!16829) (t!362735 List!55239)) )
))
(declare-fun e!3020905 () List!55239)

(declare-fun contains!18933 (List!55239 K!16829) Bool)

(assert (=> bm!336916 (= call!336921 (contains!18933 e!3020905 key!5666))))

(declare-fun c!823664 () Bool)

(declare-fun c!823663 () Bool)

(assert (=> bm!336916 (= c!823664 c!823663)))

(declare-fun d!1549945 () Bool)

(declare-fun e!3020901 () Bool)

(assert (=> d!1549945 e!3020901))

(declare-fun res!2059316 () Bool)

(assert (=> d!1549945 (=> res!2059316 e!3020901)))

(declare-fun e!3020902 () Bool)

(assert (=> d!1549945 (= res!2059316 e!3020902)))

(declare-fun res!2059314 () Bool)

(assert (=> d!1549945 (=> (not res!2059314) (not e!3020902))))

(declare-fun lt!1979846 () Bool)

(assert (=> d!1549945 (= res!2059314 (not lt!1979846))))

(declare-fun lt!1979842 () Bool)

(assert (=> d!1549945 (= lt!1979846 lt!1979842)))

(declare-fun lt!1979844 () Unit!144315)

(declare-fun e!3020903 () Unit!144315)

(assert (=> d!1549945 (= lt!1979844 e!3020903)))

(assert (=> d!1549945 (= c!823663 lt!1979842)))

(declare-fun containsKey!4479 (List!55237 K!16829) Bool)

(assert (=> d!1549945 (= lt!1979842 (containsKey!4479 (toList!7588 lt!1979809) key!5666))))

(assert (=> d!1549945 (= (contains!18931 lt!1979809 key!5666) lt!1979846)))

(declare-fun b!4834066 () Bool)

(declare-fun e!3020900 () Bool)

(declare-fun keys!20323 (ListMap!6985) List!55239)

(assert (=> b!4834066 (= e!3020900 (contains!18933 (keys!20323 lt!1979809) key!5666))))

(declare-fun b!4834067 () Bool)

(declare-fun getKeysList!1186 (List!55237) List!55239)

(assert (=> b!4834067 (= e!3020905 (getKeysList!1186 (toList!7588 lt!1979809)))))

(declare-fun b!4834068 () Bool)

(declare-fun e!3020904 () Unit!144315)

(declare-fun Unit!144321 () Unit!144315)

(assert (=> b!4834068 (= e!3020904 Unit!144321)))

(declare-fun b!4834069 () Bool)

(assert (=> b!4834069 (= e!3020902 (not (contains!18933 (keys!20323 lt!1979809) key!5666)))))

(declare-fun b!4834070 () Bool)

(declare-fun lt!1979845 () Unit!144315)

(assert (=> b!4834070 (= e!3020903 lt!1979845)))

(declare-fun lt!1979847 () Unit!144315)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2456 (List!55237 K!16829) Unit!144315)

(assert (=> b!4834070 (= lt!1979847 (lemmaContainsKeyImpliesGetValueByKeyDefined!2456 (toList!7588 lt!1979809) key!5666))))

(declare-datatypes ((Option!13548 0))(
  ( (None!13547) (Some!13547 (v!49248 V!17075)) )
))
(declare-fun isDefined!10659 (Option!13548) Bool)

(declare-fun getValueByKey!2675 (List!55237 K!16829) Option!13548)

(assert (=> b!4834070 (isDefined!10659 (getValueByKey!2675 (toList!7588 lt!1979809) key!5666))))

(declare-fun lt!1979843 () Unit!144315)

(assert (=> b!4834070 (= lt!1979843 lt!1979847)))

(declare-fun lemmaInListThenGetKeysListContains!1181 (List!55237 K!16829) Unit!144315)

(assert (=> b!4834070 (= lt!1979845 (lemmaInListThenGetKeysListContains!1181 (toList!7588 lt!1979809) key!5666))))

(assert (=> b!4834070 call!336921))

(declare-fun b!4834071 () Bool)

(assert (=> b!4834071 (= e!3020905 (keys!20323 lt!1979809))))

(declare-fun b!4834072 () Bool)

(assert (=> b!4834072 false))

(declare-fun lt!1979848 () Unit!144315)

(declare-fun lt!1979849 () Unit!144315)

(assert (=> b!4834072 (= lt!1979848 lt!1979849)))

(assert (=> b!4834072 (containsKey!4479 (toList!7588 lt!1979809) key!5666)))

(declare-fun lemmaInGetKeysListThenContainsKey!1186 (List!55237 K!16829) Unit!144315)

(assert (=> b!4834072 (= lt!1979849 (lemmaInGetKeysListThenContainsKey!1186 (toList!7588 lt!1979809) key!5666))))

(declare-fun Unit!144323 () Unit!144315)

(assert (=> b!4834072 (= e!3020904 Unit!144323)))

(declare-fun b!4834073 () Bool)

(assert (=> b!4834073 (= e!3020901 e!3020900)))

(declare-fun res!2059315 () Bool)

(assert (=> b!4834073 (=> (not res!2059315) (not e!3020900))))

(assert (=> b!4834073 (= res!2059315 (isDefined!10659 (getValueByKey!2675 (toList!7588 lt!1979809) key!5666)))))

(declare-fun b!4834074 () Bool)

(assert (=> b!4834074 (= e!3020903 e!3020904)))

(declare-fun c!823662 () Bool)

(assert (=> b!4834074 (= c!823662 call!336921)))

(assert (= (and d!1549945 c!823663) b!4834070))

(assert (= (and d!1549945 (not c!823663)) b!4834074))

(assert (= (and b!4834074 c!823662) b!4834072))

(assert (= (and b!4834074 (not c!823662)) b!4834068))

(assert (= (or b!4834070 b!4834074) bm!336916))

(assert (= (and bm!336916 c!823664) b!4834067))

(assert (= (and bm!336916 (not c!823664)) b!4834071))

(assert (= (and d!1549945 res!2059314) b!4834069))

(assert (= (and d!1549945 (not res!2059316)) b!4834073))

(assert (= (and b!4834073 res!2059315) b!4834066))

(declare-fun m!5828782 () Bool)

(assert (=> b!4834073 m!5828782))

(assert (=> b!4834073 m!5828782))

(declare-fun m!5828784 () Bool)

(assert (=> b!4834073 m!5828784))

(declare-fun m!5828786 () Bool)

(assert (=> b!4834066 m!5828786))

(assert (=> b!4834066 m!5828786))

(declare-fun m!5828788 () Bool)

(assert (=> b!4834066 m!5828788))

(declare-fun m!5828790 () Bool)

(assert (=> b!4834070 m!5828790))

(assert (=> b!4834070 m!5828782))

(assert (=> b!4834070 m!5828782))

(assert (=> b!4834070 m!5828784))

(declare-fun m!5828792 () Bool)

(assert (=> b!4834070 m!5828792))

(assert (=> b!4834069 m!5828786))

(assert (=> b!4834069 m!5828786))

(assert (=> b!4834069 m!5828788))

(declare-fun m!5828794 () Bool)

(assert (=> b!4834072 m!5828794))

(declare-fun m!5828796 () Bool)

(assert (=> b!4834072 m!5828796))

(declare-fun m!5828798 () Bool)

(assert (=> b!4834067 m!5828798))

(assert (=> d!1549945 m!5828794))

(assert (=> b!4834071 m!5828786))

(declare-fun m!5828800 () Bool)

(assert (=> bm!336916 m!5828800))

(assert (=> b!4834025 d!1549945))

(declare-fun d!1549949 () Bool)

(declare-fun res!2059324 () Bool)

(declare-fun e!3020916 () Bool)

(assert (=> d!1549949 (=> res!2059324 e!3020916)))

(assert (=> d!1549949 (= res!2059324 (not ((_ is Cons!55113) l!14180)))))

(assert (=> d!1549949 (= (noDuplicateKeys!2502 l!14180) e!3020916)))

(declare-fun b!4834088 () Bool)

(declare-fun e!3020917 () Bool)

(assert (=> b!4834088 (= e!3020916 e!3020917)))

(declare-fun res!2059325 () Bool)

(assert (=> b!4834088 (=> (not res!2059325) (not e!3020917))))

(assert (=> b!4834088 (= res!2059325 (not (containsKey!4477 (t!362733 l!14180) (_1!32506 (h!61547 l!14180)))))))

(declare-fun b!4834089 () Bool)

(assert (=> b!4834089 (= e!3020917 (noDuplicateKeys!2502 (t!362733 l!14180)))))

(assert (= (and d!1549949 (not res!2059324)) b!4834088))

(assert (= (and b!4834088 res!2059325) b!4834089))

(declare-fun m!5828822 () Bool)

(assert (=> b!4834088 m!5828822))

(declare-fun m!5828824 () Bool)

(assert (=> b!4834089 m!5828824))

(assert (=> start!502466 d!1549949))

(declare-fun d!1549953 () Bool)

(declare-fun invariantList!1843 (List!55237) Bool)

(assert (=> d!1549953 (= (inv!70729 acc!1183) (invariantList!1843 (toList!7588 acc!1183)))))

(declare-fun bs!1167288 () Bool)

(assert (= bs!1167288 d!1549953))

(declare-fun m!5828828 () Bool)

(assert (=> bs!1167288 m!5828828))

(assert (=> start!502466 d!1549953))

(declare-fun e!3020926 () Bool)

(declare-fun d!1549955 () Bool)

(assert (=> d!1549955 (= (contains!18931 (addToMapMapFromBucket!1857 (t!362733 l!14180) lt!1979809) key!5666) e!3020926)))

(declare-fun res!2059331 () Bool)

(assert (=> d!1549955 (=> res!2059331 e!3020926)))

(assert (=> d!1549955 (= res!2059331 (containsKey!4477 (t!362733 l!14180) key!5666))))

(declare-fun lt!1979868 () Unit!144315)

(declare-fun choose!35309 (List!55237 ListMap!6985 K!16829) Unit!144315)

(assert (=> d!1549955 (= lt!1979868 (choose!35309 (t!362733 l!14180) lt!1979809 key!5666))))

(assert (=> d!1549955 (noDuplicateKeys!2502 (t!362733 l!14180))))

(assert (=> d!1549955 (= (lemmaAddToMapFromBucketContainsIIFInAccOrL!70 (t!362733 l!14180) lt!1979809 key!5666) lt!1979868)))

(declare-fun b!4834101 () Bool)

(assert (=> b!4834101 (= e!3020926 (contains!18931 lt!1979809 key!5666))))

(assert (= (and d!1549955 (not res!2059331)) b!4834101))

(assert (=> d!1549955 m!5828760))

(assert (=> d!1549955 m!5828758))

(declare-fun m!5828848 () Bool)

(assert (=> d!1549955 m!5828848))

(declare-fun m!5828850 () Bool)

(assert (=> d!1549955 m!5828850))

(assert (=> d!1549955 m!5828824))

(assert (=> d!1549955 m!5828758))

(assert (=> b!4834101 m!5828770))

(assert (=> b!4834023 d!1549955))

(declare-fun bm!336919 () Bool)

(declare-fun call!336924 () Bool)

(declare-fun e!3020932 () List!55239)

(assert (=> bm!336919 (= call!336924 (contains!18933 e!3020932 key!5666))))

(declare-fun c!823673 () Bool)

(declare-fun c!823672 () Bool)

(assert (=> bm!336919 (= c!823673 c!823672)))

(declare-fun d!1549959 () Bool)

(declare-fun e!3020928 () Bool)

(assert (=> d!1549959 e!3020928))

(declare-fun res!2059334 () Bool)

(assert (=> d!1549959 (=> res!2059334 e!3020928)))

(declare-fun e!3020929 () Bool)

(assert (=> d!1549959 (= res!2059334 e!3020929)))

(declare-fun res!2059332 () Bool)

(assert (=> d!1549959 (=> (not res!2059332) (not e!3020929))))

(declare-fun lt!1979873 () Bool)

(assert (=> d!1549959 (= res!2059332 (not lt!1979873))))

(declare-fun lt!1979869 () Bool)

(assert (=> d!1549959 (= lt!1979873 lt!1979869)))

(declare-fun lt!1979871 () Unit!144315)

(declare-fun e!3020930 () Unit!144315)

(assert (=> d!1549959 (= lt!1979871 e!3020930)))

(assert (=> d!1549959 (= c!823672 lt!1979869)))

(assert (=> d!1549959 (= lt!1979869 (containsKey!4479 (toList!7588 lt!1979807) key!5666))))

(assert (=> d!1549959 (= (contains!18931 lt!1979807 key!5666) lt!1979873)))

(declare-fun b!4834102 () Bool)

(declare-fun e!3020927 () Bool)

(assert (=> b!4834102 (= e!3020927 (contains!18933 (keys!20323 lt!1979807) key!5666))))

(declare-fun b!4834103 () Bool)

(assert (=> b!4834103 (= e!3020932 (getKeysList!1186 (toList!7588 lt!1979807)))))

(declare-fun b!4834104 () Bool)

(declare-fun e!3020931 () Unit!144315)

(declare-fun Unit!144334 () Unit!144315)

(assert (=> b!4834104 (= e!3020931 Unit!144334)))

(declare-fun b!4834105 () Bool)

(assert (=> b!4834105 (= e!3020929 (not (contains!18933 (keys!20323 lt!1979807) key!5666)))))

(declare-fun b!4834106 () Bool)

(declare-fun lt!1979872 () Unit!144315)

(assert (=> b!4834106 (= e!3020930 lt!1979872)))

(declare-fun lt!1979874 () Unit!144315)

(assert (=> b!4834106 (= lt!1979874 (lemmaContainsKeyImpliesGetValueByKeyDefined!2456 (toList!7588 lt!1979807) key!5666))))

(assert (=> b!4834106 (isDefined!10659 (getValueByKey!2675 (toList!7588 lt!1979807) key!5666))))

(declare-fun lt!1979870 () Unit!144315)

(assert (=> b!4834106 (= lt!1979870 lt!1979874)))

(assert (=> b!4834106 (= lt!1979872 (lemmaInListThenGetKeysListContains!1181 (toList!7588 lt!1979807) key!5666))))

(assert (=> b!4834106 call!336924))

(declare-fun b!4834107 () Bool)

(assert (=> b!4834107 (= e!3020932 (keys!20323 lt!1979807))))

(declare-fun b!4834108 () Bool)

(assert (=> b!4834108 false))

(declare-fun lt!1979875 () Unit!144315)

(declare-fun lt!1979876 () Unit!144315)

(assert (=> b!4834108 (= lt!1979875 lt!1979876)))

(assert (=> b!4834108 (containsKey!4479 (toList!7588 lt!1979807) key!5666)))

(assert (=> b!4834108 (= lt!1979876 (lemmaInGetKeysListThenContainsKey!1186 (toList!7588 lt!1979807) key!5666))))

(declare-fun Unit!144335 () Unit!144315)

(assert (=> b!4834108 (= e!3020931 Unit!144335)))

(declare-fun b!4834109 () Bool)

(assert (=> b!4834109 (= e!3020928 e!3020927)))

(declare-fun res!2059333 () Bool)

(assert (=> b!4834109 (=> (not res!2059333) (not e!3020927))))

(assert (=> b!4834109 (= res!2059333 (isDefined!10659 (getValueByKey!2675 (toList!7588 lt!1979807) key!5666)))))

(declare-fun b!4834110 () Bool)

(assert (=> b!4834110 (= e!3020930 e!3020931)))

(declare-fun c!823671 () Bool)

(assert (=> b!4834110 (= c!823671 call!336924)))

(assert (= (and d!1549959 c!823672) b!4834106))

(assert (= (and d!1549959 (not c!823672)) b!4834110))

(assert (= (and b!4834110 c!823671) b!4834108))

(assert (= (and b!4834110 (not c!823671)) b!4834104))

(assert (= (or b!4834106 b!4834110) bm!336919))

(assert (= (and bm!336919 c!823673) b!4834103))

(assert (= (and bm!336919 (not c!823673)) b!4834107))

(assert (= (and d!1549959 res!2059332) b!4834105))

(assert (= (and d!1549959 (not res!2059334)) b!4834109))

(assert (= (and b!4834109 res!2059333) b!4834102))

(declare-fun m!5828852 () Bool)

(assert (=> b!4834109 m!5828852))

(assert (=> b!4834109 m!5828852))

(declare-fun m!5828854 () Bool)

(assert (=> b!4834109 m!5828854))

(declare-fun m!5828856 () Bool)

(assert (=> b!4834102 m!5828856))

(assert (=> b!4834102 m!5828856))

(declare-fun m!5828858 () Bool)

(assert (=> b!4834102 m!5828858))

(declare-fun m!5828860 () Bool)

(assert (=> b!4834106 m!5828860))

(assert (=> b!4834106 m!5828852))

(assert (=> b!4834106 m!5828852))

(assert (=> b!4834106 m!5828854))

(declare-fun m!5828862 () Bool)

(assert (=> b!4834106 m!5828862))

(assert (=> b!4834105 m!5828856))

(assert (=> b!4834105 m!5828856))

(assert (=> b!4834105 m!5828858))

(declare-fun m!5828864 () Bool)

(assert (=> b!4834108 m!5828864))

(declare-fun m!5828866 () Bool)

(assert (=> b!4834108 m!5828866))

(declare-fun m!5828868 () Bool)

(assert (=> b!4834103 m!5828868))

(assert (=> d!1549959 m!5828864))

(assert (=> b!4834107 m!5828856))

(declare-fun m!5828870 () Bool)

(assert (=> bm!336919 m!5828870))

(assert (=> b!4834023 d!1549959))

(declare-fun bm!336920 () Bool)

(declare-fun call!336925 () Bool)

(declare-fun e!3020938 () List!55239)

(assert (=> bm!336920 (= call!336925 (contains!18933 e!3020938 key!5666))))

(declare-fun c!823676 () Bool)

(declare-fun c!823675 () Bool)

(assert (=> bm!336920 (= c!823676 c!823675)))

(declare-fun d!1549961 () Bool)

(declare-fun e!3020934 () Bool)

(assert (=> d!1549961 e!3020934))

(declare-fun res!2059337 () Bool)

(assert (=> d!1549961 (=> res!2059337 e!3020934)))

(declare-fun e!3020935 () Bool)

(assert (=> d!1549961 (= res!2059337 e!3020935)))

(declare-fun res!2059335 () Bool)

(assert (=> d!1549961 (=> (not res!2059335) (not e!3020935))))

(declare-fun lt!1979881 () Bool)

(assert (=> d!1549961 (= res!2059335 (not lt!1979881))))

(declare-fun lt!1979877 () Bool)

(assert (=> d!1549961 (= lt!1979881 lt!1979877)))

(declare-fun lt!1979879 () Unit!144315)

(declare-fun e!3020936 () Unit!144315)

(assert (=> d!1549961 (= lt!1979879 e!3020936)))

(assert (=> d!1549961 (= c!823675 lt!1979877)))

(assert (=> d!1549961 (= lt!1979877 (containsKey!4479 (toList!7588 acc!1183) key!5666))))

(assert (=> d!1549961 (= (contains!18931 acc!1183 key!5666) lt!1979881)))

(declare-fun b!4834111 () Bool)

(declare-fun e!3020933 () Bool)

(assert (=> b!4834111 (= e!3020933 (contains!18933 (keys!20323 acc!1183) key!5666))))

(declare-fun b!4834112 () Bool)

(assert (=> b!4834112 (= e!3020938 (getKeysList!1186 (toList!7588 acc!1183)))))

(declare-fun b!4834113 () Bool)

(declare-fun e!3020937 () Unit!144315)

(declare-fun Unit!144337 () Unit!144315)

(assert (=> b!4834113 (= e!3020937 Unit!144337)))

(declare-fun b!4834114 () Bool)

(assert (=> b!4834114 (= e!3020935 (not (contains!18933 (keys!20323 acc!1183) key!5666)))))

(declare-fun b!4834115 () Bool)

(declare-fun lt!1979880 () Unit!144315)

(assert (=> b!4834115 (= e!3020936 lt!1979880)))

(declare-fun lt!1979882 () Unit!144315)

(assert (=> b!4834115 (= lt!1979882 (lemmaContainsKeyImpliesGetValueByKeyDefined!2456 (toList!7588 acc!1183) key!5666))))

(assert (=> b!4834115 (isDefined!10659 (getValueByKey!2675 (toList!7588 acc!1183) key!5666))))

(declare-fun lt!1979878 () Unit!144315)

(assert (=> b!4834115 (= lt!1979878 lt!1979882)))

(assert (=> b!4834115 (= lt!1979880 (lemmaInListThenGetKeysListContains!1181 (toList!7588 acc!1183) key!5666))))

(assert (=> b!4834115 call!336925))

(declare-fun b!4834116 () Bool)

(assert (=> b!4834116 (= e!3020938 (keys!20323 acc!1183))))

(declare-fun b!4834117 () Bool)

(assert (=> b!4834117 false))

(declare-fun lt!1979883 () Unit!144315)

(declare-fun lt!1979884 () Unit!144315)

(assert (=> b!4834117 (= lt!1979883 lt!1979884)))

(assert (=> b!4834117 (containsKey!4479 (toList!7588 acc!1183) key!5666)))

(assert (=> b!4834117 (= lt!1979884 (lemmaInGetKeysListThenContainsKey!1186 (toList!7588 acc!1183) key!5666))))

(declare-fun Unit!144339 () Unit!144315)

(assert (=> b!4834117 (= e!3020937 Unit!144339)))

(declare-fun b!4834118 () Bool)

(assert (=> b!4834118 (= e!3020934 e!3020933)))

(declare-fun res!2059336 () Bool)

(assert (=> b!4834118 (=> (not res!2059336) (not e!3020933))))

(assert (=> b!4834118 (= res!2059336 (isDefined!10659 (getValueByKey!2675 (toList!7588 acc!1183) key!5666)))))

(declare-fun b!4834119 () Bool)

(assert (=> b!4834119 (= e!3020936 e!3020937)))

(declare-fun c!823674 () Bool)

(assert (=> b!4834119 (= c!823674 call!336925)))

(assert (= (and d!1549961 c!823675) b!4834115))

(assert (= (and d!1549961 (not c!823675)) b!4834119))

(assert (= (and b!4834119 c!823674) b!4834117))

(assert (= (and b!4834119 (not c!823674)) b!4834113))

(assert (= (or b!4834115 b!4834119) bm!336920))

(assert (= (and bm!336920 c!823676) b!4834112))

(assert (= (and bm!336920 (not c!823676)) b!4834116))

(assert (= (and d!1549961 res!2059335) b!4834114))

(assert (= (and d!1549961 (not res!2059337)) b!4834118))

(assert (= (and b!4834118 res!2059336) b!4834111))

(declare-fun m!5828872 () Bool)

(assert (=> b!4834118 m!5828872))

(assert (=> b!4834118 m!5828872))

(declare-fun m!5828874 () Bool)

(assert (=> b!4834118 m!5828874))

(declare-fun m!5828876 () Bool)

(assert (=> b!4834111 m!5828876))

(assert (=> b!4834111 m!5828876))

(declare-fun m!5828878 () Bool)

(assert (=> b!4834111 m!5828878))

(declare-fun m!5828880 () Bool)

(assert (=> b!4834115 m!5828880))

(assert (=> b!4834115 m!5828872))

(assert (=> b!4834115 m!5828872))

(assert (=> b!4834115 m!5828874))

(declare-fun m!5828882 () Bool)

(assert (=> b!4834115 m!5828882))

(assert (=> b!4834114 m!5828876))

(assert (=> b!4834114 m!5828876))

(assert (=> b!4834114 m!5828878))

(declare-fun m!5828884 () Bool)

(assert (=> b!4834117 m!5828884))

(declare-fun m!5828886 () Bool)

(assert (=> b!4834117 m!5828886))

(declare-fun m!5828888 () Bool)

(assert (=> b!4834112 m!5828888))

(assert (=> d!1549961 m!5828884))

(assert (=> b!4834116 m!5828876))

(declare-fun m!5828890 () Bool)

(assert (=> bm!336920 m!5828890))

(assert (=> b!4834023 d!1549961))

(declare-fun b!4834200 () Bool)

(assert (=> b!4834200 true))

(declare-fun bs!1167305 () Bool)

(declare-fun b!4834199 () Bool)

(assert (= bs!1167305 (and b!4834199 b!4834200)))

(declare-fun lambda!238930 () Int)

(declare-fun lambda!238929 () Int)

(assert (=> bs!1167305 (= lambda!238930 lambda!238929)))

(assert (=> b!4834199 true))

(declare-fun lt!1980044 () ListMap!6985)

(declare-fun lambda!238931 () Int)

(assert (=> bs!1167305 (= (= lt!1980044 lt!1979809) (= lambda!238931 lambda!238929))))

(assert (=> b!4834199 (= (= lt!1980044 lt!1979809) (= lambda!238931 lambda!238930))))

(assert (=> b!4834199 true))

(declare-fun bs!1167306 () Bool)

(declare-fun d!1549963 () Bool)

(assert (= bs!1167306 (and d!1549963 b!4834200)))

(declare-fun lt!1980062 () ListMap!6985)

(declare-fun lambda!238932 () Int)

(assert (=> bs!1167306 (= (= lt!1980062 lt!1979809) (= lambda!238932 lambda!238929))))

(declare-fun bs!1167307 () Bool)

(assert (= bs!1167307 (and d!1549963 b!4834199)))

(assert (=> bs!1167307 (= (= lt!1980062 lt!1979809) (= lambda!238932 lambda!238930))))

(assert (=> bs!1167307 (= (= lt!1980062 lt!1980044) (= lambda!238932 lambda!238931))))

(assert (=> d!1549963 true))

(declare-fun bm!336941 () Bool)

(declare-fun call!336946 () Bool)

(declare-fun c!823689 () Bool)

(declare-fun forall!12703 (List!55237 Int) Bool)

(assert (=> bm!336941 (= call!336946 (forall!12703 (ite c!823689 (toList!7588 lt!1979809) (t!362733 (t!362733 l!14180))) (ite c!823689 lambda!238929 lambda!238931)))))

(declare-fun e!3020994 () ListMap!6985)

(assert (=> b!4834199 (= e!3020994 lt!1980044)))

(declare-fun lt!1980056 () ListMap!6985)

(assert (=> b!4834199 (= lt!1980056 (+!2581 lt!1979809 (h!61547 (t!362733 l!14180))))))

(assert (=> b!4834199 (= lt!1980044 (addToMapMapFromBucket!1857 (t!362733 (t!362733 l!14180)) (+!2581 lt!1979809 (h!61547 (t!362733 l!14180)))))))

(declare-fun lt!1980052 () Unit!144315)

(declare-fun call!336947 () Unit!144315)

(assert (=> b!4834199 (= lt!1980052 call!336947)))

(assert (=> b!4834199 (forall!12703 (toList!7588 lt!1979809) lambda!238930)))

(declare-fun lt!1980048 () Unit!144315)

(assert (=> b!4834199 (= lt!1980048 lt!1980052)))

(assert (=> b!4834199 (forall!12703 (toList!7588 lt!1980056) lambda!238931)))

(declare-fun lt!1980058 () Unit!144315)

(declare-fun Unit!144342 () Unit!144315)

(assert (=> b!4834199 (= lt!1980058 Unit!144342)))

(assert (=> b!4834199 call!336946))

(declare-fun lt!1980051 () Unit!144315)

(declare-fun Unit!144343 () Unit!144315)

(assert (=> b!4834199 (= lt!1980051 Unit!144343)))

(declare-fun lt!1980059 () Unit!144315)

(declare-fun Unit!144344 () Unit!144315)

(assert (=> b!4834199 (= lt!1980059 Unit!144344)))

(declare-fun lt!1980055 () Unit!144315)

(declare-fun forallContained!4433 (List!55237 Int tuple2!58424) Unit!144315)

(assert (=> b!4834199 (= lt!1980055 (forallContained!4433 (toList!7588 lt!1980056) lambda!238931 (h!61547 (t!362733 l!14180))))))

(assert (=> b!4834199 (contains!18931 lt!1980056 (_1!32506 (h!61547 (t!362733 l!14180))))))

(declare-fun lt!1980046 () Unit!144315)

(declare-fun Unit!144345 () Unit!144315)

(assert (=> b!4834199 (= lt!1980046 Unit!144345)))

(assert (=> b!4834199 (contains!18931 lt!1980044 (_1!32506 (h!61547 (t!362733 l!14180))))))

(declare-fun lt!1980053 () Unit!144315)

(declare-fun Unit!144346 () Unit!144315)

(assert (=> b!4834199 (= lt!1980053 Unit!144346)))

(assert (=> b!4834199 (forall!12703 (t!362733 l!14180) lambda!238931)))

(declare-fun lt!1980061 () Unit!144315)

(declare-fun Unit!144347 () Unit!144315)

(assert (=> b!4834199 (= lt!1980061 Unit!144347)))

(assert (=> b!4834199 (forall!12703 (toList!7588 lt!1980056) lambda!238931)))

(declare-fun lt!1980043 () Unit!144315)

(declare-fun Unit!144348 () Unit!144315)

(assert (=> b!4834199 (= lt!1980043 Unit!144348)))

(declare-fun lt!1980057 () Unit!144315)

(declare-fun Unit!144349 () Unit!144315)

(assert (=> b!4834199 (= lt!1980057 Unit!144349)))

(declare-fun lt!1980042 () Unit!144315)

(declare-fun addForallContainsKeyThenBeforeAdding!1020 (ListMap!6985 ListMap!6985 K!16829 V!17075) Unit!144315)

(assert (=> b!4834199 (= lt!1980042 (addForallContainsKeyThenBeforeAdding!1020 lt!1979809 lt!1980044 (_1!32506 (h!61547 (t!362733 l!14180))) (_2!32506 (h!61547 (t!362733 l!14180)))))))

(declare-fun call!336948 () Bool)

(assert (=> b!4834199 call!336948))

(declare-fun lt!1980049 () Unit!144315)

(assert (=> b!4834199 (= lt!1980049 lt!1980042)))

(assert (=> b!4834199 (forall!12703 (toList!7588 lt!1979809) lambda!238931)))

(declare-fun lt!1980047 () Unit!144315)

(declare-fun Unit!144350 () Unit!144315)

(assert (=> b!4834199 (= lt!1980047 Unit!144350)))

(declare-fun res!2059385 () Bool)

(assert (=> b!4834199 (= res!2059385 (forall!12703 (t!362733 l!14180) lambda!238931))))

(declare-fun e!3020995 () Bool)

(assert (=> b!4834199 (=> (not res!2059385) (not e!3020995))))

(assert (=> b!4834199 e!3020995))

(declare-fun lt!1980045 () Unit!144315)

(declare-fun Unit!144351 () Unit!144315)

(assert (=> b!4834199 (= lt!1980045 Unit!144351)))

(assert (=> b!4834200 (= e!3020994 lt!1979809)))

(declare-fun lt!1980060 () Unit!144315)

(assert (=> b!4834200 (= lt!1980060 call!336947)))

(assert (=> b!4834200 call!336948))

(declare-fun lt!1980050 () Unit!144315)

(assert (=> b!4834200 (= lt!1980050 lt!1980060)))

(assert (=> b!4834200 call!336946))

(declare-fun lt!1980054 () Unit!144315)

(declare-fun Unit!144352 () Unit!144315)

(assert (=> b!4834200 (= lt!1980054 Unit!144352)))

(declare-fun e!3020993 () Bool)

(assert (=> d!1549963 e!3020993))

(declare-fun res!2059387 () Bool)

(assert (=> d!1549963 (=> (not res!2059387) (not e!3020993))))

(assert (=> d!1549963 (= res!2059387 (forall!12703 (t!362733 l!14180) lambda!238932))))

(assert (=> d!1549963 (= lt!1980062 e!3020994)))

(assert (=> d!1549963 (= c!823689 ((_ is Nil!55113) (t!362733 l!14180)))))

(assert (=> d!1549963 (noDuplicateKeys!2502 (t!362733 l!14180))))

(assert (=> d!1549963 (= (addToMapMapFromBucket!1857 (t!362733 l!14180) lt!1979809) lt!1980062)))

(declare-fun bm!336942 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!1021 (ListMap!6985) Unit!144315)

(assert (=> bm!336942 (= call!336947 (lemmaContainsAllItsOwnKeys!1021 lt!1979809))))

(declare-fun b!4834201 () Bool)

(assert (=> b!4834201 (= e!3020993 (invariantList!1843 (toList!7588 lt!1980062)))))

(declare-fun bm!336943 () Bool)

(assert (=> bm!336943 (= call!336948 (forall!12703 (toList!7588 lt!1979809) (ite c!823689 lambda!238929 lambda!238931)))))

(declare-fun b!4834202 () Bool)

(assert (=> b!4834202 (= e!3020995 (forall!12703 (toList!7588 lt!1979809) lambda!238931))))

(declare-fun b!4834203 () Bool)

(declare-fun res!2059386 () Bool)

(assert (=> b!4834203 (=> (not res!2059386) (not e!3020993))))

(assert (=> b!4834203 (= res!2059386 (forall!12703 (toList!7588 lt!1979809) lambda!238932))))

(assert (= (and d!1549963 c!823689) b!4834200))

(assert (= (and d!1549963 (not c!823689)) b!4834199))

(assert (= (and b!4834199 res!2059385) b!4834202))

(assert (= (or b!4834200 b!4834199) bm!336941))

(assert (= (or b!4834200 b!4834199) bm!336943))

(assert (= (or b!4834200 b!4834199) bm!336942))

(assert (= (and d!1549963 res!2059387) b!4834203))

(assert (= (and b!4834203 res!2059386) b!4834201))

(declare-fun m!5829022 () Bool)

(assert (=> b!4834199 m!5829022))

(declare-fun m!5829024 () Bool)

(assert (=> b!4834199 m!5829024))

(declare-fun m!5829026 () Bool)

(assert (=> b!4834199 m!5829026))

(declare-fun m!5829028 () Bool)

(assert (=> b!4834199 m!5829028))

(declare-fun m!5829030 () Bool)

(assert (=> b!4834199 m!5829030))

(declare-fun m!5829032 () Bool)

(assert (=> b!4834199 m!5829032))

(assert (=> b!4834199 m!5829030))

(assert (=> b!4834199 m!5829024))

(assert (=> b!4834199 m!5829022))

(declare-fun m!5829034 () Bool)

(assert (=> b!4834199 m!5829034))

(declare-fun m!5829036 () Bool)

(assert (=> b!4834199 m!5829036))

(declare-fun m!5829038 () Bool)

(assert (=> b!4834199 m!5829038))

(declare-fun m!5829040 () Bool)

(assert (=> b!4834199 m!5829040))

(declare-fun m!5829042 () Bool)

(assert (=> bm!336941 m!5829042))

(assert (=> b!4834202 m!5829028))

(declare-fun m!5829044 () Bool)

(assert (=> b!4834203 m!5829044))

(declare-fun m!5829046 () Bool)

(assert (=> bm!336943 m!5829046))

(declare-fun m!5829048 () Bool)

(assert (=> bm!336942 m!5829048))

(declare-fun m!5829050 () Bool)

(assert (=> b!4834201 m!5829050))

(declare-fun m!5829052 () Bool)

(assert (=> d!1549963 m!5829052))

(assert (=> d!1549963 m!5828824))

(assert (=> b!4834023 d!1549963))

(declare-fun d!1549983 () Bool)

(declare-fun e!3020998 () Bool)

(assert (=> d!1549983 e!3020998))

(declare-fun res!2059392 () Bool)

(assert (=> d!1549983 (=> (not res!2059392) (not e!3020998))))

(declare-fun lt!1980074 () ListMap!6985)

(assert (=> d!1549983 (= res!2059392 (contains!18931 lt!1980074 (_1!32506 (h!61547 l!14180))))))

(declare-fun lt!1980073 () List!55237)

(assert (=> d!1549983 (= lt!1980074 (ListMap!6986 lt!1980073))))

(declare-fun lt!1980071 () Unit!144315)

(declare-fun lt!1980072 () Unit!144315)

(assert (=> d!1549983 (= lt!1980071 lt!1980072)))

(assert (=> d!1549983 (= (getValueByKey!2675 lt!1980073 (_1!32506 (h!61547 l!14180))) (Some!13547 (_2!32506 (h!61547 l!14180))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1245 (List!55237 K!16829 V!17075) Unit!144315)

(assert (=> d!1549983 (= lt!1980072 (lemmaContainsTupThenGetReturnValue!1245 lt!1980073 (_1!32506 (h!61547 l!14180)) (_2!32506 (h!61547 l!14180))))))

(declare-fun insertNoDuplicatedKeys!753 (List!55237 K!16829 V!17075) List!55237)

(assert (=> d!1549983 (= lt!1980073 (insertNoDuplicatedKeys!753 (toList!7588 acc!1183) (_1!32506 (h!61547 l!14180)) (_2!32506 (h!61547 l!14180))))))

(assert (=> d!1549983 (= (+!2581 acc!1183 (h!61547 l!14180)) lt!1980074)))

(declare-fun b!4834210 () Bool)

(declare-fun res!2059393 () Bool)

(assert (=> b!4834210 (=> (not res!2059393) (not e!3020998))))

(assert (=> b!4834210 (= res!2059393 (= (getValueByKey!2675 (toList!7588 lt!1980074) (_1!32506 (h!61547 l!14180))) (Some!13547 (_2!32506 (h!61547 l!14180)))))))

(declare-fun b!4834211 () Bool)

(declare-fun contains!18935 (List!55237 tuple2!58424) Bool)

(assert (=> b!4834211 (= e!3020998 (contains!18935 (toList!7588 lt!1980074) (h!61547 l!14180)))))

(assert (= (and d!1549983 res!2059392) b!4834210))

(assert (= (and b!4834210 res!2059393) b!4834211))

(declare-fun m!5829054 () Bool)

(assert (=> d!1549983 m!5829054))

(declare-fun m!5829056 () Bool)

(assert (=> d!1549983 m!5829056))

(declare-fun m!5829058 () Bool)

(assert (=> d!1549983 m!5829058))

(declare-fun m!5829060 () Bool)

(assert (=> d!1549983 m!5829060))

(declare-fun m!5829062 () Bool)

(assert (=> b!4834210 m!5829062))

(declare-fun m!5829064 () Bool)

(assert (=> b!4834211 m!5829064))

(assert (=> b!4834023 d!1549983))

(declare-fun d!1549985 () Bool)

(declare-fun res!2059398 () Bool)

(declare-fun e!3021003 () Bool)

(assert (=> d!1549985 (=> res!2059398 e!3021003)))

(assert (=> d!1549985 (= res!2059398 (and ((_ is Cons!55113) (t!362733 l!14180)) (= (_1!32506 (h!61547 (t!362733 l!14180))) key!5666)))))

(assert (=> d!1549985 (= (containsKey!4477 (t!362733 l!14180) key!5666) e!3021003)))

(declare-fun b!4834216 () Bool)

(declare-fun e!3021004 () Bool)

(assert (=> b!4834216 (= e!3021003 e!3021004)))

(declare-fun res!2059399 () Bool)

(assert (=> b!4834216 (=> (not res!2059399) (not e!3021004))))

(assert (=> b!4834216 (= res!2059399 ((_ is Cons!55113) (t!362733 l!14180)))))

(declare-fun b!4834217 () Bool)

(assert (=> b!4834217 (= e!3021004 (containsKey!4477 (t!362733 (t!362733 l!14180)) key!5666))))

(assert (= (and d!1549985 (not res!2059398)) b!4834216))

(assert (= (and b!4834216 res!2059399) b!4834217))

(declare-fun m!5829066 () Bool)

(assert (=> b!4834217 m!5829066))

(assert (=> b!4834023 d!1549985))

(declare-fun bm!336944 () Bool)

(declare-fun call!336949 () Bool)

(declare-fun e!3021010 () List!55239)

(assert (=> bm!336944 (= call!336949 (contains!18933 e!3021010 key!5666))))

(declare-fun c!823692 () Bool)

(declare-fun c!823691 () Bool)

(assert (=> bm!336944 (= c!823692 c!823691)))

(declare-fun d!1549987 () Bool)

(declare-fun e!3021006 () Bool)

(assert (=> d!1549987 e!3021006))

(declare-fun res!2059402 () Bool)

(assert (=> d!1549987 (=> res!2059402 e!3021006)))

(declare-fun e!3021007 () Bool)

(assert (=> d!1549987 (= res!2059402 e!3021007)))

(declare-fun res!2059400 () Bool)

(assert (=> d!1549987 (=> (not res!2059400) (not e!3021007))))

(declare-fun lt!1980079 () Bool)

(assert (=> d!1549987 (= res!2059400 (not lt!1980079))))

(declare-fun lt!1980075 () Bool)

(assert (=> d!1549987 (= lt!1980079 lt!1980075)))

(declare-fun lt!1980077 () Unit!144315)

(declare-fun e!3021008 () Unit!144315)

(assert (=> d!1549987 (= lt!1980077 e!3021008)))

(assert (=> d!1549987 (= c!823691 lt!1980075)))

(assert (=> d!1549987 (= lt!1980075 (containsKey!4479 (toList!7588 (addToMapMapFromBucket!1857 l!14180 acc!1183)) key!5666))))

(assert (=> d!1549987 (= (contains!18931 (addToMapMapFromBucket!1857 l!14180 acc!1183) key!5666) lt!1980079)))

(declare-fun b!4834218 () Bool)

(declare-fun e!3021005 () Bool)

(assert (=> b!4834218 (= e!3021005 (contains!18933 (keys!20323 (addToMapMapFromBucket!1857 l!14180 acc!1183)) key!5666))))

(declare-fun b!4834219 () Bool)

(assert (=> b!4834219 (= e!3021010 (getKeysList!1186 (toList!7588 (addToMapMapFromBucket!1857 l!14180 acc!1183))))))

(declare-fun b!4834220 () Bool)

(declare-fun e!3021009 () Unit!144315)

(declare-fun Unit!144354 () Unit!144315)

(assert (=> b!4834220 (= e!3021009 Unit!144354)))

(declare-fun b!4834221 () Bool)

(assert (=> b!4834221 (= e!3021007 (not (contains!18933 (keys!20323 (addToMapMapFromBucket!1857 l!14180 acc!1183)) key!5666)))))

(declare-fun b!4834222 () Bool)

(declare-fun lt!1980078 () Unit!144315)

(assert (=> b!4834222 (= e!3021008 lt!1980078)))

(declare-fun lt!1980080 () Unit!144315)

(assert (=> b!4834222 (= lt!1980080 (lemmaContainsKeyImpliesGetValueByKeyDefined!2456 (toList!7588 (addToMapMapFromBucket!1857 l!14180 acc!1183)) key!5666))))

(assert (=> b!4834222 (isDefined!10659 (getValueByKey!2675 (toList!7588 (addToMapMapFromBucket!1857 l!14180 acc!1183)) key!5666))))

(declare-fun lt!1980076 () Unit!144315)

(assert (=> b!4834222 (= lt!1980076 lt!1980080)))

(assert (=> b!4834222 (= lt!1980078 (lemmaInListThenGetKeysListContains!1181 (toList!7588 (addToMapMapFromBucket!1857 l!14180 acc!1183)) key!5666))))

(assert (=> b!4834222 call!336949))

(declare-fun b!4834223 () Bool)

(assert (=> b!4834223 (= e!3021010 (keys!20323 (addToMapMapFromBucket!1857 l!14180 acc!1183)))))

(declare-fun b!4834224 () Bool)

(assert (=> b!4834224 false))

(declare-fun lt!1980081 () Unit!144315)

(declare-fun lt!1980082 () Unit!144315)

(assert (=> b!4834224 (= lt!1980081 lt!1980082)))

(assert (=> b!4834224 (containsKey!4479 (toList!7588 (addToMapMapFromBucket!1857 l!14180 acc!1183)) key!5666)))

(assert (=> b!4834224 (= lt!1980082 (lemmaInGetKeysListThenContainsKey!1186 (toList!7588 (addToMapMapFromBucket!1857 l!14180 acc!1183)) key!5666))))

(declare-fun Unit!144358 () Unit!144315)

(assert (=> b!4834224 (= e!3021009 Unit!144358)))

(declare-fun b!4834225 () Bool)

(assert (=> b!4834225 (= e!3021006 e!3021005)))

(declare-fun res!2059401 () Bool)

(assert (=> b!4834225 (=> (not res!2059401) (not e!3021005))))

(assert (=> b!4834225 (= res!2059401 (isDefined!10659 (getValueByKey!2675 (toList!7588 (addToMapMapFromBucket!1857 l!14180 acc!1183)) key!5666)))))

(declare-fun b!4834226 () Bool)

(assert (=> b!4834226 (= e!3021008 e!3021009)))

(declare-fun c!823690 () Bool)

(assert (=> b!4834226 (= c!823690 call!336949)))

(assert (= (and d!1549987 c!823691) b!4834222))

(assert (= (and d!1549987 (not c!823691)) b!4834226))

(assert (= (and b!4834226 c!823690) b!4834224))

(assert (= (and b!4834226 (not c!823690)) b!4834220))

(assert (= (or b!4834222 b!4834226) bm!336944))

(assert (= (and bm!336944 c!823692) b!4834219))

(assert (= (and bm!336944 (not c!823692)) b!4834223))

(assert (= (and d!1549987 res!2059400) b!4834221))

(assert (= (and d!1549987 (not res!2059402)) b!4834225))

(assert (= (and b!4834225 res!2059401) b!4834218))

(declare-fun m!5829068 () Bool)

(assert (=> b!4834225 m!5829068))

(assert (=> b!4834225 m!5829068))

(declare-fun m!5829070 () Bool)

(assert (=> b!4834225 m!5829070))

(assert (=> b!4834218 m!5828776))

(declare-fun m!5829072 () Bool)

(assert (=> b!4834218 m!5829072))

(assert (=> b!4834218 m!5829072))

(declare-fun m!5829074 () Bool)

(assert (=> b!4834218 m!5829074))

(declare-fun m!5829076 () Bool)

(assert (=> b!4834222 m!5829076))

(assert (=> b!4834222 m!5829068))

(assert (=> b!4834222 m!5829068))

(assert (=> b!4834222 m!5829070))

(declare-fun m!5829078 () Bool)

(assert (=> b!4834222 m!5829078))

(assert (=> b!4834221 m!5828776))

(assert (=> b!4834221 m!5829072))

(assert (=> b!4834221 m!5829072))

(assert (=> b!4834221 m!5829074))

(declare-fun m!5829080 () Bool)

(assert (=> b!4834224 m!5829080))

(declare-fun m!5829082 () Bool)

(assert (=> b!4834224 m!5829082))

(declare-fun m!5829084 () Bool)

(assert (=> b!4834219 m!5829084))

(assert (=> d!1549987 m!5829080))

(assert (=> b!4834223 m!5828776))

(assert (=> b!4834223 m!5829072))

(declare-fun m!5829086 () Bool)

(assert (=> bm!336944 m!5829086))

(assert (=> b!4834027 d!1549987))

(declare-fun bs!1167308 () Bool)

(declare-fun b!4834228 () Bool)

(assert (= bs!1167308 (and b!4834228 b!4834200)))

(declare-fun lambda!238933 () Int)

(assert (=> bs!1167308 (= (= acc!1183 lt!1979809) (= lambda!238933 lambda!238929))))

(declare-fun bs!1167309 () Bool)

(assert (= bs!1167309 (and b!4834228 b!4834199)))

(assert (=> bs!1167309 (= (= acc!1183 lt!1979809) (= lambda!238933 lambda!238930))))

(assert (=> bs!1167309 (= (= acc!1183 lt!1980044) (= lambda!238933 lambda!238931))))

(declare-fun bs!1167310 () Bool)

(assert (= bs!1167310 (and b!4834228 d!1549963)))

(assert (=> bs!1167310 (= (= acc!1183 lt!1980062) (= lambda!238933 lambda!238932))))

(assert (=> b!4834228 true))

(declare-fun bs!1167311 () Bool)

(declare-fun b!4834227 () Bool)

(assert (= bs!1167311 (and b!4834227 b!4834228)))

(declare-fun lambda!238934 () Int)

(assert (=> bs!1167311 (= lambda!238934 lambda!238933)))

(declare-fun bs!1167312 () Bool)

(assert (= bs!1167312 (and b!4834227 b!4834199)))

(assert (=> bs!1167312 (= (= acc!1183 lt!1979809) (= lambda!238934 lambda!238930))))

(assert (=> bs!1167312 (= (= acc!1183 lt!1980044) (= lambda!238934 lambda!238931))))

(declare-fun bs!1167313 () Bool)

(assert (= bs!1167313 (and b!4834227 d!1549963)))

(assert (=> bs!1167313 (= (= acc!1183 lt!1980062) (= lambda!238934 lambda!238932))))

(declare-fun bs!1167314 () Bool)

(assert (= bs!1167314 (and b!4834227 b!4834200)))

(assert (=> bs!1167314 (= (= acc!1183 lt!1979809) (= lambda!238934 lambda!238929))))

(assert (=> b!4834227 true))

(declare-fun lt!1980085 () ListMap!6985)

(declare-fun lambda!238935 () Int)

(assert (=> bs!1167311 (= (= lt!1980085 acc!1183) (= lambda!238935 lambda!238933))))

(assert (=> bs!1167312 (= (= lt!1980085 lt!1979809) (= lambda!238935 lambda!238930))))

(assert (=> bs!1167312 (= (= lt!1980085 lt!1980044) (= lambda!238935 lambda!238931))))

(assert (=> bs!1167313 (= (= lt!1980085 lt!1980062) (= lambda!238935 lambda!238932))))

(assert (=> bs!1167314 (= (= lt!1980085 lt!1979809) (= lambda!238935 lambda!238929))))

(assert (=> b!4834227 (= (= lt!1980085 acc!1183) (= lambda!238935 lambda!238934))))

(assert (=> b!4834227 true))

(declare-fun bs!1167315 () Bool)

(declare-fun d!1549989 () Bool)

(assert (= bs!1167315 (and d!1549989 b!4834228)))

(declare-fun lt!1980103 () ListMap!6985)

(declare-fun lambda!238936 () Int)

(assert (=> bs!1167315 (= (= lt!1980103 acc!1183) (= lambda!238936 lambda!238933))))

(declare-fun bs!1167316 () Bool)

(assert (= bs!1167316 (and d!1549989 b!4834199)))

(assert (=> bs!1167316 (= (= lt!1980103 lt!1979809) (= lambda!238936 lambda!238930))))

(assert (=> bs!1167316 (= (= lt!1980103 lt!1980044) (= lambda!238936 lambda!238931))))

(declare-fun bs!1167317 () Bool)

(assert (= bs!1167317 (and d!1549989 b!4834227)))

(assert (=> bs!1167317 (= (= lt!1980103 lt!1980085) (= lambda!238936 lambda!238935))))

(declare-fun bs!1167318 () Bool)

(assert (= bs!1167318 (and d!1549989 d!1549963)))

(assert (=> bs!1167318 (= (= lt!1980103 lt!1980062) (= lambda!238936 lambda!238932))))

(declare-fun bs!1167319 () Bool)

(assert (= bs!1167319 (and d!1549989 b!4834200)))

(assert (=> bs!1167319 (= (= lt!1980103 lt!1979809) (= lambda!238936 lambda!238929))))

(assert (=> bs!1167317 (= (= lt!1980103 acc!1183) (= lambda!238936 lambda!238934))))

(assert (=> d!1549989 true))

(declare-fun c!823693 () Bool)

(declare-fun bm!336945 () Bool)

(declare-fun call!336950 () Bool)

(assert (=> bm!336945 (= call!336950 (forall!12703 (ite c!823693 (toList!7588 acc!1183) (t!362733 l!14180)) (ite c!823693 lambda!238933 lambda!238935)))))

(declare-fun e!3021012 () ListMap!6985)

(assert (=> b!4834227 (= e!3021012 lt!1980085)))

(declare-fun lt!1980097 () ListMap!6985)

(assert (=> b!4834227 (= lt!1980097 (+!2581 acc!1183 (h!61547 l!14180)))))

(assert (=> b!4834227 (= lt!1980085 (addToMapMapFromBucket!1857 (t!362733 l!14180) (+!2581 acc!1183 (h!61547 l!14180))))))

(declare-fun lt!1980093 () Unit!144315)

(declare-fun call!336951 () Unit!144315)

(assert (=> b!4834227 (= lt!1980093 call!336951)))

(assert (=> b!4834227 (forall!12703 (toList!7588 acc!1183) lambda!238934)))

(declare-fun lt!1980089 () Unit!144315)

(assert (=> b!4834227 (= lt!1980089 lt!1980093)))

(assert (=> b!4834227 (forall!12703 (toList!7588 lt!1980097) lambda!238935)))

(declare-fun lt!1980099 () Unit!144315)

(declare-fun Unit!144366 () Unit!144315)

(assert (=> b!4834227 (= lt!1980099 Unit!144366)))

(assert (=> b!4834227 call!336950))

(declare-fun lt!1980092 () Unit!144315)

(declare-fun Unit!144367 () Unit!144315)

(assert (=> b!4834227 (= lt!1980092 Unit!144367)))

(declare-fun lt!1980100 () Unit!144315)

(declare-fun Unit!144368 () Unit!144315)

(assert (=> b!4834227 (= lt!1980100 Unit!144368)))

(declare-fun lt!1980096 () Unit!144315)

(assert (=> b!4834227 (= lt!1980096 (forallContained!4433 (toList!7588 lt!1980097) lambda!238935 (h!61547 l!14180)))))

(assert (=> b!4834227 (contains!18931 lt!1980097 (_1!32506 (h!61547 l!14180)))))

(declare-fun lt!1980087 () Unit!144315)

(declare-fun Unit!144369 () Unit!144315)

(assert (=> b!4834227 (= lt!1980087 Unit!144369)))

(assert (=> b!4834227 (contains!18931 lt!1980085 (_1!32506 (h!61547 l!14180)))))

(declare-fun lt!1980094 () Unit!144315)

(declare-fun Unit!144370 () Unit!144315)

(assert (=> b!4834227 (= lt!1980094 Unit!144370)))

(assert (=> b!4834227 (forall!12703 l!14180 lambda!238935)))

(declare-fun lt!1980102 () Unit!144315)

(declare-fun Unit!144371 () Unit!144315)

(assert (=> b!4834227 (= lt!1980102 Unit!144371)))

(assert (=> b!4834227 (forall!12703 (toList!7588 lt!1980097) lambda!238935)))

(declare-fun lt!1980084 () Unit!144315)

(declare-fun Unit!144372 () Unit!144315)

(assert (=> b!4834227 (= lt!1980084 Unit!144372)))

(declare-fun lt!1980098 () Unit!144315)

(declare-fun Unit!144373 () Unit!144315)

(assert (=> b!4834227 (= lt!1980098 Unit!144373)))

(declare-fun lt!1980083 () Unit!144315)

(assert (=> b!4834227 (= lt!1980083 (addForallContainsKeyThenBeforeAdding!1020 acc!1183 lt!1980085 (_1!32506 (h!61547 l!14180)) (_2!32506 (h!61547 l!14180))))))

(declare-fun call!336952 () Bool)

(assert (=> b!4834227 call!336952))

(declare-fun lt!1980090 () Unit!144315)

(assert (=> b!4834227 (= lt!1980090 lt!1980083)))

(assert (=> b!4834227 (forall!12703 (toList!7588 acc!1183) lambda!238935)))

(declare-fun lt!1980088 () Unit!144315)

(declare-fun Unit!144374 () Unit!144315)

(assert (=> b!4834227 (= lt!1980088 Unit!144374)))

(declare-fun res!2059403 () Bool)

(assert (=> b!4834227 (= res!2059403 (forall!12703 l!14180 lambda!238935))))

(declare-fun e!3021013 () Bool)

(assert (=> b!4834227 (=> (not res!2059403) (not e!3021013))))

(assert (=> b!4834227 e!3021013))

(declare-fun lt!1980086 () Unit!144315)

(declare-fun Unit!144375 () Unit!144315)

(assert (=> b!4834227 (= lt!1980086 Unit!144375)))

(assert (=> b!4834228 (= e!3021012 acc!1183)))

(declare-fun lt!1980101 () Unit!144315)

(assert (=> b!4834228 (= lt!1980101 call!336951)))

(assert (=> b!4834228 call!336952))

(declare-fun lt!1980091 () Unit!144315)

(assert (=> b!4834228 (= lt!1980091 lt!1980101)))

(assert (=> b!4834228 call!336950))

(declare-fun lt!1980095 () Unit!144315)

(declare-fun Unit!144376 () Unit!144315)

(assert (=> b!4834228 (= lt!1980095 Unit!144376)))

(declare-fun e!3021011 () Bool)

(assert (=> d!1549989 e!3021011))

(declare-fun res!2059405 () Bool)

(assert (=> d!1549989 (=> (not res!2059405) (not e!3021011))))

(assert (=> d!1549989 (= res!2059405 (forall!12703 l!14180 lambda!238936))))

(assert (=> d!1549989 (= lt!1980103 e!3021012)))

(assert (=> d!1549989 (= c!823693 ((_ is Nil!55113) l!14180))))

(assert (=> d!1549989 (noDuplicateKeys!2502 l!14180)))

(assert (=> d!1549989 (= (addToMapMapFromBucket!1857 l!14180 acc!1183) lt!1980103)))

(declare-fun bm!336946 () Bool)

(assert (=> bm!336946 (= call!336951 (lemmaContainsAllItsOwnKeys!1021 acc!1183))))

(declare-fun b!4834229 () Bool)

(assert (=> b!4834229 (= e!3021011 (invariantList!1843 (toList!7588 lt!1980103)))))

(declare-fun bm!336947 () Bool)

(assert (=> bm!336947 (= call!336952 (forall!12703 (toList!7588 acc!1183) (ite c!823693 lambda!238933 lambda!238935)))))

(declare-fun b!4834230 () Bool)

(assert (=> b!4834230 (= e!3021013 (forall!12703 (toList!7588 acc!1183) lambda!238935))))

(declare-fun b!4834231 () Bool)

(declare-fun res!2059404 () Bool)

(assert (=> b!4834231 (=> (not res!2059404) (not e!3021011))))

(assert (=> b!4834231 (= res!2059404 (forall!12703 (toList!7588 acc!1183) lambda!238936))))

(assert (= (and d!1549989 c!823693) b!4834228))

(assert (= (and d!1549989 (not c!823693)) b!4834227))

(assert (= (and b!4834227 res!2059403) b!4834230))

(assert (= (or b!4834228 b!4834227) bm!336945))

(assert (= (or b!4834228 b!4834227) bm!336947))

(assert (= (or b!4834228 b!4834227) bm!336946))

(assert (= (and d!1549989 res!2059405) b!4834231))

(assert (= (and b!4834231 res!2059404) b!4834229))

(declare-fun m!5829088 () Bool)

(assert (=> b!4834227 m!5829088))

(declare-fun m!5829090 () Bool)

(assert (=> b!4834227 m!5829090))

(declare-fun m!5829092 () Bool)

(assert (=> b!4834227 m!5829092))

(declare-fun m!5829094 () Bool)

(assert (=> b!4834227 m!5829094))

(assert (=> b!4834227 m!5828762))

(declare-fun m!5829096 () Bool)

(assert (=> b!4834227 m!5829096))

(assert (=> b!4834227 m!5828762))

(assert (=> b!4834227 m!5829090))

(assert (=> b!4834227 m!5829088))

(declare-fun m!5829098 () Bool)

(assert (=> b!4834227 m!5829098))

(declare-fun m!5829100 () Bool)

(assert (=> b!4834227 m!5829100))

(declare-fun m!5829102 () Bool)

(assert (=> b!4834227 m!5829102))

(declare-fun m!5829104 () Bool)

(assert (=> b!4834227 m!5829104))

(declare-fun m!5829106 () Bool)

(assert (=> bm!336945 m!5829106))

(assert (=> b!4834230 m!5829094))

(declare-fun m!5829108 () Bool)

(assert (=> b!4834231 m!5829108))

(declare-fun m!5829110 () Bool)

(assert (=> bm!336947 m!5829110))

(declare-fun m!5829112 () Bool)

(assert (=> bm!336946 m!5829112))

(declare-fun m!5829114 () Bool)

(assert (=> b!4834229 m!5829114))

(declare-fun m!5829116 () Bool)

(assert (=> d!1549989 m!5829116))

(assert (=> d!1549989 m!5828772))

(assert (=> b!4834027 d!1549989))

(declare-fun d!1549991 () Bool)

(declare-fun res!2059406 () Bool)

(declare-fun e!3021014 () Bool)

(assert (=> d!1549991 (=> res!2059406 e!3021014)))

(assert (=> d!1549991 (= res!2059406 (and ((_ is Cons!55113) l!14180) (= (_1!32506 (h!61547 l!14180)) key!5666)))))

(assert (=> d!1549991 (= (containsKey!4477 l!14180 key!5666) e!3021014)))

(declare-fun b!4834232 () Bool)

(declare-fun e!3021015 () Bool)

(assert (=> b!4834232 (= e!3021014 e!3021015)))

(declare-fun res!2059407 () Bool)

(assert (=> b!4834232 (=> (not res!2059407) (not e!3021015))))

(assert (=> b!4834232 (= res!2059407 ((_ is Cons!55113) l!14180))))

(declare-fun b!4834233 () Bool)

(assert (=> b!4834233 (= e!3021015 (containsKey!4477 (t!362733 l!14180) key!5666))))

(assert (= (and d!1549991 (not res!2059406)) b!4834232))

(assert (= (and b!4834232 res!2059407) b!4834233))

(assert (=> b!4834233 m!5828760))

(assert (=> b!4834027 d!1549991))

(declare-fun e!3021018 () Bool)

(declare-fun b!4834238 () Bool)

(declare-fun tp!1363185 () Bool)

(assert (=> b!4834238 (= e!3021018 (and tp_is_empty!34689 tp_is_empty!34691 tp!1363185))))

(assert (=> b!4834029 (= tp!1363178 e!3021018)))

(assert (= (and b!4834029 ((_ is Cons!55113) (toList!7588 acc!1183))) b!4834238))

(declare-fun tp!1363186 () Bool)

(declare-fun b!4834239 () Bool)

(declare-fun e!3021019 () Bool)

(assert (=> b!4834239 (= e!3021019 (and tp_is_empty!34689 tp_is_empty!34691 tp!1363186))))

(assert (=> b!4834026 (= tp!1363177 e!3021019)))

(assert (= (and b!4834026 ((_ is Cons!55113) (t!362733 l!14180))) b!4834239))

(check-sat tp_is_empty!34691 (not b!4834211) (not b!4834105) (not b!4834217) (not b!4834103) (not bm!336943) (not bm!336946) (not bm!336945) (not b!4834067) (not bm!336942) (not b!4834231) (not b!4834102) (not b!4834210) (not b!4834073) (not b!4834230) (not b!4834089) (not b!4834199) (not d!1549983) (not bm!336947) (not b!4834203) tp_is_empty!34689 (not b!4834108) (not b!4834112) (not d!1549987) (not b!4834224) (not d!1549953) (not b!4834111) (not b!4834238) (not b!4834117) (not d!1549961) (not d!1549989) (not b!4834229) (not bm!336944) (not b!4834071) (not b!4834069) (not b!4834101) (not b!4834219) (not b!4834239) (not bm!336919) (not b!4834072) (not d!1549955) (not b!4834106) (not b!4834114) (not bm!336941) (not b!4834218) (not b!4834066) (not b!4834070) (not b!4834202) (not d!1549945) (not b!4834201) (not d!1549959) (not b!4834223) (not d!1549963) (not b!4834107) (not b!4834225) (not bm!336916) (not b!4834221) (not b!4834222) (not b!4834118) (not bm!336920) (not b!4834227) (not b!4834233) (not b!4834116) (not b!4834109) (not b!4834115) (not b!4834088))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!485820 () Bool)

(assert start!485820)

(declare-fun res!2016421 () Bool)

(declare-fun e!2965611 () Bool)

(assert (=> start!485820 (=> (not res!2016421) (not e!2965611))))

(declare-datatypes ((K!14595 0))(
  ( (K!14596 (val!19947 Int)) )
))
(declare-datatypes ((V!14841 0))(
  ( (V!14842 (val!19948 Int)) )
))
(declare-datatypes ((tuple2!54916 0))(
  ( (tuple2!54917 (_1!30752 K!14595) (_2!30752 V!14841)) )
))
(declare-datatypes ((List!53242 0))(
  ( (Nil!53118) (Cons!53118 (h!59515 tuple2!54916) (t!360586 List!53242)) )
))
(declare-fun l!13029 () List!53242)

(declare-fun key!4572 () K!14595)

(declare-fun containsKey!3584 (List!53242 K!14595) Bool)

(assert (=> start!485820 (= res!2016421 (not (containsKey!3584 l!13029 key!4572)))))

(assert (=> start!485820 e!2965611))

(declare-fun e!2965610 () Bool)

(assert (=> start!485820 e!2965610))

(declare-fun tp_is_empty!32005 () Bool)

(assert (=> start!485820 tp_is_empty!32005))

(declare-fun tp_is_empty!32007 () Bool)

(assert (=> start!485820 tp_is_empty!32007))

(declare-datatypes ((ListMap!5601 0))(
  ( (ListMap!5602 (toList!6146 List!53242)) )
))
(declare-fun lhm!63 () ListMap!5601)

(declare-fun e!2965612 () Bool)

(declare-fun inv!68465 (ListMap!5601) Bool)

(assert (=> start!485820 (and (inv!68465 lhm!63) e!2965612)))

(declare-fun tp!1350425 () Bool)

(declare-fun b!4753933 () Bool)

(assert (=> b!4753933 (= e!2965610 (and tp_is_empty!32005 tp_is_empty!32007 tp!1350425))))

(declare-fun b!4753934 () Bool)

(declare-fun res!2016423 () Bool)

(assert (=> b!4753934 (=> (not res!2016423) (not e!2965611))))

(get-info :version)

(assert (=> b!4753934 (= res!2016423 ((_ is Cons!53118) l!13029))))

(declare-fun b!4753935 () Bool)

(declare-fun tp!1350424 () Bool)

(assert (=> b!4753935 (= e!2965612 tp!1350424)))

(declare-fun b!4753936 () Bool)

(declare-fun res!2016422 () Bool)

(assert (=> b!4753936 (=> (not res!2016422) (not e!2965611))))

(declare-fun noDuplicateKeys!2178 (List!53242) Bool)

(assert (=> b!4753936 (= res!2016422 (noDuplicateKeys!2178 l!13029))))

(declare-fun b!4753937 () Bool)

(assert (=> b!4753937 (= e!2965611 (not (not (containsKey!3584 (t!360586 l!13029) key!4572))))))

(declare-fun lt!1920008 () tuple2!54916)

(declare-fun lt!1920009 () ListMap!5601)

(declare-fun eq!1243 (ListMap!5601 ListMap!5601) Bool)

(declare-fun +!2412 (ListMap!5601 tuple2!54916) ListMap!5601)

(assert (=> b!4753937 (eq!1243 (+!2412 lt!1920009 lt!1920008) (+!2412 (+!2412 lhm!63 lt!1920008) (h!59515 l!13029)))))

(declare-fun value!2966 () V!14841)

(assert (=> b!4753937 (= lt!1920008 (tuple2!54917 key!4572 value!2966))))

(declare-datatypes ((Unit!137036 0))(
  ( (Unit!137037) )
))
(declare-fun lt!1920007 () Unit!137036)

(declare-fun addCommutativeForDiffKeys!44 (ListMap!5601 K!14595 V!14841 K!14595 V!14841) Unit!137036)

(assert (=> b!4753937 (= lt!1920007 (addCommutativeForDiffKeys!44 lhm!63 (_1!30752 (h!59515 l!13029)) (_2!30752 (h!59515 l!13029)) key!4572 value!2966))))

(assert (=> b!4753937 (= lt!1920009 (+!2412 lhm!63 (h!59515 l!13029)))))

(assert (= (and start!485820 res!2016421) b!4753936))

(assert (= (and b!4753936 res!2016422) b!4753934))

(assert (= (and b!4753934 res!2016423) b!4753937))

(assert (= (and start!485820 ((_ is Cons!53118) l!13029)) b!4753933))

(assert (= start!485820 b!4753935))

(declare-fun m!5721747 () Bool)

(assert (=> start!485820 m!5721747))

(declare-fun m!5721749 () Bool)

(assert (=> start!485820 m!5721749))

(declare-fun m!5721751 () Bool)

(assert (=> b!4753936 m!5721751))

(declare-fun m!5721753 () Bool)

(assert (=> b!4753937 m!5721753))

(declare-fun m!5721755 () Bool)

(assert (=> b!4753937 m!5721755))

(declare-fun m!5721757 () Bool)

(assert (=> b!4753937 m!5721757))

(declare-fun m!5721759 () Bool)

(assert (=> b!4753937 m!5721759))

(declare-fun m!5721761 () Bool)

(assert (=> b!4753937 m!5721761))

(assert (=> b!4753937 m!5721755))

(assert (=> b!4753937 m!5721761))

(declare-fun m!5721763 () Bool)

(assert (=> b!4753937 m!5721763))

(assert (=> b!4753937 m!5721753))

(declare-fun m!5721765 () Bool)

(assert (=> b!4753937 m!5721765))

(check-sat tp_is_empty!32007 (not b!4753935) (not b!4753933) (not b!4753937) tp_is_empty!32005 (not b!4753936) (not start!485820))
(check-sat)
(get-model)

(declare-fun d!1520081 () Bool)

(declare-fun res!2016434 () Bool)

(declare-fun e!2965623 () Bool)

(assert (=> d!1520081 (=> res!2016434 e!2965623)))

(assert (=> d!1520081 (= res!2016434 (and ((_ is Cons!53118) l!13029) (= (_1!30752 (h!59515 l!13029)) key!4572)))))

(assert (=> d!1520081 (= (containsKey!3584 l!13029 key!4572) e!2965623)))

(declare-fun b!4753948 () Bool)

(declare-fun e!2965624 () Bool)

(assert (=> b!4753948 (= e!2965623 e!2965624)))

(declare-fun res!2016435 () Bool)

(assert (=> b!4753948 (=> (not res!2016435) (not e!2965624))))

(assert (=> b!4753948 (= res!2016435 ((_ is Cons!53118) l!13029))))

(declare-fun b!4753949 () Bool)

(assert (=> b!4753949 (= e!2965624 (containsKey!3584 (t!360586 l!13029) key!4572))))

(assert (= (and d!1520081 (not res!2016434)) b!4753948))

(assert (= (and b!4753948 res!2016435) b!4753949))

(assert (=> b!4753949 m!5721765))

(assert (=> start!485820 d!1520081))

(declare-fun d!1520085 () Bool)

(declare-fun invariantList!1607 (List!53242) Bool)

(assert (=> d!1520085 (= (inv!68465 lhm!63) (invariantList!1607 (toList!6146 lhm!63)))))

(declare-fun bs!1145896 () Bool)

(assert (= bs!1145896 d!1520085))

(declare-fun m!5721771 () Bool)

(assert (=> bs!1145896 m!5721771))

(assert (=> start!485820 d!1520085))

(declare-fun d!1520087 () Bool)

(declare-fun e!2965638 () Bool)

(assert (=> d!1520087 e!2965638))

(declare-fun res!2016456 () Bool)

(assert (=> d!1520087 (=> (not res!2016456) (not e!2965638))))

(declare-fun lt!1920040 () ListMap!5601)

(declare-fun contains!16539 (ListMap!5601 K!14595) Bool)

(assert (=> d!1520087 (= res!2016456 (contains!16539 lt!1920040 (_1!30752 (h!59515 l!13029))))))

(declare-fun lt!1920038 () List!53242)

(assert (=> d!1520087 (= lt!1920040 (ListMap!5602 lt!1920038))))

(declare-fun lt!1920039 () Unit!137036)

(declare-fun lt!1920041 () Unit!137036)

(assert (=> d!1520087 (= lt!1920039 lt!1920041)))

(declare-datatypes ((Option!12545 0))(
  ( (None!12544) (Some!12544 (v!47245 V!14841)) )
))
(declare-fun getValueByKey!2095 (List!53242 K!14595) Option!12545)

(assert (=> d!1520087 (= (getValueByKey!2095 lt!1920038 (_1!30752 (h!59515 l!13029))) (Some!12544 (_2!30752 (h!59515 l!13029))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1172 (List!53242 K!14595 V!14841) Unit!137036)

(assert (=> d!1520087 (= lt!1920041 (lemmaContainsTupThenGetReturnValue!1172 lt!1920038 (_1!30752 (h!59515 l!13029)) (_2!30752 (h!59515 l!13029))))))

(declare-fun insertNoDuplicatedKeys!680 (List!53242 K!14595 V!14841) List!53242)

(assert (=> d!1520087 (= lt!1920038 (insertNoDuplicatedKeys!680 (toList!6146 (+!2412 lhm!63 lt!1920008)) (_1!30752 (h!59515 l!13029)) (_2!30752 (h!59515 l!13029))))))

(assert (=> d!1520087 (= (+!2412 (+!2412 lhm!63 lt!1920008) (h!59515 l!13029)) lt!1920040)))

(declare-fun b!4753970 () Bool)

(declare-fun res!2016457 () Bool)

(assert (=> b!4753970 (=> (not res!2016457) (not e!2965638))))

(assert (=> b!4753970 (= res!2016457 (= (getValueByKey!2095 (toList!6146 lt!1920040) (_1!30752 (h!59515 l!13029))) (Some!12544 (_2!30752 (h!59515 l!13029)))))))

(declare-fun b!4753971 () Bool)

(declare-fun contains!16541 (List!53242 tuple2!54916) Bool)

(assert (=> b!4753971 (= e!2965638 (contains!16541 (toList!6146 lt!1920040) (h!59515 l!13029)))))

(assert (= (and d!1520087 res!2016456) b!4753970))

(assert (= (and b!4753970 res!2016457) b!4753971))

(declare-fun m!5721811 () Bool)

(assert (=> d!1520087 m!5721811))

(declare-fun m!5721813 () Bool)

(assert (=> d!1520087 m!5721813))

(declare-fun m!5721815 () Bool)

(assert (=> d!1520087 m!5721815))

(declare-fun m!5721817 () Bool)

(assert (=> d!1520087 m!5721817))

(declare-fun m!5721819 () Bool)

(assert (=> b!4753970 m!5721819))

(declare-fun m!5721821 () Bool)

(assert (=> b!4753971 m!5721821))

(assert (=> b!4753937 d!1520087))

(declare-fun d!1520097 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9544 (List!53242) (InoxSet tuple2!54916))

(assert (=> d!1520097 (= (eq!1243 (+!2412 lt!1920009 lt!1920008) (+!2412 (+!2412 lhm!63 lt!1920008) (h!59515 l!13029))) (= (content!9544 (toList!6146 (+!2412 lt!1920009 lt!1920008))) (content!9544 (toList!6146 (+!2412 (+!2412 lhm!63 lt!1920008) (h!59515 l!13029))))))))

(declare-fun bs!1145898 () Bool)

(assert (= bs!1145898 d!1520097))

(declare-fun m!5721839 () Bool)

(assert (=> bs!1145898 m!5721839))

(declare-fun m!5721841 () Bool)

(assert (=> bs!1145898 m!5721841))

(assert (=> b!4753937 d!1520097))

(declare-fun d!1520103 () Bool)

(declare-fun e!2965640 () Bool)

(assert (=> d!1520103 e!2965640))

(declare-fun res!2016460 () Bool)

(assert (=> d!1520103 (=> (not res!2016460) (not e!2965640))))

(declare-fun lt!1920048 () ListMap!5601)

(assert (=> d!1520103 (= res!2016460 (contains!16539 lt!1920048 (_1!30752 lt!1920008)))))

(declare-fun lt!1920046 () List!53242)

(assert (=> d!1520103 (= lt!1920048 (ListMap!5602 lt!1920046))))

(declare-fun lt!1920047 () Unit!137036)

(declare-fun lt!1920049 () Unit!137036)

(assert (=> d!1520103 (= lt!1920047 lt!1920049)))

(assert (=> d!1520103 (= (getValueByKey!2095 lt!1920046 (_1!30752 lt!1920008)) (Some!12544 (_2!30752 lt!1920008)))))

(assert (=> d!1520103 (= lt!1920049 (lemmaContainsTupThenGetReturnValue!1172 lt!1920046 (_1!30752 lt!1920008) (_2!30752 lt!1920008)))))

(assert (=> d!1520103 (= lt!1920046 (insertNoDuplicatedKeys!680 (toList!6146 lhm!63) (_1!30752 lt!1920008) (_2!30752 lt!1920008)))))

(assert (=> d!1520103 (= (+!2412 lhm!63 lt!1920008) lt!1920048)))

(declare-fun b!4753974 () Bool)

(declare-fun res!2016461 () Bool)

(assert (=> b!4753974 (=> (not res!2016461) (not e!2965640))))

(assert (=> b!4753974 (= res!2016461 (= (getValueByKey!2095 (toList!6146 lt!1920048) (_1!30752 lt!1920008)) (Some!12544 (_2!30752 lt!1920008))))))

(declare-fun b!4753975 () Bool)

(assert (=> b!4753975 (= e!2965640 (contains!16541 (toList!6146 lt!1920048) lt!1920008))))

(assert (= (and d!1520103 res!2016460) b!4753974))

(assert (= (and b!4753974 res!2016461) b!4753975))

(declare-fun m!5721843 () Bool)

(assert (=> d!1520103 m!5721843))

(declare-fun m!5721845 () Bool)

(assert (=> d!1520103 m!5721845))

(declare-fun m!5721847 () Bool)

(assert (=> d!1520103 m!5721847))

(declare-fun m!5721849 () Bool)

(assert (=> d!1520103 m!5721849))

(declare-fun m!5721851 () Bool)

(assert (=> b!4753974 m!5721851))

(declare-fun m!5721853 () Bool)

(assert (=> b!4753975 m!5721853))

(assert (=> b!4753937 d!1520103))

(declare-fun d!1520105 () Bool)

(declare-fun e!2965641 () Bool)

(assert (=> d!1520105 e!2965641))

(declare-fun res!2016462 () Bool)

(assert (=> d!1520105 (=> (not res!2016462) (not e!2965641))))

(declare-fun lt!1920052 () ListMap!5601)

(assert (=> d!1520105 (= res!2016462 (contains!16539 lt!1920052 (_1!30752 (h!59515 l!13029))))))

(declare-fun lt!1920050 () List!53242)

(assert (=> d!1520105 (= lt!1920052 (ListMap!5602 lt!1920050))))

(declare-fun lt!1920051 () Unit!137036)

(declare-fun lt!1920053 () Unit!137036)

(assert (=> d!1520105 (= lt!1920051 lt!1920053)))

(assert (=> d!1520105 (= (getValueByKey!2095 lt!1920050 (_1!30752 (h!59515 l!13029))) (Some!12544 (_2!30752 (h!59515 l!13029))))))

(assert (=> d!1520105 (= lt!1920053 (lemmaContainsTupThenGetReturnValue!1172 lt!1920050 (_1!30752 (h!59515 l!13029)) (_2!30752 (h!59515 l!13029))))))

(assert (=> d!1520105 (= lt!1920050 (insertNoDuplicatedKeys!680 (toList!6146 lhm!63) (_1!30752 (h!59515 l!13029)) (_2!30752 (h!59515 l!13029))))))

(assert (=> d!1520105 (= (+!2412 lhm!63 (h!59515 l!13029)) lt!1920052)))

(declare-fun b!4753976 () Bool)

(declare-fun res!2016463 () Bool)

(assert (=> b!4753976 (=> (not res!2016463) (not e!2965641))))

(assert (=> b!4753976 (= res!2016463 (= (getValueByKey!2095 (toList!6146 lt!1920052) (_1!30752 (h!59515 l!13029))) (Some!12544 (_2!30752 (h!59515 l!13029)))))))

(declare-fun b!4753977 () Bool)

(assert (=> b!4753977 (= e!2965641 (contains!16541 (toList!6146 lt!1920052) (h!59515 l!13029)))))

(assert (= (and d!1520105 res!2016462) b!4753976))

(assert (= (and b!4753976 res!2016463) b!4753977))

(declare-fun m!5721855 () Bool)

(assert (=> d!1520105 m!5721855))

(declare-fun m!5721857 () Bool)

(assert (=> d!1520105 m!5721857))

(declare-fun m!5721859 () Bool)

(assert (=> d!1520105 m!5721859))

(declare-fun m!5721861 () Bool)

(assert (=> d!1520105 m!5721861))

(declare-fun m!5721863 () Bool)

(assert (=> b!4753976 m!5721863))

(declare-fun m!5721865 () Bool)

(assert (=> b!4753977 m!5721865))

(assert (=> b!4753937 d!1520105))

(declare-fun d!1520107 () Bool)

(assert (=> d!1520107 (eq!1243 (+!2412 (+!2412 lhm!63 (tuple2!54917 (_1!30752 (h!59515 l!13029)) (_2!30752 (h!59515 l!13029)))) (tuple2!54917 key!4572 value!2966)) (+!2412 (+!2412 lhm!63 (tuple2!54917 key!4572 value!2966)) (tuple2!54917 (_1!30752 (h!59515 l!13029)) (_2!30752 (h!59515 l!13029)))))))

(declare-fun lt!1920059 () Unit!137036)

(declare-fun choose!33861 (ListMap!5601 K!14595 V!14841 K!14595 V!14841) Unit!137036)

(assert (=> d!1520107 (= lt!1920059 (choose!33861 lhm!63 (_1!30752 (h!59515 l!13029)) (_2!30752 (h!59515 l!13029)) key!4572 value!2966))))

(assert (=> d!1520107 (not (= (_1!30752 (h!59515 l!13029)) key!4572))))

(assert (=> d!1520107 (= (addCommutativeForDiffKeys!44 lhm!63 (_1!30752 (h!59515 l!13029)) (_2!30752 (h!59515 l!13029)) key!4572 value!2966) lt!1920059)))

(declare-fun bs!1145900 () Bool)

(assert (= bs!1145900 d!1520107))

(declare-fun m!5721879 () Bool)

(assert (=> bs!1145900 m!5721879))

(declare-fun m!5721881 () Bool)

(assert (=> bs!1145900 m!5721881))

(declare-fun m!5721883 () Bool)

(assert (=> bs!1145900 m!5721883))

(declare-fun m!5721885 () Bool)

(assert (=> bs!1145900 m!5721885))

(assert (=> bs!1145900 m!5721881))

(assert (=> bs!1145900 m!5721885))

(declare-fun m!5721887 () Bool)

(assert (=> bs!1145900 m!5721887))

(assert (=> bs!1145900 m!5721883))

(declare-fun m!5721889 () Bool)

(assert (=> bs!1145900 m!5721889))

(assert (=> bs!1145900 m!5721879))

(assert (=> b!4753937 d!1520107))

(declare-fun d!1520113 () Bool)

(declare-fun res!2016466 () Bool)

(declare-fun e!2965644 () Bool)

(assert (=> d!1520113 (=> res!2016466 e!2965644)))

(assert (=> d!1520113 (= res!2016466 (and ((_ is Cons!53118) (t!360586 l!13029)) (= (_1!30752 (h!59515 (t!360586 l!13029))) key!4572)))))

(assert (=> d!1520113 (= (containsKey!3584 (t!360586 l!13029) key!4572) e!2965644)))

(declare-fun b!4753980 () Bool)

(declare-fun e!2965645 () Bool)

(assert (=> b!4753980 (= e!2965644 e!2965645)))

(declare-fun res!2016467 () Bool)

(assert (=> b!4753980 (=> (not res!2016467) (not e!2965645))))

(assert (=> b!4753980 (= res!2016467 ((_ is Cons!53118) (t!360586 l!13029)))))

(declare-fun b!4753981 () Bool)

(assert (=> b!4753981 (= e!2965645 (containsKey!3584 (t!360586 (t!360586 l!13029)) key!4572))))

(assert (= (and d!1520113 (not res!2016466)) b!4753980))

(assert (= (and b!4753980 res!2016467) b!4753981))

(declare-fun m!5721891 () Bool)

(assert (=> b!4753981 m!5721891))

(assert (=> b!4753937 d!1520113))

(declare-fun d!1520115 () Bool)

(declare-fun e!2965646 () Bool)

(assert (=> d!1520115 e!2965646))

(declare-fun res!2016468 () Bool)

(assert (=> d!1520115 (=> (not res!2016468) (not e!2965646))))

(declare-fun lt!1920062 () ListMap!5601)

(assert (=> d!1520115 (= res!2016468 (contains!16539 lt!1920062 (_1!30752 lt!1920008)))))

(declare-fun lt!1920060 () List!53242)

(assert (=> d!1520115 (= lt!1920062 (ListMap!5602 lt!1920060))))

(declare-fun lt!1920061 () Unit!137036)

(declare-fun lt!1920063 () Unit!137036)

(assert (=> d!1520115 (= lt!1920061 lt!1920063)))

(assert (=> d!1520115 (= (getValueByKey!2095 lt!1920060 (_1!30752 lt!1920008)) (Some!12544 (_2!30752 lt!1920008)))))

(assert (=> d!1520115 (= lt!1920063 (lemmaContainsTupThenGetReturnValue!1172 lt!1920060 (_1!30752 lt!1920008) (_2!30752 lt!1920008)))))

(assert (=> d!1520115 (= lt!1920060 (insertNoDuplicatedKeys!680 (toList!6146 lt!1920009) (_1!30752 lt!1920008) (_2!30752 lt!1920008)))))

(assert (=> d!1520115 (= (+!2412 lt!1920009 lt!1920008) lt!1920062)))

(declare-fun b!4753982 () Bool)

(declare-fun res!2016469 () Bool)

(assert (=> b!4753982 (=> (not res!2016469) (not e!2965646))))

(assert (=> b!4753982 (= res!2016469 (= (getValueByKey!2095 (toList!6146 lt!1920062) (_1!30752 lt!1920008)) (Some!12544 (_2!30752 lt!1920008))))))

(declare-fun b!4753983 () Bool)

(assert (=> b!4753983 (= e!2965646 (contains!16541 (toList!6146 lt!1920062) lt!1920008))))

(assert (= (and d!1520115 res!2016468) b!4753982))

(assert (= (and b!4753982 res!2016469) b!4753983))

(declare-fun m!5721895 () Bool)

(assert (=> d!1520115 m!5721895))

(declare-fun m!5721897 () Bool)

(assert (=> d!1520115 m!5721897))

(declare-fun m!5721899 () Bool)

(assert (=> d!1520115 m!5721899))

(declare-fun m!5721901 () Bool)

(assert (=> d!1520115 m!5721901))

(declare-fun m!5721903 () Bool)

(assert (=> b!4753982 m!5721903))

(declare-fun m!5721905 () Bool)

(assert (=> b!4753983 m!5721905))

(assert (=> b!4753937 d!1520115))

(declare-fun d!1520117 () Bool)

(declare-fun res!2016474 () Bool)

(declare-fun e!2965655 () Bool)

(assert (=> d!1520117 (=> res!2016474 e!2965655)))

(assert (=> d!1520117 (= res!2016474 (not ((_ is Cons!53118) l!13029)))))

(assert (=> d!1520117 (= (noDuplicateKeys!2178 l!13029) e!2965655)))

(declare-fun b!4753994 () Bool)

(declare-fun e!2965656 () Bool)

(assert (=> b!4753994 (= e!2965655 e!2965656)))

(declare-fun res!2016475 () Bool)

(assert (=> b!4753994 (=> (not res!2016475) (not e!2965656))))

(assert (=> b!4753994 (= res!2016475 (not (containsKey!3584 (t!360586 l!13029) (_1!30752 (h!59515 l!13029)))))))

(declare-fun b!4753995 () Bool)

(assert (=> b!4753995 (= e!2965656 (noDuplicateKeys!2178 (t!360586 l!13029)))))

(assert (= (and d!1520117 (not res!2016474)) b!4753994))

(assert (= (and b!4753994 res!2016475) b!4753995))

(declare-fun m!5721907 () Bool)

(assert (=> b!4753994 m!5721907))

(declare-fun m!5721909 () Bool)

(assert (=> b!4753995 m!5721909))

(assert (=> b!4753936 d!1520117))

(declare-fun e!2965659 () Bool)

(declare-fun b!4754000 () Bool)

(declare-fun tp!1350432 () Bool)

(assert (=> b!4754000 (= e!2965659 (and tp_is_empty!32005 tp_is_empty!32007 tp!1350432))))

(assert (=> b!4753933 (= tp!1350425 e!2965659)))

(assert (= (and b!4753933 ((_ is Cons!53118) (t!360586 l!13029))) b!4754000))

(declare-fun b!4754001 () Bool)

(declare-fun e!2965660 () Bool)

(declare-fun tp!1350433 () Bool)

(assert (=> b!4754001 (= e!2965660 (and tp_is_empty!32005 tp_is_empty!32007 tp!1350433))))

(assert (=> b!4753935 (= tp!1350424 e!2965660)))

(assert (= (and b!4753935 ((_ is Cons!53118) (toList!6146 lhm!63))) b!4754001))

(check-sat (not b!4753976) (not b!4753970) (not b!4753974) (not d!1520085) (not b!4754001) (not d!1520103) (not b!4754000) (not d!1520115) (not b!4753975) (not b!4753949) (not b!4753971) (not b!4753981) tp_is_empty!32007 (not b!4753995) (not b!4753982) (not d!1520087) (not d!1520107) tp_is_empty!32005 (not b!4753977) (not b!4753983) (not b!4753994) (not d!1520097) (not d!1520105))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!433620 () Bool)

(assert start!433620)

(declare-fun b!4436130 () Bool)

(declare-fun e!2762246 () Bool)

(declare-fun e!2762245 () Bool)

(assert (=> b!4436130 (= e!2762246 (not e!2762245))))

(declare-fun res!1836004 () Bool)

(assert (=> b!4436130 (=> res!1836004 e!2762245)))

(declare-datatypes ((V!11336 0))(
  ( (V!11337 (val!17143 Int)) )
))
(declare-datatypes ((K!11090 0))(
  ( (K!11091 (val!17144 Int)) )
))
(declare-datatypes ((tuple2!49606 0))(
  ( (tuple2!49607 (_1!28097 K!11090) (_2!28097 V!11336)) )
))
(declare-datatypes ((List!49845 0))(
  ( (Nil!49721) (Cons!49721 (h!55430 tuple2!49606) (t!356787 List!49845)) )
))
(declare-datatypes ((tuple2!49608 0))(
  ( (tuple2!49609 (_1!28098 (_ BitVec 64)) (_2!28098 List!49845)) )
))
(declare-datatypes ((List!49846 0))(
  ( (Nil!49722) (Cons!49722 (h!55431 tuple2!49608) (t!356788 List!49846)) )
))
(declare-datatypes ((ListLongMap!2251 0))(
  ( (ListLongMap!2252 (toList!3601 List!49846)) )
))
(declare-fun lt!1633180 () ListLongMap!2251)

(declare-fun lambda!156234 () Int)

(declare-fun forall!9656 (List!49846 Int) Bool)

(assert (=> b!4436130 (= res!1836004 (not (forall!9656 (toList!3601 lt!1633180) lambda!156234)))))

(assert (=> b!4436130 (forall!9656 (toList!3601 lt!1633180) lambda!156234)))

(declare-fun lm!1616 () ListLongMap!2251)

(declare-fun lt!1633175 () tuple2!49608)

(declare-fun +!1180 (ListLongMap!2251 tuple2!49608) ListLongMap!2251)

(assert (=> b!4436130 (= lt!1633180 (+!1180 lm!1616 lt!1633175))))

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun newBucket!194 () List!49845)

(assert (=> b!4436130 (= lt!1633175 (tuple2!49609 hash!366 newBucket!194))))

(declare-datatypes ((Unit!83387 0))(
  ( (Unit!83388) )
))
(declare-fun lt!1633176 () Unit!83387)

(declare-fun addValidProp!449 (ListLongMap!2251 Int (_ BitVec 64) List!49845) Unit!83387)

(assert (=> b!4436130 (= lt!1633176 (addValidProp!449 lm!1616 lambda!156234 hash!366 newBucket!194))))

(declare-fun newValue!93 () V!11336)

(declare-fun b!4436131 () Bool)

(declare-fun key!3717 () K!11090)

(declare-fun e!2762250 () Bool)

(declare-fun apply!11659 (ListLongMap!2251 (_ BitVec 64)) List!49845)

(assert (=> b!4436131 (= e!2762250 (= newBucket!194 (Cons!49721 (tuple2!49607 key!3717 newValue!93) (apply!11659 lm!1616 hash!366))))))

(declare-fun b!4436132 () Bool)

(declare-fun res!1836003 () Bool)

(assert (=> b!4436132 (=> (not res!1836003) (not e!2762246))))

(assert (=> b!4436132 (= res!1836003 (forall!9656 (toList!3601 lm!1616) lambda!156234))))

(declare-fun b!4436133 () Bool)

(declare-fun e!2762252 () Unit!83387)

(declare-fun Unit!83389 () Unit!83387)

(assert (=> b!4436133 (= e!2762252 Unit!83389)))

(declare-fun e!2762247 () Bool)

(declare-fun lt!1633174 () Bool)

(declare-fun b!4436134 () Bool)

(assert (=> b!4436134 (= e!2762247 (and (not lt!1633174) (= newBucket!194 (Cons!49721 (tuple2!49607 key!3717 newValue!93) Nil!49721))))))

(declare-fun b!4436135 () Bool)

(declare-fun res!1836006 () Bool)

(declare-fun e!2762248 () Bool)

(assert (=> b!4436135 (=> (not res!1836006) (not e!2762248))))

(declare-datatypes ((ListMap!2845 0))(
  ( (ListMap!2846 (toList!3602 List!49845)) )
))
(declare-fun contains!12268 (ListMap!2845 K!11090) Bool)

(declare-fun extractMap!868 (List!49846) ListMap!2845)

(assert (=> b!4436135 (= res!1836006 (not (contains!12268 (extractMap!868 (toList!3601 lm!1616)) key!3717)))))

(declare-fun b!4436137 () Bool)

(declare-fun res!1836005 () Bool)

(assert (=> b!4436137 (=> (not res!1836005) (not e!2762246))))

(declare-fun noDuplicateKeys!807 (List!49845) Bool)

(assert (=> b!4436137 (= res!1836005 (noDuplicateKeys!807 newBucket!194))))

(declare-fun b!4436138 () Bool)

(declare-fun res!1835999 () Bool)

(assert (=> b!4436138 (=> res!1835999 e!2762245)))

(get-info :version)

(assert (=> b!4436138 (= res!1835999 (or (and ((_ is Cons!49722) (toList!3601 lm!1616)) (= (_1!28098 (h!55431 (toList!3601 lm!1616))) hash!366)) (not ((_ is Cons!49722) (toList!3601 lm!1616))) (= (_1!28098 (h!55431 (toList!3601 lm!1616))) hash!366)))))

(declare-fun b!4436139 () Bool)

(assert (=> b!4436139 (= e!2762248 e!2762246)))

(declare-fun res!1836002 () Bool)

(assert (=> b!4436139 (=> (not res!1836002) (not e!2762246))))

(assert (=> b!4436139 (= res!1836002 e!2762247)))

(declare-fun res!1836009 () Bool)

(assert (=> b!4436139 (=> res!1836009 e!2762247)))

(assert (=> b!4436139 (= res!1836009 e!2762250)))

(declare-fun res!1836000 () Bool)

(assert (=> b!4436139 (=> (not res!1836000) (not e!2762250))))

(assert (=> b!4436139 (= res!1836000 lt!1633174)))

(declare-fun contains!12269 (ListLongMap!2251 (_ BitVec 64)) Bool)

(assert (=> b!4436139 (= lt!1633174 (contains!12269 lm!1616 hash!366))))

(declare-fun b!4436140 () Bool)

(declare-fun res!1836001 () Bool)

(assert (=> b!4436140 (=> (not res!1836001) (not e!2762248))))

(declare-datatypes ((Hashable!5201 0))(
  ( (HashableExt!5200 (__x!30904 Int)) )
))
(declare-fun hashF!1220 () Hashable!5201)

(declare-fun allKeysSameHash!767 (List!49845 (_ BitVec 64) Hashable!5201) Bool)

(assert (=> b!4436140 (= res!1836001 (allKeysSameHash!767 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4436141 () Bool)

(declare-fun head!9268 (ListLongMap!2251) tuple2!49608)

(assert (=> b!4436141 (= e!2762245 (not (= (head!9268 lm!1616) lt!1633175)))))

(declare-fun lt!1633179 () ListLongMap!2251)

(declare-fun eq!439 (ListMap!2845 ListMap!2845) Bool)

(declare-fun +!1181 (ListMap!2845 tuple2!49606) ListMap!2845)

(assert (=> b!4436141 (eq!439 (extractMap!868 (toList!3601 (+!1180 lt!1633179 lt!1633175))) (+!1181 (extractMap!868 (toList!3601 lt!1633179)) (tuple2!49607 key!3717 newValue!93)))))

(declare-fun lt!1633178 () Unit!83387)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!149 (ListLongMap!2251 (_ BitVec 64) List!49845 K!11090 V!11336 Hashable!5201) Unit!83387)

(assert (=> b!4436141 (= lt!1633178 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!149 lt!1633179 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(declare-fun tail!7336 (ListLongMap!2251) ListLongMap!2251)

(assert (=> b!4436141 (= lt!1633179 (tail!7336 lm!1616))))

(declare-fun lt!1633177 () Unit!83387)

(assert (=> b!4436141 (= lt!1633177 e!2762252)))

(declare-fun c!755009 () Bool)

(declare-fun tail!7337 (List!49846) List!49846)

(assert (=> b!4436141 (= c!755009 (contains!12268 (extractMap!868 (tail!7337 (toList!3601 lm!1616))) key!3717))))

(declare-fun b!4436142 () Bool)

(declare-fun res!1836008 () Bool)

(assert (=> b!4436142 (=> (not res!1836008) (not e!2762248))))

(declare-fun allKeysSameHashInMap!913 (ListLongMap!2251 Hashable!5201) Bool)

(assert (=> b!4436142 (= res!1836008 (allKeysSameHashInMap!913 lm!1616 hashF!1220))))

(declare-fun b!4436143 () Bool)

(declare-fun e!2762251 () Bool)

(declare-fun tp!1333825 () Bool)

(assert (=> b!4436143 (= e!2762251 tp!1333825)))

(declare-fun b!4436144 () Bool)

(declare-fun res!1836007 () Bool)

(assert (=> b!4436144 (=> (not res!1836007) (not e!2762248))))

(declare-fun hash!2232 (Hashable!5201 K!11090) (_ BitVec 64))

(assert (=> b!4436144 (= res!1836007 (= (hash!2232 hashF!1220 key!3717) hash!366))))

(declare-fun b!4436145 () Bool)

(declare-fun tp_is_empty!26473 () Bool)

(declare-fun e!2762249 () Bool)

(declare-fun tp!1333826 () Bool)

(declare-fun tp_is_empty!26475 () Bool)

(assert (=> b!4436145 (= e!2762249 (and tp_is_empty!26475 tp_is_empty!26473 tp!1333826))))

(declare-fun b!4436136 () Bool)

(declare-fun Unit!83390 () Unit!83387)

(assert (=> b!4436136 (= e!2762252 Unit!83390)))

(declare-fun lt!1633181 () Unit!83387)

(declare-fun lemmaExtractTailMapContainsThenExtractMapDoes!62 (ListLongMap!2251 K!11090 Hashable!5201) Unit!83387)

(assert (=> b!4436136 (= lt!1633181 (lemmaExtractTailMapContainsThenExtractMapDoes!62 lm!1616 key!3717 hashF!1220))))

(assert (=> b!4436136 false))

(declare-fun res!1835998 () Bool)

(assert (=> start!433620 (=> (not res!1835998) (not e!2762248))))

(assert (=> start!433620 (= res!1835998 (forall!9656 (toList!3601 lm!1616) lambda!156234))))

(assert (=> start!433620 e!2762248))

(assert (=> start!433620 tp_is_empty!26473))

(assert (=> start!433620 tp_is_empty!26475))

(assert (=> start!433620 e!2762249))

(declare-fun inv!65276 (ListLongMap!2251) Bool)

(assert (=> start!433620 (and (inv!65276 lm!1616) e!2762251)))

(assert (=> start!433620 true))

(assert (= (and start!433620 res!1835998) b!4436142))

(assert (= (and b!4436142 res!1836008) b!4436144))

(assert (= (and b!4436144 res!1836007) b!4436140))

(assert (= (and b!4436140 res!1836001) b!4436135))

(assert (= (and b!4436135 res!1836006) b!4436139))

(assert (= (and b!4436139 res!1836000) b!4436131))

(assert (= (and b!4436139 (not res!1836009)) b!4436134))

(assert (= (and b!4436139 res!1836002) b!4436137))

(assert (= (and b!4436137 res!1836005) b!4436132))

(assert (= (and b!4436132 res!1836003) b!4436130))

(assert (= (and b!4436130 (not res!1836004)) b!4436138))

(assert (= (and b!4436138 (not res!1835999)) b!4436141))

(assert (= (and b!4436141 c!755009) b!4436136))

(assert (= (and b!4436141 (not c!755009)) b!4436133))

(assert (= (and start!433620 ((_ is Cons!49721) newBucket!194)) b!4436145))

(assert (= start!433620 b!4436143))

(declare-fun m!5122957 () Bool)

(assert (=> b!4436144 m!5122957))

(declare-fun m!5122959 () Bool)

(assert (=> b!4436132 m!5122959))

(declare-fun m!5122961 () Bool)

(assert (=> b!4436137 m!5122961))

(declare-fun m!5122963 () Bool)

(assert (=> b!4436135 m!5122963))

(assert (=> b!4436135 m!5122963))

(declare-fun m!5122965 () Bool)

(assert (=> b!4436135 m!5122965))

(declare-fun m!5122967 () Bool)

(assert (=> b!4436131 m!5122967))

(declare-fun m!5122969 () Bool)

(assert (=> b!4436141 m!5122969))

(declare-fun m!5122971 () Bool)

(assert (=> b!4436141 m!5122971))

(declare-fun m!5122973 () Bool)

(assert (=> b!4436141 m!5122973))

(declare-fun m!5122975 () Bool)

(assert (=> b!4436141 m!5122975))

(declare-fun m!5122977 () Bool)

(assert (=> b!4436141 m!5122977))

(assert (=> b!4436141 m!5122975))

(declare-fun m!5122979 () Bool)

(assert (=> b!4436141 m!5122979))

(assert (=> b!4436141 m!5122973))

(declare-fun m!5122981 () Bool)

(assert (=> b!4436141 m!5122981))

(assert (=> b!4436141 m!5122969))

(assert (=> b!4436141 m!5122971))

(declare-fun m!5122983 () Bool)

(assert (=> b!4436141 m!5122983))

(assert (=> b!4436141 m!5122977))

(declare-fun m!5122985 () Bool)

(assert (=> b!4436141 m!5122985))

(declare-fun m!5122987 () Bool)

(assert (=> b!4436141 m!5122987))

(declare-fun m!5122989 () Bool)

(assert (=> b!4436141 m!5122989))

(assert (=> start!433620 m!5122959))

(declare-fun m!5122991 () Bool)

(assert (=> start!433620 m!5122991))

(declare-fun m!5122993 () Bool)

(assert (=> b!4436140 m!5122993))

(declare-fun m!5122995 () Bool)

(assert (=> b!4436142 m!5122995))

(declare-fun m!5122997 () Bool)

(assert (=> b!4436136 m!5122997))

(declare-fun m!5122999 () Bool)

(assert (=> b!4436130 m!5122999))

(assert (=> b!4436130 m!5122999))

(declare-fun m!5123001 () Bool)

(assert (=> b!4436130 m!5123001))

(declare-fun m!5123003 () Bool)

(assert (=> b!4436130 m!5123003))

(declare-fun m!5123005 () Bool)

(assert (=> b!4436139 m!5123005))

(check-sat (not b!4436144) (not b!4436139) (not b!4436137) (not b!4436145) (not b!4436142) (not b!4436141) (not start!433620) tp_is_empty!26473 (not b!4436131) tp_is_empty!26475 (not b!4436130) (not b!4436136) (not b!4436140) (not b!4436132) (not b!4436143) (not b!4436135))
(check-sat)
(get-model)

(declare-fun d!1346240 () Bool)

(declare-fun e!2762267 () Bool)

(assert (=> d!1346240 e!2762267))

(declare-fun res!1836024 () Bool)

(assert (=> d!1346240 (=> (not res!1836024) (not e!2762267))))

(declare-fun lt!1633203 () ListMap!2845)

(assert (=> d!1346240 (= res!1836024 (contains!12268 lt!1633203 (_1!28097 (tuple2!49607 key!3717 newValue!93))))))

(declare-fun lt!1633204 () List!49845)

(assert (=> d!1346240 (= lt!1633203 (ListMap!2846 lt!1633204))))

(declare-fun lt!1633205 () Unit!83387)

(declare-fun lt!1633202 () Unit!83387)

(assert (=> d!1346240 (= lt!1633205 lt!1633202)))

(declare-datatypes ((Option!10773 0))(
  ( (None!10772) (Some!10772 (v!43988 V!11336)) )
))
(declare-fun getValueByKey!759 (List!49845 K!11090) Option!10773)

(assert (=> d!1346240 (= (getValueByKey!759 lt!1633204 (_1!28097 (tuple2!49607 key!3717 newValue!93))) (Some!10772 (_2!28097 (tuple2!49607 key!3717 newValue!93))))))

(declare-fun lemmaContainsTupThenGetReturnValue!492 (List!49845 K!11090 V!11336) Unit!83387)

(assert (=> d!1346240 (= lt!1633202 (lemmaContainsTupThenGetReturnValue!492 lt!1633204 (_1!28097 (tuple2!49607 key!3717 newValue!93)) (_2!28097 (tuple2!49607 key!3717 newValue!93))))))

(declare-fun insertNoDuplicatedKeys!217 (List!49845 K!11090 V!11336) List!49845)

(assert (=> d!1346240 (= lt!1633204 (insertNoDuplicatedKeys!217 (toList!3602 (extractMap!868 (toList!3601 lt!1633179))) (_1!28097 (tuple2!49607 key!3717 newValue!93)) (_2!28097 (tuple2!49607 key!3717 newValue!93))))))

(assert (=> d!1346240 (= (+!1181 (extractMap!868 (toList!3601 lt!1633179)) (tuple2!49607 key!3717 newValue!93)) lt!1633203)))

(declare-fun b!4436169 () Bool)

(declare-fun res!1836023 () Bool)

(assert (=> b!4436169 (=> (not res!1836023) (not e!2762267))))

(assert (=> b!4436169 (= res!1836023 (= (getValueByKey!759 (toList!3602 lt!1633203) (_1!28097 (tuple2!49607 key!3717 newValue!93))) (Some!10772 (_2!28097 (tuple2!49607 key!3717 newValue!93)))))))

(declare-fun b!4436170 () Bool)

(declare-fun contains!12273 (List!49845 tuple2!49606) Bool)

(assert (=> b!4436170 (= e!2762267 (contains!12273 (toList!3602 lt!1633203) (tuple2!49607 key!3717 newValue!93)))))

(assert (= (and d!1346240 res!1836024) b!4436169))

(assert (= (and b!4436169 res!1836023) b!4436170))

(declare-fun m!5123023 () Bool)

(assert (=> d!1346240 m!5123023))

(declare-fun m!5123025 () Bool)

(assert (=> d!1346240 m!5123025))

(declare-fun m!5123027 () Bool)

(assert (=> d!1346240 m!5123027))

(declare-fun m!5123029 () Bool)

(assert (=> d!1346240 m!5123029))

(declare-fun m!5123031 () Bool)

(assert (=> b!4436169 m!5123031))

(declare-fun m!5123033 () Bool)

(assert (=> b!4436170 m!5123033))

(assert (=> b!4436141 d!1346240))

(declare-fun bs!762488 () Bool)

(declare-fun d!1346252 () Bool)

(assert (= bs!762488 (and d!1346252 start!433620)))

(declare-fun lambda!156250 () Int)

(assert (=> bs!762488 (= lambda!156250 lambda!156234)))

(declare-fun lt!1633218 () ListMap!2845)

(declare-fun invariantList!829 (List!49845) Bool)

(assert (=> d!1346252 (invariantList!829 (toList!3602 lt!1633218))))

(declare-fun e!2762274 () ListMap!2845)

(assert (=> d!1346252 (= lt!1633218 e!2762274)))

(declare-fun c!755019 () Bool)

(assert (=> d!1346252 (= c!755019 ((_ is Cons!49722) (toList!3601 lt!1633179)))))

(assert (=> d!1346252 (forall!9656 (toList!3601 lt!1633179) lambda!156250)))

(assert (=> d!1346252 (= (extractMap!868 (toList!3601 lt!1633179)) lt!1633218)))

(declare-fun b!4436183 () Bool)

(declare-fun addToMapMapFromBucket!428 (List!49845 ListMap!2845) ListMap!2845)

(assert (=> b!4436183 (= e!2762274 (addToMapMapFromBucket!428 (_2!28098 (h!55431 (toList!3601 lt!1633179))) (extractMap!868 (t!356788 (toList!3601 lt!1633179)))))))

(declare-fun b!4436184 () Bool)

(assert (=> b!4436184 (= e!2762274 (ListMap!2846 Nil!49721))))

(assert (= (and d!1346252 c!755019) b!4436183))

(assert (= (and d!1346252 (not c!755019)) b!4436184))

(declare-fun m!5123067 () Bool)

(assert (=> d!1346252 m!5123067))

(declare-fun m!5123069 () Bool)

(assert (=> d!1346252 m!5123069))

(declare-fun m!5123071 () Bool)

(assert (=> b!4436183 m!5123071))

(assert (=> b!4436183 m!5123071))

(declare-fun m!5123073 () Bool)

(assert (=> b!4436183 m!5123073))

(assert (=> b!4436141 d!1346252))

(declare-fun d!1346264 () Bool)

(declare-fun e!2762284 () Bool)

(assert (=> d!1346264 e!2762284))

(declare-fun res!1836042 () Bool)

(assert (=> d!1346264 (=> (not res!1836042) (not e!2762284))))

(declare-fun lt!1633255 () ListLongMap!2251)

(assert (=> d!1346264 (= res!1836042 (contains!12269 lt!1633255 (_1!28098 lt!1633175)))))

(declare-fun lt!1633254 () List!49846)

(assert (=> d!1346264 (= lt!1633255 (ListLongMap!2252 lt!1633254))))

(declare-fun lt!1633252 () Unit!83387)

(declare-fun lt!1633253 () Unit!83387)

(assert (=> d!1346264 (= lt!1633252 lt!1633253)))

(declare-datatypes ((Option!10774 0))(
  ( (None!10773) (Some!10773 (v!43989 List!49845)) )
))
(declare-fun getValueByKey!760 (List!49846 (_ BitVec 64)) Option!10774)

(assert (=> d!1346264 (= (getValueByKey!760 lt!1633254 (_1!28098 lt!1633175)) (Some!10773 (_2!28098 lt!1633175)))))

(declare-fun lemmaContainsTupThenGetReturnValue!493 (List!49846 (_ BitVec 64) List!49845) Unit!83387)

(assert (=> d!1346264 (= lt!1633253 (lemmaContainsTupThenGetReturnValue!493 lt!1633254 (_1!28098 lt!1633175) (_2!28098 lt!1633175)))))

(declare-fun insertStrictlySorted!284 (List!49846 (_ BitVec 64) List!49845) List!49846)

(assert (=> d!1346264 (= lt!1633254 (insertStrictlySorted!284 (toList!3601 lt!1633179) (_1!28098 lt!1633175) (_2!28098 lt!1633175)))))

(assert (=> d!1346264 (= (+!1180 lt!1633179 lt!1633175) lt!1633255)))

(declare-fun b!4436203 () Bool)

(declare-fun res!1836041 () Bool)

(assert (=> b!4436203 (=> (not res!1836041) (not e!2762284))))

(assert (=> b!4436203 (= res!1836041 (= (getValueByKey!760 (toList!3601 lt!1633255) (_1!28098 lt!1633175)) (Some!10773 (_2!28098 lt!1633175))))))

(declare-fun b!4436204 () Bool)

(declare-fun contains!12274 (List!49846 tuple2!49608) Bool)

(assert (=> b!4436204 (= e!2762284 (contains!12274 (toList!3601 lt!1633255) lt!1633175))))

(assert (= (and d!1346264 res!1836042) b!4436203))

(assert (= (and b!4436203 res!1836041) b!4436204))

(declare-fun m!5123113 () Bool)

(assert (=> d!1346264 m!5123113))

(declare-fun m!5123115 () Bool)

(assert (=> d!1346264 m!5123115))

(declare-fun m!5123117 () Bool)

(assert (=> d!1346264 m!5123117))

(declare-fun m!5123119 () Bool)

(assert (=> d!1346264 m!5123119))

(declare-fun m!5123121 () Bool)

(assert (=> b!4436203 m!5123121))

(declare-fun m!5123123 () Bool)

(assert (=> b!4436204 m!5123123))

(assert (=> b!4436141 d!1346264))

(declare-fun d!1346280 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7996 (List!49845) (InoxSet tuple2!49606))

(assert (=> d!1346280 (= (eq!439 (extractMap!868 (toList!3601 (+!1180 lt!1633179 lt!1633175))) (+!1181 (extractMap!868 (toList!3601 lt!1633179)) (tuple2!49607 key!3717 newValue!93))) (= (content!7996 (toList!3602 (extractMap!868 (toList!3601 (+!1180 lt!1633179 lt!1633175))))) (content!7996 (toList!3602 (+!1181 (extractMap!868 (toList!3601 lt!1633179)) (tuple2!49607 key!3717 newValue!93))))))))

(declare-fun bs!762497 () Bool)

(assert (= bs!762497 d!1346280))

(declare-fun m!5123125 () Bool)

(assert (=> bs!762497 m!5123125))

(declare-fun m!5123127 () Bool)

(assert (=> bs!762497 m!5123127))

(assert (=> b!4436141 d!1346280))

(declare-fun bs!762516 () Bool)

(declare-fun d!1346282 () Bool)

(assert (= bs!762516 (and d!1346282 start!433620)))

(declare-fun lambda!156258 () Int)

(assert (=> bs!762516 (= lambda!156258 lambda!156234)))

(declare-fun bs!762517 () Bool)

(assert (= bs!762517 (and d!1346282 d!1346252)))

(assert (=> bs!762517 (= lambda!156258 lambda!156250)))

(assert (=> d!1346282 (eq!439 (extractMap!868 (toList!3601 (+!1180 lt!1633179 (tuple2!49609 hash!366 newBucket!194)))) (+!1181 (extractMap!868 (toList!3601 lt!1633179)) (tuple2!49607 key!3717 newValue!93)))))

(declare-fun lt!1633298 () Unit!83387)

(declare-fun choose!28141 (ListLongMap!2251 (_ BitVec 64) List!49845 K!11090 V!11336 Hashable!5201) Unit!83387)

(assert (=> d!1346282 (= lt!1633298 (choose!28141 lt!1633179 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(assert (=> d!1346282 (forall!9656 (toList!3601 lt!1633179) lambda!156258)))

(assert (=> d!1346282 (= (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!149 lt!1633179 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220) lt!1633298)))

(declare-fun bs!762518 () Bool)

(assert (= bs!762518 d!1346282))

(declare-fun m!5123215 () Bool)

(assert (=> bs!762518 m!5123215))

(declare-fun m!5123217 () Bool)

(assert (=> bs!762518 m!5123217))

(declare-fun m!5123219 () Bool)

(assert (=> bs!762518 m!5123219))

(assert (=> bs!762518 m!5122973))

(assert (=> bs!762518 m!5122973))

(assert (=> bs!762518 m!5122975))

(assert (=> bs!762518 m!5123215))

(assert (=> bs!762518 m!5122975))

(declare-fun m!5123221 () Bool)

(assert (=> bs!762518 m!5123221))

(declare-fun m!5123223 () Bool)

(assert (=> bs!762518 m!5123223))

(assert (=> b!4436141 d!1346282))

(declare-fun d!1346306 () Bool)

(declare-fun head!9270 (List!49846) tuple2!49608)

(assert (=> d!1346306 (= (head!9268 lm!1616) (head!9270 (toList!3601 lm!1616)))))

(declare-fun bs!762519 () Bool)

(assert (= bs!762519 d!1346306))

(declare-fun m!5123225 () Bool)

(assert (=> bs!762519 m!5123225))

(assert (=> b!4436141 d!1346306))

(declare-fun bs!762520 () Bool)

(declare-fun d!1346308 () Bool)

(assert (= bs!762520 (and d!1346308 start!433620)))

(declare-fun lambda!156259 () Int)

(assert (=> bs!762520 (= lambda!156259 lambda!156234)))

(declare-fun bs!762521 () Bool)

(assert (= bs!762521 (and d!1346308 d!1346252)))

(assert (=> bs!762521 (= lambda!156259 lambda!156250)))

(declare-fun bs!762522 () Bool)

(assert (= bs!762522 (and d!1346308 d!1346282)))

(assert (=> bs!762522 (= lambda!156259 lambda!156258)))

(declare-fun lt!1633299 () ListMap!2845)

(assert (=> d!1346308 (invariantList!829 (toList!3602 lt!1633299))))

(declare-fun e!2762328 () ListMap!2845)

(assert (=> d!1346308 (= lt!1633299 e!2762328)))

(declare-fun c!755034 () Bool)

(assert (=> d!1346308 (= c!755034 ((_ is Cons!49722) (toList!3601 (+!1180 lt!1633179 lt!1633175))))))

(assert (=> d!1346308 (forall!9656 (toList!3601 (+!1180 lt!1633179 lt!1633175)) lambda!156259)))

(assert (=> d!1346308 (= (extractMap!868 (toList!3601 (+!1180 lt!1633179 lt!1633175))) lt!1633299)))

(declare-fun b!4436269 () Bool)

(assert (=> b!4436269 (= e!2762328 (addToMapMapFromBucket!428 (_2!28098 (h!55431 (toList!3601 (+!1180 lt!1633179 lt!1633175)))) (extractMap!868 (t!356788 (toList!3601 (+!1180 lt!1633179 lt!1633175))))))))

(declare-fun b!4436270 () Bool)

(assert (=> b!4436270 (= e!2762328 (ListMap!2846 Nil!49721))))

(assert (= (and d!1346308 c!755034) b!4436269))

(assert (= (and d!1346308 (not c!755034)) b!4436270))

(declare-fun m!5123227 () Bool)

(assert (=> d!1346308 m!5123227))

(declare-fun m!5123229 () Bool)

(assert (=> d!1346308 m!5123229))

(declare-fun m!5123231 () Bool)

(assert (=> b!4436269 m!5123231))

(assert (=> b!4436269 m!5123231))

(declare-fun m!5123233 () Bool)

(assert (=> b!4436269 m!5123233))

(assert (=> b!4436141 d!1346308))

(declare-fun d!1346310 () Bool)

(assert (=> d!1346310 (= (tail!7336 lm!1616) (ListLongMap!2252 (tail!7337 (toList!3601 lm!1616))))))

(declare-fun bs!762523 () Bool)

(assert (= bs!762523 d!1346310))

(assert (=> bs!762523 m!5122969))

(assert (=> b!4436141 d!1346310))

(declare-fun bs!762524 () Bool)

(declare-fun d!1346312 () Bool)

(assert (= bs!762524 (and d!1346312 start!433620)))

(declare-fun lambda!156260 () Int)

(assert (=> bs!762524 (= lambda!156260 lambda!156234)))

(declare-fun bs!762525 () Bool)

(assert (= bs!762525 (and d!1346312 d!1346252)))

(assert (=> bs!762525 (= lambda!156260 lambda!156250)))

(declare-fun bs!762526 () Bool)

(assert (= bs!762526 (and d!1346312 d!1346282)))

(assert (=> bs!762526 (= lambda!156260 lambda!156258)))

(declare-fun bs!762527 () Bool)

(assert (= bs!762527 (and d!1346312 d!1346308)))

(assert (=> bs!762527 (= lambda!156260 lambda!156259)))

(declare-fun lt!1633300 () ListMap!2845)

(assert (=> d!1346312 (invariantList!829 (toList!3602 lt!1633300))))

(declare-fun e!2762329 () ListMap!2845)

(assert (=> d!1346312 (= lt!1633300 e!2762329)))

(declare-fun c!755035 () Bool)

(assert (=> d!1346312 (= c!755035 ((_ is Cons!49722) (tail!7337 (toList!3601 lm!1616))))))

(assert (=> d!1346312 (forall!9656 (tail!7337 (toList!3601 lm!1616)) lambda!156260)))

(assert (=> d!1346312 (= (extractMap!868 (tail!7337 (toList!3601 lm!1616))) lt!1633300)))

(declare-fun b!4436271 () Bool)

(assert (=> b!4436271 (= e!2762329 (addToMapMapFromBucket!428 (_2!28098 (h!55431 (tail!7337 (toList!3601 lm!1616)))) (extractMap!868 (t!356788 (tail!7337 (toList!3601 lm!1616))))))))

(declare-fun b!4436272 () Bool)

(assert (=> b!4436272 (= e!2762329 (ListMap!2846 Nil!49721))))

(assert (= (and d!1346312 c!755035) b!4436271))

(assert (= (and d!1346312 (not c!755035)) b!4436272))

(declare-fun m!5123235 () Bool)

(assert (=> d!1346312 m!5123235))

(assert (=> d!1346312 m!5122969))

(declare-fun m!5123237 () Bool)

(assert (=> d!1346312 m!5123237))

(declare-fun m!5123239 () Bool)

(assert (=> b!4436271 m!5123239))

(assert (=> b!4436271 m!5123239))

(declare-fun m!5123241 () Bool)

(assert (=> b!4436271 m!5123241))

(assert (=> b!4436141 d!1346312))

(declare-fun d!1346314 () Bool)

(assert (=> d!1346314 (= (tail!7337 (toList!3601 lm!1616)) (t!356788 (toList!3601 lm!1616)))))

(assert (=> b!4436141 d!1346314))

(declare-fun b!4436291 () Bool)

(declare-fun e!2762347 () Unit!83387)

(declare-fun e!2762343 () Unit!83387)

(assert (=> b!4436291 (= e!2762347 e!2762343)))

(declare-fun c!755044 () Bool)

(declare-fun call!308687 () Bool)

(assert (=> b!4436291 (= c!755044 call!308687)))

(declare-fun b!4436292 () Bool)

(assert (=> b!4436292 false))

(declare-fun lt!1633319 () Unit!83387)

(declare-fun lt!1633321 () Unit!83387)

(assert (=> b!4436292 (= lt!1633319 lt!1633321)))

(declare-fun containsKey!1198 (List!49845 K!11090) Bool)

(assert (=> b!4436292 (containsKey!1198 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616)))) key!3717)))

(declare-fun lemmaInGetKeysListThenContainsKey!274 (List!49845 K!11090) Unit!83387)

(assert (=> b!4436292 (= lt!1633321 (lemmaInGetKeysListThenContainsKey!274 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616)))) key!3717))))

(declare-fun Unit!83396 () Unit!83387)

(assert (=> b!4436292 (= e!2762343 Unit!83396)))

(declare-fun b!4436293 () Bool)

(declare-fun e!2762342 () Bool)

(declare-datatypes ((List!49848 0))(
  ( (Nil!49724) (Cons!49724 (h!55435 K!11090) (t!356790 List!49848)) )
))
(declare-fun contains!12275 (List!49848 K!11090) Bool)

(declare-fun keys!17014 (ListMap!2845) List!49848)

(assert (=> b!4436293 (= e!2762342 (not (contains!12275 (keys!17014 (extractMap!868 (tail!7337 (toList!3601 lm!1616)))) key!3717)))))

(declare-fun b!4436294 () Bool)

(declare-fun e!2762344 () Bool)

(assert (=> b!4436294 (= e!2762344 (contains!12275 (keys!17014 (extractMap!868 (tail!7337 (toList!3601 lm!1616)))) key!3717))))

(declare-fun b!4436295 () Bool)

(declare-fun e!2762345 () List!49848)

(assert (=> b!4436295 (= e!2762345 (keys!17014 (extractMap!868 (tail!7337 (toList!3601 lm!1616)))))))

(declare-fun b!4436296 () Bool)

(declare-fun Unit!83397 () Unit!83387)

(assert (=> b!4436296 (= e!2762343 Unit!83397)))

(declare-fun d!1346316 () Bool)

(declare-fun e!2762346 () Bool)

(assert (=> d!1346316 e!2762346))

(declare-fun res!1836074 () Bool)

(assert (=> d!1346316 (=> res!1836074 e!2762346)))

(assert (=> d!1346316 (= res!1836074 e!2762342)))

(declare-fun res!1836075 () Bool)

(assert (=> d!1346316 (=> (not res!1836075) (not e!2762342))))

(declare-fun lt!1633324 () Bool)

(assert (=> d!1346316 (= res!1836075 (not lt!1633324))))

(declare-fun lt!1633317 () Bool)

(assert (=> d!1346316 (= lt!1633324 lt!1633317)))

(declare-fun lt!1633320 () Unit!83387)

(assert (=> d!1346316 (= lt!1633320 e!2762347)))

(declare-fun c!755043 () Bool)

(assert (=> d!1346316 (= c!755043 lt!1633317)))

(assert (=> d!1346316 (= lt!1633317 (containsKey!1198 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616)))) key!3717))))

(assert (=> d!1346316 (= (contains!12268 (extractMap!868 (tail!7337 (toList!3601 lm!1616))) key!3717) lt!1633324)))

(declare-fun b!4436297 () Bool)

(declare-fun lt!1633318 () Unit!83387)

(assert (=> b!4436297 (= e!2762347 lt!1633318)))

(declare-fun lt!1633323 () Unit!83387)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!668 (List!49845 K!11090) Unit!83387)

(assert (=> b!4436297 (= lt!1633323 (lemmaContainsKeyImpliesGetValueByKeyDefined!668 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616)))) key!3717))))

(declare-fun isDefined!8065 (Option!10773) Bool)

(assert (=> b!4436297 (isDefined!8065 (getValueByKey!759 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616)))) key!3717))))

(declare-fun lt!1633322 () Unit!83387)

(assert (=> b!4436297 (= lt!1633322 lt!1633323)))

(declare-fun lemmaInListThenGetKeysListContains!273 (List!49845 K!11090) Unit!83387)

(assert (=> b!4436297 (= lt!1633318 (lemmaInListThenGetKeysListContains!273 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616)))) key!3717))))

(assert (=> b!4436297 call!308687))

(declare-fun bm!308682 () Bool)

(assert (=> bm!308682 (= call!308687 (contains!12275 e!2762345 key!3717))))

(declare-fun c!755042 () Bool)

(assert (=> bm!308682 (= c!755042 c!755043)))

(declare-fun b!4436298 () Bool)

(declare-fun getKeysList!276 (List!49845) List!49848)

(assert (=> b!4436298 (= e!2762345 (getKeysList!276 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616))))))))

(declare-fun b!4436299 () Bool)

(assert (=> b!4436299 (= e!2762346 e!2762344)))

(declare-fun res!1836076 () Bool)

(assert (=> b!4436299 (=> (not res!1836076) (not e!2762344))))

(assert (=> b!4436299 (= res!1836076 (isDefined!8065 (getValueByKey!759 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616)))) key!3717)))))

(assert (= (and d!1346316 c!755043) b!4436297))

(assert (= (and d!1346316 (not c!755043)) b!4436291))

(assert (= (and b!4436291 c!755044) b!4436292))

(assert (= (and b!4436291 (not c!755044)) b!4436296))

(assert (= (or b!4436297 b!4436291) bm!308682))

(assert (= (and bm!308682 c!755042) b!4436298))

(assert (= (and bm!308682 (not c!755042)) b!4436295))

(assert (= (and d!1346316 res!1836075) b!4436293))

(assert (= (and d!1346316 (not res!1836074)) b!4436299))

(assert (= (and b!4436299 res!1836076) b!4436294))

(assert (=> b!4436295 m!5122971))

(declare-fun m!5123243 () Bool)

(assert (=> b!4436295 m!5123243))

(declare-fun m!5123245 () Bool)

(assert (=> bm!308682 m!5123245))

(declare-fun m!5123247 () Bool)

(assert (=> b!4436299 m!5123247))

(assert (=> b!4436299 m!5123247))

(declare-fun m!5123249 () Bool)

(assert (=> b!4436299 m!5123249))

(assert (=> b!4436293 m!5122971))

(assert (=> b!4436293 m!5123243))

(assert (=> b!4436293 m!5123243))

(declare-fun m!5123251 () Bool)

(assert (=> b!4436293 m!5123251))

(declare-fun m!5123253 () Bool)

(assert (=> b!4436298 m!5123253))

(assert (=> b!4436294 m!5122971))

(assert (=> b!4436294 m!5123243))

(assert (=> b!4436294 m!5123243))

(assert (=> b!4436294 m!5123251))

(declare-fun m!5123255 () Bool)

(assert (=> d!1346316 m!5123255))

(declare-fun m!5123257 () Bool)

(assert (=> b!4436297 m!5123257))

(assert (=> b!4436297 m!5123247))

(assert (=> b!4436297 m!5123247))

(assert (=> b!4436297 m!5123249))

(declare-fun m!5123259 () Bool)

(assert (=> b!4436297 m!5123259))

(assert (=> b!4436292 m!5123255))

(declare-fun m!5123261 () Bool)

(assert (=> b!4436292 m!5123261))

(assert (=> b!4436141 d!1346316))

(declare-fun d!1346318 () Bool)

(declare-fun res!1836081 () Bool)

(declare-fun e!2762352 () Bool)

(assert (=> d!1346318 (=> res!1836081 e!2762352)))

(assert (=> d!1346318 (= res!1836081 ((_ is Nil!49722) (toList!3601 lt!1633180)))))

(assert (=> d!1346318 (= (forall!9656 (toList!3601 lt!1633180) lambda!156234) e!2762352)))

(declare-fun b!4436304 () Bool)

(declare-fun e!2762353 () Bool)

(assert (=> b!4436304 (= e!2762352 e!2762353)))

(declare-fun res!1836082 () Bool)

(assert (=> b!4436304 (=> (not res!1836082) (not e!2762353))))

(declare-fun dynLambda!20890 (Int tuple2!49608) Bool)

(assert (=> b!4436304 (= res!1836082 (dynLambda!20890 lambda!156234 (h!55431 (toList!3601 lt!1633180))))))

(declare-fun b!4436305 () Bool)

(assert (=> b!4436305 (= e!2762353 (forall!9656 (t!356788 (toList!3601 lt!1633180)) lambda!156234))))

(assert (= (and d!1346318 (not res!1836081)) b!4436304))

(assert (= (and b!4436304 res!1836082) b!4436305))

(declare-fun b_lambda!144577 () Bool)

(assert (=> (not b_lambda!144577) (not b!4436304)))

(declare-fun m!5123263 () Bool)

(assert (=> b!4436304 m!5123263))

(declare-fun m!5123265 () Bool)

(assert (=> b!4436305 m!5123265))

(assert (=> b!4436130 d!1346318))

(declare-fun d!1346320 () Bool)

(declare-fun e!2762354 () Bool)

(assert (=> d!1346320 e!2762354))

(declare-fun res!1836084 () Bool)

(assert (=> d!1346320 (=> (not res!1836084) (not e!2762354))))

(declare-fun lt!1633328 () ListLongMap!2251)

(assert (=> d!1346320 (= res!1836084 (contains!12269 lt!1633328 (_1!28098 lt!1633175)))))

(declare-fun lt!1633327 () List!49846)

(assert (=> d!1346320 (= lt!1633328 (ListLongMap!2252 lt!1633327))))

(declare-fun lt!1633325 () Unit!83387)

(declare-fun lt!1633326 () Unit!83387)

(assert (=> d!1346320 (= lt!1633325 lt!1633326)))

(assert (=> d!1346320 (= (getValueByKey!760 lt!1633327 (_1!28098 lt!1633175)) (Some!10773 (_2!28098 lt!1633175)))))

(assert (=> d!1346320 (= lt!1633326 (lemmaContainsTupThenGetReturnValue!493 lt!1633327 (_1!28098 lt!1633175) (_2!28098 lt!1633175)))))

(assert (=> d!1346320 (= lt!1633327 (insertStrictlySorted!284 (toList!3601 lm!1616) (_1!28098 lt!1633175) (_2!28098 lt!1633175)))))

(assert (=> d!1346320 (= (+!1180 lm!1616 lt!1633175) lt!1633328)))

(declare-fun b!4436306 () Bool)

(declare-fun res!1836083 () Bool)

(assert (=> b!4436306 (=> (not res!1836083) (not e!2762354))))

(assert (=> b!4436306 (= res!1836083 (= (getValueByKey!760 (toList!3601 lt!1633328) (_1!28098 lt!1633175)) (Some!10773 (_2!28098 lt!1633175))))))

(declare-fun b!4436307 () Bool)

(assert (=> b!4436307 (= e!2762354 (contains!12274 (toList!3601 lt!1633328) lt!1633175))))

(assert (= (and d!1346320 res!1836084) b!4436306))

(assert (= (and b!4436306 res!1836083) b!4436307))

(declare-fun m!5123267 () Bool)

(assert (=> d!1346320 m!5123267))

(declare-fun m!5123269 () Bool)

(assert (=> d!1346320 m!5123269))

(declare-fun m!5123271 () Bool)

(assert (=> d!1346320 m!5123271))

(declare-fun m!5123273 () Bool)

(assert (=> d!1346320 m!5123273))

(declare-fun m!5123275 () Bool)

(assert (=> b!4436306 m!5123275))

(declare-fun m!5123277 () Bool)

(assert (=> b!4436307 m!5123277))

(assert (=> b!4436130 d!1346320))

(declare-fun d!1346322 () Bool)

(assert (=> d!1346322 (forall!9656 (toList!3601 (+!1180 lm!1616 (tuple2!49609 hash!366 newBucket!194))) lambda!156234)))

(declare-fun lt!1633331 () Unit!83387)

(declare-fun choose!28142 (ListLongMap!2251 Int (_ BitVec 64) List!49845) Unit!83387)

(assert (=> d!1346322 (= lt!1633331 (choose!28142 lm!1616 lambda!156234 hash!366 newBucket!194))))

(declare-fun e!2762357 () Bool)

(assert (=> d!1346322 e!2762357))

(declare-fun res!1836087 () Bool)

(assert (=> d!1346322 (=> (not res!1836087) (not e!2762357))))

(assert (=> d!1346322 (= res!1836087 (forall!9656 (toList!3601 lm!1616) lambda!156234))))

(assert (=> d!1346322 (= (addValidProp!449 lm!1616 lambda!156234 hash!366 newBucket!194) lt!1633331)))

(declare-fun b!4436311 () Bool)

(assert (=> b!4436311 (= e!2762357 (dynLambda!20890 lambda!156234 (tuple2!49609 hash!366 newBucket!194)))))

(assert (= (and d!1346322 res!1836087) b!4436311))

(declare-fun b_lambda!144579 () Bool)

(assert (=> (not b_lambda!144579) (not b!4436311)))

(declare-fun m!5123279 () Bool)

(assert (=> d!1346322 m!5123279))

(declare-fun m!5123281 () Bool)

(assert (=> d!1346322 m!5123281))

(declare-fun m!5123283 () Bool)

(assert (=> d!1346322 m!5123283))

(assert (=> d!1346322 m!5122959))

(declare-fun m!5123285 () Bool)

(assert (=> b!4436311 m!5123285))

(assert (=> b!4436130 d!1346322))

(declare-fun d!1346324 () Bool)

(assert (=> d!1346324 true))

(assert (=> d!1346324 true))

(declare-fun lambda!156263 () Int)

(declare-fun forall!9658 (List!49845 Int) Bool)

(assert (=> d!1346324 (= (allKeysSameHash!767 newBucket!194 hash!366 hashF!1220) (forall!9658 newBucket!194 lambda!156263))))

(declare-fun bs!762528 () Bool)

(assert (= bs!762528 d!1346324))

(declare-fun m!5123287 () Bool)

(assert (=> bs!762528 m!5123287))

(assert (=> b!4436140 d!1346324))

(declare-fun d!1346326 () Bool)

(declare-fun res!1836088 () Bool)

(declare-fun e!2762358 () Bool)

(assert (=> d!1346326 (=> res!1836088 e!2762358)))

(assert (=> d!1346326 (= res!1836088 ((_ is Nil!49722) (toList!3601 lm!1616)))))

(assert (=> d!1346326 (= (forall!9656 (toList!3601 lm!1616) lambda!156234) e!2762358)))

(declare-fun b!4436316 () Bool)

(declare-fun e!2762359 () Bool)

(assert (=> b!4436316 (= e!2762358 e!2762359)))

(declare-fun res!1836089 () Bool)

(assert (=> b!4436316 (=> (not res!1836089) (not e!2762359))))

(assert (=> b!4436316 (= res!1836089 (dynLambda!20890 lambda!156234 (h!55431 (toList!3601 lm!1616))))))

(declare-fun b!4436317 () Bool)

(assert (=> b!4436317 (= e!2762359 (forall!9656 (t!356788 (toList!3601 lm!1616)) lambda!156234))))

(assert (= (and d!1346326 (not res!1836088)) b!4436316))

(assert (= (and b!4436316 res!1836089) b!4436317))

(declare-fun b_lambda!144581 () Bool)

(assert (=> (not b_lambda!144581) (not b!4436316)))

(declare-fun m!5123289 () Bool)

(assert (=> b!4436316 m!5123289))

(declare-fun m!5123291 () Bool)

(assert (=> b!4436317 m!5123291))

(assert (=> start!433620 d!1346326))

(declare-fun d!1346328 () Bool)

(declare-fun isStrictlySorted!256 (List!49846) Bool)

(assert (=> d!1346328 (= (inv!65276 lm!1616) (isStrictlySorted!256 (toList!3601 lm!1616)))))

(declare-fun bs!762529 () Bool)

(assert (= bs!762529 d!1346328))

(declare-fun m!5123293 () Bool)

(assert (=> bs!762529 m!5123293))

(assert (=> start!433620 d!1346328))

(declare-fun d!1346330 () Bool)

(declare-fun e!2762365 () Bool)

(assert (=> d!1346330 e!2762365))

(declare-fun res!1836092 () Bool)

(assert (=> d!1346330 (=> res!1836092 e!2762365)))

(declare-fun lt!1633343 () Bool)

(assert (=> d!1346330 (= res!1836092 (not lt!1633343))))

(declare-fun lt!1633340 () Bool)

(assert (=> d!1346330 (= lt!1633343 lt!1633340)))

(declare-fun lt!1633341 () Unit!83387)

(declare-fun e!2762364 () Unit!83387)

(assert (=> d!1346330 (= lt!1633341 e!2762364)))

(declare-fun c!755047 () Bool)

(assert (=> d!1346330 (= c!755047 lt!1633340)))

(declare-fun containsKey!1199 (List!49846 (_ BitVec 64)) Bool)

(assert (=> d!1346330 (= lt!1633340 (containsKey!1199 (toList!3601 lm!1616) hash!366))))

(assert (=> d!1346330 (= (contains!12269 lm!1616 hash!366) lt!1633343)))

(declare-fun b!4436324 () Bool)

(declare-fun lt!1633342 () Unit!83387)

(assert (=> b!4436324 (= e!2762364 lt!1633342)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!669 (List!49846 (_ BitVec 64)) Unit!83387)

(assert (=> b!4436324 (= lt!1633342 (lemmaContainsKeyImpliesGetValueByKeyDefined!669 (toList!3601 lm!1616) hash!366))))

(declare-fun isDefined!8066 (Option!10774) Bool)

(assert (=> b!4436324 (isDefined!8066 (getValueByKey!760 (toList!3601 lm!1616) hash!366))))

(declare-fun b!4436325 () Bool)

(declare-fun Unit!83398 () Unit!83387)

(assert (=> b!4436325 (= e!2762364 Unit!83398)))

(declare-fun b!4436326 () Bool)

(assert (=> b!4436326 (= e!2762365 (isDefined!8066 (getValueByKey!760 (toList!3601 lm!1616) hash!366)))))

(assert (= (and d!1346330 c!755047) b!4436324))

(assert (= (and d!1346330 (not c!755047)) b!4436325))

(assert (= (and d!1346330 (not res!1836092)) b!4436326))

(declare-fun m!5123295 () Bool)

(assert (=> d!1346330 m!5123295))

(declare-fun m!5123297 () Bool)

(assert (=> b!4436324 m!5123297))

(declare-fun m!5123299 () Bool)

(assert (=> b!4436324 m!5123299))

(assert (=> b!4436324 m!5123299))

(declare-fun m!5123301 () Bool)

(assert (=> b!4436324 m!5123301))

(assert (=> b!4436326 m!5123299))

(assert (=> b!4436326 m!5123299))

(assert (=> b!4436326 m!5123301))

(assert (=> b!4436139 d!1346330))

(assert (=> b!4436132 d!1346326))

(declare-fun bs!762530 () Bool)

(declare-fun d!1346332 () Bool)

(assert (= bs!762530 (and d!1346332 d!1346312)))

(declare-fun lambda!156266 () Int)

(assert (=> bs!762530 (not (= lambda!156266 lambda!156260))))

(declare-fun bs!762531 () Bool)

(assert (= bs!762531 (and d!1346332 d!1346282)))

(assert (=> bs!762531 (not (= lambda!156266 lambda!156258))))

(declare-fun bs!762532 () Bool)

(assert (= bs!762532 (and d!1346332 start!433620)))

(assert (=> bs!762532 (not (= lambda!156266 lambda!156234))))

(declare-fun bs!762533 () Bool)

(assert (= bs!762533 (and d!1346332 d!1346308)))

(assert (=> bs!762533 (not (= lambda!156266 lambda!156259))))

(declare-fun bs!762534 () Bool)

(assert (= bs!762534 (and d!1346332 d!1346252)))

(assert (=> bs!762534 (not (= lambda!156266 lambda!156250))))

(assert (=> d!1346332 true))

(assert (=> d!1346332 (= (allKeysSameHashInMap!913 lm!1616 hashF!1220) (forall!9656 (toList!3601 lm!1616) lambda!156266))))

(declare-fun bs!762535 () Bool)

(assert (= bs!762535 d!1346332))

(declare-fun m!5123303 () Bool)

(assert (=> bs!762535 m!5123303))

(assert (=> b!4436142 d!1346332))

(declare-fun d!1346334 () Bool)

(declare-fun get!16212 (Option!10774) List!49845)

(assert (=> d!1346334 (= (apply!11659 lm!1616 hash!366) (get!16212 (getValueByKey!760 (toList!3601 lm!1616) hash!366)))))

(declare-fun bs!762536 () Bool)

(assert (= bs!762536 d!1346334))

(assert (=> bs!762536 m!5123299))

(assert (=> bs!762536 m!5123299))

(declare-fun m!5123305 () Bool)

(assert (=> bs!762536 m!5123305))

(assert (=> b!4436131 d!1346334))

(declare-fun b!4436329 () Bool)

(declare-fun e!2762371 () Unit!83387)

(declare-fun e!2762367 () Unit!83387)

(assert (=> b!4436329 (= e!2762371 e!2762367)))

(declare-fun c!755050 () Bool)

(declare-fun call!308688 () Bool)

(assert (=> b!4436329 (= c!755050 call!308688)))

(declare-fun b!4436330 () Bool)

(assert (=> b!4436330 false))

(declare-fun lt!1633346 () Unit!83387)

(declare-fun lt!1633348 () Unit!83387)

(assert (=> b!4436330 (= lt!1633346 lt!1633348)))

(assert (=> b!4436330 (containsKey!1198 (toList!3602 (extractMap!868 (toList!3601 lm!1616))) key!3717)))

(assert (=> b!4436330 (= lt!1633348 (lemmaInGetKeysListThenContainsKey!274 (toList!3602 (extractMap!868 (toList!3601 lm!1616))) key!3717))))

(declare-fun Unit!83399 () Unit!83387)

(assert (=> b!4436330 (= e!2762367 Unit!83399)))

(declare-fun b!4436331 () Bool)

(declare-fun e!2762366 () Bool)

(assert (=> b!4436331 (= e!2762366 (not (contains!12275 (keys!17014 (extractMap!868 (toList!3601 lm!1616))) key!3717)))))

(declare-fun b!4436332 () Bool)

(declare-fun e!2762368 () Bool)

(assert (=> b!4436332 (= e!2762368 (contains!12275 (keys!17014 (extractMap!868 (toList!3601 lm!1616))) key!3717))))

(declare-fun b!4436333 () Bool)

(declare-fun e!2762369 () List!49848)

(assert (=> b!4436333 (= e!2762369 (keys!17014 (extractMap!868 (toList!3601 lm!1616))))))

(declare-fun b!4436334 () Bool)

(declare-fun Unit!83400 () Unit!83387)

(assert (=> b!4436334 (= e!2762367 Unit!83400)))

(declare-fun d!1346336 () Bool)

(declare-fun e!2762370 () Bool)

(assert (=> d!1346336 e!2762370))

(declare-fun res!1836093 () Bool)

(assert (=> d!1346336 (=> res!1836093 e!2762370)))

(assert (=> d!1346336 (= res!1836093 e!2762366)))

(declare-fun res!1836094 () Bool)

(assert (=> d!1346336 (=> (not res!1836094) (not e!2762366))))

(declare-fun lt!1633351 () Bool)

(assert (=> d!1346336 (= res!1836094 (not lt!1633351))))

(declare-fun lt!1633344 () Bool)

(assert (=> d!1346336 (= lt!1633351 lt!1633344)))

(declare-fun lt!1633347 () Unit!83387)

(assert (=> d!1346336 (= lt!1633347 e!2762371)))

(declare-fun c!755049 () Bool)

(assert (=> d!1346336 (= c!755049 lt!1633344)))

(assert (=> d!1346336 (= lt!1633344 (containsKey!1198 (toList!3602 (extractMap!868 (toList!3601 lm!1616))) key!3717))))

(assert (=> d!1346336 (= (contains!12268 (extractMap!868 (toList!3601 lm!1616)) key!3717) lt!1633351)))

(declare-fun b!4436335 () Bool)

(declare-fun lt!1633345 () Unit!83387)

(assert (=> b!4436335 (= e!2762371 lt!1633345)))

(declare-fun lt!1633350 () Unit!83387)

(assert (=> b!4436335 (= lt!1633350 (lemmaContainsKeyImpliesGetValueByKeyDefined!668 (toList!3602 (extractMap!868 (toList!3601 lm!1616))) key!3717))))

(assert (=> b!4436335 (isDefined!8065 (getValueByKey!759 (toList!3602 (extractMap!868 (toList!3601 lm!1616))) key!3717))))

(declare-fun lt!1633349 () Unit!83387)

(assert (=> b!4436335 (= lt!1633349 lt!1633350)))

(assert (=> b!4436335 (= lt!1633345 (lemmaInListThenGetKeysListContains!273 (toList!3602 (extractMap!868 (toList!3601 lm!1616))) key!3717))))

(assert (=> b!4436335 call!308688))

(declare-fun bm!308683 () Bool)

(assert (=> bm!308683 (= call!308688 (contains!12275 e!2762369 key!3717))))

(declare-fun c!755048 () Bool)

(assert (=> bm!308683 (= c!755048 c!755049)))

(declare-fun b!4436336 () Bool)

(assert (=> b!4436336 (= e!2762369 (getKeysList!276 (toList!3602 (extractMap!868 (toList!3601 lm!1616)))))))

(declare-fun b!4436337 () Bool)

(assert (=> b!4436337 (= e!2762370 e!2762368)))

(declare-fun res!1836095 () Bool)

(assert (=> b!4436337 (=> (not res!1836095) (not e!2762368))))

(assert (=> b!4436337 (= res!1836095 (isDefined!8065 (getValueByKey!759 (toList!3602 (extractMap!868 (toList!3601 lm!1616))) key!3717)))))

(assert (= (and d!1346336 c!755049) b!4436335))

(assert (= (and d!1346336 (not c!755049)) b!4436329))

(assert (= (and b!4436329 c!755050) b!4436330))

(assert (= (and b!4436329 (not c!755050)) b!4436334))

(assert (= (or b!4436335 b!4436329) bm!308683))

(assert (= (and bm!308683 c!755048) b!4436336))

(assert (= (and bm!308683 (not c!755048)) b!4436333))

(assert (= (and d!1346336 res!1836094) b!4436331))

(assert (= (and d!1346336 (not res!1836093)) b!4436337))

(assert (= (and b!4436337 res!1836095) b!4436332))

(assert (=> b!4436333 m!5122963))

(declare-fun m!5123307 () Bool)

(assert (=> b!4436333 m!5123307))

(declare-fun m!5123309 () Bool)

(assert (=> bm!308683 m!5123309))

(declare-fun m!5123311 () Bool)

(assert (=> b!4436337 m!5123311))

(assert (=> b!4436337 m!5123311))

(declare-fun m!5123313 () Bool)

(assert (=> b!4436337 m!5123313))

(assert (=> b!4436331 m!5122963))

(assert (=> b!4436331 m!5123307))

(assert (=> b!4436331 m!5123307))

(declare-fun m!5123315 () Bool)

(assert (=> b!4436331 m!5123315))

(declare-fun m!5123317 () Bool)

(assert (=> b!4436336 m!5123317))

(assert (=> b!4436332 m!5122963))

(assert (=> b!4436332 m!5123307))

(assert (=> b!4436332 m!5123307))

(assert (=> b!4436332 m!5123315))

(declare-fun m!5123319 () Bool)

(assert (=> d!1346336 m!5123319))

(declare-fun m!5123321 () Bool)

(assert (=> b!4436335 m!5123321))

(assert (=> b!4436335 m!5123311))

(assert (=> b!4436335 m!5123311))

(assert (=> b!4436335 m!5123313))

(declare-fun m!5123323 () Bool)

(assert (=> b!4436335 m!5123323))

(assert (=> b!4436330 m!5123319))

(declare-fun m!5123325 () Bool)

(assert (=> b!4436330 m!5123325))

(assert (=> b!4436135 d!1346336))

(declare-fun bs!762537 () Bool)

(declare-fun d!1346338 () Bool)

(assert (= bs!762537 (and d!1346338 d!1346312)))

(declare-fun lambda!156267 () Int)

(assert (=> bs!762537 (= lambda!156267 lambda!156260)))

(declare-fun bs!762538 () Bool)

(assert (= bs!762538 (and d!1346338 d!1346282)))

(assert (=> bs!762538 (= lambda!156267 lambda!156258)))

(declare-fun bs!762539 () Bool)

(assert (= bs!762539 (and d!1346338 start!433620)))

(assert (=> bs!762539 (= lambda!156267 lambda!156234)))

(declare-fun bs!762540 () Bool)

(assert (= bs!762540 (and d!1346338 d!1346308)))

(assert (=> bs!762540 (= lambda!156267 lambda!156259)))

(declare-fun bs!762541 () Bool)

(assert (= bs!762541 (and d!1346338 d!1346332)))

(assert (=> bs!762541 (not (= lambda!156267 lambda!156266))))

(declare-fun bs!762542 () Bool)

(assert (= bs!762542 (and d!1346338 d!1346252)))

(assert (=> bs!762542 (= lambda!156267 lambda!156250)))

(declare-fun lt!1633352 () ListMap!2845)

(assert (=> d!1346338 (invariantList!829 (toList!3602 lt!1633352))))

(declare-fun e!2762372 () ListMap!2845)

(assert (=> d!1346338 (= lt!1633352 e!2762372)))

(declare-fun c!755051 () Bool)

(assert (=> d!1346338 (= c!755051 ((_ is Cons!49722) (toList!3601 lm!1616)))))

(assert (=> d!1346338 (forall!9656 (toList!3601 lm!1616) lambda!156267)))

(assert (=> d!1346338 (= (extractMap!868 (toList!3601 lm!1616)) lt!1633352)))

(declare-fun b!4436338 () Bool)

(assert (=> b!4436338 (= e!2762372 (addToMapMapFromBucket!428 (_2!28098 (h!55431 (toList!3601 lm!1616))) (extractMap!868 (t!356788 (toList!3601 lm!1616)))))))

(declare-fun b!4436339 () Bool)

(assert (=> b!4436339 (= e!2762372 (ListMap!2846 Nil!49721))))

(assert (= (and d!1346338 c!755051) b!4436338))

(assert (= (and d!1346338 (not c!755051)) b!4436339))

(declare-fun m!5123327 () Bool)

(assert (=> d!1346338 m!5123327))

(declare-fun m!5123329 () Bool)

(assert (=> d!1346338 m!5123329))

(declare-fun m!5123331 () Bool)

(assert (=> b!4436338 m!5123331))

(assert (=> b!4436338 m!5123331))

(declare-fun m!5123333 () Bool)

(assert (=> b!4436338 m!5123333))

(assert (=> b!4436135 d!1346338))

(declare-fun d!1346340 () Bool)

(declare-fun hash!2236 (Hashable!5201 K!11090) (_ BitVec 64))

(assert (=> d!1346340 (= (hash!2232 hashF!1220 key!3717) (hash!2236 hashF!1220 key!3717))))

(declare-fun bs!762543 () Bool)

(assert (= bs!762543 d!1346340))

(declare-fun m!5123335 () Bool)

(assert (=> bs!762543 m!5123335))

(assert (=> b!4436144 d!1346340))

(declare-fun d!1346342 () Bool)

(declare-fun res!1836100 () Bool)

(declare-fun e!2762377 () Bool)

(assert (=> d!1346342 (=> res!1836100 e!2762377)))

(assert (=> d!1346342 (= res!1836100 (not ((_ is Cons!49721) newBucket!194)))))

(assert (=> d!1346342 (= (noDuplicateKeys!807 newBucket!194) e!2762377)))

(declare-fun b!4436344 () Bool)

(declare-fun e!2762378 () Bool)

(assert (=> b!4436344 (= e!2762377 e!2762378)))

(declare-fun res!1836101 () Bool)

(assert (=> b!4436344 (=> (not res!1836101) (not e!2762378))))

(declare-fun containsKey!1200 (List!49845 K!11090) Bool)

(assert (=> b!4436344 (= res!1836101 (not (containsKey!1200 (t!356787 newBucket!194) (_1!28097 (h!55430 newBucket!194)))))))

(declare-fun b!4436345 () Bool)

(assert (=> b!4436345 (= e!2762378 (noDuplicateKeys!807 (t!356787 newBucket!194)))))

(assert (= (and d!1346342 (not res!1836100)) b!4436344))

(assert (= (and b!4436344 res!1836101) b!4436345))

(declare-fun m!5123337 () Bool)

(assert (=> b!4436344 m!5123337))

(declare-fun m!5123339 () Bool)

(assert (=> b!4436345 m!5123339))

(assert (=> b!4436137 d!1346342))

(declare-fun bs!762544 () Bool)

(declare-fun d!1346344 () Bool)

(assert (= bs!762544 (and d!1346344 d!1346312)))

(declare-fun lambda!156270 () Int)

(assert (=> bs!762544 (= lambda!156270 lambda!156260)))

(declare-fun bs!762545 () Bool)

(assert (= bs!762545 (and d!1346344 d!1346338)))

(assert (=> bs!762545 (= lambda!156270 lambda!156267)))

(declare-fun bs!762546 () Bool)

(assert (= bs!762546 (and d!1346344 d!1346282)))

(assert (=> bs!762546 (= lambda!156270 lambda!156258)))

(declare-fun bs!762547 () Bool)

(assert (= bs!762547 (and d!1346344 start!433620)))

(assert (=> bs!762547 (= lambda!156270 lambda!156234)))

(declare-fun bs!762548 () Bool)

(assert (= bs!762548 (and d!1346344 d!1346308)))

(assert (=> bs!762548 (= lambda!156270 lambda!156259)))

(declare-fun bs!762549 () Bool)

(assert (= bs!762549 (and d!1346344 d!1346332)))

(assert (=> bs!762549 (not (= lambda!156270 lambda!156266))))

(declare-fun bs!762550 () Bool)

(assert (= bs!762550 (and d!1346344 d!1346252)))

(assert (=> bs!762550 (= lambda!156270 lambda!156250)))

(assert (=> d!1346344 (contains!12268 (extractMap!868 (toList!3601 lm!1616)) key!3717)))

(declare-fun lt!1633355 () Unit!83387)

(declare-fun choose!28143 (ListLongMap!2251 K!11090 Hashable!5201) Unit!83387)

(assert (=> d!1346344 (= lt!1633355 (choose!28143 lm!1616 key!3717 hashF!1220))))

(assert (=> d!1346344 (forall!9656 (toList!3601 lm!1616) lambda!156270)))

(assert (=> d!1346344 (= (lemmaExtractTailMapContainsThenExtractMapDoes!62 lm!1616 key!3717 hashF!1220) lt!1633355)))

(declare-fun bs!762551 () Bool)

(assert (= bs!762551 d!1346344))

(assert (=> bs!762551 m!5122963))

(assert (=> bs!762551 m!5122963))

(assert (=> bs!762551 m!5122965))

(declare-fun m!5123341 () Bool)

(assert (=> bs!762551 m!5123341))

(declare-fun m!5123343 () Bool)

(assert (=> bs!762551 m!5123343))

(assert (=> b!4436136 d!1346344))

(declare-fun b!4436350 () Bool)

(declare-fun e!2762381 () Bool)

(declare-fun tp!1333838 () Bool)

(assert (=> b!4436350 (= e!2762381 (and tp_is_empty!26475 tp_is_empty!26473 tp!1333838))))

(assert (=> b!4436145 (= tp!1333826 e!2762381)))

(assert (= (and b!4436145 ((_ is Cons!49721) (t!356787 newBucket!194))) b!4436350))

(declare-fun b!4436355 () Bool)

(declare-fun e!2762384 () Bool)

(declare-fun tp!1333843 () Bool)

(declare-fun tp!1333844 () Bool)

(assert (=> b!4436355 (= e!2762384 (and tp!1333843 tp!1333844))))

(assert (=> b!4436143 (= tp!1333825 e!2762384)))

(assert (= (and b!4436143 ((_ is Cons!49722) (toList!3601 lm!1616))) b!4436355))

(declare-fun b_lambda!144583 () Bool)

(assert (= b_lambda!144579 (or start!433620 b_lambda!144583)))

(declare-fun bs!762552 () Bool)

(declare-fun d!1346346 () Bool)

(assert (= bs!762552 (and d!1346346 start!433620)))

(assert (=> bs!762552 (= (dynLambda!20890 lambda!156234 (tuple2!49609 hash!366 newBucket!194)) (noDuplicateKeys!807 (_2!28098 (tuple2!49609 hash!366 newBucket!194))))))

(declare-fun m!5123345 () Bool)

(assert (=> bs!762552 m!5123345))

(assert (=> b!4436311 d!1346346))

(declare-fun b_lambda!144585 () Bool)

(assert (= b_lambda!144581 (or start!433620 b_lambda!144585)))

(declare-fun bs!762553 () Bool)

(declare-fun d!1346348 () Bool)

(assert (= bs!762553 (and d!1346348 start!433620)))

(assert (=> bs!762553 (= (dynLambda!20890 lambda!156234 (h!55431 (toList!3601 lm!1616))) (noDuplicateKeys!807 (_2!28098 (h!55431 (toList!3601 lm!1616)))))))

(declare-fun m!5123347 () Bool)

(assert (=> bs!762553 m!5123347))

(assert (=> b!4436316 d!1346348))

(declare-fun b_lambda!144587 () Bool)

(assert (= b_lambda!144577 (or start!433620 b_lambda!144587)))

(declare-fun bs!762554 () Bool)

(declare-fun d!1346350 () Bool)

(assert (= bs!762554 (and d!1346350 start!433620)))

(assert (=> bs!762554 (= (dynLambda!20890 lambda!156234 (h!55431 (toList!3601 lt!1633180))) (noDuplicateKeys!807 (_2!28098 (h!55431 (toList!3601 lt!1633180)))))))

(declare-fun m!5123349 () Bool)

(assert (=> bs!762554 m!5123349))

(assert (=> b!4436304 d!1346350))

(check-sat (not b!4436344) (not b!4436338) (not b!4436169) (not d!1346264) (not d!1346308) (not b!4436330) (not bs!762553) (not bs!762554) (not d!1346310) (not d!1346306) (not d!1346280) (not b!4436350) (not d!1346332) (not b_lambda!144583) tp_is_empty!26475 (not d!1346322) (not b!4436203) (not d!1346336) (not b!4436332) (not d!1346324) (not b!4436170) (not b!4436294) (not b_lambda!144585) (not b!4436297) (not b!4436293) (not d!1346344) (not bm!308682) (not d!1346328) (not b!4436204) (not bs!762552) (not b!4436326) (not d!1346282) (not d!1346252) (not b_lambda!144587) (not d!1346334) (not b!4436345) (not b!4436271) (not b!4436331) (not d!1346240) (not b!4436298) (not d!1346316) (not b!4436306) (not b!4436295) (not bm!308683) (not b!4436292) (not b!4436355) (not d!1346338) (not b!4436183) (not b!4436335) (not d!1346320) (not d!1346330) (not b!4436307) (not b!4436337) (not b!4436317) (not b!4436305) (not b!4436333) (not b!4436324) (not d!1346340) (not b!4436299) (not b!4436336) tp_is_empty!26473 (not b!4436269) (not d!1346312))
(check-sat)
(get-model)

(declare-fun d!1346386 () Bool)

(declare-fun e!2762442 () Bool)

(assert (=> d!1346386 e!2762442))

(declare-fun res!1836148 () Bool)

(assert (=> d!1346386 (=> res!1836148 e!2762442)))

(declare-fun lt!1633413 () Bool)

(assert (=> d!1346386 (= res!1836148 (not lt!1633413))))

(declare-fun lt!1633410 () Bool)

(assert (=> d!1346386 (= lt!1633413 lt!1633410)))

(declare-fun lt!1633411 () Unit!83387)

(declare-fun e!2762441 () Unit!83387)

(assert (=> d!1346386 (= lt!1633411 e!2762441)))

(declare-fun c!755070 () Bool)

(assert (=> d!1346386 (= c!755070 lt!1633410)))

(assert (=> d!1346386 (= lt!1633410 (containsKey!1199 (toList!3601 lt!1633255) (_1!28098 lt!1633175)))))

(assert (=> d!1346386 (= (contains!12269 lt!1633255 (_1!28098 lt!1633175)) lt!1633413)))

(declare-fun b!4436438 () Bool)

(declare-fun lt!1633412 () Unit!83387)

(assert (=> b!4436438 (= e!2762441 lt!1633412)))

(assert (=> b!4436438 (= lt!1633412 (lemmaContainsKeyImpliesGetValueByKeyDefined!669 (toList!3601 lt!1633255) (_1!28098 lt!1633175)))))

(assert (=> b!4436438 (isDefined!8066 (getValueByKey!760 (toList!3601 lt!1633255) (_1!28098 lt!1633175)))))

(declare-fun b!4436439 () Bool)

(declare-fun Unit!83415 () Unit!83387)

(assert (=> b!4436439 (= e!2762441 Unit!83415)))

(declare-fun b!4436440 () Bool)

(assert (=> b!4436440 (= e!2762442 (isDefined!8066 (getValueByKey!760 (toList!3601 lt!1633255) (_1!28098 lt!1633175))))))

(assert (= (and d!1346386 c!755070) b!4436438))

(assert (= (and d!1346386 (not c!755070)) b!4436439))

(assert (= (and d!1346386 (not res!1836148)) b!4436440))

(declare-fun m!5123425 () Bool)

(assert (=> d!1346386 m!5123425))

(declare-fun m!5123427 () Bool)

(assert (=> b!4436438 m!5123427))

(assert (=> b!4436438 m!5123121))

(assert (=> b!4436438 m!5123121))

(declare-fun m!5123429 () Bool)

(assert (=> b!4436438 m!5123429))

(assert (=> b!4436440 m!5123121))

(assert (=> b!4436440 m!5123121))

(assert (=> b!4436440 m!5123429))

(assert (=> d!1346264 d!1346386))

(declare-fun b!4436462 () Bool)

(declare-fun e!2762451 () Option!10774)

(assert (=> b!4436462 (= e!2762451 (getValueByKey!760 (t!356788 lt!1633254) (_1!28098 lt!1633175)))))

(declare-fun d!1346388 () Bool)

(declare-fun c!755076 () Bool)

(assert (=> d!1346388 (= c!755076 (and ((_ is Cons!49722) lt!1633254) (= (_1!28098 (h!55431 lt!1633254)) (_1!28098 lt!1633175))))))

(declare-fun e!2762450 () Option!10774)

(assert (=> d!1346388 (= (getValueByKey!760 lt!1633254 (_1!28098 lt!1633175)) e!2762450)))

(declare-fun b!4436463 () Bool)

(assert (=> b!4436463 (= e!2762451 None!10773)))

(declare-fun b!4436460 () Bool)

(assert (=> b!4436460 (= e!2762450 (Some!10773 (_2!28098 (h!55431 lt!1633254))))))

(declare-fun b!4436461 () Bool)

(assert (=> b!4436461 (= e!2762450 e!2762451)))

(declare-fun c!755077 () Bool)

(assert (=> b!4436461 (= c!755077 (and ((_ is Cons!49722) lt!1633254) (not (= (_1!28098 (h!55431 lt!1633254)) (_1!28098 lt!1633175)))))))

(assert (= (and d!1346388 c!755076) b!4436460))

(assert (= (and d!1346388 (not c!755076)) b!4436461))

(assert (= (and b!4436461 c!755077) b!4436462))

(assert (= (and b!4436461 (not c!755077)) b!4436463))

(declare-fun m!5123431 () Bool)

(assert (=> b!4436462 m!5123431))

(assert (=> d!1346264 d!1346388))

(declare-fun d!1346390 () Bool)

(assert (=> d!1346390 (= (getValueByKey!760 lt!1633254 (_1!28098 lt!1633175)) (Some!10773 (_2!28098 lt!1633175)))))

(declare-fun lt!1633438 () Unit!83387)

(declare-fun choose!28145 (List!49846 (_ BitVec 64) List!49845) Unit!83387)

(assert (=> d!1346390 (= lt!1633438 (choose!28145 lt!1633254 (_1!28098 lt!1633175) (_2!28098 lt!1633175)))))

(declare-fun e!2762457 () Bool)

(assert (=> d!1346390 e!2762457))

(declare-fun res!1836160 () Bool)

(assert (=> d!1346390 (=> (not res!1836160) (not e!2762457))))

(assert (=> d!1346390 (= res!1836160 (isStrictlySorted!256 lt!1633254))))

(assert (=> d!1346390 (= (lemmaContainsTupThenGetReturnValue!493 lt!1633254 (_1!28098 lt!1633175) (_2!28098 lt!1633175)) lt!1633438)))

(declare-fun b!4436472 () Bool)

(declare-fun res!1836161 () Bool)

(assert (=> b!4436472 (=> (not res!1836161) (not e!2762457))))

(assert (=> b!4436472 (= res!1836161 (containsKey!1199 lt!1633254 (_1!28098 lt!1633175)))))

(declare-fun b!4436473 () Bool)

(assert (=> b!4436473 (= e!2762457 (contains!12274 lt!1633254 (tuple2!49609 (_1!28098 lt!1633175) (_2!28098 lt!1633175))))))

(assert (= (and d!1346390 res!1836160) b!4436472))

(assert (= (and b!4436472 res!1836161) b!4436473))

(assert (=> d!1346390 m!5123115))

(declare-fun m!5123479 () Bool)

(assert (=> d!1346390 m!5123479))

(declare-fun m!5123481 () Bool)

(assert (=> d!1346390 m!5123481))

(declare-fun m!5123483 () Bool)

(assert (=> b!4436472 m!5123483))

(declare-fun m!5123485 () Bool)

(assert (=> b!4436473 m!5123485))

(assert (=> d!1346264 d!1346390))

(declare-fun bm!308702 () Bool)

(declare-fun call!308708 () List!49846)

(declare-fun call!308709 () List!49846)

(assert (=> bm!308702 (= call!308708 call!308709)))

(declare-fun b!4436529 () Bool)

(declare-fun e!2762505 () List!49846)

(assert (=> b!4436529 (= e!2762505 call!308708)))

(declare-fun b!4436530 () Bool)

(declare-fun c!755088 () Bool)

(assert (=> b!4436530 (= c!755088 (and ((_ is Cons!49722) (toList!3601 lt!1633179)) (bvsgt (_1!28098 (h!55431 (toList!3601 lt!1633179))) (_1!28098 lt!1633175))))))

(declare-fun e!2762502 () List!49846)

(assert (=> b!4436530 (= e!2762502 e!2762505)))

(declare-fun d!1346398 () Bool)

(declare-fun e!2762501 () Bool)

(assert (=> d!1346398 e!2762501))

(declare-fun res!1836199 () Bool)

(assert (=> d!1346398 (=> (not res!1836199) (not e!2762501))))

(declare-fun lt!1633465 () List!49846)

(assert (=> d!1346398 (= res!1836199 (isStrictlySorted!256 lt!1633465))))

(declare-fun e!2762503 () List!49846)

(assert (=> d!1346398 (= lt!1633465 e!2762503)))

(declare-fun c!755091 () Bool)

(assert (=> d!1346398 (= c!755091 (and ((_ is Cons!49722) (toList!3601 lt!1633179)) (bvslt (_1!28098 (h!55431 (toList!3601 lt!1633179))) (_1!28098 lt!1633175))))))

(assert (=> d!1346398 (isStrictlySorted!256 (toList!3601 lt!1633179))))

(assert (=> d!1346398 (= (insertStrictlySorted!284 (toList!3601 lt!1633179) (_1!28098 lt!1633175) (_2!28098 lt!1633175)) lt!1633465)))

(declare-fun bm!308703 () Bool)

(declare-fun call!308707 () List!49846)

(assert (=> bm!308703 (= call!308709 call!308707)))

(declare-fun e!2762504 () List!49846)

(declare-fun bm!308704 () Bool)

(declare-fun $colon$colon!806 (List!49846 tuple2!49608) List!49846)

(assert (=> bm!308704 (= call!308707 ($colon$colon!806 e!2762504 (ite c!755091 (h!55431 (toList!3601 lt!1633179)) (tuple2!49609 (_1!28098 lt!1633175) (_2!28098 lt!1633175)))))))

(declare-fun c!755090 () Bool)

(assert (=> bm!308704 (= c!755090 c!755091)))

(declare-fun b!4436531 () Bool)

(assert (=> b!4436531 (= e!2762503 e!2762502)))

(declare-fun c!755089 () Bool)

(assert (=> b!4436531 (= c!755089 (and ((_ is Cons!49722) (toList!3601 lt!1633179)) (= (_1!28098 (h!55431 (toList!3601 lt!1633179))) (_1!28098 lt!1633175))))))

(declare-fun b!4436532 () Bool)

(assert (=> b!4436532 (= e!2762505 call!308708)))

(declare-fun b!4436533 () Bool)

(assert (=> b!4436533 (= e!2762504 (insertStrictlySorted!284 (t!356788 (toList!3601 lt!1633179)) (_1!28098 lt!1633175) (_2!28098 lt!1633175)))))

(declare-fun b!4436534 () Bool)

(declare-fun res!1836200 () Bool)

(assert (=> b!4436534 (=> (not res!1836200) (not e!2762501))))

(assert (=> b!4436534 (= res!1836200 (containsKey!1199 lt!1633465 (_1!28098 lt!1633175)))))

(declare-fun b!4436535 () Bool)

(assert (=> b!4436535 (= e!2762502 call!308709)))

(declare-fun b!4436536 () Bool)

(assert (=> b!4436536 (= e!2762501 (contains!12274 lt!1633465 (tuple2!49609 (_1!28098 lt!1633175) (_2!28098 lt!1633175))))))

(declare-fun b!4436537 () Bool)

(assert (=> b!4436537 (= e!2762503 call!308707)))

(declare-fun b!4436538 () Bool)

(assert (=> b!4436538 (= e!2762504 (ite c!755089 (t!356788 (toList!3601 lt!1633179)) (ite c!755088 (Cons!49722 (h!55431 (toList!3601 lt!1633179)) (t!356788 (toList!3601 lt!1633179))) Nil!49722)))))

(assert (= (and d!1346398 c!755091) b!4436537))

(assert (= (and d!1346398 (not c!755091)) b!4436531))

(assert (= (and b!4436531 c!755089) b!4436535))

(assert (= (and b!4436531 (not c!755089)) b!4436530))

(assert (= (and b!4436530 c!755088) b!4436532))

(assert (= (and b!4436530 (not c!755088)) b!4436529))

(assert (= (or b!4436532 b!4436529) bm!308702))

(assert (= (or b!4436535 bm!308702) bm!308703))

(assert (= (or b!4436537 bm!308703) bm!308704))

(assert (= (and bm!308704 c!755090) b!4436533))

(assert (= (and bm!308704 (not c!755090)) b!4436538))

(assert (= (and d!1346398 res!1836199) b!4436534))

(assert (= (and b!4436534 res!1836200) b!4436536))

(declare-fun m!5123543 () Bool)

(assert (=> b!4436534 m!5123543))

(declare-fun m!5123549 () Bool)

(assert (=> b!4436533 m!5123549))

(declare-fun m!5123551 () Bool)

(assert (=> b!4436536 m!5123551))

(declare-fun m!5123553 () Bool)

(assert (=> d!1346398 m!5123553))

(declare-fun m!5123555 () Bool)

(assert (=> d!1346398 m!5123555))

(declare-fun m!5123557 () Bool)

(assert (=> bm!308704 m!5123557))

(assert (=> d!1346264 d!1346398))

(declare-fun d!1346418 () Bool)

(assert (=> d!1346418 (isDefined!8065 (getValueByKey!759 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616)))) key!3717))))

(declare-fun lt!1633469 () Unit!83387)

(declare-fun choose!28146 (List!49845 K!11090) Unit!83387)

(assert (=> d!1346418 (= lt!1633469 (choose!28146 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616)))) key!3717))))

(assert (=> d!1346418 (invariantList!829 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616)))))))

(assert (=> d!1346418 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!668 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616)))) key!3717) lt!1633469)))

(declare-fun bs!762598 () Bool)

(assert (= bs!762598 d!1346418))

(assert (=> bs!762598 m!5123247))

(assert (=> bs!762598 m!5123247))

(assert (=> bs!762598 m!5123249))

(declare-fun m!5123567 () Bool)

(assert (=> bs!762598 m!5123567))

(declare-fun m!5123569 () Bool)

(assert (=> bs!762598 m!5123569))

(assert (=> b!4436297 d!1346418))

(declare-fun d!1346424 () Bool)

(declare-fun isEmpty!28378 (Option!10773) Bool)

(assert (=> d!1346424 (= (isDefined!8065 (getValueByKey!759 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616)))) key!3717)) (not (isEmpty!28378 (getValueByKey!759 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616)))) key!3717))))))

(declare-fun bs!762599 () Bool)

(assert (= bs!762599 d!1346424))

(assert (=> bs!762599 m!5123247))

(declare-fun m!5123571 () Bool)

(assert (=> bs!762599 m!5123571))

(assert (=> b!4436297 d!1346424))

(declare-fun b!4436550 () Bool)

(declare-fun e!2762511 () Option!10773)

(declare-fun e!2762512 () Option!10773)

(assert (=> b!4436550 (= e!2762511 e!2762512)))

(declare-fun c!755098 () Bool)

(assert (=> b!4436550 (= c!755098 (and ((_ is Cons!49721) (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616))))) (not (= (_1!28097 (h!55430 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616)))))) key!3717))))))

(declare-fun b!4436551 () Bool)

(assert (=> b!4436551 (= e!2762512 (getValueByKey!759 (t!356787 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616))))) key!3717))))

(declare-fun b!4436552 () Bool)

(assert (=> b!4436552 (= e!2762512 None!10772)))

(declare-fun d!1346426 () Bool)

(declare-fun c!755097 () Bool)

(assert (=> d!1346426 (= c!755097 (and ((_ is Cons!49721) (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616))))) (= (_1!28097 (h!55430 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616)))))) key!3717)))))

(assert (=> d!1346426 (= (getValueByKey!759 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616)))) key!3717) e!2762511)))

(declare-fun b!4436549 () Bool)

(assert (=> b!4436549 (= e!2762511 (Some!10772 (_2!28097 (h!55430 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616))))))))))

(assert (= (and d!1346426 c!755097) b!4436549))

(assert (= (and d!1346426 (not c!755097)) b!4436550))

(assert (= (and b!4436550 c!755098) b!4436551))

(assert (= (and b!4436550 (not c!755098)) b!4436552))

(declare-fun m!5123573 () Bool)

(assert (=> b!4436551 m!5123573))

(assert (=> b!4436297 d!1346426))

(declare-fun d!1346428 () Bool)

(assert (=> d!1346428 (contains!12275 (getKeysList!276 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616))))) key!3717)))

(declare-fun lt!1633472 () Unit!83387)

(declare-fun choose!28147 (List!49845 K!11090) Unit!83387)

(assert (=> d!1346428 (= lt!1633472 (choose!28147 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616)))) key!3717))))

(assert (=> d!1346428 (invariantList!829 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616)))))))

(assert (=> d!1346428 (= (lemmaInListThenGetKeysListContains!273 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616)))) key!3717) lt!1633472)))

(declare-fun bs!762600 () Bool)

(assert (= bs!762600 d!1346428))

(assert (=> bs!762600 m!5123253))

(assert (=> bs!762600 m!5123253))

(declare-fun m!5123575 () Bool)

(assert (=> bs!762600 m!5123575))

(declare-fun m!5123577 () Bool)

(assert (=> bs!762600 m!5123577))

(assert (=> bs!762600 m!5123569))

(assert (=> b!4436297 d!1346428))

(declare-fun d!1346430 () Bool)

(assert (=> d!1346430 (= (get!16212 (getValueByKey!760 (toList!3601 lm!1616) hash!366)) (v!43989 (getValueByKey!760 (toList!3601 lm!1616) hash!366)))))

(assert (=> d!1346334 d!1346430))

(declare-fun b!4436555 () Bool)

(declare-fun e!2762514 () Option!10774)

(assert (=> b!4436555 (= e!2762514 (getValueByKey!760 (t!356788 (toList!3601 lm!1616)) hash!366))))

(declare-fun d!1346432 () Bool)

(declare-fun c!755099 () Bool)

(assert (=> d!1346432 (= c!755099 (and ((_ is Cons!49722) (toList!3601 lm!1616)) (= (_1!28098 (h!55431 (toList!3601 lm!1616))) hash!366)))))

(declare-fun e!2762513 () Option!10774)

(assert (=> d!1346432 (= (getValueByKey!760 (toList!3601 lm!1616) hash!366) e!2762513)))

(declare-fun b!4436556 () Bool)

(assert (=> b!4436556 (= e!2762514 None!10773)))

(declare-fun b!4436553 () Bool)

(assert (=> b!4436553 (= e!2762513 (Some!10773 (_2!28098 (h!55431 (toList!3601 lm!1616)))))))

(declare-fun b!4436554 () Bool)

(assert (=> b!4436554 (= e!2762513 e!2762514)))

(declare-fun c!755100 () Bool)

(assert (=> b!4436554 (= c!755100 (and ((_ is Cons!49722) (toList!3601 lm!1616)) (not (= (_1!28098 (h!55431 (toList!3601 lm!1616))) hash!366))))))

(assert (= (and d!1346432 c!755099) b!4436553))

(assert (= (and d!1346432 (not c!755099)) b!4436554))

(assert (= (and b!4436554 c!755100) b!4436555))

(assert (= (and b!4436554 (not c!755100)) b!4436556))

(declare-fun m!5123579 () Bool)

(assert (=> b!4436555 m!5123579))

(assert (=> d!1346334 d!1346432))

(declare-fun b!4436558 () Bool)

(declare-fun e!2762515 () Option!10773)

(declare-fun e!2762516 () Option!10773)

(assert (=> b!4436558 (= e!2762515 e!2762516)))

(declare-fun c!755102 () Bool)

(assert (=> b!4436558 (= c!755102 (and ((_ is Cons!49721) (toList!3602 lt!1633203)) (not (= (_1!28097 (h!55430 (toList!3602 lt!1633203))) (_1!28097 (tuple2!49607 key!3717 newValue!93))))))))

(declare-fun b!4436559 () Bool)

(assert (=> b!4436559 (= e!2762516 (getValueByKey!759 (t!356787 (toList!3602 lt!1633203)) (_1!28097 (tuple2!49607 key!3717 newValue!93))))))

(declare-fun b!4436560 () Bool)

(assert (=> b!4436560 (= e!2762516 None!10772)))

(declare-fun c!755101 () Bool)

(declare-fun d!1346434 () Bool)

(assert (=> d!1346434 (= c!755101 (and ((_ is Cons!49721) (toList!3602 lt!1633203)) (= (_1!28097 (h!55430 (toList!3602 lt!1633203))) (_1!28097 (tuple2!49607 key!3717 newValue!93)))))))

(assert (=> d!1346434 (= (getValueByKey!759 (toList!3602 lt!1633203) (_1!28097 (tuple2!49607 key!3717 newValue!93))) e!2762515)))

(declare-fun b!4436557 () Bool)

(assert (=> b!4436557 (= e!2762515 (Some!10772 (_2!28097 (h!55430 (toList!3602 lt!1633203)))))))

(assert (= (and d!1346434 c!755101) b!4436557))

(assert (= (and d!1346434 (not c!755101)) b!4436558))

(assert (= (and b!4436558 c!755102) b!4436559))

(assert (= (and b!4436558 (not c!755102)) b!4436560))

(declare-fun m!5123581 () Bool)

(assert (=> b!4436559 m!5123581))

(assert (=> b!4436169 d!1346434))

(declare-fun b!4436609 () Bool)

(assert (=> b!4436609 true))

(declare-fun bs!762649 () Bool)

(declare-fun b!4436605 () Bool)

(assert (= bs!762649 (and b!4436605 b!4436609)))

(declare-fun lambda!156332 () Int)

(declare-fun lambda!156331 () Int)

(assert (=> bs!762649 (= (= (Cons!49721 (h!55430 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616))))) (t!356787 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616)))))) (t!356787 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616)))))) (= lambda!156332 lambda!156331))))

(assert (=> b!4436605 true))

(declare-fun bs!762650 () Bool)

(declare-fun b!4436606 () Bool)

(assert (= bs!762650 (and b!4436606 b!4436609)))

(declare-fun lambda!156333 () Int)

(assert (=> bs!762650 (= (= (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616)))) (t!356787 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616)))))) (= lambda!156333 lambda!156331))))

(declare-fun bs!762651 () Bool)

(assert (= bs!762651 (and b!4436606 b!4436605)))

(assert (=> bs!762651 (= (= (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616)))) (Cons!49721 (h!55430 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616))))) (t!356787 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616))))))) (= lambda!156333 lambda!156332))))

(assert (=> b!4436606 true))

(declare-fun b!4436602 () Bool)

(declare-fun e!2762543 () Unit!83387)

(declare-fun Unit!83424 () Unit!83387)

(assert (=> b!4436602 (= e!2762543 Unit!83424)))

(declare-fun b!4436603 () Bool)

(declare-fun e!2762545 () Unit!83387)

(declare-fun Unit!83425 () Unit!83387)

(assert (=> b!4436603 (= e!2762545 Unit!83425)))

(declare-fun b!4436604 () Bool)

(assert (=> b!4436604 false))

(declare-fun Unit!83426 () Unit!83387)

(assert (=> b!4436604 (= e!2762543 Unit!83426)))

(declare-fun res!1836226 () Bool)

(declare-fun e!2762544 () Bool)

(assert (=> b!4436606 (=> (not res!1836226) (not e!2762544))))

(declare-fun lt!1633517 () List!49848)

(declare-fun forall!9660 (List!49848 Int) Bool)

(assert (=> b!4436606 (= res!1836226 (forall!9660 lt!1633517 lambda!156333))))

(declare-fun lambda!156334 () Int)

(declare-fun b!4436607 () Bool)

(declare-fun content!7999 (List!49848) (InoxSet K!11090))

(declare-fun map!10873 (List!49845 Int) List!49848)

(assert (=> b!4436607 (= e!2762544 (= (content!7999 lt!1633517) (content!7999 (map!10873 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616)))) lambda!156334))))))

(declare-fun b!4436608 () Bool)

(declare-fun res!1836224 () Bool)

(assert (=> b!4436608 (=> (not res!1836224) (not e!2762544))))

(declare-fun length!200 (List!49848) Int)

(declare-fun length!201 (List!49845) Int)

(assert (=> b!4436608 (= res!1836224 (= (length!200 lt!1633517) (length!201 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616)))))))))

(assert (=> b!4436609 false))

(declare-fun lt!1633522 () Unit!83387)

(declare-fun forallContained!2129 (List!49848 Int K!11090) Unit!83387)

(assert (=> b!4436609 (= lt!1633522 (forallContained!2129 (getKeysList!276 (t!356787 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616)))))) lambda!156331 (_1!28097 (h!55430 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616))))))))))

(declare-fun Unit!83427 () Unit!83387)

(assert (=> b!4436609 (= e!2762545 Unit!83427)))

(declare-fun b!4436610 () Bool)

(declare-fun e!2762546 () List!49848)

(assert (=> b!4436610 (= e!2762546 Nil!49724)))

(declare-fun d!1346436 () Bool)

(assert (=> d!1346436 e!2762544))

(declare-fun res!1836225 () Bool)

(assert (=> d!1346436 (=> (not res!1836225) (not e!2762544))))

(declare-fun noDuplicate!672 (List!49848) Bool)

(assert (=> d!1346436 (= res!1836225 (noDuplicate!672 lt!1633517))))

(assert (=> d!1346436 (= lt!1633517 e!2762546)))

(declare-fun c!755114 () Bool)

(assert (=> d!1346436 (= c!755114 ((_ is Cons!49721) (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616))))))))

(assert (=> d!1346436 (invariantList!829 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616)))))))

(assert (=> d!1346436 (= (getKeysList!276 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616))))) lt!1633517)))

(assert (=> b!4436605 (= e!2762546 (Cons!49724 (_1!28097 (h!55430 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616)))))) (getKeysList!276 (t!356787 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616))))))))))

(declare-fun c!755113 () Bool)

(assert (=> b!4436605 (= c!755113 (containsKey!1198 (t!356787 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616))))) (_1!28097 (h!55430 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616))))))))))

(declare-fun lt!1633516 () Unit!83387)

(assert (=> b!4436605 (= lt!1633516 e!2762543)))

(declare-fun c!755112 () Bool)

(assert (=> b!4436605 (= c!755112 (contains!12275 (getKeysList!276 (t!356787 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616)))))) (_1!28097 (h!55430 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616))))))))))

(declare-fun lt!1633519 () Unit!83387)

(assert (=> b!4436605 (= lt!1633519 e!2762545)))

(declare-fun lt!1633518 () List!49848)

(assert (=> b!4436605 (= lt!1633518 (getKeysList!276 (t!356787 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616)))))))))

(declare-fun lt!1633521 () Unit!83387)

(declare-fun lemmaForallContainsAddHeadPreserves!93 (List!49845 List!49848 tuple2!49606) Unit!83387)

(assert (=> b!4436605 (= lt!1633521 (lemmaForallContainsAddHeadPreserves!93 (t!356787 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616))))) lt!1633518 (h!55430 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616)))))))))

(assert (=> b!4436605 (forall!9660 lt!1633518 lambda!156332)))

(declare-fun lt!1633520 () Unit!83387)

(assert (=> b!4436605 (= lt!1633520 lt!1633521)))

(assert (= (and d!1346436 c!755114) b!4436605))

(assert (= (and d!1346436 (not c!755114)) b!4436610))

(assert (= (and b!4436605 c!755113) b!4436604))

(assert (= (and b!4436605 (not c!755113)) b!4436602))

(assert (= (and b!4436605 c!755112) b!4436609))

(assert (= (and b!4436605 (not c!755112)) b!4436603))

(assert (= (and d!1346436 res!1836225) b!4436608))

(assert (= (and b!4436608 res!1836224) b!4436606))

(assert (= (and b!4436606 res!1836226) b!4436607))

(declare-fun m!5123675 () Bool)

(assert (=> d!1346436 m!5123675))

(assert (=> d!1346436 m!5123569))

(declare-fun m!5123677 () Bool)

(assert (=> b!4436608 m!5123677))

(declare-fun m!5123679 () Bool)

(assert (=> b!4436608 m!5123679))

(declare-fun m!5123681 () Bool)

(assert (=> b!4436606 m!5123681))

(declare-fun m!5123683 () Bool)

(assert (=> b!4436607 m!5123683))

(declare-fun m!5123685 () Bool)

(assert (=> b!4436607 m!5123685))

(assert (=> b!4436607 m!5123685))

(declare-fun m!5123687 () Bool)

(assert (=> b!4436607 m!5123687))

(declare-fun m!5123689 () Bool)

(assert (=> b!4436605 m!5123689))

(declare-fun m!5123691 () Bool)

(assert (=> b!4436605 m!5123691))

(declare-fun m!5123693 () Bool)

(assert (=> b!4436605 m!5123693))

(assert (=> b!4436605 m!5123689))

(declare-fun m!5123695 () Bool)

(assert (=> b!4436605 m!5123695))

(declare-fun m!5123697 () Bool)

(assert (=> b!4436605 m!5123697))

(assert (=> b!4436609 m!5123689))

(assert (=> b!4436609 m!5123689))

(declare-fun m!5123699 () Bool)

(assert (=> b!4436609 m!5123699))

(assert (=> b!4436298 d!1346436))

(declare-fun d!1346464 () Bool)

(declare-fun lt!1633533 () Bool)

(assert (=> d!1346464 (= lt!1633533 (select (content!7999 e!2762369) key!3717))))

(declare-fun e!2762559 () Bool)

(assert (=> d!1346464 (= lt!1633533 e!2762559)))

(declare-fun res!1836237 () Bool)

(assert (=> d!1346464 (=> (not res!1836237) (not e!2762559))))

(assert (=> d!1346464 (= res!1836237 ((_ is Cons!49724) e!2762369))))

(assert (=> d!1346464 (= (contains!12275 e!2762369 key!3717) lt!1633533)))

(declare-fun b!4436628 () Bool)

(declare-fun e!2762560 () Bool)

(assert (=> b!4436628 (= e!2762559 e!2762560)))

(declare-fun res!1836236 () Bool)

(assert (=> b!4436628 (=> res!1836236 e!2762560)))

(assert (=> b!4436628 (= res!1836236 (= (h!55435 e!2762369) key!3717))))

(declare-fun b!4436629 () Bool)

(assert (=> b!4436629 (= e!2762560 (contains!12275 (t!356790 e!2762369) key!3717))))

(assert (= (and d!1346464 res!1836237) b!4436628))

(assert (= (and b!4436628 (not res!1836236)) b!4436629))

(declare-fun m!5123707 () Bool)

(assert (=> d!1346464 m!5123707))

(declare-fun m!5123709 () Bool)

(assert (=> d!1346464 m!5123709))

(declare-fun m!5123711 () Bool)

(assert (=> b!4436629 m!5123711))

(assert (=> bm!308683 d!1346464))

(declare-fun d!1346472 () Bool)

(declare-fun lt!1633534 () Bool)

(assert (=> d!1346472 (= lt!1633534 (select (content!7999 (keys!17014 (extractMap!868 (tail!7337 (toList!3601 lm!1616))))) key!3717))))

(declare-fun e!2762561 () Bool)

(assert (=> d!1346472 (= lt!1633534 e!2762561)))

(declare-fun res!1836239 () Bool)

(assert (=> d!1346472 (=> (not res!1836239) (not e!2762561))))

(assert (=> d!1346472 (= res!1836239 ((_ is Cons!49724) (keys!17014 (extractMap!868 (tail!7337 (toList!3601 lm!1616))))))))

(assert (=> d!1346472 (= (contains!12275 (keys!17014 (extractMap!868 (tail!7337 (toList!3601 lm!1616)))) key!3717) lt!1633534)))

(declare-fun b!4436630 () Bool)

(declare-fun e!2762562 () Bool)

(assert (=> b!4436630 (= e!2762561 e!2762562)))

(declare-fun res!1836238 () Bool)

(assert (=> b!4436630 (=> res!1836238 e!2762562)))

(assert (=> b!4436630 (= res!1836238 (= (h!55435 (keys!17014 (extractMap!868 (tail!7337 (toList!3601 lm!1616))))) key!3717))))

(declare-fun b!4436631 () Bool)

(assert (=> b!4436631 (= e!2762562 (contains!12275 (t!356790 (keys!17014 (extractMap!868 (tail!7337 (toList!3601 lm!1616))))) key!3717))))

(assert (= (and d!1346472 res!1836239) b!4436630))

(assert (= (and b!4436630 (not res!1836238)) b!4436631))

(assert (=> d!1346472 m!5123243))

(declare-fun m!5123713 () Bool)

(assert (=> d!1346472 m!5123713))

(declare-fun m!5123715 () Bool)

(assert (=> d!1346472 m!5123715))

(declare-fun m!5123723 () Bool)

(assert (=> b!4436631 m!5123723))

(assert (=> b!4436293 d!1346472))

(declare-fun bs!762654 () Bool)

(declare-fun b!4436649 () Bool)

(assert (= bs!762654 (and b!4436649 b!4436609)))

(declare-fun lambda!156339 () Int)

(assert (=> bs!762654 (= (= (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616)))) (t!356787 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616)))))) (= lambda!156339 lambda!156331))))

(declare-fun bs!762655 () Bool)

(assert (= bs!762655 (and b!4436649 b!4436605)))

(assert (=> bs!762655 (= (= (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616)))) (Cons!49721 (h!55430 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616))))) (t!356787 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616))))))) (= lambda!156339 lambda!156332))))

(declare-fun bs!762656 () Bool)

(assert (= bs!762656 (and b!4436649 b!4436606)))

(assert (=> bs!762656 (= lambda!156339 lambda!156333)))

(assert (=> b!4436649 true))

(declare-fun bs!762657 () Bool)

(declare-fun b!4436650 () Bool)

(assert (= bs!762657 (and b!4436650 b!4436607)))

(declare-fun lambda!156340 () Int)

(assert (=> bs!762657 (= lambda!156340 lambda!156334)))

(declare-fun d!1346474 () Bool)

(declare-fun e!2762570 () Bool)

(assert (=> d!1346474 e!2762570))

(declare-fun res!1836253 () Bool)

(assert (=> d!1346474 (=> (not res!1836253) (not e!2762570))))

(declare-fun lt!1633540 () List!49848)

(assert (=> d!1346474 (= res!1836253 (noDuplicate!672 lt!1633540))))

(assert (=> d!1346474 (= lt!1633540 (getKeysList!276 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616))))))))

(assert (=> d!1346474 (= (keys!17014 (extractMap!868 (tail!7337 (toList!3601 lm!1616)))) lt!1633540)))

(declare-fun b!4436648 () Bool)

(declare-fun res!1836252 () Bool)

(assert (=> b!4436648 (=> (not res!1836252) (not e!2762570))))

(assert (=> b!4436648 (= res!1836252 (= (length!200 lt!1633540) (length!201 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616)))))))))

(declare-fun res!1836254 () Bool)

(assert (=> b!4436649 (=> (not res!1836254) (not e!2762570))))

(assert (=> b!4436649 (= res!1836254 (forall!9660 lt!1633540 lambda!156339))))

(assert (=> b!4436650 (= e!2762570 (= (content!7999 lt!1633540) (content!7999 (map!10873 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616)))) lambda!156340))))))

(assert (= (and d!1346474 res!1836253) b!4436648))

(assert (= (and b!4436648 res!1836252) b!4436649))

(assert (= (and b!4436649 res!1836254) b!4436650))

(declare-fun m!5123747 () Bool)

(assert (=> d!1346474 m!5123747))

(assert (=> d!1346474 m!5123253))

(declare-fun m!5123749 () Bool)

(assert (=> b!4436648 m!5123749))

(assert (=> b!4436648 m!5123679))

(declare-fun m!5123751 () Bool)

(assert (=> b!4436649 m!5123751))

(declare-fun m!5123753 () Bool)

(assert (=> b!4436650 m!5123753))

(declare-fun m!5123755 () Bool)

(assert (=> b!4436650 m!5123755))

(assert (=> b!4436650 m!5123755))

(declare-fun m!5123757 () Bool)

(assert (=> b!4436650 m!5123757))

(assert (=> b!4436293 d!1346474))

(assert (=> d!1346344 d!1346336))

(assert (=> d!1346344 d!1346338))

(declare-fun d!1346482 () Bool)

(assert (=> d!1346482 (contains!12268 (extractMap!868 (toList!3601 lm!1616)) key!3717)))

(assert (=> d!1346482 true))

(declare-fun _$12!1202 () Unit!83387)

(assert (=> d!1346482 (= (choose!28143 lm!1616 key!3717 hashF!1220) _$12!1202)))

(declare-fun bs!762658 () Bool)

(assert (= bs!762658 d!1346482))

(assert (=> bs!762658 m!5122963))

(assert (=> bs!762658 m!5122963))

(assert (=> bs!762658 m!5122965))

(assert (=> d!1346344 d!1346482))

(declare-fun d!1346484 () Bool)

(declare-fun res!1836255 () Bool)

(declare-fun e!2762571 () Bool)

(assert (=> d!1346484 (=> res!1836255 e!2762571)))

(assert (=> d!1346484 (= res!1836255 ((_ is Nil!49722) (toList!3601 lm!1616)))))

(assert (=> d!1346484 (= (forall!9656 (toList!3601 lm!1616) lambda!156270) e!2762571)))

(declare-fun b!4436653 () Bool)

(declare-fun e!2762572 () Bool)

(assert (=> b!4436653 (= e!2762571 e!2762572)))

(declare-fun res!1836256 () Bool)

(assert (=> b!4436653 (=> (not res!1836256) (not e!2762572))))

(assert (=> b!4436653 (= res!1836256 (dynLambda!20890 lambda!156270 (h!55431 (toList!3601 lm!1616))))))

(declare-fun b!4436654 () Bool)

(assert (=> b!4436654 (= e!2762572 (forall!9656 (t!356788 (toList!3601 lm!1616)) lambda!156270))))

(assert (= (and d!1346484 (not res!1836255)) b!4436653))

(assert (= (and b!4436653 res!1836256) b!4436654))

(declare-fun b_lambda!144605 () Bool)

(assert (=> (not b_lambda!144605) (not b!4436653)))

(declare-fun m!5123759 () Bool)

(assert (=> b!4436653 m!5123759))

(declare-fun m!5123761 () Bool)

(assert (=> b!4436654 m!5123761))

(assert (=> d!1346344 d!1346484))

(declare-fun d!1346486 () Bool)

(declare-fun choose!28148 (Hashable!5201 K!11090) (_ BitVec 64))

(assert (=> d!1346486 (= (hash!2236 hashF!1220 key!3717) (choose!28148 hashF!1220 key!3717))))

(declare-fun bs!762659 () Bool)

(assert (= bs!762659 d!1346486))

(declare-fun m!5123763 () Bool)

(assert (=> bs!762659 m!5123763))

(assert (=> d!1346340 d!1346486))

(assert (=> b!4436295 d!1346474))

(declare-fun d!1346488 () Bool)

(assert (=> d!1346488 (= (isDefined!8065 (getValueByKey!759 (toList!3602 (extractMap!868 (toList!3601 lm!1616))) key!3717)) (not (isEmpty!28378 (getValueByKey!759 (toList!3602 (extractMap!868 (toList!3601 lm!1616))) key!3717))))))

(declare-fun bs!762660 () Bool)

(assert (= bs!762660 d!1346488))

(assert (=> bs!762660 m!5123311))

(declare-fun m!5123765 () Bool)

(assert (=> bs!762660 m!5123765))

(assert (=> b!4436337 d!1346488))

(declare-fun b!4436656 () Bool)

(declare-fun e!2762573 () Option!10773)

(declare-fun e!2762574 () Option!10773)

(assert (=> b!4436656 (= e!2762573 e!2762574)))

(declare-fun c!755121 () Bool)

(assert (=> b!4436656 (= c!755121 (and ((_ is Cons!49721) (toList!3602 (extractMap!868 (toList!3601 lm!1616)))) (not (= (_1!28097 (h!55430 (toList!3602 (extractMap!868 (toList!3601 lm!1616))))) key!3717))))))

(declare-fun b!4436657 () Bool)

(assert (=> b!4436657 (= e!2762574 (getValueByKey!759 (t!356787 (toList!3602 (extractMap!868 (toList!3601 lm!1616)))) key!3717))))

(declare-fun b!4436658 () Bool)

(assert (=> b!4436658 (= e!2762574 None!10772)))

(declare-fun d!1346490 () Bool)

(declare-fun c!755120 () Bool)

(assert (=> d!1346490 (= c!755120 (and ((_ is Cons!49721) (toList!3602 (extractMap!868 (toList!3601 lm!1616)))) (= (_1!28097 (h!55430 (toList!3602 (extractMap!868 (toList!3601 lm!1616))))) key!3717)))))

(assert (=> d!1346490 (= (getValueByKey!759 (toList!3602 (extractMap!868 (toList!3601 lm!1616))) key!3717) e!2762573)))

(declare-fun b!4436655 () Bool)

(assert (=> b!4436655 (= e!2762573 (Some!10772 (_2!28097 (h!55430 (toList!3602 (extractMap!868 (toList!3601 lm!1616)))))))))

(assert (= (and d!1346490 c!755120) b!4436655))

(assert (= (and d!1346490 (not c!755120)) b!4436656))

(assert (= (and b!4436656 c!755121) b!4436657))

(assert (= (and b!4436656 (not c!755121)) b!4436658))

(declare-fun m!5123767 () Bool)

(assert (=> b!4436657 m!5123767))

(assert (=> b!4436337 d!1346490))

(declare-fun d!1346492 () Bool)

(declare-fun noDuplicatedKeys!188 (List!49845) Bool)

(assert (=> d!1346492 (= (invariantList!829 (toList!3602 lt!1633218)) (noDuplicatedKeys!188 (toList!3602 lt!1633218)))))

(declare-fun bs!762661 () Bool)

(assert (= bs!762661 d!1346492))

(declare-fun m!5123769 () Bool)

(assert (=> bs!762661 m!5123769))

(assert (=> d!1346252 d!1346492))

(declare-fun d!1346494 () Bool)

(declare-fun res!1836257 () Bool)

(declare-fun e!2762575 () Bool)

(assert (=> d!1346494 (=> res!1836257 e!2762575)))

(assert (=> d!1346494 (= res!1836257 ((_ is Nil!49722) (toList!3601 lt!1633179)))))

(assert (=> d!1346494 (= (forall!9656 (toList!3601 lt!1633179) lambda!156250) e!2762575)))

(declare-fun b!4436659 () Bool)

(declare-fun e!2762576 () Bool)

(assert (=> b!4436659 (= e!2762575 e!2762576)))

(declare-fun res!1836258 () Bool)

(assert (=> b!4436659 (=> (not res!1836258) (not e!2762576))))

(assert (=> b!4436659 (= res!1836258 (dynLambda!20890 lambda!156250 (h!55431 (toList!3601 lt!1633179))))))

(declare-fun b!4436660 () Bool)

(assert (=> b!4436660 (= e!2762576 (forall!9656 (t!356788 (toList!3601 lt!1633179)) lambda!156250))))

(assert (= (and d!1346494 (not res!1836257)) b!4436659))

(assert (= (and b!4436659 res!1836258) b!4436660))

(declare-fun b_lambda!144607 () Bool)

(assert (=> (not b_lambda!144607) (not b!4436659)))

(declare-fun m!5123771 () Bool)

(assert (=> b!4436659 m!5123771))

(declare-fun m!5123773 () Bool)

(assert (=> b!4436660 m!5123773))

(assert (=> d!1346252 d!1346494))

(declare-fun d!1346496 () Bool)

(declare-fun res!1836259 () Bool)

(declare-fun e!2762577 () Bool)

(assert (=> d!1346496 (=> res!1836259 e!2762577)))

(assert (=> d!1346496 (= res!1836259 (not ((_ is Cons!49721) (_2!28098 (tuple2!49609 hash!366 newBucket!194)))))))

(assert (=> d!1346496 (= (noDuplicateKeys!807 (_2!28098 (tuple2!49609 hash!366 newBucket!194))) e!2762577)))

(declare-fun b!4436661 () Bool)

(declare-fun e!2762578 () Bool)

(assert (=> b!4436661 (= e!2762577 e!2762578)))

(declare-fun res!1836260 () Bool)

(assert (=> b!4436661 (=> (not res!1836260) (not e!2762578))))

(assert (=> b!4436661 (= res!1836260 (not (containsKey!1200 (t!356787 (_2!28098 (tuple2!49609 hash!366 newBucket!194))) (_1!28097 (h!55430 (_2!28098 (tuple2!49609 hash!366 newBucket!194)))))))))

(declare-fun b!4436662 () Bool)

(assert (=> b!4436662 (= e!2762578 (noDuplicateKeys!807 (t!356787 (_2!28098 (tuple2!49609 hash!366 newBucket!194)))))))

(assert (= (and d!1346496 (not res!1836259)) b!4436661))

(assert (= (and b!4436661 res!1836260) b!4436662))

(declare-fun m!5123775 () Bool)

(assert (=> b!4436661 m!5123775))

(declare-fun m!5123777 () Bool)

(assert (=> b!4436662 m!5123777))

(assert (=> bs!762552 d!1346496))

(declare-fun d!1346498 () Bool)

(declare-fun lt!1633541 () Bool)

(assert (=> d!1346498 (= lt!1633541 (select (content!7999 (keys!17014 (extractMap!868 (toList!3601 lm!1616)))) key!3717))))

(declare-fun e!2762579 () Bool)

(assert (=> d!1346498 (= lt!1633541 e!2762579)))

(declare-fun res!1836262 () Bool)

(assert (=> d!1346498 (=> (not res!1836262) (not e!2762579))))

(assert (=> d!1346498 (= res!1836262 ((_ is Cons!49724) (keys!17014 (extractMap!868 (toList!3601 lm!1616)))))))

(assert (=> d!1346498 (= (contains!12275 (keys!17014 (extractMap!868 (toList!3601 lm!1616))) key!3717) lt!1633541)))

(declare-fun b!4436663 () Bool)

(declare-fun e!2762580 () Bool)

(assert (=> b!4436663 (= e!2762579 e!2762580)))

(declare-fun res!1836261 () Bool)

(assert (=> b!4436663 (=> res!1836261 e!2762580)))

(assert (=> b!4436663 (= res!1836261 (= (h!55435 (keys!17014 (extractMap!868 (toList!3601 lm!1616)))) key!3717))))

(declare-fun b!4436664 () Bool)

(assert (=> b!4436664 (= e!2762580 (contains!12275 (t!356790 (keys!17014 (extractMap!868 (toList!3601 lm!1616)))) key!3717))))

(assert (= (and d!1346498 res!1836262) b!4436663))

(assert (= (and b!4436663 (not res!1836261)) b!4436664))

(assert (=> d!1346498 m!5123307))

(declare-fun m!5123779 () Bool)

(assert (=> d!1346498 m!5123779))

(declare-fun m!5123781 () Bool)

(assert (=> d!1346498 m!5123781))

(declare-fun m!5123783 () Bool)

(assert (=> b!4436664 m!5123783))

(assert (=> b!4436331 d!1346498))

(declare-fun bs!762662 () Bool)

(declare-fun b!4436666 () Bool)

(assert (= bs!762662 (and b!4436666 b!4436609)))

(declare-fun lambda!156341 () Int)

(assert (=> bs!762662 (= (= (toList!3602 (extractMap!868 (toList!3601 lm!1616))) (t!356787 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616)))))) (= lambda!156341 lambda!156331))))

(declare-fun bs!762663 () Bool)

(assert (= bs!762663 (and b!4436666 b!4436605)))

(assert (=> bs!762663 (= (= (toList!3602 (extractMap!868 (toList!3601 lm!1616))) (Cons!49721 (h!55430 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616))))) (t!356787 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616))))))) (= lambda!156341 lambda!156332))))

(declare-fun bs!762664 () Bool)

(assert (= bs!762664 (and b!4436666 b!4436606)))

(assert (=> bs!762664 (= (= (toList!3602 (extractMap!868 (toList!3601 lm!1616))) (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616))))) (= lambda!156341 lambda!156333))))

(declare-fun bs!762665 () Bool)

(assert (= bs!762665 (and b!4436666 b!4436649)))

(assert (=> bs!762665 (= (= (toList!3602 (extractMap!868 (toList!3601 lm!1616))) (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616))))) (= lambda!156341 lambda!156339))))

(assert (=> b!4436666 true))

(declare-fun bs!762666 () Bool)

(declare-fun b!4436667 () Bool)

(assert (= bs!762666 (and b!4436667 b!4436607)))

(declare-fun lambda!156342 () Int)

(assert (=> bs!762666 (= lambda!156342 lambda!156334)))

(declare-fun bs!762667 () Bool)

(assert (= bs!762667 (and b!4436667 b!4436650)))

(assert (=> bs!762667 (= lambda!156342 lambda!156340)))

(declare-fun d!1346500 () Bool)

(declare-fun e!2762581 () Bool)

(assert (=> d!1346500 e!2762581))

(declare-fun res!1836264 () Bool)

(assert (=> d!1346500 (=> (not res!1836264) (not e!2762581))))

(declare-fun lt!1633542 () List!49848)

(assert (=> d!1346500 (= res!1836264 (noDuplicate!672 lt!1633542))))

(assert (=> d!1346500 (= lt!1633542 (getKeysList!276 (toList!3602 (extractMap!868 (toList!3601 lm!1616)))))))

(assert (=> d!1346500 (= (keys!17014 (extractMap!868 (toList!3601 lm!1616))) lt!1633542)))

(declare-fun b!4436665 () Bool)

(declare-fun res!1836263 () Bool)

(assert (=> b!4436665 (=> (not res!1836263) (not e!2762581))))

(assert (=> b!4436665 (= res!1836263 (= (length!200 lt!1633542) (length!201 (toList!3602 (extractMap!868 (toList!3601 lm!1616))))))))

(declare-fun res!1836265 () Bool)

(assert (=> b!4436666 (=> (not res!1836265) (not e!2762581))))

(assert (=> b!4436666 (= res!1836265 (forall!9660 lt!1633542 lambda!156341))))

(assert (=> b!4436667 (= e!2762581 (= (content!7999 lt!1633542) (content!7999 (map!10873 (toList!3602 (extractMap!868 (toList!3601 lm!1616))) lambda!156342))))))

(assert (= (and d!1346500 res!1836264) b!4436665))

(assert (= (and b!4436665 res!1836263) b!4436666))

(assert (= (and b!4436666 res!1836265) b!4436667))

(declare-fun m!5123785 () Bool)

(assert (=> d!1346500 m!5123785))

(assert (=> d!1346500 m!5123317))

(declare-fun m!5123787 () Bool)

(assert (=> b!4436665 m!5123787))

(declare-fun m!5123789 () Bool)

(assert (=> b!4436665 m!5123789))

(declare-fun m!5123791 () Bool)

(assert (=> b!4436666 m!5123791))

(declare-fun m!5123793 () Bool)

(assert (=> b!4436667 m!5123793))

(declare-fun m!5123795 () Bool)

(assert (=> b!4436667 m!5123795))

(assert (=> b!4436667 m!5123795))

(declare-fun m!5123797 () Bool)

(assert (=> b!4436667 m!5123797))

(assert (=> b!4436331 d!1346500))

(assert (=> b!4436333 d!1346500))

(declare-fun d!1346502 () Bool)

(declare-fun res!1836272 () Bool)

(declare-fun e!2762598 () Bool)

(assert (=> d!1346502 (=> res!1836272 e!2762598)))

(assert (=> d!1346502 (= res!1836272 (and ((_ is Cons!49721) (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616))))) (= (_1!28097 (h!55430 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616)))))) key!3717)))))

(assert (=> d!1346502 (= (containsKey!1198 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616)))) key!3717) e!2762598)))

(declare-fun b!4436694 () Bool)

(declare-fun e!2762599 () Bool)

(assert (=> b!4436694 (= e!2762598 e!2762599)))

(declare-fun res!1836273 () Bool)

(assert (=> b!4436694 (=> (not res!1836273) (not e!2762599))))

(assert (=> b!4436694 (= res!1836273 ((_ is Cons!49721) (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616))))))))

(declare-fun b!4436695 () Bool)

(assert (=> b!4436695 (= e!2762599 (containsKey!1198 (t!356787 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616))))) key!3717))))

(assert (= (and d!1346502 (not res!1836272)) b!4436694))

(assert (= (and b!4436694 res!1836273) b!4436695))

(declare-fun m!5123799 () Bool)

(assert (=> b!4436695 m!5123799))

(assert (=> d!1346316 d!1346502))

(declare-fun d!1346504 () Bool)

(declare-fun res!1836284 () Bool)

(declare-fun e!2762606 () Bool)

(assert (=> d!1346504 (=> res!1836284 e!2762606)))

(assert (=> d!1346504 (= res!1836284 ((_ is Nil!49721) newBucket!194))))

(assert (=> d!1346504 (= (forall!9658 newBucket!194 lambda!156263) e!2762606)))

(declare-fun b!4436706 () Bool)

(declare-fun e!2762607 () Bool)

(assert (=> b!4436706 (= e!2762606 e!2762607)))

(declare-fun res!1836285 () Bool)

(assert (=> b!4436706 (=> (not res!1836285) (not e!2762607))))

(declare-fun dynLambda!20892 (Int tuple2!49606) Bool)

(assert (=> b!4436706 (= res!1836285 (dynLambda!20892 lambda!156263 (h!55430 newBucket!194)))))

(declare-fun b!4436707 () Bool)

(assert (=> b!4436707 (= e!2762607 (forall!9658 (t!356787 newBucket!194) lambda!156263))))

(assert (= (and d!1346504 (not res!1836284)) b!4436706))

(assert (= (and b!4436706 res!1836285) b!4436707))

(declare-fun b_lambda!144609 () Bool)

(assert (=> (not b_lambda!144609) (not b!4436706)))

(declare-fun m!5123801 () Bool)

(assert (=> b!4436706 m!5123801))

(declare-fun m!5123803 () Bool)

(assert (=> b!4436707 m!5123803))

(assert (=> d!1346324 d!1346504))

(declare-fun bs!762766 () Bool)

(declare-fun b!4436875 () Bool)

(assert (= bs!762766 (and b!4436875 d!1346324)))

(declare-fun lambda!156392 () Int)

(assert (=> bs!762766 (not (= lambda!156392 lambda!156263))))

(assert (=> b!4436875 true))

(declare-fun bs!762767 () Bool)

(declare-fun b!4436876 () Bool)

(assert (= bs!762767 (and b!4436876 d!1346324)))

(declare-fun lambda!156393 () Int)

(assert (=> bs!762767 (not (= lambda!156393 lambda!156263))))

(declare-fun bs!762768 () Bool)

(assert (= bs!762768 (and b!4436876 b!4436875)))

(assert (=> bs!762768 (= lambda!156393 lambda!156392)))

(assert (=> b!4436876 true))

(declare-fun lambda!156394 () Int)

(assert (=> bs!762767 (not (= lambda!156394 lambda!156263))))

(declare-fun lt!1633719 () ListMap!2845)

(assert (=> bs!762768 (= (= lt!1633719 (extractMap!868 (t!356788 (tail!7337 (toList!3601 lm!1616))))) (= lambda!156394 lambda!156392))))

(assert (=> b!4436876 (= (= lt!1633719 (extractMap!868 (t!356788 (tail!7337 (toList!3601 lm!1616))))) (= lambda!156394 lambda!156393))))

(assert (=> b!4436876 true))

(declare-fun bs!762769 () Bool)

(declare-fun d!1346506 () Bool)

(assert (= bs!762769 (and d!1346506 d!1346324)))

(declare-fun lambda!156395 () Int)

(assert (=> bs!762769 (not (= lambda!156395 lambda!156263))))

(declare-fun bs!762770 () Bool)

(assert (= bs!762770 (and d!1346506 b!4436875)))

(declare-fun lt!1633723 () ListMap!2845)

(assert (=> bs!762770 (= (= lt!1633723 (extractMap!868 (t!356788 (tail!7337 (toList!3601 lm!1616))))) (= lambda!156395 lambda!156392))))

(declare-fun bs!762771 () Bool)

(assert (= bs!762771 (and d!1346506 b!4436876)))

(assert (=> bs!762771 (= (= lt!1633723 (extractMap!868 (t!356788 (tail!7337 (toList!3601 lm!1616))))) (= lambda!156395 lambda!156393))))

(assert (=> bs!762771 (= (= lt!1633723 lt!1633719) (= lambda!156395 lambda!156394))))

(assert (=> d!1346506 true))

(declare-fun bm!308742 () Bool)

(declare-fun call!308747 () Unit!83387)

(declare-fun lemmaContainsAllItsOwnKeys!197 (ListMap!2845) Unit!83387)

(assert (=> bm!308742 (= call!308747 (lemmaContainsAllItsOwnKeys!197 (extractMap!868 (t!356788 (tail!7337 (toList!3601 lm!1616))))))))

(declare-fun e!2762699 () ListMap!2845)

(assert (=> b!4436875 (= e!2762699 (extractMap!868 (t!356788 (tail!7337 (toList!3601 lm!1616)))))))

(declare-fun lt!1633708 () Unit!83387)

(assert (=> b!4436875 (= lt!1633708 call!308747)))

(declare-fun call!308748 () Bool)

(assert (=> b!4436875 call!308748))

(declare-fun lt!1633716 () Unit!83387)

(assert (=> b!4436875 (= lt!1633716 lt!1633708)))

(declare-fun call!308749 () Bool)

(assert (=> b!4436875 call!308749))

(declare-fun lt!1633704 () Unit!83387)

(declare-fun Unit!83439 () Unit!83387)

(assert (=> b!4436875 (= lt!1633704 Unit!83439)))

(assert (=> b!4436876 (= e!2762699 lt!1633719)))

(declare-fun lt!1633713 () ListMap!2845)

(assert (=> b!4436876 (= lt!1633713 (+!1181 (extractMap!868 (t!356788 (tail!7337 (toList!3601 lm!1616)))) (h!55430 (_2!28098 (h!55431 (tail!7337 (toList!3601 lm!1616)))))))))

(assert (=> b!4436876 (= lt!1633719 (addToMapMapFromBucket!428 (t!356787 (_2!28098 (h!55431 (tail!7337 (toList!3601 lm!1616))))) (+!1181 (extractMap!868 (t!356788 (tail!7337 (toList!3601 lm!1616)))) (h!55430 (_2!28098 (h!55431 (tail!7337 (toList!3601 lm!1616))))))))))

(declare-fun lt!1633710 () Unit!83387)

(assert (=> b!4436876 (= lt!1633710 call!308747)))

(assert (=> b!4436876 call!308748))

(declare-fun lt!1633709 () Unit!83387)

(assert (=> b!4436876 (= lt!1633709 lt!1633710)))

(assert (=> b!4436876 (forall!9658 (toList!3602 lt!1633713) lambda!156394)))

(declare-fun lt!1633703 () Unit!83387)

(declare-fun Unit!83440 () Unit!83387)

(assert (=> b!4436876 (= lt!1633703 Unit!83440)))

(assert (=> b!4436876 (forall!9658 (t!356787 (_2!28098 (h!55431 (tail!7337 (toList!3601 lm!1616))))) lambda!156394)))

(declare-fun lt!1633717 () Unit!83387)

(declare-fun Unit!83441 () Unit!83387)

(assert (=> b!4436876 (= lt!1633717 Unit!83441)))

(declare-fun lt!1633715 () Unit!83387)

(declare-fun Unit!83442 () Unit!83387)

(assert (=> b!4436876 (= lt!1633715 Unit!83442)))

(declare-fun lt!1633706 () Unit!83387)

(declare-fun forallContained!2130 (List!49845 Int tuple2!49606) Unit!83387)

(assert (=> b!4436876 (= lt!1633706 (forallContained!2130 (toList!3602 lt!1633713) lambda!156394 (h!55430 (_2!28098 (h!55431 (tail!7337 (toList!3601 lm!1616)))))))))

(assert (=> b!4436876 (contains!12268 lt!1633713 (_1!28097 (h!55430 (_2!28098 (h!55431 (tail!7337 (toList!3601 lm!1616)))))))))

(declare-fun lt!1633720 () Unit!83387)

(declare-fun Unit!83443 () Unit!83387)

(assert (=> b!4436876 (= lt!1633720 Unit!83443)))

(assert (=> b!4436876 (contains!12268 lt!1633719 (_1!28097 (h!55430 (_2!28098 (h!55431 (tail!7337 (toList!3601 lm!1616)))))))))

(declare-fun lt!1633705 () Unit!83387)

(declare-fun Unit!83444 () Unit!83387)

(assert (=> b!4436876 (= lt!1633705 Unit!83444)))

(assert (=> b!4436876 (forall!9658 (_2!28098 (h!55431 (tail!7337 (toList!3601 lm!1616)))) lambda!156394)))

(declare-fun lt!1633707 () Unit!83387)

(declare-fun Unit!83445 () Unit!83387)

(assert (=> b!4436876 (= lt!1633707 Unit!83445)))

(assert (=> b!4436876 (forall!9658 (toList!3602 lt!1633713) lambda!156394)))

(declare-fun lt!1633714 () Unit!83387)

(declare-fun Unit!83446 () Unit!83387)

(assert (=> b!4436876 (= lt!1633714 Unit!83446)))

(declare-fun lt!1633718 () Unit!83387)

(declare-fun Unit!83448 () Unit!83387)

(assert (=> b!4436876 (= lt!1633718 Unit!83448)))

(declare-fun lt!1633721 () Unit!83387)

(declare-fun addForallContainsKeyThenBeforeAdding!197 (ListMap!2845 ListMap!2845 K!11090 V!11336) Unit!83387)

(assert (=> b!4436876 (= lt!1633721 (addForallContainsKeyThenBeforeAdding!197 (extractMap!868 (t!356788 (tail!7337 (toList!3601 lm!1616)))) lt!1633719 (_1!28097 (h!55430 (_2!28098 (h!55431 (tail!7337 (toList!3601 lm!1616)))))) (_2!28097 (h!55430 (_2!28098 (h!55431 (tail!7337 (toList!3601 lm!1616))))))))))

(assert (=> b!4436876 (forall!9658 (toList!3602 (extractMap!868 (t!356788 (tail!7337 (toList!3601 lm!1616))))) lambda!156394)))

(declare-fun lt!1633722 () Unit!83387)

(assert (=> b!4436876 (= lt!1633722 lt!1633721)))

(assert (=> b!4436876 (forall!9658 (toList!3602 (extractMap!868 (t!356788 (tail!7337 (toList!3601 lm!1616))))) lambda!156394)))

(declare-fun lt!1633711 () Unit!83387)

(declare-fun Unit!83449 () Unit!83387)

(assert (=> b!4436876 (= lt!1633711 Unit!83449)))

(declare-fun res!1836346 () Bool)

(assert (=> b!4436876 (= res!1836346 call!308749)))

(declare-fun e!2762700 () Bool)

(assert (=> b!4436876 (=> (not res!1836346) (not e!2762700))))

(assert (=> b!4436876 e!2762700))

(declare-fun lt!1633712 () Unit!83387)

(declare-fun Unit!83450 () Unit!83387)

(assert (=> b!4436876 (= lt!1633712 Unit!83450)))

(declare-fun b!4436877 () Bool)

(assert (=> b!4436877 (= e!2762700 (forall!9658 (toList!3602 (extractMap!868 (t!356788 (tail!7337 (toList!3601 lm!1616))))) lambda!156394))))

(declare-fun c!755183 () Bool)

(declare-fun bm!308743 () Bool)

(assert (=> bm!308743 (= call!308749 (forall!9658 (ite c!755183 (toList!3602 (extractMap!868 (t!356788 (tail!7337 (toList!3601 lm!1616))))) (_2!28098 (h!55431 (tail!7337 (toList!3601 lm!1616))))) (ite c!755183 lambda!156392 lambda!156394)))))

(declare-fun b!4436874 () Bool)

(declare-fun res!1836344 () Bool)

(declare-fun e!2762698 () Bool)

(assert (=> b!4436874 (=> (not res!1836344) (not e!2762698))))

(assert (=> b!4436874 (= res!1836344 (forall!9658 (toList!3602 (extractMap!868 (t!356788 (tail!7337 (toList!3601 lm!1616))))) lambda!156395))))

(assert (=> d!1346506 e!2762698))

(declare-fun res!1836345 () Bool)

(assert (=> d!1346506 (=> (not res!1836345) (not e!2762698))))

(assert (=> d!1346506 (= res!1836345 (forall!9658 (_2!28098 (h!55431 (tail!7337 (toList!3601 lm!1616)))) lambda!156395))))

(assert (=> d!1346506 (= lt!1633723 e!2762699)))

(assert (=> d!1346506 (= c!755183 ((_ is Nil!49721) (_2!28098 (h!55431 (tail!7337 (toList!3601 lm!1616))))))))

(assert (=> d!1346506 (noDuplicateKeys!807 (_2!28098 (h!55431 (tail!7337 (toList!3601 lm!1616)))))))

(assert (=> d!1346506 (= (addToMapMapFromBucket!428 (_2!28098 (h!55431 (tail!7337 (toList!3601 lm!1616)))) (extractMap!868 (t!356788 (tail!7337 (toList!3601 lm!1616))))) lt!1633723)))

(declare-fun b!4436878 () Bool)

(assert (=> b!4436878 (= e!2762698 (invariantList!829 (toList!3602 lt!1633723)))))

(declare-fun bm!308744 () Bool)

(assert (=> bm!308744 (= call!308748 (forall!9658 (toList!3602 (extractMap!868 (t!356788 (tail!7337 (toList!3601 lm!1616))))) (ite c!755183 lambda!156392 lambda!156393)))))

(assert (= (and d!1346506 c!755183) b!4436875))

(assert (= (and d!1346506 (not c!755183)) b!4436876))

(assert (= (and b!4436876 res!1836346) b!4436877))

(assert (= (or b!4436875 b!4436876) bm!308742))

(assert (= (or b!4436875 b!4436876) bm!308743))

(assert (= (or b!4436875 b!4436876) bm!308744))

(assert (= (and d!1346506 res!1836345) b!4436874))

(assert (= (and b!4436874 res!1836344) b!4436878))

(declare-fun m!5124069 () Bool)

(assert (=> b!4436876 m!5124069))

(declare-fun m!5124071 () Bool)

(assert (=> b!4436876 m!5124071))

(declare-fun m!5124073 () Bool)

(assert (=> b!4436876 m!5124073))

(declare-fun m!5124075 () Bool)

(assert (=> b!4436876 m!5124075))

(declare-fun m!5124077 () Bool)

(assert (=> b!4436876 m!5124077))

(assert (=> b!4436876 m!5124069))

(assert (=> b!4436876 m!5123239))

(declare-fun m!5124079 () Bool)

(assert (=> b!4436876 m!5124079))

(assert (=> b!4436876 m!5124077))

(assert (=> b!4436876 m!5124079))

(declare-fun m!5124081 () Bool)

(assert (=> b!4436876 m!5124081))

(assert (=> b!4436876 m!5123239))

(declare-fun m!5124083 () Bool)

(assert (=> b!4436876 m!5124083))

(declare-fun m!5124085 () Bool)

(assert (=> b!4436876 m!5124085))

(declare-fun m!5124087 () Bool)

(assert (=> b!4436876 m!5124087))

(declare-fun m!5124089 () Bool)

(assert (=> bm!308743 m!5124089))

(assert (=> bm!308742 m!5123239))

(declare-fun m!5124091 () Bool)

(assert (=> bm!308742 m!5124091))

(declare-fun m!5124093 () Bool)

(assert (=> bm!308744 m!5124093))

(declare-fun m!5124095 () Bool)

(assert (=> b!4436878 m!5124095))

(assert (=> b!4436877 m!5124069))

(declare-fun m!5124097 () Bool)

(assert (=> b!4436874 m!5124097))

(declare-fun m!5124099 () Bool)

(assert (=> d!1346506 m!5124099))

(declare-fun m!5124101 () Bool)

(assert (=> d!1346506 m!5124101))

(assert (=> b!4436271 d!1346506))

(declare-fun bs!762772 () Bool)

(declare-fun d!1346596 () Bool)

(assert (= bs!762772 (and d!1346596 d!1346312)))

(declare-fun lambda!156396 () Int)

(assert (=> bs!762772 (= lambda!156396 lambda!156260)))

(declare-fun bs!762773 () Bool)

(assert (= bs!762773 (and d!1346596 d!1346338)))

(assert (=> bs!762773 (= lambda!156396 lambda!156267)))

(declare-fun bs!762774 () Bool)

(assert (= bs!762774 (and d!1346596 d!1346282)))

(assert (=> bs!762774 (= lambda!156396 lambda!156258)))

(declare-fun bs!762775 () Bool)

(assert (= bs!762775 (and d!1346596 start!433620)))

(assert (=> bs!762775 (= lambda!156396 lambda!156234)))

(declare-fun bs!762776 () Bool)

(assert (= bs!762776 (and d!1346596 d!1346308)))

(assert (=> bs!762776 (= lambda!156396 lambda!156259)))

(declare-fun bs!762777 () Bool)

(assert (= bs!762777 (and d!1346596 d!1346332)))

(assert (=> bs!762777 (not (= lambda!156396 lambda!156266))))

(declare-fun bs!762778 () Bool)

(assert (= bs!762778 (and d!1346596 d!1346344)))

(assert (=> bs!762778 (= lambda!156396 lambda!156270)))

(declare-fun bs!762779 () Bool)

(assert (= bs!762779 (and d!1346596 d!1346252)))

(assert (=> bs!762779 (= lambda!156396 lambda!156250)))

(declare-fun lt!1633724 () ListMap!2845)

(assert (=> d!1346596 (invariantList!829 (toList!3602 lt!1633724))))

(declare-fun e!2762701 () ListMap!2845)

(assert (=> d!1346596 (= lt!1633724 e!2762701)))

(declare-fun c!755184 () Bool)

(assert (=> d!1346596 (= c!755184 ((_ is Cons!49722) (t!356788 (tail!7337 (toList!3601 lm!1616)))))))

(assert (=> d!1346596 (forall!9656 (t!356788 (tail!7337 (toList!3601 lm!1616))) lambda!156396)))

(assert (=> d!1346596 (= (extractMap!868 (t!356788 (tail!7337 (toList!3601 lm!1616)))) lt!1633724)))

(declare-fun b!4436881 () Bool)

(assert (=> b!4436881 (= e!2762701 (addToMapMapFromBucket!428 (_2!28098 (h!55431 (t!356788 (tail!7337 (toList!3601 lm!1616))))) (extractMap!868 (t!356788 (t!356788 (tail!7337 (toList!3601 lm!1616)))))))))

(declare-fun b!4436882 () Bool)

(assert (=> b!4436882 (= e!2762701 (ListMap!2846 Nil!49721))))

(assert (= (and d!1346596 c!755184) b!4436881))

(assert (= (and d!1346596 (not c!755184)) b!4436882))

(declare-fun m!5124103 () Bool)

(assert (=> d!1346596 m!5124103))

(declare-fun m!5124105 () Bool)

(assert (=> d!1346596 m!5124105))

(declare-fun m!5124107 () Bool)

(assert (=> b!4436881 m!5124107))

(assert (=> b!4436881 m!5124107))

(declare-fun m!5124109 () Bool)

(assert (=> b!4436881 m!5124109))

(assert (=> b!4436271 d!1346596))

(declare-fun d!1346598 () Bool)

(declare-fun lt!1633727 () Bool)

(declare-fun content!8000 (List!49846) (InoxSet tuple2!49608))

(assert (=> d!1346598 (= lt!1633727 (select (content!8000 (toList!3601 lt!1633328)) lt!1633175))))

(declare-fun e!2762706 () Bool)

(assert (=> d!1346598 (= lt!1633727 e!2762706)))

(declare-fun res!1836352 () Bool)

(assert (=> d!1346598 (=> (not res!1836352) (not e!2762706))))

(assert (=> d!1346598 (= res!1836352 ((_ is Cons!49722) (toList!3601 lt!1633328)))))

(assert (=> d!1346598 (= (contains!12274 (toList!3601 lt!1633328) lt!1633175) lt!1633727)))

(declare-fun b!4436887 () Bool)

(declare-fun e!2762707 () Bool)

(assert (=> b!4436887 (= e!2762706 e!2762707)))

(declare-fun res!1836351 () Bool)

(assert (=> b!4436887 (=> res!1836351 e!2762707)))

(assert (=> b!4436887 (= res!1836351 (= (h!55431 (toList!3601 lt!1633328)) lt!1633175))))

(declare-fun b!4436888 () Bool)

(assert (=> b!4436888 (= e!2762707 (contains!12274 (t!356788 (toList!3601 lt!1633328)) lt!1633175))))

(assert (= (and d!1346598 res!1836352) b!4436887))

(assert (= (and b!4436887 (not res!1836351)) b!4436888))

(declare-fun m!5124111 () Bool)

(assert (=> d!1346598 m!5124111))

(declare-fun m!5124113 () Bool)

(assert (=> d!1346598 m!5124113))

(declare-fun m!5124115 () Bool)

(assert (=> b!4436888 m!5124115))

(assert (=> b!4436307 d!1346598))

(declare-fun d!1346600 () Bool)

(declare-fun isEmpty!28379 (Option!10774) Bool)

(assert (=> d!1346600 (= (isDefined!8066 (getValueByKey!760 (toList!3601 lm!1616) hash!366)) (not (isEmpty!28379 (getValueByKey!760 (toList!3601 lm!1616) hash!366))))))

(declare-fun bs!762780 () Bool)

(assert (= bs!762780 d!1346600))

(assert (=> bs!762780 m!5123299))

(declare-fun m!5124117 () Bool)

(assert (=> bs!762780 m!5124117))

(assert (=> b!4436326 d!1346600))

(assert (=> b!4436326 d!1346432))

(declare-fun d!1346602 () Bool)

(assert (=> d!1346602 (isDefined!8066 (getValueByKey!760 (toList!3601 lm!1616) hash!366))))

(declare-fun lt!1633730 () Unit!83387)

(declare-fun choose!28150 (List!49846 (_ BitVec 64)) Unit!83387)

(assert (=> d!1346602 (= lt!1633730 (choose!28150 (toList!3601 lm!1616) hash!366))))

(declare-fun e!2762710 () Bool)

(assert (=> d!1346602 e!2762710))

(declare-fun res!1836355 () Bool)

(assert (=> d!1346602 (=> (not res!1836355) (not e!2762710))))

(assert (=> d!1346602 (= res!1836355 (isStrictlySorted!256 (toList!3601 lm!1616)))))

(assert (=> d!1346602 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!669 (toList!3601 lm!1616) hash!366) lt!1633730)))

(declare-fun b!4436891 () Bool)

(assert (=> b!4436891 (= e!2762710 (containsKey!1199 (toList!3601 lm!1616) hash!366))))

(assert (= (and d!1346602 res!1836355) b!4436891))

(assert (=> d!1346602 m!5123299))

(assert (=> d!1346602 m!5123299))

(assert (=> d!1346602 m!5123301))

(declare-fun m!5124119 () Bool)

(assert (=> d!1346602 m!5124119))

(assert (=> d!1346602 m!5123293))

(assert (=> b!4436891 m!5123295))

(assert (=> b!4436324 d!1346602))

(assert (=> b!4436324 d!1346600))

(assert (=> b!4436324 d!1346432))

(assert (=> d!1346282 d!1346252))

(declare-fun d!1346604 () Bool)

(declare-fun e!2762711 () Bool)

(assert (=> d!1346604 e!2762711))

(declare-fun res!1836357 () Bool)

(assert (=> d!1346604 (=> (not res!1836357) (not e!2762711))))

(declare-fun lt!1633734 () ListLongMap!2251)

(assert (=> d!1346604 (= res!1836357 (contains!12269 lt!1633734 (_1!28098 (tuple2!49609 hash!366 newBucket!194))))))

(declare-fun lt!1633733 () List!49846)

(assert (=> d!1346604 (= lt!1633734 (ListLongMap!2252 lt!1633733))))

(declare-fun lt!1633731 () Unit!83387)

(declare-fun lt!1633732 () Unit!83387)

(assert (=> d!1346604 (= lt!1633731 lt!1633732)))

(assert (=> d!1346604 (= (getValueByKey!760 lt!1633733 (_1!28098 (tuple2!49609 hash!366 newBucket!194))) (Some!10773 (_2!28098 (tuple2!49609 hash!366 newBucket!194))))))

(assert (=> d!1346604 (= lt!1633732 (lemmaContainsTupThenGetReturnValue!493 lt!1633733 (_1!28098 (tuple2!49609 hash!366 newBucket!194)) (_2!28098 (tuple2!49609 hash!366 newBucket!194))))))

(assert (=> d!1346604 (= lt!1633733 (insertStrictlySorted!284 (toList!3601 lt!1633179) (_1!28098 (tuple2!49609 hash!366 newBucket!194)) (_2!28098 (tuple2!49609 hash!366 newBucket!194))))))

(assert (=> d!1346604 (= (+!1180 lt!1633179 (tuple2!49609 hash!366 newBucket!194)) lt!1633734)))

(declare-fun b!4436892 () Bool)

(declare-fun res!1836356 () Bool)

(assert (=> b!4436892 (=> (not res!1836356) (not e!2762711))))

(assert (=> b!4436892 (= res!1836356 (= (getValueByKey!760 (toList!3601 lt!1633734) (_1!28098 (tuple2!49609 hash!366 newBucket!194))) (Some!10773 (_2!28098 (tuple2!49609 hash!366 newBucket!194)))))))

(declare-fun b!4436893 () Bool)

(assert (=> b!4436893 (= e!2762711 (contains!12274 (toList!3601 lt!1633734) (tuple2!49609 hash!366 newBucket!194)))))

(assert (= (and d!1346604 res!1836357) b!4436892))

(assert (= (and b!4436892 res!1836356) b!4436893))

(declare-fun m!5124121 () Bool)

(assert (=> d!1346604 m!5124121))

(declare-fun m!5124123 () Bool)

(assert (=> d!1346604 m!5124123))

(declare-fun m!5124125 () Bool)

(assert (=> d!1346604 m!5124125))

(declare-fun m!5124127 () Bool)

(assert (=> d!1346604 m!5124127))

(declare-fun m!5124129 () Bool)

(assert (=> b!4436892 m!5124129))

(declare-fun m!5124131 () Bool)

(assert (=> b!4436893 m!5124131))

(assert (=> d!1346282 d!1346604))

(declare-fun d!1346606 () Bool)

(declare-fun res!1836358 () Bool)

(declare-fun e!2762712 () Bool)

(assert (=> d!1346606 (=> res!1836358 e!2762712)))

(assert (=> d!1346606 (= res!1836358 ((_ is Nil!49722) (toList!3601 lt!1633179)))))

(assert (=> d!1346606 (= (forall!9656 (toList!3601 lt!1633179) lambda!156258) e!2762712)))

(declare-fun b!4436894 () Bool)

(declare-fun e!2762713 () Bool)

(assert (=> b!4436894 (= e!2762712 e!2762713)))

(declare-fun res!1836359 () Bool)

(assert (=> b!4436894 (=> (not res!1836359) (not e!2762713))))

(assert (=> b!4436894 (= res!1836359 (dynLambda!20890 lambda!156258 (h!55431 (toList!3601 lt!1633179))))))

(declare-fun b!4436895 () Bool)

(assert (=> b!4436895 (= e!2762713 (forall!9656 (t!356788 (toList!3601 lt!1633179)) lambda!156258))))

(assert (= (and d!1346606 (not res!1836358)) b!4436894))

(assert (= (and b!4436894 res!1836359) b!4436895))

(declare-fun b_lambda!144639 () Bool)

(assert (=> (not b_lambda!144639) (not b!4436894)))

(declare-fun m!5124133 () Bool)

(assert (=> b!4436894 m!5124133))

(declare-fun m!5124135 () Bool)

(assert (=> b!4436895 m!5124135))

(assert (=> d!1346282 d!1346606))

(declare-fun d!1346608 () Bool)

(assert (=> d!1346608 (eq!439 (extractMap!868 (toList!3601 (+!1180 lt!1633179 (tuple2!49609 hash!366 newBucket!194)))) (+!1181 (extractMap!868 (toList!3601 lt!1633179)) (tuple2!49607 key!3717 newValue!93)))))

(assert (=> d!1346608 true))

(declare-fun _$9!224 () Unit!83387)

(assert (=> d!1346608 (= (choose!28141 lt!1633179 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220) _$9!224)))

(declare-fun bs!762781 () Bool)

(assert (= bs!762781 d!1346608))

(assert (=> bs!762781 m!5122973))

(assert (=> bs!762781 m!5122975))

(assert (=> bs!762781 m!5123215))

(assert (=> bs!762781 m!5123215))

(assert (=> bs!762781 m!5122975))

(assert (=> bs!762781 m!5123221))

(assert (=> bs!762781 m!5123217))

(assert (=> bs!762781 m!5122973))

(assert (=> d!1346282 d!1346608))

(declare-fun bs!762782 () Bool)

(declare-fun d!1346610 () Bool)

(assert (= bs!762782 (and d!1346610 d!1346312)))

(declare-fun lambda!156397 () Int)

(assert (=> bs!762782 (= lambda!156397 lambda!156260)))

(declare-fun bs!762783 () Bool)

(assert (= bs!762783 (and d!1346610 d!1346338)))

(assert (=> bs!762783 (= lambda!156397 lambda!156267)))

(declare-fun bs!762784 () Bool)

(assert (= bs!762784 (and d!1346610 d!1346282)))

(assert (=> bs!762784 (= lambda!156397 lambda!156258)))

(declare-fun bs!762785 () Bool)

(assert (= bs!762785 (and d!1346610 start!433620)))

(assert (=> bs!762785 (= lambda!156397 lambda!156234)))

(declare-fun bs!762786 () Bool)

(assert (= bs!762786 (and d!1346610 d!1346308)))

(assert (=> bs!762786 (= lambda!156397 lambda!156259)))

(declare-fun bs!762787 () Bool)

(assert (= bs!762787 (and d!1346610 d!1346596)))

(assert (=> bs!762787 (= lambda!156397 lambda!156396)))

(declare-fun bs!762788 () Bool)

(assert (= bs!762788 (and d!1346610 d!1346332)))

(assert (=> bs!762788 (not (= lambda!156397 lambda!156266))))

(declare-fun bs!762789 () Bool)

(assert (= bs!762789 (and d!1346610 d!1346344)))

(assert (=> bs!762789 (= lambda!156397 lambda!156270)))

(declare-fun bs!762790 () Bool)

(assert (= bs!762790 (and d!1346610 d!1346252)))

(assert (=> bs!762790 (= lambda!156397 lambda!156250)))

(declare-fun lt!1633735 () ListMap!2845)

(assert (=> d!1346610 (invariantList!829 (toList!3602 lt!1633735))))

(declare-fun e!2762714 () ListMap!2845)

(assert (=> d!1346610 (= lt!1633735 e!2762714)))

(declare-fun c!755185 () Bool)

(assert (=> d!1346610 (= c!755185 ((_ is Cons!49722) (toList!3601 (+!1180 lt!1633179 (tuple2!49609 hash!366 newBucket!194)))))))

(assert (=> d!1346610 (forall!9656 (toList!3601 (+!1180 lt!1633179 (tuple2!49609 hash!366 newBucket!194))) lambda!156397)))

(assert (=> d!1346610 (= (extractMap!868 (toList!3601 (+!1180 lt!1633179 (tuple2!49609 hash!366 newBucket!194)))) lt!1633735)))

(declare-fun b!4436896 () Bool)

(assert (=> b!4436896 (= e!2762714 (addToMapMapFromBucket!428 (_2!28098 (h!55431 (toList!3601 (+!1180 lt!1633179 (tuple2!49609 hash!366 newBucket!194))))) (extractMap!868 (t!356788 (toList!3601 (+!1180 lt!1633179 (tuple2!49609 hash!366 newBucket!194)))))))))

(declare-fun b!4436897 () Bool)

(assert (=> b!4436897 (= e!2762714 (ListMap!2846 Nil!49721))))

(assert (= (and d!1346610 c!755185) b!4436896))

(assert (= (and d!1346610 (not c!755185)) b!4436897))

(declare-fun m!5124137 () Bool)

(assert (=> d!1346610 m!5124137))

(declare-fun m!5124139 () Bool)

(assert (=> d!1346610 m!5124139))

(declare-fun m!5124141 () Bool)

(assert (=> b!4436896 m!5124141))

(assert (=> b!4436896 m!5124141))

(declare-fun m!5124143 () Bool)

(assert (=> b!4436896 m!5124143))

(assert (=> d!1346282 d!1346610))

(declare-fun d!1346612 () Bool)

(assert (=> d!1346612 (= (eq!439 (extractMap!868 (toList!3601 (+!1180 lt!1633179 (tuple2!49609 hash!366 newBucket!194)))) (+!1181 (extractMap!868 (toList!3601 lt!1633179)) (tuple2!49607 key!3717 newValue!93))) (= (content!7996 (toList!3602 (extractMap!868 (toList!3601 (+!1180 lt!1633179 (tuple2!49609 hash!366 newBucket!194)))))) (content!7996 (toList!3602 (+!1181 (extractMap!868 (toList!3601 lt!1633179)) (tuple2!49607 key!3717 newValue!93))))))))

(declare-fun bs!762791 () Bool)

(assert (= bs!762791 d!1346612))

(declare-fun m!5124145 () Bool)

(assert (=> bs!762791 m!5124145))

(assert (=> bs!762791 m!5123127))

(assert (=> d!1346282 d!1346612))

(assert (=> d!1346282 d!1346240))

(declare-fun d!1346614 () Bool)

(assert (=> d!1346614 (= (head!9270 (toList!3601 lm!1616)) (h!55431 (toList!3601 lm!1616)))))

(assert (=> d!1346306 d!1346614))

(declare-fun d!1346616 () Bool)

(declare-fun res!1836364 () Bool)

(declare-fun e!2762719 () Bool)

(assert (=> d!1346616 (=> res!1836364 e!2762719)))

(assert (=> d!1346616 (= res!1836364 (and ((_ is Cons!49721) (t!356787 newBucket!194)) (= (_1!28097 (h!55430 (t!356787 newBucket!194))) (_1!28097 (h!55430 newBucket!194)))))))

(assert (=> d!1346616 (= (containsKey!1200 (t!356787 newBucket!194) (_1!28097 (h!55430 newBucket!194))) e!2762719)))

(declare-fun b!4436902 () Bool)

(declare-fun e!2762720 () Bool)

(assert (=> b!4436902 (= e!2762719 e!2762720)))

(declare-fun res!1836365 () Bool)

(assert (=> b!4436902 (=> (not res!1836365) (not e!2762720))))

(assert (=> b!4436902 (= res!1836365 ((_ is Cons!49721) (t!356787 newBucket!194)))))

(declare-fun b!4436903 () Bool)

(assert (=> b!4436903 (= e!2762720 (containsKey!1200 (t!356787 (t!356787 newBucket!194)) (_1!28097 (h!55430 newBucket!194))))))

(assert (= (and d!1346616 (not res!1836364)) b!4436902))

(assert (= (and b!4436902 res!1836365) b!4436903))

(declare-fun m!5124147 () Bool)

(assert (=> b!4436903 m!5124147))

(assert (=> b!4436344 d!1346616))

(declare-fun d!1346618 () Bool)

(assert (=> d!1346618 (= (invariantList!829 (toList!3602 lt!1633300)) (noDuplicatedKeys!188 (toList!3602 lt!1633300)))))

(declare-fun bs!762792 () Bool)

(assert (= bs!762792 d!1346618))

(declare-fun m!5124149 () Bool)

(assert (=> bs!762792 m!5124149))

(assert (=> d!1346312 d!1346618))

(declare-fun d!1346620 () Bool)

(declare-fun res!1836366 () Bool)

(declare-fun e!2762721 () Bool)

(assert (=> d!1346620 (=> res!1836366 e!2762721)))

(assert (=> d!1346620 (= res!1836366 ((_ is Nil!49722) (tail!7337 (toList!3601 lm!1616))))))

(assert (=> d!1346620 (= (forall!9656 (tail!7337 (toList!3601 lm!1616)) lambda!156260) e!2762721)))

(declare-fun b!4436904 () Bool)

(declare-fun e!2762722 () Bool)

(assert (=> b!4436904 (= e!2762721 e!2762722)))

(declare-fun res!1836367 () Bool)

(assert (=> b!4436904 (=> (not res!1836367) (not e!2762722))))

(assert (=> b!4436904 (= res!1836367 (dynLambda!20890 lambda!156260 (h!55431 (tail!7337 (toList!3601 lm!1616)))))))

(declare-fun b!4436905 () Bool)

(assert (=> b!4436905 (= e!2762722 (forall!9656 (t!356788 (tail!7337 (toList!3601 lm!1616))) lambda!156260))))

(assert (= (and d!1346620 (not res!1836366)) b!4436904))

(assert (= (and b!4436904 res!1836367) b!4436905))

(declare-fun b_lambda!144641 () Bool)

(assert (=> (not b_lambda!144641) (not b!4436904)))

(declare-fun m!5124151 () Bool)

(assert (=> b!4436904 m!5124151))

(declare-fun m!5124153 () Bool)

(assert (=> b!4436905 m!5124153))

(assert (=> d!1346312 d!1346620))

(declare-fun d!1346622 () Bool)

(declare-fun lt!1633736 () Bool)

(assert (=> d!1346622 (= lt!1633736 (select (content!8000 (toList!3601 lt!1633255)) lt!1633175))))

(declare-fun e!2762723 () Bool)

(assert (=> d!1346622 (= lt!1633736 e!2762723)))

(declare-fun res!1836369 () Bool)

(assert (=> d!1346622 (=> (not res!1836369) (not e!2762723))))

(assert (=> d!1346622 (= res!1836369 ((_ is Cons!49722) (toList!3601 lt!1633255)))))

(assert (=> d!1346622 (= (contains!12274 (toList!3601 lt!1633255) lt!1633175) lt!1633736)))

(declare-fun b!4436906 () Bool)

(declare-fun e!2762724 () Bool)

(assert (=> b!4436906 (= e!2762723 e!2762724)))

(declare-fun res!1836368 () Bool)

(assert (=> b!4436906 (=> res!1836368 e!2762724)))

(assert (=> b!4436906 (= res!1836368 (= (h!55431 (toList!3601 lt!1633255)) lt!1633175))))

(declare-fun b!4436907 () Bool)

(assert (=> b!4436907 (= e!2762724 (contains!12274 (t!356788 (toList!3601 lt!1633255)) lt!1633175))))

(assert (= (and d!1346622 res!1836369) b!4436906))

(assert (= (and b!4436906 (not res!1836368)) b!4436907))

(declare-fun m!5124155 () Bool)

(assert (=> d!1346622 m!5124155))

(declare-fun m!5124157 () Bool)

(assert (=> d!1346622 m!5124157))

(declare-fun m!5124159 () Bool)

(assert (=> b!4436907 m!5124159))

(assert (=> b!4436204 d!1346622))

(declare-fun d!1346624 () Bool)

(declare-fun res!1836370 () Bool)

(declare-fun e!2762725 () Bool)

(assert (=> d!1346624 (=> res!1836370 e!2762725)))

(assert (=> d!1346624 (= res!1836370 (not ((_ is Cons!49721) (_2!28098 (h!55431 (toList!3601 lt!1633180))))))))

(assert (=> d!1346624 (= (noDuplicateKeys!807 (_2!28098 (h!55431 (toList!3601 lt!1633180)))) e!2762725)))

(declare-fun b!4436908 () Bool)

(declare-fun e!2762726 () Bool)

(assert (=> b!4436908 (= e!2762725 e!2762726)))

(declare-fun res!1836371 () Bool)

(assert (=> b!4436908 (=> (not res!1836371) (not e!2762726))))

(assert (=> b!4436908 (= res!1836371 (not (containsKey!1200 (t!356787 (_2!28098 (h!55431 (toList!3601 lt!1633180)))) (_1!28097 (h!55430 (_2!28098 (h!55431 (toList!3601 lt!1633180))))))))))

(declare-fun b!4436909 () Bool)

(assert (=> b!4436909 (= e!2762726 (noDuplicateKeys!807 (t!356787 (_2!28098 (h!55431 (toList!3601 lt!1633180))))))))

(assert (= (and d!1346624 (not res!1836370)) b!4436908))

(assert (= (and b!4436908 res!1836371) b!4436909))

(declare-fun m!5124161 () Bool)

(assert (=> b!4436908 m!5124161))

(declare-fun m!5124163 () Bool)

(assert (=> b!4436909 m!5124163))

(assert (=> bs!762554 d!1346624))

(declare-fun d!1346626 () Bool)

(declare-fun lt!1633737 () Bool)

(assert (=> d!1346626 (= lt!1633737 (select (content!7999 e!2762345) key!3717))))

(declare-fun e!2762727 () Bool)

(assert (=> d!1346626 (= lt!1633737 e!2762727)))

(declare-fun res!1836373 () Bool)

(assert (=> d!1346626 (=> (not res!1836373) (not e!2762727))))

(assert (=> d!1346626 (= res!1836373 ((_ is Cons!49724) e!2762345))))

(assert (=> d!1346626 (= (contains!12275 e!2762345 key!3717) lt!1633737)))

(declare-fun b!4436910 () Bool)

(declare-fun e!2762728 () Bool)

(assert (=> b!4436910 (= e!2762727 e!2762728)))

(declare-fun res!1836372 () Bool)

(assert (=> b!4436910 (=> res!1836372 e!2762728)))

(assert (=> b!4436910 (= res!1836372 (= (h!55435 e!2762345) key!3717))))

(declare-fun b!4436911 () Bool)

(assert (=> b!4436911 (= e!2762728 (contains!12275 (t!356790 e!2762345) key!3717))))

(assert (= (and d!1346626 res!1836373) b!4436910))

(assert (= (and b!4436910 (not res!1836372)) b!4436911))

(declare-fun m!5124165 () Bool)

(assert (=> d!1346626 m!5124165))

(declare-fun m!5124167 () Bool)

(assert (=> d!1346626 m!5124167))

(declare-fun m!5124169 () Bool)

(assert (=> b!4436911 m!5124169))

(assert (=> bm!308682 d!1346626))

(assert (=> d!1346310 d!1346314))

(declare-fun d!1346628 () Bool)

(assert (=> d!1346628 (= (invariantList!829 (toList!3602 lt!1633299)) (noDuplicatedKeys!188 (toList!3602 lt!1633299)))))

(declare-fun bs!762793 () Bool)

(assert (= bs!762793 d!1346628))

(declare-fun m!5124171 () Bool)

(assert (=> bs!762793 m!5124171))

(assert (=> d!1346308 d!1346628))

(declare-fun d!1346630 () Bool)

(declare-fun res!1836374 () Bool)

(declare-fun e!2762729 () Bool)

(assert (=> d!1346630 (=> res!1836374 e!2762729)))

(assert (=> d!1346630 (= res!1836374 ((_ is Nil!49722) (toList!3601 (+!1180 lt!1633179 lt!1633175))))))

(assert (=> d!1346630 (= (forall!9656 (toList!3601 (+!1180 lt!1633179 lt!1633175)) lambda!156259) e!2762729)))

(declare-fun b!4436912 () Bool)

(declare-fun e!2762730 () Bool)

(assert (=> b!4436912 (= e!2762729 e!2762730)))

(declare-fun res!1836375 () Bool)

(assert (=> b!4436912 (=> (not res!1836375) (not e!2762730))))

(assert (=> b!4436912 (= res!1836375 (dynLambda!20890 lambda!156259 (h!55431 (toList!3601 (+!1180 lt!1633179 lt!1633175)))))))

(declare-fun b!4436913 () Bool)

(assert (=> b!4436913 (= e!2762730 (forall!9656 (t!356788 (toList!3601 (+!1180 lt!1633179 lt!1633175))) lambda!156259))))

(assert (= (and d!1346630 (not res!1836374)) b!4436912))

(assert (= (and b!4436912 res!1836375) b!4436913))

(declare-fun b_lambda!144643 () Bool)

(assert (=> (not b_lambda!144643) (not b!4436912)))

(declare-fun m!5124173 () Bool)

(assert (=> b!4436912 m!5124173))

(declare-fun m!5124175 () Bool)

(assert (=> b!4436913 m!5124175))

(assert (=> d!1346308 d!1346630))

(declare-fun lt!1633740 () Bool)

(declare-fun d!1346632 () Bool)

(assert (=> d!1346632 (= lt!1633740 (select (content!7996 (toList!3602 lt!1633203)) (tuple2!49607 key!3717 newValue!93)))))

(declare-fun e!2762736 () Bool)

(assert (=> d!1346632 (= lt!1633740 e!2762736)))

(declare-fun res!1836381 () Bool)

(assert (=> d!1346632 (=> (not res!1836381) (not e!2762736))))

(assert (=> d!1346632 (= res!1836381 ((_ is Cons!49721) (toList!3602 lt!1633203)))))

(assert (=> d!1346632 (= (contains!12273 (toList!3602 lt!1633203) (tuple2!49607 key!3717 newValue!93)) lt!1633740)))

(declare-fun b!4436918 () Bool)

(declare-fun e!2762735 () Bool)

(assert (=> b!4436918 (= e!2762736 e!2762735)))

(declare-fun res!1836380 () Bool)

(assert (=> b!4436918 (=> res!1836380 e!2762735)))

(assert (=> b!4436918 (= res!1836380 (= (h!55430 (toList!3602 lt!1633203)) (tuple2!49607 key!3717 newValue!93)))))

(declare-fun b!4436919 () Bool)

(assert (=> b!4436919 (= e!2762735 (contains!12273 (t!356787 (toList!3602 lt!1633203)) (tuple2!49607 key!3717 newValue!93)))))

(assert (= (and d!1346632 res!1836381) b!4436918))

(assert (= (and b!4436918 (not res!1836380)) b!4436919))

(declare-fun m!5124177 () Bool)

(assert (=> d!1346632 m!5124177))

(declare-fun m!5124179 () Bool)

(assert (=> d!1346632 m!5124179))

(declare-fun m!5124181 () Bool)

(assert (=> b!4436919 m!5124181))

(assert (=> b!4436170 d!1346632))

(assert (=> b!4436299 d!1346424))

(assert (=> b!4436299 d!1346426))

(declare-fun d!1346634 () Bool)

(declare-fun e!2762738 () Bool)

(assert (=> d!1346634 e!2762738))

(declare-fun res!1836382 () Bool)

(assert (=> d!1346634 (=> res!1836382 e!2762738)))

(declare-fun lt!1633744 () Bool)

(assert (=> d!1346634 (= res!1836382 (not lt!1633744))))

(declare-fun lt!1633741 () Bool)

(assert (=> d!1346634 (= lt!1633744 lt!1633741)))

(declare-fun lt!1633742 () Unit!83387)

(declare-fun e!2762737 () Unit!83387)

(assert (=> d!1346634 (= lt!1633742 e!2762737)))

(declare-fun c!755186 () Bool)

(assert (=> d!1346634 (= c!755186 lt!1633741)))

(assert (=> d!1346634 (= lt!1633741 (containsKey!1199 (toList!3601 lt!1633328) (_1!28098 lt!1633175)))))

(assert (=> d!1346634 (= (contains!12269 lt!1633328 (_1!28098 lt!1633175)) lt!1633744)))

(declare-fun b!4436920 () Bool)

(declare-fun lt!1633743 () Unit!83387)

(assert (=> b!4436920 (= e!2762737 lt!1633743)))

(assert (=> b!4436920 (= lt!1633743 (lemmaContainsKeyImpliesGetValueByKeyDefined!669 (toList!3601 lt!1633328) (_1!28098 lt!1633175)))))

(assert (=> b!4436920 (isDefined!8066 (getValueByKey!760 (toList!3601 lt!1633328) (_1!28098 lt!1633175)))))

(declare-fun b!4436921 () Bool)

(declare-fun Unit!83455 () Unit!83387)

(assert (=> b!4436921 (= e!2762737 Unit!83455)))

(declare-fun b!4436922 () Bool)

(assert (=> b!4436922 (= e!2762738 (isDefined!8066 (getValueByKey!760 (toList!3601 lt!1633328) (_1!28098 lt!1633175))))))

(assert (= (and d!1346634 c!755186) b!4436920))

(assert (= (and d!1346634 (not c!755186)) b!4436921))

(assert (= (and d!1346634 (not res!1836382)) b!4436922))

(declare-fun m!5124183 () Bool)

(assert (=> d!1346634 m!5124183))

(declare-fun m!5124185 () Bool)

(assert (=> b!4436920 m!5124185))

(assert (=> b!4436920 m!5123275))

(assert (=> b!4436920 m!5123275))

(declare-fun m!5124187 () Bool)

(assert (=> b!4436920 m!5124187))

(assert (=> b!4436922 m!5123275))

(assert (=> b!4436922 m!5123275))

(assert (=> b!4436922 m!5124187))

(assert (=> d!1346320 d!1346634))

(declare-fun b!4436925 () Bool)

(declare-fun e!2762740 () Option!10774)

(assert (=> b!4436925 (= e!2762740 (getValueByKey!760 (t!356788 lt!1633327) (_1!28098 lt!1633175)))))

(declare-fun d!1346636 () Bool)

(declare-fun c!755187 () Bool)

(assert (=> d!1346636 (= c!755187 (and ((_ is Cons!49722) lt!1633327) (= (_1!28098 (h!55431 lt!1633327)) (_1!28098 lt!1633175))))))

(declare-fun e!2762739 () Option!10774)

(assert (=> d!1346636 (= (getValueByKey!760 lt!1633327 (_1!28098 lt!1633175)) e!2762739)))

(declare-fun b!4436926 () Bool)

(assert (=> b!4436926 (= e!2762740 None!10773)))

(declare-fun b!4436923 () Bool)

(assert (=> b!4436923 (= e!2762739 (Some!10773 (_2!28098 (h!55431 lt!1633327))))))

(declare-fun b!4436924 () Bool)

(assert (=> b!4436924 (= e!2762739 e!2762740)))

(declare-fun c!755188 () Bool)

(assert (=> b!4436924 (= c!755188 (and ((_ is Cons!49722) lt!1633327) (not (= (_1!28098 (h!55431 lt!1633327)) (_1!28098 lt!1633175)))))))

(assert (= (and d!1346636 c!755187) b!4436923))

(assert (= (and d!1346636 (not c!755187)) b!4436924))

(assert (= (and b!4436924 c!755188) b!4436925))

(assert (= (and b!4436924 (not c!755188)) b!4436926))

(declare-fun m!5124189 () Bool)

(assert (=> b!4436925 m!5124189))

(assert (=> d!1346320 d!1346636))

(declare-fun d!1346638 () Bool)

(assert (=> d!1346638 (= (getValueByKey!760 lt!1633327 (_1!28098 lt!1633175)) (Some!10773 (_2!28098 lt!1633175)))))

(declare-fun lt!1633745 () Unit!83387)

(assert (=> d!1346638 (= lt!1633745 (choose!28145 lt!1633327 (_1!28098 lt!1633175) (_2!28098 lt!1633175)))))

(declare-fun e!2762741 () Bool)

(assert (=> d!1346638 e!2762741))

(declare-fun res!1836383 () Bool)

(assert (=> d!1346638 (=> (not res!1836383) (not e!2762741))))

(assert (=> d!1346638 (= res!1836383 (isStrictlySorted!256 lt!1633327))))

(assert (=> d!1346638 (= (lemmaContainsTupThenGetReturnValue!493 lt!1633327 (_1!28098 lt!1633175) (_2!28098 lt!1633175)) lt!1633745)))

(declare-fun b!4436927 () Bool)

(declare-fun res!1836384 () Bool)

(assert (=> b!4436927 (=> (not res!1836384) (not e!2762741))))

(assert (=> b!4436927 (= res!1836384 (containsKey!1199 lt!1633327 (_1!28098 lt!1633175)))))

(declare-fun b!4436928 () Bool)

(assert (=> b!4436928 (= e!2762741 (contains!12274 lt!1633327 (tuple2!49609 (_1!28098 lt!1633175) (_2!28098 lt!1633175))))))

(assert (= (and d!1346638 res!1836383) b!4436927))

(assert (= (and b!4436927 res!1836384) b!4436928))

(assert (=> d!1346638 m!5123269))

(declare-fun m!5124191 () Bool)

(assert (=> d!1346638 m!5124191))

(declare-fun m!5124193 () Bool)

(assert (=> d!1346638 m!5124193))

(declare-fun m!5124195 () Bool)

(assert (=> b!4436927 m!5124195))

(declare-fun m!5124197 () Bool)

(assert (=> b!4436928 m!5124197))

(assert (=> d!1346320 d!1346638))

(declare-fun bm!308745 () Bool)

(declare-fun call!308751 () List!49846)

(declare-fun call!308752 () List!49846)

(assert (=> bm!308745 (= call!308751 call!308752)))

(declare-fun b!4436929 () Bool)

(declare-fun e!2762746 () List!49846)

(assert (=> b!4436929 (= e!2762746 call!308751)))

(declare-fun b!4436930 () Bool)

(declare-fun c!755189 () Bool)

(assert (=> b!4436930 (= c!755189 (and ((_ is Cons!49722) (toList!3601 lm!1616)) (bvsgt (_1!28098 (h!55431 (toList!3601 lm!1616))) (_1!28098 lt!1633175))))))

(declare-fun e!2762743 () List!49846)

(assert (=> b!4436930 (= e!2762743 e!2762746)))

(declare-fun d!1346640 () Bool)

(declare-fun e!2762742 () Bool)

(assert (=> d!1346640 e!2762742))

(declare-fun res!1836385 () Bool)

(assert (=> d!1346640 (=> (not res!1836385) (not e!2762742))))

(declare-fun lt!1633746 () List!49846)

(assert (=> d!1346640 (= res!1836385 (isStrictlySorted!256 lt!1633746))))

(declare-fun e!2762744 () List!49846)

(assert (=> d!1346640 (= lt!1633746 e!2762744)))

(declare-fun c!755192 () Bool)

(assert (=> d!1346640 (= c!755192 (and ((_ is Cons!49722) (toList!3601 lm!1616)) (bvslt (_1!28098 (h!55431 (toList!3601 lm!1616))) (_1!28098 lt!1633175))))))

(assert (=> d!1346640 (isStrictlySorted!256 (toList!3601 lm!1616))))

(assert (=> d!1346640 (= (insertStrictlySorted!284 (toList!3601 lm!1616) (_1!28098 lt!1633175) (_2!28098 lt!1633175)) lt!1633746)))

(declare-fun bm!308746 () Bool)

(declare-fun call!308750 () List!49846)

(assert (=> bm!308746 (= call!308752 call!308750)))

(declare-fun bm!308747 () Bool)

(declare-fun e!2762745 () List!49846)

(assert (=> bm!308747 (= call!308750 ($colon$colon!806 e!2762745 (ite c!755192 (h!55431 (toList!3601 lm!1616)) (tuple2!49609 (_1!28098 lt!1633175) (_2!28098 lt!1633175)))))))

(declare-fun c!755191 () Bool)

(assert (=> bm!308747 (= c!755191 c!755192)))

(declare-fun b!4436931 () Bool)

(assert (=> b!4436931 (= e!2762744 e!2762743)))

(declare-fun c!755190 () Bool)

(assert (=> b!4436931 (= c!755190 (and ((_ is Cons!49722) (toList!3601 lm!1616)) (= (_1!28098 (h!55431 (toList!3601 lm!1616))) (_1!28098 lt!1633175))))))

(declare-fun b!4436932 () Bool)

(assert (=> b!4436932 (= e!2762746 call!308751)))

(declare-fun b!4436933 () Bool)

(assert (=> b!4436933 (= e!2762745 (insertStrictlySorted!284 (t!356788 (toList!3601 lm!1616)) (_1!28098 lt!1633175) (_2!28098 lt!1633175)))))

(declare-fun b!4436934 () Bool)

(declare-fun res!1836386 () Bool)

(assert (=> b!4436934 (=> (not res!1836386) (not e!2762742))))

(assert (=> b!4436934 (= res!1836386 (containsKey!1199 lt!1633746 (_1!28098 lt!1633175)))))

(declare-fun b!4436935 () Bool)

(assert (=> b!4436935 (= e!2762743 call!308752)))

(declare-fun b!4436936 () Bool)

(assert (=> b!4436936 (= e!2762742 (contains!12274 lt!1633746 (tuple2!49609 (_1!28098 lt!1633175) (_2!28098 lt!1633175))))))

(declare-fun b!4436937 () Bool)

(assert (=> b!4436937 (= e!2762744 call!308750)))

(declare-fun b!4436938 () Bool)

(assert (=> b!4436938 (= e!2762745 (ite c!755190 (t!356788 (toList!3601 lm!1616)) (ite c!755189 (Cons!49722 (h!55431 (toList!3601 lm!1616)) (t!356788 (toList!3601 lm!1616))) Nil!49722)))))

(assert (= (and d!1346640 c!755192) b!4436937))

(assert (= (and d!1346640 (not c!755192)) b!4436931))

(assert (= (and b!4436931 c!755190) b!4436935))

(assert (= (and b!4436931 (not c!755190)) b!4436930))

(assert (= (and b!4436930 c!755189) b!4436932))

(assert (= (and b!4436930 (not c!755189)) b!4436929))

(assert (= (or b!4436932 b!4436929) bm!308745))

(assert (= (or b!4436935 bm!308745) bm!308746))

(assert (= (or b!4436937 bm!308746) bm!308747))

(assert (= (and bm!308747 c!755191) b!4436933))

(assert (= (and bm!308747 (not c!755191)) b!4436938))

(assert (= (and d!1346640 res!1836385) b!4436934))

(assert (= (and b!4436934 res!1836386) b!4436936))

(declare-fun m!5124199 () Bool)

(assert (=> b!4436934 m!5124199))

(declare-fun m!5124201 () Bool)

(assert (=> b!4436933 m!5124201))

(declare-fun m!5124203 () Bool)

(assert (=> b!4436936 m!5124203))

(declare-fun m!5124205 () Bool)

(assert (=> d!1346640 m!5124205))

(assert (=> d!1346640 m!5123293))

(declare-fun m!5124207 () Bool)

(assert (=> bm!308747 m!5124207))

(assert (=> d!1346320 d!1346640))

(declare-fun bs!762794 () Bool)

(declare-fun b!4436940 () Bool)

(assert (= bs!762794 (and b!4436940 b!4436876)))

(declare-fun lambda!156398 () Int)

(assert (=> bs!762794 (= (= (extractMap!868 (t!356788 (toList!3601 lm!1616))) (extractMap!868 (t!356788 (tail!7337 (toList!3601 lm!1616))))) (= lambda!156398 lambda!156393))))

(declare-fun bs!762795 () Bool)

(assert (= bs!762795 (and b!4436940 b!4436875)))

(assert (=> bs!762795 (= (= (extractMap!868 (t!356788 (toList!3601 lm!1616))) (extractMap!868 (t!356788 (tail!7337 (toList!3601 lm!1616))))) (= lambda!156398 lambda!156392))))

(declare-fun bs!762796 () Bool)

(assert (= bs!762796 (and b!4436940 d!1346324)))

(assert (=> bs!762796 (not (= lambda!156398 lambda!156263))))

(assert (=> bs!762794 (= (= (extractMap!868 (t!356788 (toList!3601 lm!1616))) lt!1633719) (= lambda!156398 lambda!156394))))

(declare-fun bs!762797 () Bool)

(assert (= bs!762797 (and b!4436940 d!1346506)))

(assert (=> bs!762797 (= (= (extractMap!868 (t!356788 (toList!3601 lm!1616))) lt!1633723) (= lambda!156398 lambda!156395))))

(assert (=> b!4436940 true))

(declare-fun bs!762798 () Bool)

(declare-fun b!4436941 () Bool)

(assert (= bs!762798 (and b!4436941 b!4436876)))

(declare-fun lambda!156399 () Int)

(assert (=> bs!762798 (= (= (extractMap!868 (t!356788 (toList!3601 lm!1616))) (extractMap!868 (t!356788 (tail!7337 (toList!3601 lm!1616))))) (= lambda!156399 lambda!156393))))

(declare-fun bs!762799 () Bool)

(assert (= bs!762799 (and b!4436941 b!4436875)))

(assert (=> bs!762799 (= (= (extractMap!868 (t!356788 (toList!3601 lm!1616))) (extractMap!868 (t!356788 (tail!7337 (toList!3601 lm!1616))))) (= lambda!156399 lambda!156392))))

(declare-fun bs!762800 () Bool)

(assert (= bs!762800 (and b!4436941 d!1346324)))

(assert (=> bs!762800 (not (= lambda!156399 lambda!156263))))

(assert (=> bs!762798 (= (= (extractMap!868 (t!356788 (toList!3601 lm!1616))) lt!1633719) (= lambda!156399 lambda!156394))))

(declare-fun bs!762801 () Bool)

(assert (= bs!762801 (and b!4436941 d!1346506)))

(assert (=> bs!762801 (= (= (extractMap!868 (t!356788 (toList!3601 lm!1616))) lt!1633723) (= lambda!156399 lambda!156395))))

(declare-fun bs!762802 () Bool)

(assert (= bs!762802 (and b!4436941 b!4436940)))

(assert (=> bs!762802 (= lambda!156399 lambda!156398)))

(assert (=> b!4436941 true))

(declare-fun lambda!156400 () Int)

(declare-fun lt!1633763 () ListMap!2845)

(assert (=> bs!762798 (= (= lt!1633763 (extractMap!868 (t!356788 (tail!7337 (toList!3601 lm!1616))))) (= lambda!156400 lambda!156393))))

(assert (=> bs!762799 (= (= lt!1633763 (extractMap!868 (t!356788 (tail!7337 (toList!3601 lm!1616))))) (= lambda!156400 lambda!156392))))

(assert (=> bs!762800 (not (= lambda!156400 lambda!156263))))

(assert (=> bs!762798 (= (= lt!1633763 lt!1633719) (= lambda!156400 lambda!156394))))

(assert (=> bs!762801 (= (= lt!1633763 lt!1633723) (= lambda!156400 lambda!156395))))

(assert (=> b!4436941 (= (= lt!1633763 (extractMap!868 (t!356788 (toList!3601 lm!1616)))) (= lambda!156400 lambda!156399))))

(assert (=> bs!762802 (= (= lt!1633763 (extractMap!868 (t!356788 (toList!3601 lm!1616)))) (= lambda!156400 lambda!156398))))

(assert (=> b!4436941 true))

(declare-fun bs!762803 () Bool)

(declare-fun d!1346642 () Bool)

(assert (= bs!762803 (and d!1346642 b!4436876)))

(declare-fun lt!1633767 () ListMap!2845)

(declare-fun lambda!156401 () Int)

(assert (=> bs!762803 (= (= lt!1633767 (extractMap!868 (t!356788 (tail!7337 (toList!3601 lm!1616))))) (= lambda!156401 lambda!156393))))

(declare-fun bs!762804 () Bool)

(assert (= bs!762804 (and d!1346642 b!4436875)))

(assert (=> bs!762804 (= (= lt!1633767 (extractMap!868 (t!356788 (tail!7337 (toList!3601 lm!1616))))) (= lambda!156401 lambda!156392))))

(declare-fun bs!762805 () Bool)

(assert (= bs!762805 (and d!1346642 d!1346324)))

(assert (=> bs!762805 (not (= lambda!156401 lambda!156263))))

(declare-fun bs!762806 () Bool)

(assert (= bs!762806 (and d!1346642 d!1346506)))

(assert (=> bs!762806 (= (= lt!1633767 lt!1633723) (= lambda!156401 lambda!156395))))

(declare-fun bs!762807 () Bool)

(assert (= bs!762807 (and d!1346642 b!4436941)))

(assert (=> bs!762807 (= (= lt!1633767 (extractMap!868 (t!356788 (toList!3601 lm!1616)))) (= lambda!156401 lambda!156399))))

(declare-fun bs!762808 () Bool)

(assert (= bs!762808 (and d!1346642 b!4436940)))

(assert (=> bs!762808 (= (= lt!1633767 (extractMap!868 (t!356788 (toList!3601 lm!1616)))) (= lambda!156401 lambda!156398))))

(assert (=> bs!762807 (= (= lt!1633767 lt!1633763) (= lambda!156401 lambda!156400))))

(assert (=> bs!762803 (= (= lt!1633767 lt!1633719) (= lambda!156401 lambda!156394))))

(assert (=> d!1346642 true))

(declare-fun bm!308748 () Bool)

(declare-fun call!308753 () Unit!83387)

(assert (=> bm!308748 (= call!308753 (lemmaContainsAllItsOwnKeys!197 (extractMap!868 (t!356788 (toList!3601 lm!1616)))))))

(declare-fun e!2762748 () ListMap!2845)

(assert (=> b!4436940 (= e!2762748 (extractMap!868 (t!356788 (toList!3601 lm!1616))))))

(declare-fun lt!1633752 () Unit!83387)

(assert (=> b!4436940 (= lt!1633752 call!308753)))

(declare-fun call!308754 () Bool)

(assert (=> b!4436940 call!308754))

(declare-fun lt!1633760 () Unit!83387)

(assert (=> b!4436940 (= lt!1633760 lt!1633752)))

(declare-fun call!308755 () Bool)

(assert (=> b!4436940 call!308755))

(declare-fun lt!1633748 () Unit!83387)

(declare-fun Unit!83457 () Unit!83387)

(assert (=> b!4436940 (= lt!1633748 Unit!83457)))

(assert (=> b!4436941 (= e!2762748 lt!1633763)))

(declare-fun lt!1633757 () ListMap!2845)

(assert (=> b!4436941 (= lt!1633757 (+!1181 (extractMap!868 (t!356788 (toList!3601 lm!1616))) (h!55430 (_2!28098 (h!55431 (toList!3601 lm!1616))))))))

(assert (=> b!4436941 (= lt!1633763 (addToMapMapFromBucket!428 (t!356787 (_2!28098 (h!55431 (toList!3601 lm!1616)))) (+!1181 (extractMap!868 (t!356788 (toList!3601 lm!1616))) (h!55430 (_2!28098 (h!55431 (toList!3601 lm!1616)))))))))

(declare-fun lt!1633754 () Unit!83387)

(assert (=> b!4436941 (= lt!1633754 call!308753)))

(assert (=> b!4436941 call!308754))

(declare-fun lt!1633753 () Unit!83387)

(assert (=> b!4436941 (= lt!1633753 lt!1633754)))

(assert (=> b!4436941 (forall!9658 (toList!3602 lt!1633757) lambda!156400)))

(declare-fun lt!1633747 () Unit!83387)

(declare-fun Unit!83458 () Unit!83387)

(assert (=> b!4436941 (= lt!1633747 Unit!83458)))

(assert (=> b!4436941 (forall!9658 (t!356787 (_2!28098 (h!55431 (toList!3601 lm!1616)))) lambda!156400)))

(declare-fun lt!1633761 () Unit!83387)

(declare-fun Unit!83459 () Unit!83387)

(assert (=> b!4436941 (= lt!1633761 Unit!83459)))

(declare-fun lt!1633759 () Unit!83387)

(declare-fun Unit!83460 () Unit!83387)

(assert (=> b!4436941 (= lt!1633759 Unit!83460)))

(declare-fun lt!1633750 () Unit!83387)

(assert (=> b!4436941 (= lt!1633750 (forallContained!2130 (toList!3602 lt!1633757) lambda!156400 (h!55430 (_2!28098 (h!55431 (toList!3601 lm!1616))))))))

(assert (=> b!4436941 (contains!12268 lt!1633757 (_1!28097 (h!55430 (_2!28098 (h!55431 (toList!3601 lm!1616))))))))

(declare-fun lt!1633764 () Unit!83387)

(declare-fun Unit!83461 () Unit!83387)

(assert (=> b!4436941 (= lt!1633764 Unit!83461)))

(assert (=> b!4436941 (contains!12268 lt!1633763 (_1!28097 (h!55430 (_2!28098 (h!55431 (toList!3601 lm!1616))))))))

(declare-fun lt!1633749 () Unit!83387)

(declare-fun Unit!83462 () Unit!83387)

(assert (=> b!4436941 (= lt!1633749 Unit!83462)))

(assert (=> b!4436941 (forall!9658 (_2!28098 (h!55431 (toList!3601 lm!1616))) lambda!156400)))

(declare-fun lt!1633751 () Unit!83387)

(declare-fun Unit!83463 () Unit!83387)

(assert (=> b!4436941 (= lt!1633751 Unit!83463)))

(assert (=> b!4436941 (forall!9658 (toList!3602 lt!1633757) lambda!156400)))

(declare-fun lt!1633758 () Unit!83387)

(declare-fun Unit!83464 () Unit!83387)

(assert (=> b!4436941 (= lt!1633758 Unit!83464)))

(declare-fun lt!1633762 () Unit!83387)

(declare-fun Unit!83465 () Unit!83387)

(assert (=> b!4436941 (= lt!1633762 Unit!83465)))

(declare-fun lt!1633765 () Unit!83387)

(assert (=> b!4436941 (= lt!1633765 (addForallContainsKeyThenBeforeAdding!197 (extractMap!868 (t!356788 (toList!3601 lm!1616))) lt!1633763 (_1!28097 (h!55430 (_2!28098 (h!55431 (toList!3601 lm!1616))))) (_2!28097 (h!55430 (_2!28098 (h!55431 (toList!3601 lm!1616)))))))))

(assert (=> b!4436941 (forall!9658 (toList!3602 (extractMap!868 (t!356788 (toList!3601 lm!1616)))) lambda!156400)))

(declare-fun lt!1633766 () Unit!83387)

(assert (=> b!4436941 (= lt!1633766 lt!1633765)))

(assert (=> b!4436941 (forall!9658 (toList!3602 (extractMap!868 (t!356788 (toList!3601 lm!1616)))) lambda!156400)))

(declare-fun lt!1633755 () Unit!83387)

(declare-fun Unit!83466 () Unit!83387)

(assert (=> b!4436941 (= lt!1633755 Unit!83466)))

(declare-fun res!1836389 () Bool)

(assert (=> b!4436941 (= res!1836389 call!308755)))

(declare-fun e!2762749 () Bool)

(assert (=> b!4436941 (=> (not res!1836389) (not e!2762749))))

(assert (=> b!4436941 e!2762749))

(declare-fun lt!1633756 () Unit!83387)

(declare-fun Unit!83467 () Unit!83387)

(assert (=> b!4436941 (= lt!1633756 Unit!83467)))

(declare-fun b!4436942 () Bool)

(assert (=> b!4436942 (= e!2762749 (forall!9658 (toList!3602 (extractMap!868 (t!356788 (toList!3601 lm!1616)))) lambda!156400))))

(declare-fun bm!308749 () Bool)

(declare-fun c!755193 () Bool)

(assert (=> bm!308749 (= call!308755 (forall!9658 (ite c!755193 (toList!3602 (extractMap!868 (t!356788 (toList!3601 lm!1616)))) (_2!28098 (h!55431 (toList!3601 lm!1616)))) (ite c!755193 lambda!156398 lambda!156400)))))

(declare-fun b!4436939 () Bool)

(declare-fun res!1836387 () Bool)

(declare-fun e!2762747 () Bool)

(assert (=> b!4436939 (=> (not res!1836387) (not e!2762747))))

(assert (=> b!4436939 (= res!1836387 (forall!9658 (toList!3602 (extractMap!868 (t!356788 (toList!3601 lm!1616)))) lambda!156401))))

(assert (=> d!1346642 e!2762747))

(declare-fun res!1836388 () Bool)

(assert (=> d!1346642 (=> (not res!1836388) (not e!2762747))))

(assert (=> d!1346642 (= res!1836388 (forall!9658 (_2!28098 (h!55431 (toList!3601 lm!1616))) lambda!156401))))

(assert (=> d!1346642 (= lt!1633767 e!2762748)))

(assert (=> d!1346642 (= c!755193 ((_ is Nil!49721) (_2!28098 (h!55431 (toList!3601 lm!1616)))))))

(assert (=> d!1346642 (noDuplicateKeys!807 (_2!28098 (h!55431 (toList!3601 lm!1616))))))

(assert (=> d!1346642 (= (addToMapMapFromBucket!428 (_2!28098 (h!55431 (toList!3601 lm!1616))) (extractMap!868 (t!356788 (toList!3601 lm!1616)))) lt!1633767)))

(declare-fun b!4436943 () Bool)

(assert (=> b!4436943 (= e!2762747 (invariantList!829 (toList!3602 lt!1633767)))))

(declare-fun bm!308750 () Bool)

(assert (=> bm!308750 (= call!308754 (forall!9658 (toList!3602 (extractMap!868 (t!356788 (toList!3601 lm!1616)))) (ite c!755193 lambda!156398 lambda!156399)))))

(assert (= (and d!1346642 c!755193) b!4436940))

(assert (= (and d!1346642 (not c!755193)) b!4436941))

(assert (= (and b!4436941 res!1836389) b!4436942))

(assert (= (or b!4436940 b!4436941) bm!308748))

(assert (= (or b!4436940 b!4436941) bm!308749))

(assert (= (or b!4436940 b!4436941) bm!308750))

(assert (= (and d!1346642 res!1836388) b!4436939))

(assert (= (and b!4436939 res!1836387) b!4436943))

(declare-fun m!5124209 () Bool)

(assert (=> b!4436941 m!5124209))

(declare-fun m!5124211 () Bool)

(assert (=> b!4436941 m!5124211))

(declare-fun m!5124213 () Bool)

(assert (=> b!4436941 m!5124213))

(declare-fun m!5124215 () Bool)

(assert (=> b!4436941 m!5124215))

(declare-fun m!5124217 () Bool)

(assert (=> b!4436941 m!5124217))

(assert (=> b!4436941 m!5124209))

(assert (=> b!4436941 m!5123331))

(declare-fun m!5124219 () Bool)

(assert (=> b!4436941 m!5124219))

(assert (=> b!4436941 m!5124217))

(assert (=> b!4436941 m!5124219))

(declare-fun m!5124221 () Bool)

(assert (=> b!4436941 m!5124221))

(assert (=> b!4436941 m!5123331))

(declare-fun m!5124223 () Bool)

(assert (=> b!4436941 m!5124223))

(declare-fun m!5124225 () Bool)

(assert (=> b!4436941 m!5124225))

(declare-fun m!5124227 () Bool)

(assert (=> b!4436941 m!5124227))

(declare-fun m!5124229 () Bool)

(assert (=> bm!308749 m!5124229))

(assert (=> bm!308748 m!5123331))

(declare-fun m!5124231 () Bool)

(assert (=> bm!308748 m!5124231))

(declare-fun m!5124233 () Bool)

(assert (=> bm!308750 m!5124233))

(declare-fun m!5124235 () Bool)

(assert (=> b!4436943 m!5124235))

(assert (=> b!4436942 m!5124209))

(declare-fun m!5124237 () Bool)

(assert (=> b!4436939 m!5124237))

(declare-fun m!5124239 () Bool)

(assert (=> d!1346642 m!5124239))

(assert (=> d!1346642 m!5123347))

(assert (=> b!4436338 d!1346642))

(declare-fun bs!762809 () Bool)

(declare-fun d!1346644 () Bool)

(assert (= bs!762809 (and d!1346644 d!1346610)))

(declare-fun lambda!156402 () Int)

(assert (=> bs!762809 (= lambda!156402 lambda!156397)))

(declare-fun bs!762810 () Bool)

(assert (= bs!762810 (and d!1346644 d!1346312)))

(assert (=> bs!762810 (= lambda!156402 lambda!156260)))

(declare-fun bs!762811 () Bool)

(assert (= bs!762811 (and d!1346644 d!1346338)))

(assert (=> bs!762811 (= lambda!156402 lambda!156267)))

(declare-fun bs!762812 () Bool)

(assert (= bs!762812 (and d!1346644 d!1346282)))

(assert (=> bs!762812 (= lambda!156402 lambda!156258)))

(declare-fun bs!762813 () Bool)

(assert (= bs!762813 (and d!1346644 start!433620)))

(assert (=> bs!762813 (= lambda!156402 lambda!156234)))

(declare-fun bs!762814 () Bool)

(assert (= bs!762814 (and d!1346644 d!1346308)))

(assert (=> bs!762814 (= lambda!156402 lambda!156259)))

(declare-fun bs!762815 () Bool)

(assert (= bs!762815 (and d!1346644 d!1346596)))

(assert (=> bs!762815 (= lambda!156402 lambda!156396)))

(declare-fun bs!762816 () Bool)

(assert (= bs!762816 (and d!1346644 d!1346332)))

(assert (=> bs!762816 (not (= lambda!156402 lambda!156266))))

(declare-fun bs!762817 () Bool)

(assert (= bs!762817 (and d!1346644 d!1346344)))

(assert (=> bs!762817 (= lambda!156402 lambda!156270)))

(declare-fun bs!762818 () Bool)

(assert (= bs!762818 (and d!1346644 d!1346252)))

(assert (=> bs!762818 (= lambda!156402 lambda!156250)))

(declare-fun lt!1633768 () ListMap!2845)

(assert (=> d!1346644 (invariantList!829 (toList!3602 lt!1633768))))

(declare-fun e!2762750 () ListMap!2845)

(assert (=> d!1346644 (= lt!1633768 e!2762750)))

(declare-fun c!755194 () Bool)

(assert (=> d!1346644 (= c!755194 ((_ is Cons!49722) (t!356788 (toList!3601 lm!1616))))))

(assert (=> d!1346644 (forall!9656 (t!356788 (toList!3601 lm!1616)) lambda!156402)))

(assert (=> d!1346644 (= (extractMap!868 (t!356788 (toList!3601 lm!1616))) lt!1633768)))

(declare-fun b!4436944 () Bool)

(assert (=> b!4436944 (= e!2762750 (addToMapMapFromBucket!428 (_2!28098 (h!55431 (t!356788 (toList!3601 lm!1616)))) (extractMap!868 (t!356788 (t!356788 (toList!3601 lm!1616))))))))

(declare-fun b!4436945 () Bool)

(assert (=> b!4436945 (= e!2762750 (ListMap!2846 Nil!49721))))

(assert (= (and d!1346644 c!755194) b!4436944))

(assert (= (and d!1346644 (not c!755194)) b!4436945))

(declare-fun m!5124241 () Bool)

(assert (=> d!1346644 m!5124241))

(declare-fun m!5124243 () Bool)

(assert (=> d!1346644 m!5124243))

(declare-fun m!5124245 () Bool)

(assert (=> b!4436944 m!5124245))

(assert (=> b!4436944 m!5124245))

(declare-fun m!5124247 () Bool)

(assert (=> b!4436944 m!5124247))

(assert (=> b!4436338 d!1346644))

(declare-fun d!1346646 () Bool)

(declare-fun res!1836390 () Bool)

(declare-fun e!2762751 () Bool)

(assert (=> d!1346646 (=> res!1836390 e!2762751)))

(assert (=> d!1346646 (= res!1836390 (not ((_ is Cons!49721) (_2!28098 (h!55431 (toList!3601 lm!1616))))))))

(assert (=> d!1346646 (= (noDuplicateKeys!807 (_2!28098 (h!55431 (toList!3601 lm!1616)))) e!2762751)))

(declare-fun b!4436946 () Bool)

(declare-fun e!2762752 () Bool)

(assert (=> b!4436946 (= e!2762751 e!2762752)))

(declare-fun res!1836391 () Bool)

(assert (=> b!4436946 (=> (not res!1836391) (not e!2762752))))

(assert (=> b!4436946 (= res!1836391 (not (containsKey!1200 (t!356787 (_2!28098 (h!55431 (toList!3601 lm!1616)))) (_1!28097 (h!55430 (_2!28098 (h!55431 (toList!3601 lm!1616))))))))))

(declare-fun b!4436947 () Bool)

(assert (=> b!4436947 (= e!2762752 (noDuplicateKeys!807 (t!356787 (_2!28098 (h!55431 (toList!3601 lm!1616))))))))

(assert (= (and d!1346646 (not res!1836390)) b!4436946))

(assert (= (and b!4436946 res!1836391) b!4436947))

(declare-fun m!5124249 () Bool)

(assert (=> b!4436946 m!5124249))

(declare-fun m!5124251 () Bool)

(assert (=> b!4436947 m!5124251))

(assert (=> bs!762553 d!1346646))

(declare-fun d!1346648 () Bool)

(declare-fun res!1836396 () Bool)

(declare-fun e!2762757 () Bool)

(assert (=> d!1346648 (=> res!1836396 e!2762757)))

(assert (=> d!1346648 (= res!1836396 (or ((_ is Nil!49722) (toList!3601 lm!1616)) ((_ is Nil!49722) (t!356788 (toList!3601 lm!1616)))))))

(assert (=> d!1346648 (= (isStrictlySorted!256 (toList!3601 lm!1616)) e!2762757)))

(declare-fun b!4436952 () Bool)

(declare-fun e!2762758 () Bool)

(assert (=> b!4436952 (= e!2762757 e!2762758)))

(declare-fun res!1836397 () Bool)

(assert (=> b!4436952 (=> (not res!1836397) (not e!2762758))))

(assert (=> b!4436952 (= res!1836397 (bvslt (_1!28098 (h!55431 (toList!3601 lm!1616))) (_1!28098 (h!55431 (t!356788 (toList!3601 lm!1616))))))))

(declare-fun b!4436953 () Bool)

(assert (=> b!4436953 (= e!2762758 (isStrictlySorted!256 (t!356788 (toList!3601 lm!1616))))))

(assert (= (and d!1346648 (not res!1836396)) b!4436952))

(assert (= (and b!4436952 res!1836397) b!4436953))

(declare-fun m!5124253 () Bool)

(assert (=> b!4436953 m!5124253))

(assert (=> d!1346328 d!1346648))

(declare-fun bs!762819 () Bool)

(declare-fun b!4436955 () Bool)

(assert (= bs!762819 (and b!4436955 b!4436876)))

(declare-fun lambda!156403 () Int)

(assert (=> bs!762819 (= (= (extractMap!868 (t!356788 (toList!3601 lt!1633179))) (extractMap!868 (t!356788 (tail!7337 (toList!3601 lm!1616))))) (= lambda!156403 lambda!156393))))

(declare-fun bs!762820 () Bool)

(assert (= bs!762820 (and b!4436955 b!4436875)))

(assert (=> bs!762820 (= (= (extractMap!868 (t!356788 (toList!3601 lt!1633179))) (extractMap!868 (t!356788 (tail!7337 (toList!3601 lm!1616))))) (= lambda!156403 lambda!156392))))

(declare-fun bs!762821 () Bool)

(assert (= bs!762821 (and b!4436955 d!1346324)))

(assert (=> bs!762821 (not (= lambda!156403 lambda!156263))))

(declare-fun bs!762822 () Bool)

(assert (= bs!762822 (and b!4436955 d!1346506)))

(assert (=> bs!762822 (= (= (extractMap!868 (t!356788 (toList!3601 lt!1633179))) lt!1633723) (= lambda!156403 lambda!156395))))

(declare-fun bs!762823 () Bool)

(assert (= bs!762823 (and b!4436955 d!1346642)))

(assert (=> bs!762823 (= (= (extractMap!868 (t!356788 (toList!3601 lt!1633179))) lt!1633767) (= lambda!156403 lambda!156401))))

(declare-fun bs!762824 () Bool)

(assert (= bs!762824 (and b!4436955 b!4436941)))

(assert (=> bs!762824 (= (= (extractMap!868 (t!356788 (toList!3601 lt!1633179))) (extractMap!868 (t!356788 (toList!3601 lm!1616)))) (= lambda!156403 lambda!156399))))

(declare-fun bs!762825 () Bool)

(assert (= bs!762825 (and b!4436955 b!4436940)))

(assert (=> bs!762825 (= (= (extractMap!868 (t!356788 (toList!3601 lt!1633179))) (extractMap!868 (t!356788 (toList!3601 lm!1616)))) (= lambda!156403 lambda!156398))))

(assert (=> bs!762824 (= (= (extractMap!868 (t!356788 (toList!3601 lt!1633179))) lt!1633763) (= lambda!156403 lambda!156400))))

(assert (=> bs!762819 (= (= (extractMap!868 (t!356788 (toList!3601 lt!1633179))) lt!1633719) (= lambda!156403 lambda!156394))))

(assert (=> b!4436955 true))

(declare-fun bs!762826 () Bool)

(declare-fun b!4436956 () Bool)

(assert (= bs!762826 (and b!4436956 b!4436876)))

(declare-fun lambda!156404 () Int)

(assert (=> bs!762826 (= (= (extractMap!868 (t!356788 (toList!3601 lt!1633179))) (extractMap!868 (t!356788 (tail!7337 (toList!3601 lm!1616))))) (= lambda!156404 lambda!156393))))

(declare-fun bs!762827 () Bool)

(assert (= bs!762827 (and b!4436956 b!4436875)))

(assert (=> bs!762827 (= (= (extractMap!868 (t!356788 (toList!3601 lt!1633179))) (extractMap!868 (t!356788 (tail!7337 (toList!3601 lm!1616))))) (= lambda!156404 lambda!156392))))

(declare-fun bs!762828 () Bool)

(assert (= bs!762828 (and b!4436956 d!1346324)))

(assert (=> bs!762828 (not (= lambda!156404 lambda!156263))))

(declare-fun bs!762829 () Bool)

(assert (= bs!762829 (and b!4436956 d!1346506)))

(assert (=> bs!762829 (= (= (extractMap!868 (t!356788 (toList!3601 lt!1633179))) lt!1633723) (= lambda!156404 lambda!156395))))

(declare-fun bs!762830 () Bool)

(assert (= bs!762830 (and b!4436956 d!1346642)))

(assert (=> bs!762830 (= (= (extractMap!868 (t!356788 (toList!3601 lt!1633179))) lt!1633767) (= lambda!156404 lambda!156401))))

(declare-fun bs!762831 () Bool)

(assert (= bs!762831 (and b!4436956 b!4436955)))

(assert (=> bs!762831 (= lambda!156404 lambda!156403)))

(declare-fun bs!762832 () Bool)

(assert (= bs!762832 (and b!4436956 b!4436941)))

(assert (=> bs!762832 (= (= (extractMap!868 (t!356788 (toList!3601 lt!1633179))) (extractMap!868 (t!356788 (toList!3601 lm!1616)))) (= lambda!156404 lambda!156399))))

(declare-fun bs!762833 () Bool)

(assert (= bs!762833 (and b!4436956 b!4436940)))

(assert (=> bs!762833 (= (= (extractMap!868 (t!356788 (toList!3601 lt!1633179))) (extractMap!868 (t!356788 (toList!3601 lm!1616)))) (= lambda!156404 lambda!156398))))

(assert (=> bs!762832 (= (= (extractMap!868 (t!356788 (toList!3601 lt!1633179))) lt!1633763) (= lambda!156404 lambda!156400))))

(assert (=> bs!762826 (= (= (extractMap!868 (t!356788 (toList!3601 lt!1633179))) lt!1633719) (= lambda!156404 lambda!156394))))

(assert (=> b!4436956 true))

(declare-fun lt!1633785 () ListMap!2845)

(declare-fun lambda!156405 () Int)

(assert (=> bs!762827 (= (= lt!1633785 (extractMap!868 (t!356788 (tail!7337 (toList!3601 lm!1616))))) (= lambda!156405 lambda!156392))))

(assert (=> bs!762828 (not (= lambda!156405 lambda!156263))))

(assert (=> bs!762829 (= (= lt!1633785 lt!1633723) (= lambda!156405 lambda!156395))))

(assert (=> bs!762830 (= (= lt!1633785 lt!1633767) (= lambda!156405 lambda!156401))))

(assert (=> bs!762831 (= (= lt!1633785 (extractMap!868 (t!356788 (toList!3601 lt!1633179)))) (= lambda!156405 lambda!156403))))

(assert (=> bs!762832 (= (= lt!1633785 (extractMap!868 (t!356788 (toList!3601 lm!1616)))) (= lambda!156405 lambda!156399))))

(assert (=> bs!762833 (= (= lt!1633785 (extractMap!868 (t!356788 (toList!3601 lm!1616)))) (= lambda!156405 lambda!156398))))

(assert (=> b!4436956 (= (= lt!1633785 (extractMap!868 (t!356788 (toList!3601 lt!1633179)))) (= lambda!156405 lambda!156404))))

(assert (=> bs!762826 (= (= lt!1633785 (extractMap!868 (t!356788 (tail!7337 (toList!3601 lm!1616))))) (= lambda!156405 lambda!156393))))

(assert (=> bs!762832 (= (= lt!1633785 lt!1633763) (= lambda!156405 lambda!156400))))

(assert (=> bs!762826 (= (= lt!1633785 lt!1633719) (= lambda!156405 lambda!156394))))

(assert (=> b!4436956 true))

(declare-fun bs!762834 () Bool)

(declare-fun d!1346650 () Bool)

(assert (= bs!762834 (and d!1346650 b!4436875)))

(declare-fun lt!1633789 () ListMap!2845)

(declare-fun lambda!156406 () Int)

(assert (=> bs!762834 (= (= lt!1633789 (extractMap!868 (t!356788 (tail!7337 (toList!3601 lm!1616))))) (= lambda!156406 lambda!156392))))

(declare-fun bs!762835 () Bool)

(assert (= bs!762835 (and d!1346650 d!1346324)))

(assert (=> bs!762835 (not (= lambda!156406 lambda!156263))))

(declare-fun bs!762836 () Bool)

(assert (= bs!762836 (and d!1346650 d!1346506)))

(assert (=> bs!762836 (= (= lt!1633789 lt!1633723) (= lambda!156406 lambda!156395))))

(declare-fun bs!762837 () Bool)

(assert (= bs!762837 (and d!1346650 d!1346642)))

(assert (=> bs!762837 (= (= lt!1633789 lt!1633767) (= lambda!156406 lambda!156401))))

(declare-fun bs!762838 () Bool)

(assert (= bs!762838 (and d!1346650 b!4436941)))

(assert (=> bs!762838 (= (= lt!1633789 (extractMap!868 (t!356788 (toList!3601 lm!1616)))) (= lambda!156406 lambda!156399))))

(declare-fun bs!762839 () Bool)

(assert (= bs!762839 (and d!1346650 b!4436940)))

(assert (=> bs!762839 (= (= lt!1633789 (extractMap!868 (t!356788 (toList!3601 lm!1616)))) (= lambda!156406 lambda!156398))))

(declare-fun bs!762840 () Bool)

(assert (= bs!762840 (and d!1346650 b!4436956)))

(assert (=> bs!762840 (= (= lt!1633789 (extractMap!868 (t!356788 (toList!3601 lt!1633179)))) (= lambda!156406 lambda!156404))))

(declare-fun bs!762841 () Bool)

(assert (= bs!762841 (and d!1346650 b!4436876)))

(assert (=> bs!762841 (= (= lt!1633789 (extractMap!868 (t!356788 (tail!7337 (toList!3601 lm!1616))))) (= lambda!156406 lambda!156393))))

(assert (=> bs!762838 (= (= lt!1633789 lt!1633763) (= lambda!156406 lambda!156400))))

(assert (=> bs!762841 (= (= lt!1633789 lt!1633719) (= lambda!156406 lambda!156394))))

(declare-fun bs!762842 () Bool)

(assert (= bs!762842 (and d!1346650 b!4436955)))

(assert (=> bs!762842 (= (= lt!1633789 (extractMap!868 (t!356788 (toList!3601 lt!1633179)))) (= lambda!156406 lambda!156403))))

(assert (=> bs!762840 (= (= lt!1633789 lt!1633785) (= lambda!156406 lambda!156405))))

(assert (=> d!1346650 true))

(declare-fun bm!308751 () Bool)

(declare-fun call!308756 () Unit!83387)

(assert (=> bm!308751 (= call!308756 (lemmaContainsAllItsOwnKeys!197 (extractMap!868 (t!356788 (toList!3601 lt!1633179)))))))

(declare-fun e!2762760 () ListMap!2845)

(assert (=> b!4436955 (= e!2762760 (extractMap!868 (t!356788 (toList!3601 lt!1633179))))))

(declare-fun lt!1633774 () Unit!83387)

(assert (=> b!4436955 (= lt!1633774 call!308756)))

(declare-fun call!308757 () Bool)

(assert (=> b!4436955 call!308757))

(declare-fun lt!1633782 () Unit!83387)

(assert (=> b!4436955 (= lt!1633782 lt!1633774)))

(declare-fun call!308758 () Bool)

(assert (=> b!4436955 call!308758))

(declare-fun lt!1633770 () Unit!83387)

(declare-fun Unit!83468 () Unit!83387)

(assert (=> b!4436955 (= lt!1633770 Unit!83468)))

(assert (=> b!4436956 (= e!2762760 lt!1633785)))

(declare-fun lt!1633779 () ListMap!2845)

(assert (=> b!4436956 (= lt!1633779 (+!1181 (extractMap!868 (t!356788 (toList!3601 lt!1633179))) (h!55430 (_2!28098 (h!55431 (toList!3601 lt!1633179))))))))

(assert (=> b!4436956 (= lt!1633785 (addToMapMapFromBucket!428 (t!356787 (_2!28098 (h!55431 (toList!3601 lt!1633179)))) (+!1181 (extractMap!868 (t!356788 (toList!3601 lt!1633179))) (h!55430 (_2!28098 (h!55431 (toList!3601 lt!1633179)))))))))

(declare-fun lt!1633776 () Unit!83387)

(assert (=> b!4436956 (= lt!1633776 call!308756)))

(assert (=> b!4436956 call!308757))

(declare-fun lt!1633775 () Unit!83387)

(assert (=> b!4436956 (= lt!1633775 lt!1633776)))

(assert (=> b!4436956 (forall!9658 (toList!3602 lt!1633779) lambda!156405)))

(declare-fun lt!1633769 () Unit!83387)

(declare-fun Unit!83469 () Unit!83387)

(assert (=> b!4436956 (= lt!1633769 Unit!83469)))

(assert (=> b!4436956 (forall!9658 (t!356787 (_2!28098 (h!55431 (toList!3601 lt!1633179)))) lambda!156405)))

(declare-fun lt!1633783 () Unit!83387)

(declare-fun Unit!83470 () Unit!83387)

(assert (=> b!4436956 (= lt!1633783 Unit!83470)))

(declare-fun lt!1633781 () Unit!83387)

(declare-fun Unit!83471 () Unit!83387)

(assert (=> b!4436956 (= lt!1633781 Unit!83471)))

(declare-fun lt!1633772 () Unit!83387)

(assert (=> b!4436956 (= lt!1633772 (forallContained!2130 (toList!3602 lt!1633779) lambda!156405 (h!55430 (_2!28098 (h!55431 (toList!3601 lt!1633179))))))))

(assert (=> b!4436956 (contains!12268 lt!1633779 (_1!28097 (h!55430 (_2!28098 (h!55431 (toList!3601 lt!1633179))))))))

(declare-fun lt!1633786 () Unit!83387)

(declare-fun Unit!83472 () Unit!83387)

(assert (=> b!4436956 (= lt!1633786 Unit!83472)))

(assert (=> b!4436956 (contains!12268 lt!1633785 (_1!28097 (h!55430 (_2!28098 (h!55431 (toList!3601 lt!1633179))))))))

(declare-fun lt!1633771 () Unit!83387)

(declare-fun Unit!83473 () Unit!83387)

(assert (=> b!4436956 (= lt!1633771 Unit!83473)))

(assert (=> b!4436956 (forall!9658 (_2!28098 (h!55431 (toList!3601 lt!1633179))) lambda!156405)))

(declare-fun lt!1633773 () Unit!83387)

(declare-fun Unit!83474 () Unit!83387)

(assert (=> b!4436956 (= lt!1633773 Unit!83474)))

(assert (=> b!4436956 (forall!9658 (toList!3602 lt!1633779) lambda!156405)))

(declare-fun lt!1633780 () Unit!83387)

(declare-fun Unit!83475 () Unit!83387)

(assert (=> b!4436956 (= lt!1633780 Unit!83475)))

(declare-fun lt!1633784 () Unit!83387)

(declare-fun Unit!83476 () Unit!83387)

(assert (=> b!4436956 (= lt!1633784 Unit!83476)))

(declare-fun lt!1633787 () Unit!83387)

(assert (=> b!4436956 (= lt!1633787 (addForallContainsKeyThenBeforeAdding!197 (extractMap!868 (t!356788 (toList!3601 lt!1633179))) lt!1633785 (_1!28097 (h!55430 (_2!28098 (h!55431 (toList!3601 lt!1633179))))) (_2!28097 (h!55430 (_2!28098 (h!55431 (toList!3601 lt!1633179)))))))))

(assert (=> b!4436956 (forall!9658 (toList!3602 (extractMap!868 (t!356788 (toList!3601 lt!1633179)))) lambda!156405)))

(declare-fun lt!1633788 () Unit!83387)

(assert (=> b!4436956 (= lt!1633788 lt!1633787)))

(assert (=> b!4436956 (forall!9658 (toList!3602 (extractMap!868 (t!356788 (toList!3601 lt!1633179)))) lambda!156405)))

(declare-fun lt!1633777 () Unit!83387)

(declare-fun Unit!83477 () Unit!83387)

(assert (=> b!4436956 (= lt!1633777 Unit!83477)))

(declare-fun res!1836400 () Bool)

(assert (=> b!4436956 (= res!1836400 call!308758)))

(declare-fun e!2762761 () Bool)

(assert (=> b!4436956 (=> (not res!1836400) (not e!2762761))))

(assert (=> b!4436956 e!2762761))

(declare-fun lt!1633778 () Unit!83387)

(declare-fun Unit!83478 () Unit!83387)

(assert (=> b!4436956 (= lt!1633778 Unit!83478)))

(declare-fun b!4436957 () Bool)

(assert (=> b!4436957 (= e!2762761 (forall!9658 (toList!3602 (extractMap!868 (t!356788 (toList!3601 lt!1633179)))) lambda!156405))))

(declare-fun c!755195 () Bool)

(declare-fun bm!308752 () Bool)

(assert (=> bm!308752 (= call!308758 (forall!9658 (ite c!755195 (toList!3602 (extractMap!868 (t!356788 (toList!3601 lt!1633179)))) (_2!28098 (h!55431 (toList!3601 lt!1633179)))) (ite c!755195 lambda!156403 lambda!156405)))))

(declare-fun b!4436954 () Bool)

(declare-fun res!1836398 () Bool)

(declare-fun e!2762759 () Bool)

(assert (=> b!4436954 (=> (not res!1836398) (not e!2762759))))

(assert (=> b!4436954 (= res!1836398 (forall!9658 (toList!3602 (extractMap!868 (t!356788 (toList!3601 lt!1633179)))) lambda!156406))))

(assert (=> d!1346650 e!2762759))

(declare-fun res!1836399 () Bool)

(assert (=> d!1346650 (=> (not res!1836399) (not e!2762759))))

(assert (=> d!1346650 (= res!1836399 (forall!9658 (_2!28098 (h!55431 (toList!3601 lt!1633179))) lambda!156406))))

(assert (=> d!1346650 (= lt!1633789 e!2762760)))

(assert (=> d!1346650 (= c!755195 ((_ is Nil!49721) (_2!28098 (h!55431 (toList!3601 lt!1633179)))))))

(assert (=> d!1346650 (noDuplicateKeys!807 (_2!28098 (h!55431 (toList!3601 lt!1633179))))))

(assert (=> d!1346650 (= (addToMapMapFromBucket!428 (_2!28098 (h!55431 (toList!3601 lt!1633179))) (extractMap!868 (t!356788 (toList!3601 lt!1633179)))) lt!1633789)))

(declare-fun b!4436958 () Bool)

(assert (=> b!4436958 (= e!2762759 (invariantList!829 (toList!3602 lt!1633789)))))

(declare-fun bm!308753 () Bool)

(assert (=> bm!308753 (= call!308757 (forall!9658 (toList!3602 (extractMap!868 (t!356788 (toList!3601 lt!1633179)))) (ite c!755195 lambda!156403 lambda!156404)))))

(assert (= (and d!1346650 c!755195) b!4436955))

(assert (= (and d!1346650 (not c!755195)) b!4436956))

(assert (= (and b!4436956 res!1836400) b!4436957))

(assert (= (or b!4436955 b!4436956) bm!308751))

(assert (= (or b!4436955 b!4436956) bm!308752))

(assert (= (or b!4436955 b!4436956) bm!308753))

(assert (= (and d!1346650 res!1836399) b!4436954))

(assert (= (and b!4436954 res!1836398) b!4436958))

(declare-fun m!5124255 () Bool)

(assert (=> b!4436956 m!5124255))

(declare-fun m!5124257 () Bool)

(assert (=> b!4436956 m!5124257))

(declare-fun m!5124259 () Bool)

(assert (=> b!4436956 m!5124259))

(declare-fun m!5124261 () Bool)

(assert (=> b!4436956 m!5124261))

(declare-fun m!5124263 () Bool)

(assert (=> b!4436956 m!5124263))

(assert (=> b!4436956 m!5124255))

(assert (=> b!4436956 m!5123071))

(declare-fun m!5124265 () Bool)

(assert (=> b!4436956 m!5124265))

(assert (=> b!4436956 m!5124263))

(assert (=> b!4436956 m!5124265))

(declare-fun m!5124267 () Bool)

(assert (=> b!4436956 m!5124267))

(assert (=> b!4436956 m!5123071))

(declare-fun m!5124269 () Bool)

(assert (=> b!4436956 m!5124269))

(declare-fun m!5124271 () Bool)

(assert (=> b!4436956 m!5124271))

(declare-fun m!5124273 () Bool)

(assert (=> b!4436956 m!5124273))

(declare-fun m!5124275 () Bool)

(assert (=> bm!308752 m!5124275))

(assert (=> bm!308751 m!5123071))

(declare-fun m!5124277 () Bool)

(assert (=> bm!308751 m!5124277))

(declare-fun m!5124279 () Bool)

(assert (=> bm!308753 m!5124279))

(declare-fun m!5124281 () Bool)

(assert (=> b!4436958 m!5124281))

(assert (=> b!4436957 m!5124255))

(declare-fun m!5124283 () Bool)

(assert (=> b!4436954 m!5124283))

(declare-fun m!5124285 () Bool)

(assert (=> d!1346650 m!5124285))

(declare-fun m!5124287 () Bool)

(assert (=> d!1346650 m!5124287))

(assert (=> b!4436183 d!1346650))

(declare-fun bs!762843 () Bool)

(declare-fun d!1346652 () Bool)

(assert (= bs!762843 (and d!1346652 d!1346610)))

(declare-fun lambda!156407 () Int)

(assert (=> bs!762843 (= lambda!156407 lambda!156397)))

(declare-fun bs!762844 () Bool)

(assert (= bs!762844 (and d!1346652 d!1346312)))

(assert (=> bs!762844 (= lambda!156407 lambda!156260)))

(declare-fun bs!762845 () Bool)

(assert (= bs!762845 (and d!1346652 d!1346338)))

(assert (=> bs!762845 (= lambda!156407 lambda!156267)))

(declare-fun bs!762846 () Bool)

(assert (= bs!762846 (and d!1346652 d!1346282)))

(assert (=> bs!762846 (= lambda!156407 lambda!156258)))

(declare-fun bs!762847 () Bool)

(assert (= bs!762847 (and d!1346652 start!433620)))

(assert (=> bs!762847 (= lambda!156407 lambda!156234)))

(declare-fun bs!762848 () Bool)

(assert (= bs!762848 (and d!1346652 d!1346308)))

(assert (=> bs!762848 (= lambda!156407 lambda!156259)))

(declare-fun bs!762849 () Bool)

(assert (= bs!762849 (and d!1346652 d!1346596)))

(assert (=> bs!762849 (= lambda!156407 lambda!156396)))

(declare-fun bs!762850 () Bool)

(assert (= bs!762850 (and d!1346652 d!1346332)))

(assert (=> bs!762850 (not (= lambda!156407 lambda!156266))))

(declare-fun bs!762851 () Bool)

(assert (= bs!762851 (and d!1346652 d!1346344)))

(assert (=> bs!762851 (= lambda!156407 lambda!156270)))

(declare-fun bs!762852 () Bool)

(assert (= bs!762852 (and d!1346652 d!1346252)))

(assert (=> bs!762852 (= lambda!156407 lambda!156250)))

(declare-fun bs!762853 () Bool)

(assert (= bs!762853 (and d!1346652 d!1346644)))

(assert (=> bs!762853 (= lambda!156407 lambda!156402)))

(declare-fun lt!1633790 () ListMap!2845)

(assert (=> d!1346652 (invariantList!829 (toList!3602 lt!1633790))))

(declare-fun e!2762762 () ListMap!2845)

(assert (=> d!1346652 (= lt!1633790 e!2762762)))

(declare-fun c!755196 () Bool)

(assert (=> d!1346652 (= c!755196 ((_ is Cons!49722) (t!356788 (toList!3601 lt!1633179))))))

(assert (=> d!1346652 (forall!9656 (t!356788 (toList!3601 lt!1633179)) lambda!156407)))

(assert (=> d!1346652 (= (extractMap!868 (t!356788 (toList!3601 lt!1633179))) lt!1633790)))

(declare-fun b!4436959 () Bool)

(assert (=> b!4436959 (= e!2762762 (addToMapMapFromBucket!428 (_2!28098 (h!55431 (t!356788 (toList!3601 lt!1633179)))) (extractMap!868 (t!356788 (t!356788 (toList!3601 lt!1633179))))))))

(declare-fun b!4436960 () Bool)

(assert (=> b!4436960 (= e!2762762 (ListMap!2846 Nil!49721))))

(assert (= (and d!1346652 c!755196) b!4436959))

(assert (= (and d!1346652 (not c!755196)) b!4436960))

(declare-fun m!5124289 () Bool)

(assert (=> d!1346652 m!5124289))

(declare-fun m!5124291 () Bool)

(assert (=> d!1346652 m!5124291))

(declare-fun m!5124293 () Bool)

(assert (=> b!4436959 m!5124293))

(assert (=> b!4436959 m!5124293))

(declare-fun m!5124295 () Bool)

(assert (=> b!4436959 m!5124295))

(assert (=> b!4436183 d!1346652))

(declare-fun d!1346654 () Bool)

(declare-fun res!1836401 () Bool)

(declare-fun e!2762763 () Bool)

(assert (=> d!1346654 (=> res!1836401 e!2762763)))

(assert (=> d!1346654 (= res!1836401 ((_ is Nil!49722) (toList!3601 lm!1616)))))

(assert (=> d!1346654 (= (forall!9656 (toList!3601 lm!1616) lambda!156266) e!2762763)))

(declare-fun b!4436961 () Bool)

(declare-fun e!2762764 () Bool)

(assert (=> b!4436961 (= e!2762763 e!2762764)))

(declare-fun res!1836402 () Bool)

(assert (=> b!4436961 (=> (not res!1836402) (not e!2762764))))

(assert (=> b!4436961 (= res!1836402 (dynLambda!20890 lambda!156266 (h!55431 (toList!3601 lm!1616))))))

(declare-fun b!4436962 () Bool)

(assert (=> b!4436962 (= e!2762764 (forall!9656 (t!356788 (toList!3601 lm!1616)) lambda!156266))))

(assert (= (and d!1346654 (not res!1836401)) b!4436961))

(assert (= (and b!4436961 res!1836402) b!4436962))

(declare-fun b_lambda!144645 () Bool)

(assert (=> (not b_lambda!144645) (not b!4436961)))

(declare-fun m!5124297 () Bool)

(assert (=> b!4436961 m!5124297))

(declare-fun m!5124299 () Bool)

(assert (=> b!4436962 m!5124299))

(assert (=> d!1346332 d!1346654))

(assert (=> b!4436292 d!1346502))

(declare-fun d!1346656 () Bool)

(assert (=> d!1346656 (containsKey!1198 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616)))) key!3717)))

(declare-fun lt!1633793 () Unit!83387)

(declare-fun choose!28156 (List!49845 K!11090) Unit!83387)

(assert (=> d!1346656 (= lt!1633793 (choose!28156 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616)))) key!3717))))

(assert (=> d!1346656 (invariantList!829 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616)))))))

(assert (=> d!1346656 (= (lemmaInGetKeysListThenContainsKey!274 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616)))) key!3717) lt!1633793)))

(declare-fun bs!762854 () Bool)

(assert (= bs!762854 d!1346656))

(assert (=> bs!762854 m!5123255))

(declare-fun m!5124301 () Bool)

(assert (=> bs!762854 m!5124301))

(assert (=> bs!762854 m!5123569))

(assert (=> b!4436292 d!1346656))

(declare-fun d!1346658 () Bool)

(declare-fun res!1836403 () Bool)

(declare-fun e!2762765 () Bool)

(assert (=> d!1346658 (=> res!1836403 e!2762765)))

(assert (=> d!1346658 (= res!1836403 ((_ is Nil!49722) (t!356788 (toList!3601 lt!1633180))))))

(assert (=> d!1346658 (= (forall!9656 (t!356788 (toList!3601 lt!1633180)) lambda!156234) e!2762765)))

(declare-fun b!4436963 () Bool)

(declare-fun e!2762766 () Bool)

(assert (=> b!4436963 (= e!2762765 e!2762766)))

(declare-fun res!1836404 () Bool)

(assert (=> b!4436963 (=> (not res!1836404) (not e!2762766))))

(assert (=> b!4436963 (= res!1836404 (dynLambda!20890 lambda!156234 (h!55431 (t!356788 (toList!3601 lt!1633180)))))))

(declare-fun b!4436964 () Bool)

(assert (=> b!4436964 (= e!2762766 (forall!9656 (t!356788 (t!356788 (toList!3601 lt!1633180))) lambda!156234))))

(assert (= (and d!1346658 (not res!1836403)) b!4436963))

(assert (= (and b!4436963 res!1836404) b!4436964))

(declare-fun b_lambda!144647 () Bool)

(assert (=> (not b_lambda!144647) (not b!4436963)))

(declare-fun m!5124303 () Bool)

(assert (=> b!4436963 m!5124303))

(declare-fun m!5124305 () Bool)

(assert (=> b!4436964 m!5124305))

(assert (=> b!4436305 d!1346658))

(declare-fun d!1346660 () Bool)

(declare-fun c!755199 () Bool)

(assert (=> d!1346660 (= c!755199 ((_ is Nil!49721) (toList!3602 (extractMap!868 (toList!3601 (+!1180 lt!1633179 lt!1633175))))))))

(declare-fun e!2762769 () (InoxSet tuple2!49606))

(assert (=> d!1346660 (= (content!7996 (toList!3602 (extractMap!868 (toList!3601 (+!1180 lt!1633179 lt!1633175))))) e!2762769)))

(declare-fun b!4436969 () Bool)

(assert (=> b!4436969 (= e!2762769 ((as const (Array tuple2!49606 Bool)) false))))

(declare-fun b!4436970 () Bool)

(assert (=> b!4436970 (= e!2762769 ((_ map or) (store ((as const (Array tuple2!49606 Bool)) false) (h!55430 (toList!3602 (extractMap!868 (toList!3601 (+!1180 lt!1633179 lt!1633175))))) true) (content!7996 (t!356787 (toList!3602 (extractMap!868 (toList!3601 (+!1180 lt!1633179 lt!1633175))))))))))

(assert (= (and d!1346660 c!755199) b!4436969))

(assert (= (and d!1346660 (not c!755199)) b!4436970))

(declare-fun m!5124307 () Bool)

(assert (=> b!4436970 m!5124307))

(declare-fun m!5124309 () Bool)

(assert (=> b!4436970 m!5124309))

(assert (=> d!1346280 d!1346660))

(declare-fun d!1346662 () Bool)

(declare-fun c!755200 () Bool)

(assert (=> d!1346662 (= c!755200 ((_ is Nil!49721) (toList!3602 (+!1181 (extractMap!868 (toList!3601 lt!1633179)) (tuple2!49607 key!3717 newValue!93)))))))

(declare-fun e!2762770 () (InoxSet tuple2!49606))

(assert (=> d!1346662 (= (content!7996 (toList!3602 (+!1181 (extractMap!868 (toList!3601 lt!1633179)) (tuple2!49607 key!3717 newValue!93)))) e!2762770)))

(declare-fun b!4436971 () Bool)

(assert (=> b!4436971 (= e!2762770 ((as const (Array tuple2!49606 Bool)) false))))

(declare-fun b!4436972 () Bool)

(assert (=> b!4436972 (= e!2762770 ((_ map or) (store ((as const (Array tuple2!49606 Bool)) false) (h!55430 (toList!3602 (+!1181 (extractMap!868 (toList!3601 lt!1633179)) (tuple2!49607 key!3717 newValue!93)))) true) (content!7996 (t!356787 (toList!3602 (+!1181 (extractMap!868 (toList!3601 lt!1633179)) (tuple2!49607 key!3717 newValue!93)))))))))

(assert (= (and d!1346662 c!755200) b!4436971))

(assert (= (and d!1346662 (not c!755200)) b!4436972))

(declare-fun m!5124311 () Bool)

(assert (=> b!4436972 m!5124311))

(declare-fun m!5124313 () Bool)

(assert (=> b!4436972 m!5124313))

(assert (=> d!1346280 d!1346662))

(declare-fun b!4436973 () Bool)

(declare-fun e!2762776 () Unit!83387)

(declare-fun e!2762772 () Unit!83387)

(assert (=> b!4436973 (= e!2762776 e!2762772)))

(declare-fun c!755203 () Bool)

(declare-fun call!308759 () Bool)

(assert (=> b!4436973 (= c!755203 call!308759)))

(declare-fun b!4436974 () Bool)

(assert (=> b!4436974 false))

(declare-fun lt!1633796 () Unit!83387)

(declare-fun lt!1633798 () Unit!83387)

(assert (=> b!4436974 (= lt!1633796 lt!1633798)))

(assert (=> b!4436974 (containsKey!1198 (toList!3602 lt!1633203) (_1!28097 (tuple2!49607 key!3717 newValue!93)))))

(assert (=> b!4436974 (= lt!1633798 (lemmaInGetKeysListThenContainsKey!274 (toList!3602 lt!1633203) (_1!28097 (tuple2!49607 key!3717 newValue!93))))))

(declare-fun Unit!83490 () Unit!83387)

(assert (=> b!4436974 (= e!2762772 Unit!83490)))

(declare-fun e!2762771 () Bool)

(declare-fun b!4436975 () Bool)

(assert (=> b!4436975 (= e!2762771 (not (contains!12275 (keys!17014 lt!1633203) (_1!28097 (tuple2!49607 key!3717 newValue!93)))))))

(declare-fun e!2762773 () Bool)

(declare-fun b!4436976 () Bool)

(assert (=> b!4436976 (= e!2762773 (contains!12275 (keys!17014 lt!1633203) (_1!28097 (tuple2!49607 key!3717 newValue!93))))))

(declare-fun b!4436977 () Bool)

(declare-fun e!2762774 () List!49848)

(assert (=> b!4436977 (= e!2762774 (keys!17014 lt!1633203))))

(declare-fun b!4436978 () Bool)

(declare-fun Unit!83491 () Unit!83387)

(assert (=> b!4436978 (= e!2762772 Unit!83491)))

(declare-fun d!1346664 () Bool)

(declare-fun e!2762775 () Bool)

(assert (=> d!1346664 e!2762775))

(declare-fun res!1836405 () Bool)

(assert (=> d!1346664 (=> res!1836405 e!2762775)))

(assert (=> d!1346664 (= res!1836405 e!2762771)))

(declare-fun res!1836406 () Bool)

(assert (=> d!1346664 (=> (not res!1836406) (not e!2762771))))

(declare-fun lt!1633801 () Bool)

(assert (=> d!1346664 (= res!1836406 (not lt!1633801))))

(declare-fun lt!1633794 () Bool)

(assert (=> d!1346664 (= lt!1633801 lt!1633794)))

(declare-fun lt!1633797 () Unit!83387)

(assert (=> d!1346664 (= lt!1633797 e!2762776)))

(declare-fun c!755202 () Bool)

(assert (=> d!1346664 (= c!755202 lt!1633794)))

(assert (=> d!1346664 (= lt!1633794 (containsKey!1198 (toList!3602 lt!1633203) (_1!28097 (tuple2!49607 key!3717 newValue!93))))))

(assert (=> d!1346664 (= (contains!12268 lt!1633203 (_1!28097 (tuple2!49607 key!3717 newValue!93))) lt!1633801)))

(declare-fun b!4436979 () Bool)

(declare-fun lt!1633795 () Unit!83387)

(assert (=> b!4436979 (= e!2762776 lt!1633795)))

(declare-fun lt!1633800 () Unit!83387)

(assert (=> b!4436979 (= lt!1633800 (lemmaContainsKeyImpliesGetValueByKeyDefined!668 (toList!3602 lt!1633203) (_1!28097 (tuple2!49607 key!3717 newValue!93))))))

(assert (=> b!4436979 (isDefined!8065 (getValueByKey!759 (toList!3602 lt!1633203) (_1!28097 (tuple2!49607 key!3717 newValue!93))))))

(declare-fun lt!1633799 () Unit!83387)

(assert (=> b!4436979 (= lt!1633799 lt!1633800)))

(assert (=> b!4436979 (= lt!1633795 (lemmaInListThenGetKeysListContains!273 (toList!3602 lt!1633203) (_1!28097 (tuple2!49607 key!3717 newValue!93))))))

(assert (=> b!4436979 call!308759))

(declare-fun bm!308754 () Bool)

(assert (=> bm!308754 (= call!308759 (contains!12275 e!2762774 (_1!28097 (tuple2!49607 key!3717 newValue!93))))))

(declare-fun c!755201 () Bool)

(assert (=> bm!308754 (= c!755201 c!755202)))

(declare-fun b!4436980 () Bool)

(assert (=> b!4436980 (= e!2762774 (getKeysList!276 (toList!3602 lt!1633203)))))

(declare-fun b!4436981 () Bool)

(assert (=> b!4436981 (= e!2762775 e!2762773)))

(declare-fun res!1836407 () Bool)

(assert (=> b!4436981 (=> (not res!1836407) (not e!2762773))))

(assert (=> b!4436981 (= res!1836407 (isDefined!8065 (getValueByKey!759 (toList!3602 lt!1633203) (_1!28097 (tuple2!49607 key!3717 newValue!93)))))))

(assert (= (and d!1346664 c!755202) b!4436979))

(assert (= (and d!1346664 (not c!755202)) b!4436973))

(assert (= (and b!4436973 c!755203) b!4436974))

(assert (= (and b!4436973 (not c!755203)) b!4436978))

(assert (= (or b!4436979 b!4436973) bm!308754))

(assert (= (and bm!308754 c!755201) b!4436980))

(assert (= (and bm!308754 (not c!755201)) b!4436977))

(assert (= (and d!1346664 res!1836406) b!4436975))

(assert (= (and d!1346664 (not res!1836405)) b!4436981))

(assert (= (and b!4436981 res!1836407) b!4436976))

(declare-fun m!5124315 () Bool)

(assert (=> b!4436977 m!5124315))

(declare-fun m!5124317 () Bool)

(assert (=> bm!308754 m!5124317))

(assert (=> b!4436981 m!5123031))

(assert (=> b!4436981 m!5123031))

(declare-fun m!5124319 () Bool)

(assert (=> b!4436981 m!5124319))

(assert (=> b!4436975 m!5124315))

(assert (=> b!4436975 m!5124315))

(declare-fun m!5124321 () Bool)

(assert (=> b!4436975 m!5124321))

(declare-fun m!5124323 () Bool)

(assert (=> b!4436980 m!5124323))

(assert (=> b!4436976 m!5124315))

(assert (=> b!4436976 m!5124315))

(assert (=> b!4436976 m!5124321))

(declare-fun m!5124325 () Bool)

(assert (=> d!1346664 m!5124325))

(declare-fun m!5124327 () Bool)

(assert (=> b!4436979 m!5124327))

(assert (=> b!4436979 m!5123031))

(assert (=> b!4436979 m!5123031))

(assert (=> b!4436979 m!5124319))

(declare-fun m!5124329 () Bool)

(assert (=> b!4436979 m!5124329))

(assert (=> b!4436974 m!5124325))

(declare-fun m!5124331 () Bool)

(assert (=> b!4436974 m!5124331))

(assert (=> d!1346240 d!1346664))

(declare-fun b!4436983 () Bool)

(declare-fun e!2762777 () Option!10773)

(declare-fun e!2762778 () Option!10773)

(assert (=> b!4436983 (= e!2762777 e!2762778)))

(declare-fun c!755205 () Bool)

(assert (=> b!4436983 (= c!755205 (and ((_ is Cons!49721) lt!1633204) (not (= (_1!28097 (h!55430 lt!1633204)) (_1!28097 (tuple2!49607 key!3717 newValue!93))))))))

(declare-fun b!4436984 () Bool)

(assert (=> b!4436984 (= e!2762778 (getValueByKey!759 (t!356787 lt!1633204) (_1!28097 (tuple2!49607 key!3717 newValue!93))))))

(declare-fun b!4436985 () Bool)

(assert (=> b!4436985 (= e!2762778 None!10772)))

(declare-fun c!755204 () Bool)

(declare-fun d!1346666 () Bool)

(assert (=> d!1346666 (= c!755204 (and ((_ is Cons!49721) lt!1633204) (= (_1!28097 (h!55430 lt!1633204)) (_1!28097 (tuple2!49607 key!3717 newValue!93)))))))

(assert (=> d!1346666 (= (getValueByKey!759 lt!1633204 (_1!28097 (tuple2!49607 key!3717 newValue!93))) e!2762777)))

(declare-fun b!4436982 () Bool)

(assert (=> b!4436982 (= e!2762777 (Some!10772 (_2!28097 (h!55430 lt!1633204))))))

(assert (= (and d!1346666 c!755204) b!4436982))

(assert (= (and d!1346666 (not c!755204)) b!4436983))

(assert (= (and b!4436983 c!755205) b!4436984))

(assert (= (and b!4436983 (not c!755205)) b!4436985))

(declare-fun m!5124333 () Bool)

(assert (=> b!4436984 m!5124333))

(assert (=> d!1346240 d!1346666))

(declare-fun d!1346668 () Bool)

(assert (=> d!1346668 (= (getValueByKey!759 lt!1633204 (_1!28097 (tuple2!49607 key!3717 newValue!93))) (Some!10772 (_2!28097 (tuple2!49607 key!3717 newValue!93))))))

(declare-fun lt!1633804 () Unit!83387)

(declare-fun choose!28157 (List!49845 K!11090 V!11336) Unit!83387)

(assert (=> d!1346668 (= lt!1633804 (choose!28157 lt!1633204 (_1!28097 (tuple2!49607 key!3717 newValue!93)) (_2!28097 (tuple2!49607 key!3717 newValue!93))))))

(declare-fun e!2762781 () Bool)

(assert (=> d!1346668 e!2762781))

(declare-fun res!1836412 () Bool)

(assert (=> d!1346668 (=> (not res!1836412) (not e!2762781))))

(assert (=> d!1346668 (= res!1836412 (invariantList!829 lt!1633204))))

(assert (=> d!1346668 (= (lemmaContainsTupThenGetReturnValue!492 lt!1633204 (_1!28097 (tuple2!49607 key!3717 newValue!93)) (_2!28097 (tuple2!49607 key!3717 newValue!93))) lt!1633804)))

(declare-fun b!4436990 () Bool)

(declare-fun res!1836413 () Bool)

(assert (=> b!4436990 (=> (not res!1836413) (not e!2762781))))

(assert (=> b!4436990 (= res!1836413 (containsKey!1198 lt!1633204 (_1!28097 (tuple2!49607 key!3717 newValue!93))))))

(declare-fun b!4436991 () Bool)

(assert (=> b!4436991 (= e!2762781 (contains!12273 lt!1633204 (tuple2!49607 (_1!28097 (tuple2!49607 key!3717 newValue!93)) (_2!28097 (tuple2!49607 key!3717 newValue!93)))))))

(assert (= (and d!1346668 res!1836412) b!4436990))

(assert (= (and b!4436990 res!1836413) b!4436991))

(assert (=> d!1346668 m!5123025))

(declare-fun m!5124335 () Bool)

(assert (=> d!1346668 m!5124335))

(declare-fun m!5124337 () Bool)

(assert (=> d!1346668 m!5124337))

(declare-fun m!5124339 () Bool)

(assert (=> b!4436990 m!5124339))

(declare-fun m!5124341 () Bool)

(assert (=> b!4436991 m!5124341))

(assert (=> d!1346240 d!1346668))

(declare-fun b!4437020 () Bool)

(declare-fun res!1836423 () Bool)

(declare-fun e!2762797 () Bool)

(assert (=> b!4437020 (=> (not res!1836423) (not e!2762797))))

(declare-fun lt!1633837 () List!49845)

(assert (=> b!4437020 (= res!1836423 (containsKey!1198 lt!1633837 (_1!28097 (tuple2!49607 key!3717 newValue!93))))))

(declare-fun b!4437021 () Bool)

(declare-fun e!2762800 () List!49845)

(declare-fun call!308770 () List!49845)

(assert (=> b!4437021 (= e!2762800 call!308770)))

(declare-fun bm!308763 () Bool)

(declare-fun call!308768 () List!49845)

(declare-fun call!308771 () List!49845)

(assert (=> bm!308763 (= call!308768 call!308771)))

(declare-fun b!4437022 () Bool)

(declare-fun lt!1633827 () List!49845)

(assert (=> b!4437022 (= e!2762800 lt!1633827)))

(assert (=> b!4437022 (= lt!1633827 call!308770)))

(declare-fun c!755220 () Bool)

(assert (=> b!4437022 (= c!755220 (containsKey!1198 (insertNoDuplicatedKeys!217 (t!356787 (toList!3602 (extractMap!868 (toList!3601 lt!1633179)))) (_1!28097 (tuple2!49607 key!3717 newValue!93)) (_2!28097 (tuple2!49607 key!3717 newValue!93))) (_1!28097 (h!55430 (toList!3602 (extractMap!868 (toList!3601 lt!1633179)))))))))

(declare-fun lt!1633831 () Unit!83387)

(declare-fun e!2762799 () Unit!83387)

(assert (=> b!4437022 (= lt!1633831 e!2762799)))

(declare-fun b!4437023 () Bool)

(assert (=> b!4437023 false))

(declare-fun lt!1633835 () Unit!83387)

(declare-fun lt!1633834 () Unit!83387)

(assert (=> b!4437023 (= lt!1633835 lt!1633834)))

(assert (=> b!4437023 (containsKey!1198 (t!356787 (toList!3602 (extractMap!868 (toList!3601 lt!1633179)))) (_1!28097 (h!55430 (toList!3602 (extractMap!868 (toList!3601 lt!1633179))))))))

(assert (=> b!4437023 (= lt!1633834 (lemmaInGetKeysListThenContainsKey!274 (t!356787 (toList!3602 (extractMap!868 (toList!3601 lt!1633179)))) (_1!28097 (h!55430 (toList!3602 (extractMap!868 (toList!3601 lt!1633179)))))))))

(declare-fun lt!1633830 () Unit!83387)

(declare-fun lt!1633828 () Unit!83387)

(assert (=> b!4437023 (= lt!1633830 lt!1633828)))

(declare-fun call!308769 () List!49848)

(assert (=> b!4437023 (contains!12275 call!308769 (_1!28097 (h!55430 (toList!3602 (extractMap!868 (toList!3601 lt!1633179))))))))

(declare-fun lt!1633829 () List!49845)

(assert (=> b!4437023 (= lt!1633828 (lemmaInListThenGetKeysListContains!273 lt!1633829 (_1!28097 (h!55430 (toList!3602 (extractMap!868 (toList!3601 lt!1633179)))))))))

(assert (=> b!4437023 (= lt!1633829 (insertNoDuplicatedKeys!217 (t!356787 (toList!3602 (extractMap!868 (toList!3601 lt!1633179)))) (_1!28097 (tuple2!49607 key!3717 newValue!93)) (_2!28097 (tuple2!49607 key!3717 newValue!93))))))

(declare-fun Unit!83496 () Unit!83387)

(assert (=> b!4437023 (= e!2762799 Unit!83496)))

(declare-fun b!4437024 () Bool)

(declare-fun e!2762796 () List!49845)

(assert (=> b!4437024 (= e!2762796 call!308768)))

(declare-fun b!4437025 () Bool)

(declare-fun e!2762798 () List!49845)

(assert (=> b!4437025 (= e!2762798 e!2762796)))

(declare-fun res!1836422 () Bool)

(assert (=> b!4437025 (= res!1836422 ((_ is Cons!49721) (toList!3602 (extractMap!868 (toList!3601 lt!1633179)))))))

(declare-fun e!2762801 () Bool)

(assert (=> b!4437025 (=> (not res!1836422) (not e!2762801))))

(declare-fun c!755216 () Bool)

(assert (=> b!4437025 (= c!755216 e!2762801)))

(declare-fun b!4437026 () Bool)

(declare-fun c!755218 () Bool)

(assert (=> b!4437026 (= c!755218 ((_ is Cons!49721) (toList!3602 (extractMap!868 (toList!3601 lt!1633179)))))))

(assert (=> b!4437026 (= e!2762796 e!2762800)))

(declare-fun b!4437027 () Bool)

(declare-fun res!1836425 () Bool)

(assert (=> b!4437027 (=> (not res!1836425) (not e!2762797))))

(assert (=> b!4437027 (= res!1836425 (contains!12273 lt!1633837 (tuple2!49607 (_1!28097 (tuple2!49607 key!3717 newValue!93)) (_2!28097 (tuple2!49607 key!3717 newValue!93)))))))

(declare-fun b!4437028 () Bool)

(assert (=> b!4437028 (= e!2762798 call!308771)))

(declare-fun lt!1633836 () List!49848)

(assert (=> b!4437028 (= lt!1633836 call!308769)))

(declare-fun lt!1633833 () Unit!83387)

(declare-fun lemmaSubseqRefl!105 (List!49848) Unit!83387)

(assert (=> b!4437028 (= lt!1633833 (lemmaSubseqRefl!105 lt!1633836))))

(declare-fun subseq!621 (List!49848 List!49848) Bool)

(assert (=> b!4437028 (subseq!621 lt!1633836 lt!1633836)))

(declare-fun lt!1633832 () Unit!83387)

(assert (=> b!4437028 (= lt!1633832 lt!1633833)))

(declare-fun b!4437029 () Bool)

(assert (=> b!4437029 (= e!2762801 (not (containsKey!1198 (toList!3602 (extractMap!868 (toList!3601 lt!1633179))) (_1!28097 (tuple2!49607 key!3717 newValue!93)))))))

(declare-fun b!4437030 () Bool)

(assert (=> b!4437030 (= e!2762797 (= (content!7999 (getKeysList!276 lt!1633837)) ((_ map or) (content!7999 (getKeysList!276 (toList!3602 (extractMap!868 (toList!3601 lt!1633179))))) (store ((as const (Array K!11090 Bool)) false) (_1!28097 (tuple2!49607 key!3717 newValue!93)) true))))))

(declare-fun c!755219 () Bool)

(declare-fun bm!308765 () Bool)

(assert (=> bm!308765 (= call!308769 (getKeysList!276 (ite c!755219 (toList!3602 (extractMap!868 (toList!3601 lt!1633179))) lt!1633829)))))

(declare-fun b!4437031 () Bool)

(declare-fun e!2762802 () List!49845)

(assert (=> b!4437031 (= e!2762802 (insertNoDuplicatedKeys!217 (t!356787 (toList!3602 (extractMap!868 (toList!3601 lt!1633179)))) (_1!28097 (tuple2!49607 key!3717 newValue!93)) (_2!28097 (tuple2!49607 key!3717 newValue!93))))))

(declare-fun bm!308766 () Bool)

(assert (=> bm!308766 (= call!308770 call!308768)))

(declare-fun c!755217 () Bool)

(assert (=> bm!308766 (= c!755217 c!755218)))

(declare-fun b!4437032 () Bool)

(declare-fun Unit!83497 () Unit!83387)

(assert (=> b!4437032 (= e!2762799 Unit!83497)))

(declare-fun b!4437033 () Bool)

(assert (=> b!4437033 (= e!2762802 Nil!49721)))

(declare-fun d!1346670 () Bool)

(assert (=> d!1346670 e!2762797))

(declare-fun res!1836424 () Bool)

(assert (=> d!1346670 (=> (not res!1836424) (not e!2762797))))

(assert (=> d!1346670 (= res!1836424 (invariantList!829 lt!1633837))))

(assert (=> d!1346670 (= lt!1633837 e!2762798)))

(assert (=> d!1346670 (= c!755219 (and ((_ is Cons!49721) (toList!3602 (extractMap!868 (toList!3601 lt!1633179)))) (= (_1!28097 (h!55430 (toList!3602 (extractMap!868 (toList!3601 lt!1633179))))) (_1!28097 (tuple2!49607 key!3717 newValue!93)))))))

(assert (=> d!1346670 (invariantList!829 (toList!3602 (extractMap!868 (toList!3601 lt!1633179))))))

(assert (=> d!1346670 (= (insertNoDuplicatedKeys!217 (toList!3602 (extractMap!868 (toList!3601 lt!1633179))) (_1!28097 (tuple2!49607 key!3717 newValue!93)) (_2!28097 (tuple2!49607 key!3717 newValue!93))) lt!1633837)))

(declare-fun bm!308764 () Bool)

(declare-fun $colon$colon!809 (List!49845 tuple2!49606) List!49845)

(assert (=> bm!308764 (= call!308771 ($colon$colon!809 (ite c!755219 (t!356787 (toList!3602 (extractMap!868 (toList!3601 lt!1633179)))) (ite c!755216 (toList!3602 (extractMap!868 (toList!3601 lt!1633179))) e!2762802)) (ite (or c!755219 c!755216) (tuple2!49607 (_1!28097 (tuple2!49607 key!3717 newValue!93)) (_2!28097 (tuple2!49607 key!3717 newValue!93))) (ite c!755218 (h!55430 (toList!3602 (extractMap!868 (toList!3601 lt!1633179)))) (tuple2!49607 (_1!28097 (tuple2!49607 key!3717 newValue!93)) (_2!28097 (tuple2!49607 key!3717 newValue!93)))))))))

(assert (= (and d!1346670 c!755219) b!4437028))

(assert (= (and d!1346670 (not c!755219)) b!4437025))

(assert (= (and b!4437025 res!1836422) b!4437029))

(assert (= (and b!4437025 c!755216) b!4437024))

(assert (= (and b!4437025 (not c!755216)) b!4437026))

(assert (= (and b!4437026 c!755218) b!4437022))

(assert (= (and b!4437026 (not c!755218)) b!4437021))

(assert (= (and b!4437022 c!755220) b!4437023))

(assert (= (and b!4437022 (not c!755220)) b!4437032))

(assert (= (or b!4437022 b!4437021) bm!308766))

(assert (= (and bm!308766 c!755217) b!4437031))

(assert (= (and bm!308766 (not c!755217)) b!4437033))

(assert (= (or b!4437024 bm!308766) bm!308763))

(assert (= (or b!4437028 b!4437023) bm!308765))

(assert (= (or b!4437028 bm!308763) bm!308764))

(assert (= (and d!1346670 res!1836424) b!4437020))

(assert (= (and b!4437020 res!1836423) b!4437027))

(assert (= (and b!4437027 res!1836425) b!4437030))

(declare-fun m!5124343 () Bool)

(assert (=> b!4437027 m!5124343))

(declare-fun m!5124345 () Bool)

(assert (=> b!4437022 m!5124345))

(assert (=> b!4437022 m!5124345))

(declare-fun m!5124347 () Bool)

(assert (=> b!4437022 m!5124347))

(declare-fun m!5124349 () Bool)

(assert (=> b!4437030 m!5124349))

(declare-fun m!5124351 () Bool)

(assert (=> b!4437030 m!5124351))

(declare-fun m!5124353 () Bool)

(assert (=> b!4437030 m!5124353))

(assert (=> b!4437030 m!5124351))

(declare-fun m!5124355 () Bool)

(assert (=> b!4437030 m!5124355))

(assert (=> b!4437030 m!5124353))

(declare-fun m!5124357 () Bool)

(assert (=> b!4437030 m!5124357))

(declare-fun m!5124359 () Bool)

(assert (=> bm!308765 m!5124359))

(declare-fun m!5124361 () Bool)

(assert (=> b!4437028 m!5124361))

(declare-fun m!5124363 () Bool)

(assert (=> b!4437028 m!5124363))

(declare-fun m!5124365 () Bool)

(assert (=> d!1346670 m!5124365))

(declare-fun m!5124367 () Bool)

(assert (=> d!1346670 m!5124367))

(declare-fun m!5124369 () Bool)

(assert (=> b!4437020 m!5124369))

(assert (=> b!4437031 m!5124345))

(declare-fun m!5124371 () Bool)

(assert (=> b!4437029 m!5124371))

(declare-fun m!5124373 () Bool)

(assert (=> bm!308764 m!5124373))

(declare-fun m!5124375 () Bool)

(assert (=> b!4437023 m!5124375))

(assert (=> b!4437023 m!5124345))

(declare-fun m!5124377 () Bool)

(assert (=> b!4437023 m!5124377))

(declare-fun m!5124379 () Bool)

(assert (=> b!4437023 m!5124379))

(declare-fun m!5124381 () Bool)

(assert (=> b!4437023 m!5124381))

(assert (=> d!1346240 d!1346670))

(declare-fun d!1346672 () Bool)

(assert (=> d!1346672 (isDefined!8065 (getValueByKey!759 (toList!3602 (extractMap!868 (toList!3601 lm!1616))) key!3717))))

(declare-fun lt!1633838 () Unit!83387)

(assert (=> d!1346672 (= lt!1633838 (choose!28146 (toList!3602 (extractMap!868 (toList!3601 lm!1616))) key!3717))))

(assert (=> d!1346672 (invariantList!829 (toList!3602 (extractMap!868 (toList!3601 lm!1616))))))

(assert (=> d!1346672 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!668 (toList!3602 (extractMap!868 (toList!3601 lm!1616))) key!3717) lt!1633838)))

(declare-fun bs!762855 () Bool)

(assert (= bs!762855 d!1346672))

(assert (=> bs!762855 m!5123311))

(assert (=> bs!762855 m!5123311))

(assert (=> bs!762855 m!5123313))

(declare-fun m!5124383 () Bool)

(assert (=> bs!762855 m!5124383))

(declare-fun m!5124385 () Bool)

(assert (=> bs!762855 m!5124385))

(assert (=> b!4436335 d!1346672))

(assert (=> b!4436335 d!1346488))

(assert (=> b!4436335 d!1346490))

(declare-fun d!1346674 () Bool)

(assert (=> d!1346674 (contains!12275 (getKeysList!276 (toList!3602 (extractMap!868 (toList!3601 lm!1616)))) key!3717)))

(declare-fun lt!1633839 () Unit!83387)

(assert (=> d!1346674 (= lt!1633839 (choose!28147 (toList!3602 (extractMap!868 (toList!3601 lm!1616))) key!3717))))

(assert (=> d!1346674 (invariantList!829 (toList!3602 (extractMap!868 (toList!3601 lm!1616))))))

(assert (=> d!1346674 (= (lemmaInListThenGetKeysListContains!273 (toList!3602 (extractMap!868 (toList!3601 lm!1616))) key!3717) lt!1633839)))

(declare-fun bs!762856 () Bool)

(assert (= bs!762856 d!1346674))

(assert (=> bs!762856 m!5123317))

(assert (=> bs!762856 m!5123317))

(declare-fun m!5124387 () Bool)

(assert (=> bs!762856 m!5124387))

(declare-fun m!5124389 () Bool)

(assert (=> bs!762856 m!5124389))

(assert (=> bs!762856 m!5124385))

(assert (=> b!4436335 d!1346674))

(declare-fun d!1346676 () Bool)

(declare-fun res!1836426 () Bool)

(declare-fun e!2762803 () Bool)

(assert (=> d!1346676 (=> res!1836426 e!2762803)))

(assert (=> d!1346676 (= res!1836426 ((_ is Nil!49722) (t!356788 (toList!3601 lm!1616))))))

(assert (=> d!1346676 (= (forall!9656 (t!356788 (toList!3601 lm!1616)) lambda!156234) e!2762803)))

(declare-fun b!4437034 () Bool)

(declare-fun e!2762804 () Bool)

(assert (=> b!4437034 (= e!2762803 e!2762804)))

(declare-fun res!1836427 () Bool)

(assert (=> b!4437034 (=> (not res!1836427) (not e!2762804))))

(assert (=> b!4437034 (= res!1836427 (dynLambda!20890 lambda!156234 (h!55431 (t!356788 (toList!3601 lm!1616)))))))

(declare-fun b!4437035 () Bool)

(assert (=> b!4437035 (= e!2762804 (forall!9656 (t!356788 (t!356788 (toList!3601 lm!1616))) lambda!156234))))

(assert (= (and d!1346676 (not res!1836426)) b!4437034))

(assert (= (and b!4437034 res!1836427) b!4437035))

(declare-fun b_lambda!144649 () Bool)

(assert (=> (not b_lambda!144649) (not b!4437034)))

(declare-fun m!5124391 () Bool)

(assert (=> b!4437034 m!5124391))

(declare-fun m!5124393 () Bool)

(assert (=> b!4437035 m!5124393))

(assert (=> b!4436317 d!1346676))

(declare-fun d!1346678 () Bool)

(assert (=> d!1346678 (= (invariantList!829 (toList!3602 lt!1633352)) (noDuplicatedKeys!188 (toList!3602 lt!1633352)))))

(declare-fun bs!762857 () Bool)

(assert (= bs!762857 d!1346678))

(declare-fun m!5124395 () Bool)

(assert (=> bs!762857 m!5124395))

(assert (=> d!1346338 d!1346678))

(declare-fun d!1346680 () Bool)

(declare-fun res!1836428 () Bool)

(declare-fun e!2762805 () Bool)

(assert (=> d!1346680 (=> res!1836428 e!2762805)))

(assert (=> d!1346680 (= res!1836428 ((_ is Nil!49722) (toList!3601 lm!1616)))))

(assert (=> d!1346680 (= (forall!9656 (toList!3601 lm!1616) lambda!156267) e!2762805)))

(declare-fun b!4437036 () Bool)

(declare-fun e!2762806 () Bool)

(assert (=> b!4437036 (= e!2762805 e!2762806)))

(declare-fun res!1836429 () Bool)

(assert (=> b!4437036 (=> (not res!1836429) (not e!2762806))))

(assert (=> b!4437036 (= res!1836429 (dynLambda!20890 lambda!156267 (h!55431 (toList!3601 lm!1616))))))

(declare-fun b!4437037 () Bool)

(assert (=> b!4437037 (= e!2762806 (forall!9656 (t!356788 (toList!3601 lm!1616)) lambda!156267))))

(assert (= (and d!1346680 (not res!1836428)) b!4437036))

(assert (= (and b!4437036 res!1836429) b!4437037))

(declare-fun b_lambda!144651 () Bool)

(assert (=> (not b_lambda!144651) (not b!4437036)))

(declare-fun m!5124397 () Bool)

(assert (=> b!4437036 m!5124397))

(declare-fun m!5124399 () Bool)

(assert (=> b!4437037 m!5124399))

(assert (=> d!1346338 d!1346680))

(assert (=> b!4436294 d!1346472))

(assert (=> b!4436294 d!1346474))

(declare-fun bs!762858 () Bool)

(declare-fun b!4437045 () Bool)

(assert (= bs!762858 (and b!4437045 b!4436609)))

(declare-fun lambda!156408 () Int)

(assert (=> bs!762858 (= (= (t!356787 (toList!3602 (extractMap!868 (toList!3601 lm!1616)))) (t!356787 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616)))))) (= lambda!156408 lambda!156331))))

(declare-fun bs!762859 () Bool)

(assert (= bs!762859 (and b!4437045 b!4436605)))

(assert (=> bs!762859 (= (= (t!356787 (toList!3602 (extractMap!868 (toList!3601 lm!1616)))) (Cons!49721 (h!55430 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616))))) (t!356787 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616))))))) (= lambda!156408 lambda!156332))))

(declare-fun bs!762860 () Bool)

(assert (= bs!762860 (and b!4437045 b!4436649)))

(assert (=> bs!762860 (= (= (t!356787 (toList!3602 (extractMap!868 (toList!3601 lm!1616)))) (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616))))) (= lambda!156408 lambda!156339))))

(declare-fun bs!762861 () Bool)

(assert (= bs!762861 (and b!4437045 b!4436666)))

(assert (=> bs!762861 (= (= (t!356787 (toList!3602 (extractMap!868 (toList!3601 lm!1616)))) (toList!3602 (extractMap!868 (toList!3601 lm!1616)))) (= lambda!156408 lambda!156341))))

(declare-fun bs!762862 () Bool)

(assert (= bs!762862 (and b!4437045 b!4436606)))

(assert (=> bs!762862 (= (= (t!356787 (toList!3602 (extractMap!868 (toList!3601 lm!1616)))) (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616))))) (= lambda!156408 lambda!156333))))

(assert (=> b!4437045 true))

(declare-fun bs!762863 () Bool)

(declare-fun b!4437041 () Bool)

(assert (= bs!762863 (and b!4437041 b!4436609)))

(declare-fun lambda!156409 () Int)

(assert (=> bs!762863 (= (= (Cons!49721 (h!55430 (toList!3602 (extractMap!868 (toList!3601 lm!1616)))) (t!356787 (toList!3602 (extractMap!868 (toList!3601 lm!1616))))) (t!356787 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616)))))) (= lambda!156409 lambda!156331))))

(declare-fun bs!762864 () Bool)

(assert (= bs!762864 (and b!4437041 b!4436605)))

(assert (=> bs!762864 (= (= (Cons!49721 (h!55430 (toList!3602 (extractMap!868 (toList!3601 lm!1616)))) (t!356787 (toList!3602 (extractMap!868 (toList!3601 lm!1616))))) (Cons!49721 (h!55430 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616))))) (t!356787 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616))))))) (= lambda!156409 lambda!156332))))

(declare-fun bs!762865 () Bool)

(assert (= bs!762865 (and b!4437041 b!4436649)))

(assert (=> bs!762865 (= (= (Cons!49721 (h!55430 (toList!3602 (extractMap!868 (toList!3601 lm!1616)))) (t!356787 (toList!3602 (extractMap!868 (toList!3601 lm!1616))))) (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616))))) (= lambda!156409 lambda!156339))))

(declare-fun bs!762866 () Bool)

(assert (= bs!762866 (and b!4437041 b!4436666)))

(assert (=> bs!762866 (= (= (Cons!49721 (h!55430 (toList!3602 (extractMap!868 (toList!3601 lm!1616)))) (t!356787 (toList!3602 (extractMap!868 (toList!3601 lm!1616))))) (toList!3602 (extractMap!868 (toList!3601 lm!1616)))) (= lambda!156409 lambda!156341))))

(declare-fun bs!762867 () Bool)

(assert (= bs!762867 (and b!4437041 b!4437045)))

(assert (=> bs!762867 (= (= (Cons!49721 (h!55430 (toList!3602 (extractMap!868 (toList!3601 lm!1616)))) (t!356787 (toList!3602 (extractMap!868 (toList!3601 lm!1616))))) (t!356787 (toList!3602 (extractMap!868 (toList!3601 lm!1616))))) (= lambda!156409 lambda!156408))))

(declare-fun bs!762868 () Bool)

(assert (= bs!762868 (and b!4437041 b!4436606)))

(assert (=> bs!762868 (= (= (Cons!49721 (h!55430 (toList!3602 (extractMap!868 (toList!3601 lm!1616)))) (t!356787 (toList!3602 (extractMap!868 (toList!3601 lm!1616))))) (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616))))) (= lambda!156409 lambda!156333))))

(assert (=> b!4437041 true))

(declare-fun bs!762869 () Bool)

(declare-fun b!4437042 () Bool)

(assert (= bs!762869 (and b!4437042 b!4436609)))

(declare-fun lambda!156410 () Int)

(assert (=> bs!762869 (= (= (toList!3602 (extractMap!868 (toList!3601 lm!1616))) (t!356787 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616)))))) (= lambda!156410 lambda!156331))))

(declare-fun bs!762870 () Bool)

(assert (= bs!762870 (and b!4437042 b!4436605)))

(assert (=> bs!762870 (= (= (toList!3602 (extractMap!868 (toList!3601 lm!1616))) (Cons!49721 (h!55430 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616))))) (t!356787 (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616))))))) (= lambda!156410 lambda!156332))))

(declare-fun bs!762871 () Bool)

(assert (= bs!762871 (and b!4437042 b!4436649)))

(assert (=> bs!762871 (= (= (toList!3602 (extractMap!868 (toList!3601 lm!1616))) (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616))))) (= lambda!156410 lambda!156339))))

(declare-fun bs!762872 () Bool)

(assert (= bs!762872 (and b!4437042 b!4436666)))

(assert (=> bs!762872 (= lambda!156410 lambda!156341)))

(declare-fun bs!762873 () Bool)

(assert (= bs!762873 (and b!4437042 b!4437045)))

(assert (=> bs!762873 (= (= (toList!3602 (extractMap!868 (toList!3601 lm!1616))) (t!356787 (toList!3602 (extractMap!868 (toList!3601 lm!1616))))) (= lambda!156410 lambda!156408))))

(declare-fun bs!762874 () Bool)

(assert (= bs!762874 (and b!4437042 b!4436606)))

(assert (=> bs!762874 (= (= (toList!3602 (extractMap!868 (toList!3601 lm!1616))) (toList!3602 (extractMap!868 (tail!7337 (toList!3601 lm!1616))))) (= lambda!156410 lambda!156333))))

(declare-fun bs!762875 () Bool)

(assert (= bs!762875 (and b!4437042 b!4437041)))

(assert (=> bs!762875 (= (= (toList!3602 (extractMap!868 (toList!3601 lm!1616))) (Cons!49721 (h!55430 (toList!3602 (extractMap!868 (toList!3601 lm!1616)))) (t!356787 (toList!3602 (extractMap!868 (toList!3601 lm!1616)))))) (= lambda!156410 lambda!156409))))

(assert (=> b!4437042 true))

(declare-fun bs!762876 () Bool)

(declare-fun b!4437043 () Bool)

(assert (= bs!762876 (and b!4437043 b!4436607)))

(declare-fun lambda!156411 () Int)

(assert (=> bs!762876 (= lambda!156411 lambda!156334)))

(declare-fun bs!762877 () Bool)

(assert (= bs!762877 (and b!4437043 b!4436650)))

(assert (=> bs!762877 (= lambda!156411 lambda!156340)))

(declare-fun bs!762878 () Bool)

(assert (= bs!762878 (and b!4437043 b!4436667)))

(assert (=> bs!762878 (= lambda!156411 lambda!156342)))

(declare-fun b!4437038 () Bool)

(declare-fun e!2762807 () Unit!83387)

(declare-fun Unit!83502 () Unit!83387)

(assert (=> b!4437038 (= e!2762807 Unit!83502)))

(declare-fun b!4437039 () Bool)

(declare-fun e!2762809 () Unit!83387)

(declare-fun Unit!83503 () Unit!83387)

(assert (=> b!4437039 (= e!2762809 Unit!83503)))

(declare-fun b!4437040 () Bool)

(assert (=> b!4437040 false))

(declare-fun Unit!83504 () Unit!83387)

(assert (=> b!4437040 (= e!2762807 Unit!83504)))

(declare-fun res!1836432 () Bool)

(declare-fun e!2762808 () Bool)

(assert (=> b!4437042 (=> (not res!1836432) (not e!2762808))))

(declare-fun lt!1633841 () List!49848)

(assert (=> b!4437042 (= res!1836432 (forall!9660 lt!1633841 lambda!156410))))

(assert (=> b!4437043 (= e!2762808 (= (content!7999 lt!1633841) (content!7999 (map!10873 (toList!3602 (extractMap!868 (toList!3601 lm!1616))) lambda!156411))))))

(declare-fun b!4437044 () Bool)

(declare-fun res!1836430 () Bool)

(assert (=> b!4437044 (=> (not res!1836430) (not e!2762808))))

(assert (=> b!4437044 (= res!1836430 (= (length!200 lt!1633841) (length!201 (toList!3602 (extractMap!868 (toList!3601 lm!1616))))))))

(assert (=> b!4437045 false))

(declare-fun lt!1633846 () Unit!83387)

(assert (=> b!4437045 (= lt!1633846 (forallContained!2129 (getKeysList!276 (t!356787 (toList!3602 (extractMap!868 (toList!3601 lm!1616))))) lambda!156408 (_1!28097 (h!55430 (toList!3602 (extractMap!868 (toList!3601 lm!1616)))))))))

(declare-fun Unit!83505 () Unit!83387)

(assert (=> b!4437045 (= e!2762809 Unit!83505)))

(declare-fun b!4437046 () Bool)

(declare-fun e!2762810 () List!49848)

(assert (=> b!4437046 (= e!2762810 Nil!49724)))

(declare-fun d!1346682 () Bool)

(assert (=> d!1346682 e!2762808))

(declare-fun res!1836431 () Bool)

(assert (=> d!1346682 (=> (not res!1836431) (not e!2762808))))

(assert (=> d!1346682 (= res!1836431 (noDuplicate!672 lt!1633841))))

(assert (=> d!1346682 (= lt!1633841 e!2762810)))

(declare-fun c!755223 () Bool)

(assert (=> d!1346682 (= c!755223 ((_ is Cons!49721) (toList!3602 (extractMap!868 (toList!3601 lm!1616)))))))

(assert (=> d!1346682 (invariantList!829 (toList!3602 (extractMap!868 (toList!3601 lm!1616))))))

(assert (=> d!1346682 (= (getKeysList!276 (toList!3602 (extractMap!868 (toList!3601 lm!1616)))) lt!1633841)))

(assert (=> b!4437041 (= e!2762810 (Cons!49724 (_1!28097 (h!55430 (toList!3602 (extractMap!868 (toList!3601 lm!1616))))) (getKeysList!276 (t!356787 (toList!3602 (extractMap!868 (toList!3601 lm!1616)))))))))

(declare-fun c!755222 () Bool)

(assert (=> b!4437041 (= c!755222 (containsKey!1198 (t!356787 (toList!3602 (extractMap!868 (toList!3601 lm!1616)))) (_1!28097 (h!55430 (toList!3602 (extractMap!868 (toList!3601 lm!1616)))))))))

(declare-fun lt!1633840 () Unit!83387)

(assert (=> b!4437041 (= lt!1633840 e!2762807)))

(declare-fun c!755221 () Bool)

(assert (=> b!4437041 (= c!755221 (contains!12275 (getKeysList!276 (t!356787 (toList!3602 (extractMap!868 (toList!3601 lm!1616))))) (_1!28097 (h!55430 (toList!3602 (extractMap!868 (toList!3601 lm!1616)))))))))

(declare-fun lt!1633843 () Unit!83387)

(assert (=> b!4437041 (= lt!1633843 e!2762809)))

(declare-fun lt!1633842 () List!49848)

(assert (=> b!4437041 (= lt!1633842 (getKeysList!276 (t!356787 (toList!3602 (extractMap!868 (toList!3601 lm!1616))))))))

(declare-fun lt!1633845 () Unit!83387)

(assert (=> b!4437041 (= lt!1633845 (lemmaForallContainsAddHeadPreserves!93 (t!356787 (toList!3602 (extractMap!868 (toList!3601 lm!1616)))) lt!1633842 (h!55430 (toList!3602 (extractMap!868 (toList!3601 lm!1616))))))))

(assert (=> b!4437041 (forall!9660 lt!1633842 lambda!156409)))

(declare-fun lt!1633844 () Unit!83387)

(assert (=> b!4437041 (= lt!1633844 lt!1633845)))

(assert (= (and d!1346682 c!755223) b!4437041))

(assert (= (and d!1346682 (not c!755223)) b!4437046))

(assert (= (and b!4437041 c!755222) b!4437040))

(assert (= (and b!4437041 (not c!755222)) b!4437038))

(assert (= (and b!4437041 c!755221) b!4437045))

(assert (= (and b!4437041 (not c!755221)) b!4437039))

(assert (= (and d!1346682 res!1836431) b!4437044))

(assert (= (and b!4437044 res!1836430) b!4437042))

(assert (= (and b!4437042 res!1836432) b!4437043))

(declare-fun m!5124401 () Bool)

(assert (=> d!1346682 m!5124401))

(assert (=> d!1346682 m!5124385))

(declare-fun m!5124403 () Bool)

(assert (=> b!4437044 m!5124403))

(assert (=> b!4437044 m!5123789))

(declare-fun m!5124405 () Bool)

(assert (=> b!4437042 m!5124405))

(declare-fun m!5124407 () Bool)

(assert (=> b!4437043 m!5124407))

(declare-fun m!5124409 () Bool)

(assert (=> b!4437043 m!5124409))

(assert (=> b!4437043 m!5124409))

(declare-fun m!5124411 () Bool)

(assert (=> b!4437043 m!5124411))

(declare-fun m!5124413 () Bool)

(assert (=> b!4437041 m!5124413))

(declare-fun m!5124415 () Bool)

(assert (=> b!4437041 m!5124415))

(declare-fun m!5124417 () Bool)

(assert (=> b!4437041 m!5124417))

(assert (=> b!4437041 m!5124413))

(declare-fun m!5124419 () Bool)

(assert (=> b!4437041 m!5124419))

(declare-fun m!5124421 () Bool)

(assert (=> b!4437041 m!5124421))

(assert (=> b!4437045 m!5124413))

(assert (=> b!4437045 m!5124413))

(declare-fun m!5124423 () Bool)

(assert (=> b!4437045 m!5124423))

(assert (=> b!4436336 d!1346682))

(declare-fun b!4437049 () Bool)

(declare-fun e!2762812 () Option!10774)

(assert (=> b!4437049 (= e!2762812 (getValueByKey!760 (t!356788 (toList!3601 lt!1633328)) (_1!28098 lt!1633175)))))

(declare-fun d!1346684 () Bool)

(declare-fun c!755224 () Bool)

(assert (=> d!1346684 (= c!755224 (and ((_ is Cons!49722) (toList!3601 lt!1633328)) (= (_1!28098 (h!55431 (toList!3601 lt!1633328))) (_1!28098 lt!1633175))))))

(declare-fun e!2762811 () Option!10774)

(assert (=> d!1346684 (= (getValueByKey!760 (toList!3601 lt!1633328) (_1!28098 lt!1633175)) e!2762811)))

(declare-fun b!4437050 () Bool)

(assert (=> b!4437050 (= e!2762812 None!10773)))

(declare-fun b!4437047 () Bool)

(assert (=> b!4437047 (= e!2762811 (Some!10773 (_2!28098 (h!55431 (toList!3601 lt!1633328)))))))

(declare-fun b!4437048 () Bool)

(assert (=> b!4437048 (= e!2762811 e!2762812)))

(declare-fun c!755225 () Bool)

(assert (=> b!4437048 (= c!755225 (and ((_ is Cons!49722) (toList!3601 lt!1633328)) (not (= (_1!28098 (h!55431 (toList!3601 lt!1633328))) (_1!28098 lt!1633175)))))))

(assert (= (and d!1346684 c!755224) b!4437047))

(assert (= (and d!1346684 (not c!755224)) b!4437048))

(assert (= (and b!4437048 c!755225) b!4437049))

(assert (= (and b!4437048 (not c!755225)) b!4437050))

(declare-fun m!5124425 () Bool)

(assert (=> b!4437049 m!5124425))

(assert (=> b!4436306 d!1346684))

(declare-fun d!1346686 () Bool)

(declare-fun res!1836433 () Bool)

(declare-fun e!2762813 () Bool)

(assert (=> d!1346686 (=> res!1836433 e!2762813)))

(assert (=> d!1346686 (= res!1836433 (and ((_ is Cons!49721) (toList!3602 (extractMap!868 (toList!3601 lm!1616)))) (= (_1!28097 (h!55430 (toList!3602 (extractMap!868 (toList!3601 lm!1616))))) key!3717)))))

(assert (=> d!1346686 (= (containsKey!1198 (toList!3602 (extractMap!868 (toList!3601 lm!1616))) key!3717) e!2762813)))

(declare-fun b!4437051 () Bool)

(declare-fun e!2762814 () Bool)

(assert (=> b!4437051 (= e!2762813 e!2762814)))

(declare-fun res!1836434 () Bool)

(assert (=> b!4437051 (=> (not res!1836434) (not e!2762814))))

(assert (=> b!4437051 (= res!1836434 ((_ is Cons!49721) (toList!3602 (extractMap!868 (toList!3601 lm!1616)))))))

(declare-fun b!4437052 () Bool)

(assert (=> b!4437052 (= e!2762814 (containsKey!1198 (t!356787 (toList!3602 (extractMap!868 (toList!3601 lm!1616)))) key!3717))))

(assert (= (and d!1346686 (not res!1836433)) b!4437051))

(assert (= (and b!4437051 res!1836434) b!4437052))

(declare-fun m!5124427 () Bool)

(assert (=> b!4437052 m!5124427))

(assert (=> b!4436330 d!1346686))

(declare-fun d!1346688 () Bool)

(assert (=> d!1346688 (containsKey!1198 (toList!3602 (extractMap!868 (toList!3601 lm!1616))) key!3717)))

(declare-fun lt!1633847 () Unit!83387)

(assert (=> d!1346688 (= lt!1633847 (choose!28156 (toList!3602 (extractMap!868 (toList!3601 lm!1616))) key!3717))))

(assert (=> d!1346688 (invariantList!829 (toList!3602 (extractMap!868 (toList!3601 lm!1616))))))

(assert (=> d!1346688 (= (lemmaInGetKeysListThenContainsKey!274 (toList!3602 (extractMap!868 (toList!3601 lm!1616))) key!3717) lt!1633847)))

(declare-fun bs!762879 () Bool)

(assert (= bs!762879 d!1346688))

(assert (=> bs!762879 m!5123319))

(declare-fun m!5124429 () Bool)

(assert (=> bs!762879 m!5124429))

(assert (=> bs!762879 m!5124385))

(assert (=> b!4436330 d!1346688))

(declare-fun d!1346690 () Bool)

(declare-fun res!1836439 () Bool)

(declare-fun e!2762819 () Bool)

(assert (=> d!1346690 (=> res!1836439 e!2762819)))

(assert (=> d!1346690 (= res!1836439 (and ((_ is Cons!49722) (toList!3601 lm!1616)) (= (_1!28098 (h!55431 (toList!3601 lm!1616))) hash!366)))))

(assert (=> d!1346690 (= (containsKey!1199 (toList!3601 lm!1616) hash!366) e!2762819)))

(declare-fun b!4437057 () Bool)

(declare-fun e!2762820 () Bool)

(assert (=> b!4437057 (= e!2762819 e!2762820)))

(declare-fun res!1836440 () Bool)

(assert (=> b!4437057 (=> (not res!1836440) (not e!2762820))))

(assert (=> b!4437057 (= res!1836440 (and (or (not ((_ is Cons!49722) (toList!3601 lm!1616))) (bvsle (_1!28098 (h!55431 (toList!3601 lm!1616))) hash!366)) ((_ is Cons!49722) (toList!3601 lm!1616)) (bvslt (_1!28098 (h!55431 (toList!3601 lm!1616))) hash!366)))))

(declare-fun b!4437058 () Bool)

(assert (=> b!4437058 (= e!2762820 (containsKey!1199 (t!356788 (toList!3601 lm!1616)) hash!366))))

(assert (= (and d!1346690 (not res!1836439)) b!4437057))

(assert (= (and b!4437057 res!1836440) b!4437058))

(declare-fun m!5124431 () Bool)

(assert (=> b!4437058 m!5124431))

(assert (=> d!1346330 d!1346690))

(assert (=> b!4436332 d!1346498))

(assert (=> b!4436332 d!1346500))

(declare-fun d!1346692 () Bool)

(declare-fun res!1836441 () Bool)

(declare-fun e!2762821 () Bool)

(assert (=> d!1346692 (=> res!1836441 e!2762821)))

(assert (=> d!1346692 (= res!1836441 ((_ is Nil!49722) (toList!3601 (+!1180 lm!1616 (tuple2!49609 hash!366 newBucket!194)))))))

(assert (=> d!1346692 (= (forall!9656 (toList!3601 (+!1180 lm!1616 (tuple2!49609 hash!366 newBucket!194))) lambda!156234) e!2762821)))

(declare-fun b!4437059 () Bool)

(declare-fun e!2762822 () Bool)

(assert (=> b!4437059 (= e!2762821 e!2762822)))

(declare-fun res!1836442 () Bool)

(assert (=> b!4437059 (=> (not res!1836442) (not e!2762822))))

(assert (=> b!4437059 (= res!1836442 (dynLambda!20890 lambda!156234 (h!55431 (toList!3601 (+!1180 lm!1616 (tuple2!49609 hash!366 newBucket!194))))))))

(declare-fun b!4437060 () Bool)

(assert (=> b!4437060 (= e!2762822 (forall!9656 (t!356788 (toList!3601 (+!1180 lm!1616 (tuple2!49609 hash!366 newBucket!194)))) lambda!156234))))

(assert (= (and d!1346692 (not res!1836441)) b!4437059))

(assert (= (and b!4437059 res!1836442) b!4437060))

(declare-fun b_lambda!144653 () Bool)

(assert (=> (not b_lambda!144653) (not b!4437059)))

(declare-fun m!5124433 () Bool)

(assert (=> b!4437059 m!5124433))

(declare-fun m!5124435 () Bool)

(assert (=> b!4437060 m!5124435))

(assert (=> d!1346322 d!1346692))

(declare-fun d!1346694 () Bool)

(declare-fun e!2762823 () Bool)

(assert (=> d!1346694 e!2762823))

(declare-fun res!1836444 () Bool)

(assert (=> d!1346694 (=> (not res!1836444) (not e!2762823))))

(declare-fun lt!1633851 () ListLongMap!2251)

(assert (=> d!1346694 (= res!1836444 (contains!12269 lt!1633851 (_1!28098 (tuple2!49609 hash!366 newBucket!194))))))

(declare-fun lt!1633850 () List!49846)

(assert (=> d!1346694 (= lt!1633851 (ListLongMap!2252 lt!1633850))))

(declare-fun lt!1633848 () Unit!83387)

(declare-fun lt!1633849 () Unit!83387)

(assert (=> d!1346694 (= lt!1633848 lt!1633849)))

(assert (=> d!1346694 (= (getValueByKey!760 lt!1633850 (_1!28098 (tuple2!49609 hash!366 newBucket!194))) (Some!10773 (_2!28098 (tuple2!49609 hash!366 newBucket!194))))))

(assert (=> d!1346694 (= lt!1633849 (lemmaContainsTupThenGetReturnValue!493 lt!1633850 (_1!28098 (tuple2!49609 hash!366 newBucket!194)) (_2!28098 (tuple2!49609 hash!366 newBucket!194))))))

(assert (=> d!1346694 (= lt!1633850 (insertStrictlySorted!284 (toList!3601 lm!1616) (_1!28098 (tuple2!49609 hash!366 newBucket!194)) (_2!28098 (tuple2!49609 hash!366 newBucket!194))))))

(assert (=> d!1346694 (= (+!1180 lm!1616 (tuple2!49609 hash!366 newBucket!194)) lt!1633851)))

(declare-fun b!4437061 () Bool)

(declare-fun res!1836443 () Bool)

(assert (=> b!4437061 (=> (not res!1836443) (not e!2762823))))

(assert (=> b!4437061 (= res!1836443 (= (getValueByKey!760 (toList!3601 lt!1633851) (_1!28098 (tuple2!49609 hash!366 newBucket!194))) (Some!10773 (_2!28098 (tuple2!49609 hash!366 newBucket!194)))))))

(declare-fun b!4437062 () Bool)

(assert (=> b!4437062 (= e!2762823 (contains!12274 (toList!3601 lt!1633851) (tuple2!49609 hash!366 newBucket!194)))))

(assert (= (and d!1346694 res!1836444) b!4437061))

(assert (= (and b!4437061 res!1836443) b!4437062))

(declare-fun m!5124437 () Bool)

(assert (=> d!1346694 m!5124437))

(declare-fun m!5124439 () Bool)

(assert (=> d!1346694 m!5124439))

(declare-fun m!5124441 () Bool)

(assert (=> d!1346694 m!5124441))

(declare-fun m!5124443 () Bool)

(assert (=> d!1346694 m!5124443))

(declare-fun m!5124445 () Bool)

(assert (=> b!4437061 m!5124445))

(declare-fun m!5124447 () Bool)

(assert (=> b!4437062 m!5124447))

(assert (=> d!1346322 d!1346694))

(declare-fun d!1346696 () Bool)

(assert (=> d!1346696 (forall!9656 (toList!3601 (+!1180 lm!1616 (tuple2!49609 hash!366 newBucket!194))) lambda!156234)))

(assert (=> d!1346696 true))

(declare-fun _$31!430 () Unit!83387)

(assert (=> d!1346696 (= (choose!28142 lm!1616 lambda!156234 hash!366 newBucket!194) _$31!430)))

(declare-fun bs!762880 () Bool)

(assert (= bs!762880 d!1346696))

(assert (=> bs!762880 m!5123279))

(assert (=> bs!762880 m!5123281))

(assert (=> d!1346322 d!1346696))

(assert (=> d!1346322 d!1346326))

(declare-fun d!1346698 () Bool)

(declare-fun res!1836445 () Bool)

(declare-fun e!2762824 () Bool)

(assert (=> d!1346698 (=> res!1836445 e!2762824)))

(assert (=> d!1346698 (= res!1836445 (not ((_ is Cons!49721) (t!356787 newBucket!194))))))

(assert (=> d!1346698 (= (noDuplicateKeys!807 (t!356787 newBucket!194)) e!2762824)))

(declare-fun b!4437064 () Bool)

(declare-fun e!2762825 () Bool)

(assert (=> b!4437064 (= e!2762824 e!2762825)))

(declare-fun res!1836446 () Bool)

(assert (=> b!4437064 (=> (not res!1836446) (not e!2762825))))

(assert (=> b!4437064 (= res!1836446 (not (containsKey!1200 (t!356787 (t!356787 newBucket!194)) (_1!28097 (h!55430 (t!356787 newBucket!194))))))))

(declare-fun b!4437065 () Bool)

(assert (=> b!4437065 (= e!2762825 (noDuplicateKeys!807 (t!356787 (t!356787 newBucket!194))))))

(assert (= (and d!1346698 (not res!1836445)) b!4437064))

(assert (= (and b!4437064 res!1836446) b!4437065))

(declare-fun m!5124449 () Bool)

(assert (=> b!4437064 m!5124449))

(declare-fun m!5124451 () Bool)

(assert (=> b!4437065 m!5124451))

(assert (=> b!4436345 d!1346698))

(assert (=> d!1346336 d!1346686))

(declare-fun bs!762881 () Bool)

(declare-fun b!4437067 () Bool)

(assert (= bs!762881 (and b!4437067 b!4436875)))

(declare-fun lambda!156412 () Int)

(assert (=> bs!762881 (= (= (extractMap!868 (t!356788 (toList!3601 (+!1180 lt!1633179 lt!1633175)))) (extractMap!868 (t!356788 (tail!7337 (toList!3601 lm!1616))))) (= lambda!156412 lambda!156392))))

(declare-fun bs!762882 () Bool)

(assert (= bs!762882 (and b!4437067 d!1346324)))

(assert (=> bs!762882 (not (= lambda!156412 lambda!156263))))

(declare-fun bs!762883 () Bool)

(assert (= bs!762883 (and b!4437067 d!1346506)))

(assert (=> bs!762883 (= (= (extractMap!868 (t!356788 (toList!3601 (+!1180 lt!1633179 lt!1633175)))) lt!1633723) (= lambda!156412 lambda!156395))))

(declare-fun bs!762884 () Bool)

(assert (= bs!762884 (and b!4437067 d!1346642)))

(assert (=> bs!762884 (= (= (extractMap!868 (t!356788 (toList!3601 (+!1180 lt!1633179 lt!1633175)))) lt!1633767) (= lambda!156412 lambda!156401))))

(declare-fun bs!762885 () Bool)

(assert (= bs!762885 (and b!4437067 b!4436941)))

(assert (=> bs!762885 (= (= (extractMap!868 (t!356788 (toList!3601 (+!1180 lt!1633179 lt!1633175)))) (extractMap!868 (t!356788 (toList!3601 lm!1616)))) (= lambda!156412 lambda!156399))))

(declare-fun bs!762886 () Bool)

(assert (= bs!762886 (and b!4437067 b!4436956)))

(assert (=> bs!762886 (= (= (extractMap!868 (t!356788 (toList!3601 (+!1180 lt!1633179 lt!1633175)))) (extractMap!868 (t!356788 (toList!3601 lt!1633179)))) (= lambda!156412 lambda!156404))))

(declare-fun bs!762887 () Bool)

(assert (= bs!762887 (and b!4437067 b!4436876)))

(assert (=> bs!762887 (= (= (extractMap!868 (t!356788 (toList!3601 (+!1180 lt!1633179 lt!1633175)))) (extractMap!868 (t!356788 (tail!7337 (toList!3601 lm!1616))))) (= lambda!156412 lambda!156393))))

(assert (=> bs!762885 (= (= (extractMap!868 (t!356788 (toList!3601 (+!1180 lt!1633179 lt!1633175)))) lt!1633763) (= lambda!156412 lambda!156400))))

(assert (=> bs!762887 (= (= (extractMap!868 (t!356788 (toList!3601 (+!1180 lt!1633179 lt!1633175)))) lt!1633719) (= lambda!156412 lambda!156394))))

(declare-fun bs!762888 () Bool)

(assert (= bs!762888 (and b!4437067 b!4436955)))

(assert (=> bs!762888 (= (= (extractMap!868 (t!356788 (toList!3601 (+!1180 lt!1633179 lt!1633175)))) (extractMap!868 (t!356788 (toList!3601 lt!1633179)))) (= lambda!156412 lambda!156403))))

(assert (=> bs!762886 (= (= (extractMap!868 (t!356788 (toList!3601 (+!1180 lt!1633179 lt!1633175)))) lt!1633785) (= lambda!156412 lambda!156405))))

(declare-fun bs!762889 () Bool)

(assert (= bs!762889 (and b!4437067 b!4436940)))

(assert (=> bs!762889 (= (= (extractMap!868 (t!356788 (toList!3601 (+!1180 lt!1633179 lt!1633175)))) (extractMap!868 (t!356788 (toList!3601 lm!1616)))) (= lambda!156412 lambda!156398))))

(declare-fun bs!762890 () Bool)

(assert (= bs!762890 (and b!4437067 d!1346650)))

(assert (=> bs!762890 (= (= (extractMap!868 (t!356788 (toList!3601 (+!1180 lt!1633179 lt!1633175)))) lt!1633789) (= lambda!156412 lambda!156406))))

(assert (=> b!4437067 true))

(declare-fun bs!762891 () Bool)

(declare-fun b!4437068 () Bool)

(assert (= bs!762891 (and b!4437068 b!4436875)))

(declare-fun lambda!156413 () Int)

(assert (=> bs!762891 (= (= (extractMap!868 (t!356788 (toList!3601 (+!1180 lt!1633179 lt!1633175)))) (extractMap!868 (t!356788 (tail!7337 (toList!3601 lm!1616))))) (= lambda!156413 lambda!156392))))

(declare-fun bs!762892 () Bool)

(assert (= bs!762892 (and b!4437068 d!1346324)))

(assert (=> bs!762892 (not (= lambda!156413 lambda!156263))))

(declare-fun bs!762893 () Bool)

(assert (= bs!762893 (and b!4437068 d!1346506)))

(assert (=> bs!762893 (= (= (extractMap!868 (t!356788 (toList!3601 (+!1180 lt!1633179 lt!1633175)))) lt!1633723) (= lambda!156413 lambda!156395))))

(declare-fun bs!762894 () Bool)

(assert (= bs!762894 (and b!4437068 d!1346642)))

(assert (=> bs!762894 (= (= (extractMap!868 (t!356788 (toList!3601 (+!1180 lt!1633179 lt!1633175)))) lt!1633767) (= lambda!156413 lambda!156401))))

(declare-fun bs!762895 () Bool)

(assert (= bs!762895 (and b!4437068 b!4437067)))

(assert (=> bs!762895 (= lambda!156413 lambda!156412)))

(declare-fun bs!762896 () Bool)

(assert (= bs!762896 (and b!4437068 b!4436941)))

(assert (=> bs!762896 (= (= (extractMap!868 (t!356788 (toList!3601 (+!1180 lt!1633179 lt!1633175)))) (extractMap!868 (t!356788 (toList!3601 lm!1616)))) (= lambda!156413 lambda!156399))))

(declare-fun bs!762897 () Bool)

(assert (= bs!762897 (and b!4437068 b!4436956)))

(assert (=> bs!762897 (= (= (extractMap!868 (t!356788 (toList!3601 (+!1180 lt!1633179 lt!1633175)))) (extractMap!868 (t!356788 (toList!3601 lt!1633179)))) (= lambda!156413 lambda!156404))))

(declare-fun bs!762898 () Bool)

(assert (= bs!762898 (and b!4437068 b!4436876)))

(assert (=> bs!762898 (= (= (extractMap!868 (t!356788 (toList!3601 (+!1180 lt!1633179 lt!1633175)))) (extractMap!868 (t!356788 (tail!7337 (toList!3601 lm!1616))))) (= lambda!156413 lambda!156393))))

(assert (=> bs!762896 (= (= (extractMap!868 (t!356788 (toList!3601 (+!1180 lt!1633179 lt!1633175)))) lt!1633763) (= lambda!156413 lambda!156400))))

(assert (=> bs!762898 (= (= (extractMap!868 (t!356788 (toList!3601 (+!1180 lt!1633179 lt!1633175)))) lt!1633719) (= lambda!156413 lambda!156394))))

(declare-fun bs!762899 () Bool)

(assert (= bs!762899 (and b!4437068 b!4436955)))

(assert (=> bs!762899 (= (= (extractMap!868 (t!356788 (toList!3601 (+!1180 lt!1633179 lt!1633175)))) (extractMap!868 (t!356788 (toList!3601 lt!1633179)))) (= lambda!156413 lambda!156403))))

(assert (=> bs!762897 (= (= (extractMap!868 (t!356788 (toList!3601 (+!1180 lt!1633179 lt!1633175)))) lt!1633785) (= lambda!156413 lambda!156405))))

(declare-fun bs!762900 () Bool)

(assert (= bs!762900 (and b!4437068 b!4436940)))

(assert (=> bs!762900 (= (= (extractMap!868 (t!356788 (toList!3601 (+!1180 lt!1633179 lt!1633175)))) (extractMap!868 (t!356788 (toList!3601 lm!1616)))) (= lambda!156413 lambda!156398))))

(declare-fun bs!762901 () Bool)

(assert (= bs!762901 (and b!4437068 d!1346650)))

(assert (=> bs!762901 (= (= (extractMap!868 (t!356788 (toList!3601 (+!1180 lt!1633179 lt!1633175)))) lt!1633789) (= lambda!156413 lambda!156406))))

(assert (=> b!4437068 true))

(declare-fun lt!1633868 () ListMap!2845)

(declare-fun lambda!156414 () Int)

(assert (=> bs!762891 (= (= lt!1633868 (extractMap!868 (t!356788 (tail!7337 (toList!3601 lm!1616))))) (= lambda!156414 lambda!156392))))

(assert (=> bs!762892 (not (= lambda!156414 lambda!156263))))

(assert (=> bs!762893 (= (= lt!1633868 lt!1633723) (= lambda!156414 lambda!156395))))

(assert (=> bs!762894 (= (= lt!1633868 lt!1633767) (= lambda!156414 lambda!156401))))

(assert (=> b!4437068 (= (= lt!1633868 (extractMap!868 (t!356788 (toList!3601 (+!1180 lt!1633179 lt!1633175))))) (= lambda!156414 lambda!156413))))

(assert (=> bs!762895 (= (= lt!1633868 (extractMap!868 (t!356788 (toList!3601 (+!1180 lt!1633179 lt!1633175))))) (= lambda!156414 lambda!156412))))

(assert (=> bs!762896 (= (= lt!1633868 (extractMap!868 (t!356788 (toList!3601 lm!1616)))) (= lambda!156414 lambda!156399))))

(assert (=> bs!762897 (= (= lt!1633868 (extractMap!868 (t!356788 (toList!3601 lt!1633179)))) (= lambda!156414 lambda!156404))))

(assert (=> bs!762898 (= (= lt!1633868 (extractMap!868 (t!356788 (tail!7337 (toList!3601 lm!1616))))) (= lambda!156414 lambda!156393))))

(assert (=> bs!762896 (= (= lt!1633868 lt!1633763) (= lambda!156414 lambda!156400))))

(assert (=> bs!762898 (= (= lt!1633868 lt!1633719) (= lambda!156414 lambda!156394))))

(assert (=> bs!762899 (= (= lt!1633868 (extractMap!868 (t!356788 (toList!3601 lt!1633179)))) (= lambda!156414 lambda!156403))))

(assert (=> bs!762897 (= (= lt!1633868 lt!1633785) (= lambda!156414 lambda!156405))))

(assert (=> bs!762900 (= (= lt!1633868 (extractMap!868 (t!356788 (toList!3601 lm!1616)))) (= lambda!156414 lambda!156398))))

(assert (=> bs!762901 (= (= lt!1633868 lt!1633789) (= lambda!156414 lambda!156406))))

(assert (=> b!4437068 true))

(declare-fun bs!762902 () Bool)

(declare-fun d!1346700 () Bool)

(assert (= bs!762902 (and d!1346700 b!4436875)))

(declare-fun lt!1633872 () ListMap!2845)

(declare-fun lambda!156415 () Int)

(assert (=> bs!762902 (= (= lt!1633872 (extractMap!868 (t!356788 (tail!7337 (toList!3601 lm!1616))))) (= lambda!156415 lambda!156392))))

(declare-fun bs!762903 () Bool)

(assert (= bs!762903 (and d!1346700 d!1346324)))

(assert (=> bs!762903 (not (= lambda!156415 lambda!156263))))

(declare-fun bs!762904 () Bool)

(assert (= bs!762904 (and d!1346700 d!1346506)))

(assert (=> bs!762904 (= (= lt!1633872 lt!1633723) (= lambda!156415 lambda!156395))))

(declare-fun bs!762905 () Bool)

(assert (= bs!762905 (and d!1346700 d!1346642)))

(assert (=> bs!762905 (= (= lt!1633872 lt!1633767) (= lambda!156415 lambda!156401))))

(declare-fun bs!762906 () Bool)

(assert (= bs!762906 (and d!1346700 b!4437068)))

(assert (=> bs!762906 (= (= lt!1633872 (extractMap!868 (t!356788 (toList!3601 (+!1180 lt!1633179 lt!1633175))))) (= lambda!156415 lambda!156413))))

(declare-fun bs!762907 () Bool)

(assert (= bs!762907 (and d!1346700 b!4437067)))

(assert (=> bs!762907 (= (= lt!1633872 (extractMap!868 (t!356788 (toList!3601 (+!1180 lt!1633179 lt!1633175))))) (= lambda!156415 lambda!156412))))

(declare-fun bs!762908 () Bool)

(assert (= bs!762908 (and d!1346700 b!4436941)))

(assert (=> bs!762908 (= (= lt!1633872 (extractMap!868 (t!356788 (toList!3601 lm!1616)))) (= lambda!156415 lambda!156399))))

(assert (=> bs!762906 (= (= lt!1633872 lt!1633868) (= lambda!156415 lambda!156414))))

(declare-fun bs!762909 () Bool)

(assert (= bs!762909 (and d!1346700 b!4436956)))

(assert (=> bs!762909 (= (= lt!1633872 (extractMap!868 (t!356788 (toList!3601 lt!1633179)))) (= lambda!156415 lambda!156404))))

(declare-fun bs!762910 () Bool)

(assert (= bs!762910 (and d!1346700 b!4436876)))

(assert (=> bs!762910 (= (= lt!1633872 (extractMap!868 (t!356788 (tail!7337 (toList!3601 lm!1616))))) (= lambda!156415 lambda!156393))))

(assert (=> bs!762908 (= (= lt!1633872 lt!1633763) (= lambda!156415 lambda!156400))))

(assert (=> bs!762910 (= (= lt!1633872 lt!1633719) (= lambda!156415 lambda!156394))))

(declare-fun bs!762911 () Bool)

(assert (= bs!762911 (and d!1346700 b!4436955)))

(assert (=> bs!762911 (= (= lt!1633872 (extractMap!868 (t!356788 (toList!3601 lt!1633179)))) (= lambda!156415 lambda!156403))))

(assert (=> bs!762909 (= (= lt!1633872 lt!1633785) (= lambda!156415 lambda!156405))))

(declare-fun bs!762912 () Bool)

(assert (= bs!762912 (and d!1346700 b!4436940)))

(assert (=> bs!762912 (= (= lt!1633872 (extractMap!868 (t!356788 (toList!3601 lm!1616)))) (= lambda!156415 lambda!156398))))

(declare-fun bs!762913 () Bool)

(assert (= bs!762913 (and d!1346700 d!1346650)))

(assert (=> bs!762913 (= (= lt!1633872 lt!1633789) (= lambda!156415 lambda!156406))))

(assert (=> d!1346700 true))

(declare-fun bm!308767 () Bool)

(declare-fun call!308772 () Unit!83387)

(assert (=> bm!308767 (= call!308772 (lemmaContainsAllItsOwnKeys!197 (extractMap!868 (t!356788 (toList!3601 (+!1180 lt!1633179 lt!1633175))))))))

(declare-fun e!2762827 () ListMap!2845)

(assert (=> b!4437067 (= e!2762827 (extractMap!868 (t!356788 (toList!3601 (+!1180 lt!1633179 lt!1633175)))))))

(declare-fun lt!1633857 () Unit!83387)

(assert (=> b!4437067 (= lt!1633857 call!308772)))

(declare-fun call!308773 () Bool)

(assert (=> b!4437067 call!308773))

(declare-fun lt!1633865 () Unit!83387)

(assert (=> b!4437067 (= lt!1633865 lt!1633857)))

(declare-fun call!308774 () Bool)

(assert (=> b!4437067 call!308774))

(declare-fun lt!1633853 () Unit!83387)

(declare-fun Unit!83506 () Unit!83387)

(assert (=> b!4437067 (= lt!1633853 Unit!83506)))

(assert (=> b!4437068 (= e!2762827 lt!1633868)))

(declare-fun lt!1633862 () ListMap!2845)

(assert (=> b!4437068 (= lt!1633862 (+!1181 (extractMap!868 (t!356788 (toList!3601 (+!1180 lt!1633179 lt!1633175)))) (h!55430 (_2!28098 (h!55431 (toList!3601 (+!1180 lt!1633179 lt!1633175)))))))))

(assert (=> b!4437068 (= lt!1633868 (addToMapMapFromBucket!428 (t!356787 (_2!28098 (h!55431 (toList!3601 (+!1180 lt!1633179 lt!1633175))))) (+!1181 (extractMap!868 (t!356788 (toList!3601 (+!1180 lt!1633179 lt!1633175)))) (h!55430 (_2!28098 (h!55431 (toList!3601 (+!1180 lt!1633179 lt!1633175))))))))))

(declare-fun lt!1633859 () Unit!83387)

(assert (=> b!4437068 (= lt!1633859 call!308772)))

(assert (=> b!4437068 call!308773))

(declare-fun lt!1633858 () Unit!83387)

(assert (=> b!4437068 (= lt!1633858 lt!1633859)))

(assert (=> b!4437068 (forall!9658 (toList!3602 lt!1633862) lambda!156414)))

(declare-fun lt!1633852 () Unit!83387)

(declare-fun Unit!83507 () Unit!83387)

(assert (=> b!4437068 (= lt!1633852 Unit!83507)))

(assert (=> b!4437068 (forall!9658 (t!356787 (_2!28098 (h!55431 (toList!3601 (+!1180 lt!1633179 lt!1633175))))) lambda!156414)))

(declare-fun lt!1633866 () Unit!83387)

(declare-fun Unit!83508 () Unit!83387)

(assert (=> b!4437068 (= lt!1633866 Unit!83508)))

(declare-fun lt!1633864 () Unit!83387)

(declare-fun Unit!83509 () Unit!83387)

(assert (=> b!4437068 (= lt!1633864 Unit!83509)))

(declare-fun lt!1633855 () Unit!83387)

(assert (=> b!4437068 (= lt!1633855 (forallContained!2130 (toList!3602 lt!1633862) lambda!156414 (h!55430 (_2!28098 (h!55431 (toList!3601 (+!1180 lt!1633179 lt!1633175)))))))))

(assert (=> b!4437068 (contains!12268 lt!1633862 (_1!28097 (h!55430 (_2!28098 (h!55431 (toList!3601 (+!1180 lt!1633179 lt!1633175)))))))))

(declare-fun lt!1633869 () Unit!83387)

(declare-fun Unit!83510 () Unit!83387)

(assert (=> b!4437068 (= lt!1633869 Unit!83510)))

(assert (=> b!4437068 (contains!12268 lt!1633868 (_1!28097 (h!55430 (_2!28098 (h!55431 (toList!3601 (+!1180 lt!1633179 lt!1633175)))))))))

(declare-fun lt!1633854 () Unit!83387)

(declare-fun Unit!83511 () Unit!83387)

(assert (=> b!4437068 (= lt!1633854 Unit!83511)))

(assert (=> b!4437068 (forall!9658 (_2!28098 (h!55431 (toList!3601 (+!1180 lt!1633179 lt!1633175)))) lambda!156414)))

(declare-fun lt!1633856 () Unit!83387)

(declare-fun Unit!83512 () Unit!83387)

(assert (=> b!4437068 (= lt!1633856 Unit!83512)))

(assert (=> b!4437068 (forall!9658 (toList!3602 lt!1633862) lambda!156414)))

(declare-fun lt!1633863 () Unit!83387)

(declare-fun Unit!83513 () Unit!83387)

(assert (=> b!4437068 (= lt!1633863 Unit!83513)))

(declare-fun lt!1633867 () Unit!83387)

(declare-fun Unit!83514 () Unit!83387)

(assert (=> b!4437068 (= lt!1633867 Unit!83514)))

(declare-fun lt!1633870 () Unit!83387)

(assert (=> b!4437068 (= lt!1633870 (addForallContainsKeyThenBeforeAdding!197 (extractMap!868 (t!356788 (toList!3601 (+!1180 lt!1633179 lt!1633175)))) lt!1633868 (_1!28097 (h!55430 (_2!28098 (h!55431 (toList!3601 (+!1180 lt!1633179 lt!1633175)))))) (_2!28097 (h!55430 (_2!28098 (h!55431 (toList!3601 (+!1180 lt!1633179 lt!1633175))))))))))

(assert (=> b!4437068 (forall!9658 (toList!3602 (extractMap!868 (t!356788 (toList!3601 (+!1180 lt!1633179 lt!1633175))))) lambda!156414)))

(declare-fun lt!1633871 () Unit!83387)

(assert (=> b!4437068 (= lt!1633871 lt!1633870)))

(assert (=> b!4437068 (forall!9658 (toList!3602 (extractMap!868 (t!356788 (toList!3601 (+!1180 lt!1633179 lt!1633175))))) lambda!156414)))

(declare-fun lt!1633860 () Unit!83387)

(declare-fun Unit!83515 () Unit!83387)

(assert (=> b!4437068 (= lt!1633860 Unit!83515)))

(declare-fun res!1836449 () Bool)

(assert (=> b!4437068 (= res!1836449 call!308774)))

(declare-fun e!2762828 () Bool)

(assert (=> b!4437068 (=> (not res!1836449) (not e!2762828))))

(assert (=> b!4437068 e!2762828))

(declare-fun lt!1633861 () Unit!83387)

(declare-fun Unit!83516 () Unit!83387)

(assert (=> b!4437068 (= lt!1633861 Unit!83516)))

(declare-fun b!4437069 () Bool)

(assert (=> b!4437069 (= e!2762828 (forall!9658 (toList!3602 (extractMap!868 (t!356788 (toList!3601 (+!1180 lt!1633179 lt!1633175))))) lambda!156414))))

(declare-fun bm!308768 () Bool)

(declare-fun c!755226 () Bool)

(assert (=> bm!308768 (= call!308774 (forall!9658 (ite c!755226 (toList!3602 (extractMap!868 (t!356788 (toList!3601 (+!1180 lt!1633179 lt!1633175))))) (_2!28098 (h!55431 (toList!3601 (+!1180 lt!1633179 lt!1633175))))) (ite c!755226 lambda!156412 lambda!156414)))))

(declare-fun b!4437066 () Bool)

(declare-fun res!1836447 () Bool)

(declare-fun e!2762826 () Bool)

(assert (=> b!4437066 (=> (not res!1836447) (not e!2762826))))

(assert (=> b!4437066 (= res!1836447 (forall!9658 (toList!3602 (extractMap!868 (t!356788 (toList!3601 (+!1180 lt!1633179 lt!1633175))))) lambda!156415))))

(assert (=> d!1346700 e!2762826))

(declare-fun res!1836448 () Bool)

(assert (=> d!1346700 (=> (not res!1836448) (not e!2762826))))

(assert (=> d!1346700 (= res!1836448 (forall!9658 (_2!28098 (h!55431 (toList!3601 (+!1180 lt!1633179 lt!1633175)))) lambda!156415))))

(assert (=> d!1346700 (= lt!1633872 e!2762827)))

(assert (=> d!1346700 (= c!755226 ((_ is Nil!49721) (_2!28098 (h!55431 (toList!3601 (+!1180 lt!1633179 lt!1633175))))))))

(assert (=> d!1346700 (noDuplicateKeys!807 (_2!28098 (h!55431 (toList!3601 (+!1180 lt!1633179 lt!1633175)))))))

(assert (=> d!1346700 (= (addToMapMapFromBucket!428 (_2!28098 (h!55431 (toList!3601 (+!1180 lt!1633179 lt!1633175)))) (extractMap!868 (t!356788 (toList!3601 (+!1180 lt!1633179 lt!1633175))))) lt!1633872)))

(declare-fun b!4437070 () Bool)

(assert (=> b!4437070 (= e!2762826 (invariantList!829 (toList!3602 lt!1633872)))))

(declare-fun bm!308769 () Bool)

(assert (=> bm!308769 (= call!308773 (forall!9658 (toList!3602 (extractMap!868 (t!356788 (toList!3601 (+!1180 lt!1633179 lt!1633175))))) (ite c!755226 lambda!156412 lambda!156413)))))

(assert (= (and d!1346700 c!755226) b!4437067))

(assert (= (and d!1346700 (not c!755226)) b!4437068))

(assert (= (and b!4437068 res!1836449) b!4437069))

(assert (= (or b!4437067 b!4437068) bm!308767))

(assert (= (or b!4437067 b!4437068) bm!308768))

(assert (= (or b!4437067 b!4437068) bm!308769))

(assert (= (and d!1346700 res!1836448) b!4437066))

(assert (= (and b!4437066 res!1836447) b!4437070))

(declare-fun m!5124453 () Bool)

(assert (=> b!4437068 m!5124453))

(declare-fun m!5124455 () Bool)

(assert (=> b!4437068 m!5124455))

(declare-fun m!5124457 () Bool)

(assert (=> b!4437068 m!5124457))

(declare-fun m!5124459 () Bool)

(assert (=> b!4437068 m!5124459))

(declare-fun m!5124461 () Bool)

(assert (=> b!4437068 m!5124461))

(assert (=> b!4437068 m!5124453))

(assert (=> b!4437068 m!5123231))

(declare-fun m!5124463 () Bool)

(assert (=> b!4437068 m!5124463))

(assert (=> b!4437068 m!5124461))

(assert (=> b!4437068 m!5124463))

(declare-fun m!5124465 () Bool)

(assert (=> b!4437068 m!5124465))

(assert (=> b!4437068 m!5123231))

(declare-fun m!5124467 () Bool)

(assert (=> b!4437068 m!5124467))

(declare-fun m!5124469 () Bool)

(assert (=> b!4437068 m!5124469))

(declare-fun m!5124471 () Bool)

(assert (=> b!4437068 m!5124471))

(declare-fun m!5124473 () Bool)

(assert (=> bm!308768 m!5124473))

(assert (=> bm!308767 m!5123231))

(declare-fun m!5124475 () Bool)

(assert (=> bm!308767 m!5124475))

(declare-fun m!5124477 () Bool)

(assert (=> bm!308769 m!5124477))

(declare-fun m!5124479 () Bool)

(assert (=> b!4437070 m!5124479))

(assert (=> b!4437069 m!5124453))

(declare-fun m!5124481 () Bool)

(assert (=> b!4437066 m!5124481))

(declare-fun m!5124483 () Bool)

(assert (=> d!1346700 m!5124483))

(declare-fun m!5124485 () Bool)

(assert (=> d!1346700 m!5124485))

(assert (=> b!4436269 d!1346700))

(declare-fun bs!762914 () Bool)

(declare-fun d!1346702 () Bool)

(assert (= bs!762914 (and d!1346702 d!1346610)))

(declare-fun lambda!156416 () Int)

(assert (=> bs!762914 (= lambda!156416 lambda!156397)))

(declare-fun bs!762915 () Bool)

(assert (= bs!762915 (and d!1346702 d!1346312)))

(assert (=> bs!762915 (= lambda!156416 lambda!156260)))

(declare-fun bs!762916 () Bool)

(assert (= bs!762916 (and d!1346702 d!1346338)))

(assert (=> bs!762916 (= lambda!156416 lambda!156267)))

(declare-fun bs!762917 () Bool)

(assert (= bs!762917 (and d!1346702 d!1346652)))

(assert (=> bs!762917 (= lambda!156416 lambda!156407)))

(declare-fun bs!762918 () Bool)

(assert (= bs!762918 (and d!1346702 d!1346282)))

(assert (=> bs!762918 (= lambda!156416 lambda!156258)))

(declare-fun bs!762919 () Bool)

(assert (= bs!762919 (and d!1346702 start!433620)))

(assert (=> bs!762919 (= lambda!156416 lambda!156234)))

(declare-fun bs!762920 () Bool)

(assert (= bs!762920 (and d!1346702 d!1346308)))

(assert (=> bs!762920 (= lambda!156416 lambda!156259)))

(declare-fun bs!762921 () Bool)

(assert (= bs!762921 (and d!1346702 d!1346596)))

(assert (=> bs!762921 (= lambda!156416 lambda!156396)))

(declare-fun bs!762922 () Bool)

(assert (= bs!762922 (and d!1346702 d!1346332)))

(assert (=> bs!762922 (not (= lambda!156416 lambda!156266))))

(declare-fun bs!762923 () Bool)

(assert (= bs!762923 (and d!1346702 d!1346344)))

(assert (=> bs!762923 (= lambda!156416 lambda!156270)))

(declare-fun bs!762924 () Bool)

(assert (= bs!762924 (and d!1346702 d!1346252)))

(assert (=> bs!762924 (= lambda!156416 lambda!156250)))

(declare-fun bs!762925 () Bool)

(assert (= bs!762925 (and d!1346702 d!1346644)))

(assert (=> bs!762925 (= lambda!156416 lambda!156402)))

(declare-fun lt!1633873 () ListMap!2845)

(assert (=> d!1346702 (invariantList!829 (toList!3602 lt!1633873))))

(declare-fun e!2762829 () ListMap!2845)

(assert (=> d!1346702 (= lt!1633873 e!2762829)))

(declare-fun c!755227 () Bool)

(assert (=> d!1346702 (= c!755227 ((_ is Cons!49722) (t!356788 (toList!3601 (+!1180 lt!1633179 lt!1633175)))))))

(assert (=> d!1346702 (forall!9656 (t!356788 (toList!3601 (+!1180 lt!1633179 lt!1633175))) lambda!156416)))

(assert (=> d!1346702 (= (extractMap!868 (t!356788 (toList!3601 (+!1180 lt!1633179 lt!1633175)))) lt!1633873)))

(declare-fun b!4437071 () Bool)

(assert (=> b!4437071 (= e!2762829 (addToMapMapFromBucket!428 (_2!28098 (h!55431 (t!356788 (toList!3601 (+!1180 lt!1633179 lt!1633175))))) (extractMap!868 (t!356788 (t!356788 (toList!3601 (+!1180 lt!1633179 lt!1633175)))))))))

(declare-fun b!4437072 () Bool)

(assert (=> b!4437072 (= e!2762829 (ListMap!2846 Nil!49721))))

(assert (= (and d!1346702 c!755227) b!4437071))

(assert (= (and d!1346702 (not c!755227)) b!4437072))

(declare-fun m!5124487 () Bool)

(assert (=> d!1346702 m!5124487))

(declare-fun m!5124489 () Bool)

(assert (=> d!1346702 m!5124489))

(declare-fun m!5124491 () Bool)

(assert (=> b!4437071 m!5124491))

(assert (=> b!4437071 m!5124491))

(declare-fun m!5124493 () Bool)

(assert (=> b!4437071 m!5124493))

(assert (=> b!4436269 d!1346702))

(declare-fun b!4437075 () Bool)

(declare-fun e!2762831 () Option!10774)

(assert (=> b!4437075 (= e!2762831 (getValueByKey!760 (t!356788 (toList!3601 lt!1633255)) (_1!28098 lt!1633175)))))

(declare-fun d!1346704 () Bool)

(declare-fun c!755228 () Bool)

(assert (=> d!1346704 (= c!755228 (and ((_ is Cons!49722) (toList!3601 lt!1633255)) (= (_1!28098 (h!55431 (toList!3601 lt!1633255))) (_1!28098 lt!1633175))))))

(declare-fun e!2762830 () Option!10774)

(assert (=> d!1346704 (= (getValueByKey!760 (toList!3601 lt!1633255) (_1!28098 lt!1633175)) e!2762830)))

(declare-fun b!4437076 () Bool)

(assert (=> b!4437076 (= e!2762831 None!10773)))

(declare-fun b!4437073 () Bool)

(assert (=> b!4437073 (= e!2762830 (Some!10773 (_2!28098 (h!55431 (toList!3601 lt!1633255)))))))

(declare-fun b!4437074 () Bool)

(assert (=> b!4437074 (= e!2762830 e!2762831)))

(declare-fun c!755229 () Bool)

(assert (=> b!4437074 (= c!755229 (and ((_ is Cons!49722) (toList!3601 lt!1633255)) (not (= (_1!28098 (h!55431 (toList!3601 lt!1633255))) (_1!28098 lt!1633175)))))))

(assert (= (and d!1346704 c!755228) b!4437073))

(assert (= (and d!1346704 (not c!755228)) b!4437074))

(assert (= (and b!4437074 c!755229) b!4437075))

(assert (= (and b!4437074 (not c!755229)) b!4437076))

(declare-fun m!5124495 () Bool)

(assert (=> b!4437075 m!5124495))

(assert (=> b!4436203 d!1346704))

(declare-fun tp!1333849 () Bool)

(declare-fun b!4437077 () Bool)

(declare-fun e!2762832 () Bool)

(assert (=> b!4437077 (= e!2762832 (and tp_is_empty!26475 tp_is_empty!26473 tp!1333849))))

(assert (=> b!4436355 (= tp!1333843 e!2762832)))

(assert (= (and b!4436355 ((_ is Cons!49721) (_2!28098 (h!55431 (toList!3601 lm!1616))))) b!4437077))

(declare-fun b!4437078 () Bool)

(declare-fun e!2762833 () Bool)

(declare-fun tp!1333850 () Bool)

(declare-fun tp!1333851 () Bool)

(assert (=> b!4437078 (= e!2762833 (and tp!1333850 tp!1333851))))

(assert (=> b!4436355 (= tp!1333844 e!2762833)))

(assert (= (and b!4436355 ((_ is Cons!49722) (t!356788 (toList!3601 lm!1616)))) b!4437078))

(declare-fun e!2762834 () Bool)

(declare-fun tp!1333852 () Bool)

(declare-fun b!4437079 () Bool)

(assert (=> b!4437079 (= e!2762834 (and tp_is_empty!26475 tp_is_empty!26473 tp!1333852))))

(assert (=> b!4436350 (= tp!1333838 e!2762834)))

(assert (= (and b!4436350 ((_ is Cons!49721) (t!356787 (t!356787 newBucket!194)))) b!4437079))

(declare-fun b_lambda!144655 () Bool)

(assert (= b_lambda!144649 (or start!433620 b_lambda!144655)))

(declare-fun bs!762926 () Bool)

(declare-fun d!1346706 () Bool)

(assert (= bs!762926 (and d!1346706 start!433620)))

(assert (=> bs!762926 (= (dynLambda!20890 lambda!156234 (h!55431 (t!356788 (toList!3601 lm!1616)))) (noDuplicateKeys!807 (_2!28098 (h!55431 (t!356788 (toList!3601 lm!1616))))))))

(declare-fun m!5124497 () Bool)

(assert (=> bs!762926 m!5124497))

(assert (=> b!4437034 d!1346706))

(declare-fun b_lambda!144657 () Bool)

(assert (= b_lambda!144609 (or d!1346324 b_lambda!144657)))

(declare-fun bs!762927 () Bool)

(declare-fun d!1346708 () Bool)

(assert (= bs!762927 (and d!1346708 d!1346324)))

(assert (=> bs!762927 (= (dynLambda!20892 lambda!156263 (h!55430 newBucket!194)) (= (hash!2232 hashF!1220 (_1!28097 (h!55430 newBucket!194))) hash!366))))

(declare-fun m!5124499 () Bool)

(assert (=> bs!762927 m!5124499))

(assert (=> b!4436706 d!1346708))

(declare-fun b_lambda!144659 () Bool)

(assert (= b_lambda!144653 (or start!433620 b_lambda!144659)))

(declare-fun bs!762928 () Bool)

(declare-fun d!1346710 () Bool)

(assert (= bs!762928 (and d!1346710 start!433620)))

(assert (=> bs!762928 (= (dynLambda!20890 lambda!156234 (h!55431 (toList!3601 (+!1180 lm!1616 (tuple2!49609 hash!366 newBucket!194))))) (noDuplicateKeys!807 (_2!28098 (h!55431 (toList!3601 (+!1180 lm!1616 (tuple2!49609 hash!366 newBucket!194)))))))))

(declare-fun m!5124501 () Bool)

(assert (=> bs!762928 m!5124501))

(assert (=> b!4437059 d!1346710))

(declare-fun b_lambda!144661 () Bool)

(assert (= b_lambda!144645 (or d!1346332 b_lambda!144661)))

(declare-fun bs!762929 () Bool)

(declare-fun d!1346712 () Bool)

(assert (= bs!762929 (and d!1346712 d!1346332)))

(assert (=> bs!762929 (= (dynLambda!20890 lambda!156266 (h!55431 (toList!3601 lm!1616))) (allKeysSameHash!767 (_2!28098 (h!55431 (toList!3601 lm!1616))) (_1!28098 (h!55431 (toList!3601 lm!1616))) hashF!1220))))

(declare-fun m!5124503 () Bool)

(assert (=> bs!762929 m!5124503))

(assert (=> b!4436961 d!1346712))

(declare-fun b_lambda!144663 () Bool)

(assert (= b_lambda!144643 (or d!1346308 b_lambda!144663)))

(declare-fun bs!762930 () Bool)

(declare-fun d!1346714 () Bool)

(assert (= bs!762930 (and d!1346714 d!1346308)))

(assert (=> bs!762930 (= (dynLambda!20890 lambda!156259 (h!55431 (toList!3601 (+!1180 lt!1633179 lt!1633175)))) (noDuplicateKeys!807 (_2!28098 (h!55431 (toList!3601 (+!1180 lt!1633179 lt!1633175))))))))

(assert (=> bs!762930 m!5124485))

(assert (=> b!4436912 d!1346714))

(declare-fun b_lambda!144665 () Bool)

(assert (= b_lambda!144641 (or d!1346312 b_lambda!144665)))

(declare-fun bs!762931 () Bool)

(declare-fun d!1346716 () Bool)

(assert (= bs!762931 (and d!1346716 d!1346312)))

(assert (=> bs!762931 (= (dynLambda!20890 lambda!156260 (h!55431 (tail!7337 (toList!3601 lm!1616)))) (noDuplicateKeys!807 (_2!28098 (h!55431 (tail!7337 (toList!3601 lm!1616))))))))

(assert (=> bs!762931 m!5124101))

(assert (=> b!4436904 d!1346716))

(declare-fun b_lambda!144667 () Bool)

(assert (= b_lambda!144605 (or d!1346344 b_lambda!144667)))

(declare-fun bs!762932 () Bool)

(declare-fun d!1346718 () Bool)

(assert (= bs!762932 (and d!1346718 d!1346344)))

(assert (=> bs!762932 (= (dynLambda!20890 lambda!156270 (h!55431 (toList!3601 lm!1616))) (noDuplicateKeys!807 (_2!28098 (h!55431 (toList!3601 lm!1616)))))))

(assert (=> bs!762932 m!5123347))

(assert (=> b!4436653 d!1346718))

(declare-fun b_lambda!144669 () Bool)

(assert (= b_lambda!144651 (or d!1346338 b_lambda!144669)))

(declare-fun bs!762933 () Bool)

(declare-fun d!1346720 () Bool)

(assert (= bs!762933 (and d!1346720 d!1346338)))

(assert (=> bs!762933 (= (dynLambda!20890 lambda!156267 (h!55431 (toList!3601 lm!1616))) (noDuplicateKeys!807 (_2!28098 (h!55431 (toList!3601 lm!1616)))))))

(assert (=> bs!762933 m!5123347))

(assert (=> b!4437036 d!1346720))

(declare-fun b_lambda!144671 () Bool)

(assert (= b_lambda!144647 (or start!433620 b_lambda!144671)))

(declare-fun bs!762934 () Bool)

(declare-fun d!1346722 () Bool)

(assert (= bs!762934 (and d!1346722 start!433620)))

(assert (=> bs!762934 (= (dynLambda!20890 lambda!156234 (h!55431 (t!356788 (toList!3601 lt!1633180)))) (noDuplicateKeys!807 (_2!28098 (h!55431 (t!356788 (toList!3601 lt!1633180))))))))

(declare-fun m!5124505 () Bool)

(assert (=> bs!762934 m!5124505))

(assert (=> b!4436963 d!1346722))

(declare-fun b_lambda!144673 () Bool)

(assert (= b_lambda!144607 (or d!1346252 b_lambda!144673)))

(declare-fun bs!762935 () Bool)

(declare-fun d!1346724 () Bool)

(assert (= bs!762935 (and d!1346724 d!1346252)))

(assert (=> bs!762935 (= (dynLambda!20890 lambda!156250 (h!55431 (toList!3601 lt!1633179))) (noDuplicateKeys!807 (_2!28098 (h!55431 (toList!3601 lt!1633179)))))))

(assert (=> bs!762935 m!5124287))

(assert (=> b!4436659 d!1346724))

(declare-fun b_lambda!144675 () Bool)

(assert (= b_lambda!144639 (or d!1346282 b_lambda!144675)))

(declare-fun bs!762936 () Bool)

(declare-fun d!1346726 () Bool)

(assert (= bs!762936 (and d!1346726 d!1346282)))

(assert (=> bs!762936 (= (dynLambda!20890 lambda!156258 (h!55431 (toList!3601 lt!1633179))) (noDuplicateKeys!807 (_2!28098 (h!55431 (toList!3601 lt!1633179)))))))

(assert (=> bs!762936 m!5124287))

(assert (=> b!4436894 d!1346726))

(check-sat (not d!1346688) (not bs!762936) (not b_lambda!144663) (not b!4436881) (not b!4436976) (not d!1346632) (not bs!762932) (not b!4437020) (not d!1346598) (not bs!762926) (not b!4437066) (not d!1346638) (not bm!308747) (not b_lambda!144671) (not b!4437058) (not b!4436878) (not b!4437079) (not b!4436903) (not b_lambda!144669) (not b!4436977) (not b!4436991) (not b_lambda!144665) (not b!4437060) (not d!1346628) (not d!1346668) (not b!4436946) (not d!1346424) (not b!4436533) (not b!4436555) (not b!4437044) (not bm!308767) (not b!4436944) (not bs!762927) (not bm!308753) (not d!1346386) (not b!4436440) (not b_lambda!144657) (not b!4437069) (not b!4436654) (not b!4437030) (not b_lambda!144583) (not b!4437075) (not bm!308765) (not b!4436925) (not d!1346604) tp_is_empty!26475 (not d!1346612) (not b!4436928) (not b!4436472) (not b!4436922) (not b_lambda!144659) (not b!4436662) (not d!1346678) (not b_lambda!144585) (not bm!308754) (not b!4436939) (not b_lambda!144661) (not b!4436661) (not bs!762928) (not bs!762935) (not b!4436957) (not b!4436919) (not b!4436660) (not b!4436438) (not b!4436657) (not b!4436629) (not b_lambda!144667) (not b!4436920) (not bm!308764) (not b!4436893) (not bm!308704) (not b!4436933) (not b!4437023) (not b!4436896) (not b!4437071) (not bm!308752) (not bs!762929) (not b!4437077) (not d!1346428) (not d!1346702) (not bm!308749) (not b!4436962) (not b!4436941) (not b!4436970) (not d!1346622) (not b!4437064) (not b!4436605) (not b!4436905) (not b!4437031) (not d!1346696) (not b!4436972) (not d!1346474) (not bm!308750) (not b!4436958) (not b!4436606) (not bm!308742) (not b!4436609) (not b!4436964) (not b!4436667) (not b!4436980) (not b!4436909) (not d!1346670) (not d!1346596) (not b_lambda!144587) (not b!4437037) (not b!4437043) (not d!1346610) (not bm!308748) (not d!1346682) (not d!1346644) (not b!4436631) (not b!4437068) (not bs!762933) (not b!4436874) (not b!4436695) (not d!1346390) (not d!1346626) (not d!1346618) (not d!1346482) (not d!1346492) (not b!4436608) (not b_lambda!144655) (not b!4436648) (not b!4437062) (not d!1346464) (not b!4437022) (not d!1346600) (not d!1346642) (not b!4436911) (not d!1346640) (not b!4437052) (not b!4436981) (not b!4436888) (not bs!762930) (not b!4436974) (not d!1346652) (not d!1346500) (not b!4437029) (not bs!762931) (not b!4436892) (not b!4436891) (not b!4436934) (not d!1346650) (not d!1346674) (not b!4437027) (not d!1346506) (not b!4436990) (not b!4436536) (not b!4436953) (not b_lambda!144675) (not d!1346694) (not b!4436551) (not b!4436907) (not d!1346498) (not b!4436947) (not b!4436956) (not b!4436943) (not bm!308769) (not bm!308743) (not b!4436954) (not b!4437042) (not b!4437065) (not b!4436649) (not d!1346664) (not d!1346436) (not b!4436876) (not b!4436559) (not d!1346472) (not b!4436462) (not bs!762934) (not b!4437078) (not b!4436665) (not d!1346634) (not d!1346700) (not b!4436666) (not b!4436534) (not b!4437041) (not b!4436936) (not b!4437045) (not b!4436473) (not d!1346398) (not b!4437028) (not b!4436913) (not d!1346418) (not b!4436984) (not d!1346488) (not b!4436707) (not d!1346486) (not d!1346602) (not b!4436959) (not b!4437070) (not b!4437061) (not b!4436877) (not b!4436975) (not bm!308768) (not b_lambda!144673) (not b!4436908) tp_is_empty!26473 (not bm!308751) (not b!4436942) (not b!4436664) (not b!4436979) (not b!4436650) (not d!1346656) (not bm!308744) (not b!4436607) (not d!1346608) (not b!4436895) (not b!4436927) (not b!4437035) (not b!4437049) (not d!1346672))
(check-sat)

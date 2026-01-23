; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!432184 () Bool)

(assert start!432184)

(declare-fun b!4428141 () Bool)

(declare-datatypes ((Unit!82403 0))(
  ( (Unit!82404) )
))
(declare-fun e!2757217 () Unit!82403)

(declare-fun Unit!82405 () Unit!82403)

(assert (=> b!4428141 (= e!2757217 Unit!82405)))

(declare-fun b!4428142 () Bool)

(declare-fun res!1831108 () Bool)

(declare-fun e!2757215 () Bool)

(assert (=> b!4428142 (=> (not res!1831108) (not e!2757215))))

(declare-datatypes ((K!10975 0))(
  ( (K!10976 (val!17051 Int)) )
))
(declare-datatypes ((V!11221 0))(
  ( (V!11222 (val!17052 Int)) )
))
(declare-datatypes ((tuple2!49422 0))(
  ( (tuple2!49423 (_1!28005 K!10975) (_2!28005 V!11221)) )
))
(declare-datatypes ((List!49735 0))(
  ( (Nil!49611) (Cons!49611 (h!55302 tuple2!49422) (t!356673 List!49735)) )
))
(declare-fun newBucket!194 () List!49735)

(declare-fun noDuplicateKeys!761 (List!49735) Bool)

(assert (=> b!4428142 (= res!1831108 (noDuplicateKeys!761 newBucket!194))))

(declare-fun res!1831112 () Bool)

(declare-fun e!2757219 () Bool)

(assert (=> start!432184 (=> (not res!1831112) (not e!2757219))))

(declare-datatypes ((tuple2!49424 0))(
  ( (tuple2!49425 (_1!28006 (_ BitVec 64)) (_2!28006 List!49735)) )
))
(declare-datatypes ((List!49736 0))(
  ( (Nil!49612) (Cons!49612 (h!55303 tuple2!49424) (t!356674 List!49736)) )
))
(declare-datatypes ((ListLongMap!2159 0))(
  ( (ListLongMap!2160 (toList!3509 List!49736)) )
))
(declare-fun lm!1616 () ListLongMap!2159)

(declare-fun lambda!154514 () Int)

(declare-fun forall!9582 (List!49736 Int) Bool)

(assert (=> start!432184 (= res!1831112 (forall!9582 (toList!3509 lm!1616) lambda!154514))))

(assert (=> start!432184 e!2757219))

(declare-fun tp_is_empty!26289 () Bool)

(assert (=> start!432184 tp_is_empty!26289))

(declare-fun tp_is_empty!26291 () Bool)

(assert (=> start!432184 tp_is_empty!26291))

(declare-fun e!2757216 () Bool)

(assert (=> start!432184 e!2757216))

(declare-fun e!2757220 () Bool)

(declare-fun inv!65161 (ListLongMap!2159) Bool)

(assert (=> start!432184 (and (inv!65161 lm!1616) e!2757220)))

(assert (=> start!432184 true))

(declare-fun b!4428143 () Bool)

(declare-fun e!2757221 () Bool)

(declare-fun lt!1627275 () ListLongMap!2159)

(assert (=> b!4428143 (= e!2757221 (forall!9582 (toList!3509 lt!1627275) lambda!154514))))

(declare-datatypes ((ListMap!2753 0))(
  ( (ListMap!2754 (toList!3510 List!49735)) )
))
(declare-fun lt!1627274 () ListMap!2753)

(declare-fun lt!1627273 () tuple2!49422)

(declare-fun lt!1627277 () ListMap!2753)

(declare-fun eq!419 (ListMap!2753 ListMap!2753) Bool)

(declare-fun +!1106 (ListMap!2753 tuple2!49422) ListMap!2753)

(assert (=> b!4428143 (eq!419 (+!1106 lt!1627274 lt!1627273) lt!1627277)))

(declare-fun lt!1627281 () Unit!82403)

(declare-fun newValue!93 () V!11221)

(declare-fun key!3717 () K!10975)

(declare-fun lt!1627266 () ListMap!2753)

(declare-fun lemmaAddToEqMapsPreservesEq!30 (ListMap!2753 ListMap!2753 K!10975 V!11221) Unit!82403)

(assert (=> b!4428143 (= lt!1627281 (lemmaAddToEqMapsPreservesEq!30 lt!1627274 lt!1627266 key!3717 newValue!93))))

(declare-fun lt!1627270 () ListMap!2753)

(assert (=> b!4428143 (eq!419 lt!1627270 lt!1627277)))

(assert (=> b!4428143 (= lt!1627277 (+!1106 lt!1627266 lt!1627273))))

(declare-fun lt!1627279 () ListMap!2753)

(declare-fun addToMapMapFromBucket!398 (List!49735 ListMap!2753) ListMap!2753)

(assert (=> b!4428143 (= lt!1627270 (addToMapMapFromBucket!398 (_2!28006 (h!55303 (toList!3509 lm!1616))) lt!1627279))))

(declare-fun lt!1627278 () ListMap!2753)

(declare-fun lt!1627263 () Unit!82403)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!190 (ListMap!2753 K!10975 V!11221 List!49735) Unit!82403)

(assert (=> b!4428143 (= lt!1627263 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!190 lt!1627278 key!3717 newValue!93 (_2!28006 (h!55303 (toList!3509 lm!1616)))))))

(declare-fun b!4428144 () Bool)

(declare-fun e!2757224 () Bool)

(assert (=> b!4428144 (= e!2757215 (not e!2757224))))

(declare-fun res!1831103 () Bool)

(assert (=> b!4428144 (=> res!1831103 e!2757224)))

(declare-fun lt!1627269 () ListLongMap!2159)

(assert (=> b!4428144 (= res!1831103 (not (forall!9582 (toList!3509 lt!1627269) lambda!154514)))))

(assert (=> b!4428144 (forall!9582 (toList!3509 lt!1627269) lambda!154514)))

(declare-fun lt!1627271 () tuple2!49424)

(declare-fun +!1107 (ListLongMap!2159 tuple2!49424) ListLongMap!2159)

(assert (=> b!4428144 (= lt!1627269 (+!1107 lm!1616 lt!1627271))))

(declare-fun hash!366 () (_ BitVec 64))

(assert (=> b!4428144 (= lt!1627271 (tuple2!49425 hash!366 newBucket!194))))

(declare-fun lt!1627264 () Unit!82403)

(declare-fun addValidProp!405 (ListLongMap!2159 Int (_ BitVec 64) List!49735) Unit!82403)

(assert (=> b!4428144 (= lt!1627264 (addValidProp!405 lm!1616 lambda!154514 hash!366 newBucket!194))))

(declare-fun b!4428145 () Bool)

(declare-fun res!1831110 () Bool)

(assert (=> b!4428145 (=> (not res!1831110) (not e!2757219))))

(declare-datatypes ((Hashable!5155 0))(
  ( (HashableExt!5154 (__x!30858 Int)) )
))
(declare-fun hashF!1220 () Hashable!5155)

(declare-fun hash!2156 (Hashable!5155 K!10975) (_ BitVec 64))

(assert (=> b!4428145 (= res!1831110 (= (hash!2156 hashF!1220 key!3717) hash!366))))

(declare-fun e!2757222 () Bool)

(declare-fun b!4428146 () Bool)

(declare-fun apply!11613 (ListLongMap!2159 (_ BitVec 64)) List!49735)

(assert (=> b!4428146 (= e!2757222 (= newBucket!194 (Cons!49611 (tuple2!49423 key!3717 newValue!93) (apply!11613 lm!1616 hash!366))))))

(declare-fun b!4428147 () Bool)

(declare-fun e!2757214 () Bool)

(assert (=> b!4428147 (= e!2757219 e!2757214)))

(declare-fun res!1831113 () Bool)

(assert (=> b!4428147 (=> (not res!1831113) (not e!2757214))))

(declare-fun contains!12124 (ListMap!2753 K!10975) Bool)

(assert (=> b!4428147 (= res!1831113 (not (contains!12124 lt!1627274 key!3717)))))

(declare-fun extractMap!822 (List!49736) ListMap!2753)

(assert (=> b!4428147 (= lt!1627274 (extractMap!822 (toList!3509 lm!1616)))))

(declare-fun b!4428148 () Bool)

(declare-fun tp!1333327 () Bool)

(assert (=> b!4428148 (= e!2757220 tp!1333327)))

(declare-fun b!4428149 () Bool)

(declare-fun res!1831117 () Bool)

(assert (=> b!4428149 (=> res!1831117 e!2757224)))

(get-info :version)

(assert (=> b!4428149 (= res!1831117 (or (and ((_ is Cons!49612) (toList!3509 lm!1616)) (= (_1!28006 (h!55303 (toList!3509 lm!1616))) hash!366)) (not ((_ is Cons!49612) (toList!3509 lm!1616))) (= (_1!28006 (h!55303 (toList!3509 lm!1616))) hash!366)))))

(declare-fun b!4428150 () Bool)

(declare-fun res!1831114 () Bool)

(assert (=> b!4428150 (=> (not res!1831114) (not e!2757215))))

(assert (=> b!4428150 (= res!1831114 (forall!9582 (toList!3509 lm!1616) lambda!154514))))

(declare-fun e!2757218 () Bool)

(declare-fun b!4428151 () Bool)

(declare-fun lt!1627267 () Bool)

(assert (=> b!4428151 (= e!2757218 (and (not lt!1627267) (= newBucket!194 (Cons!49611 (tuple2!49423 key!3717 newValue!93) Nil!49611))))))

(declare-fun b!4428152 () Bool)

(declare-fun Unit!82406 () Unit!82403)

(assert (=> b!4428152 (= e!2757217 Unit!82406)))

(declare-fun lt!1627265 () Unit!82403)

(declare-fun lemmaExtractTailMapContainsThenExtractMapDoes!48 (ListLongMap!2159 K!10975 Hashable!5155) Unit!82403)

(assert (=> b!4428152 (= lt!1627265 (lemmaExtractTailMapContainsThenExtractMapDoes!48 lm!1616 key!3717 hashF!1220))))

(assert (=> b!4428152 false))

(declare-fun b!4428153 () Bool)

(declare-fun res!1831105 () Bool)

(assert (=> b!4428153 (=> (not res!1831105) (not e!2757219))))

(declare-fun allKeysSameHash!721 (List!49735 (_ BitVec 64) Hashable!5155) Bool)

(assert (=> b!4428153 (= res!1831105 (allKeysSameHash!721 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4428154 () Bool)

(declare-fun e!2757223 () Bool)

(assert (=> b!4428154 (= e!2757224 e!2757223)))

(declare-fun res!1831104 () Bool)

(assert (=> b!4428154 (=> res!1831104 e!2757223)))

(declare-fun head!9234 (ListLongMap!2159) tuple2!49424)

(assert (=> b!4428154 (= res!1831104 (= (head!9234 lm!1616) lt!1627271))))

(declare-fun lt!1627268 () ListMap!2753)

(assert (=> b!4428154 (eq!419 lt!1627268 lt!1627279)))

(assert (=> b!4428154 (= lt!1627279 (+!1106 lt!1627278 lt!1627273))))

(assert (=> b!4428154 (= lt!1627273 (tuple2!49423 key!3717 newValue!93))))

(assert (=> b!4428154 (= lt!1627278 (extractMap!822 (toList!3509 lt!1627275)))))

(assert (=> b!4428154 (= lt!1627268 (extractMap!822 (toList!3509 (+!1107 lt!1627275 lt!1627271))))))

(declare-fun lt!1627280 () Unit!82403)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!135 (ListLongMap!2159 (_ BitVec 64) List!49735 K!10975 V!11221 Hashable!5155) Unit!82403)

(assert (=> b!4428154 (= lt!1627280 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!135 lt!1627275 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(declare-fun tail!7294 (ListLongMap!2159) ListLongMap!2159)

(assert (=> b!4428154 (= lt!1627275 (tail!7294 lm!1616))))

(declare-fun lt!1627272 () Unit!82403)

(assert (=> b!4428154 (= lt!1627272 e!2757217)))

(declare-fun c!753821 () Bool)

(declare-fun tail!7295 (List!49736) List!49736)

(assert (=> b!4428154 (= c!753821 (contains!12124 (extractMap!822 (tail!7295 (toList!3509 lm!1616))) key!3717))))

(declare-fun b!4428155 () Bool)

(declare-fun res!1831107 () Bool)

(assert (=> b!4428155 (=> (not res!1831107) (not e!2757219))))

(declare-fun allKeysSameHashInMap!867 (ListLongMap!2159 Hashable!5155) Bool)

(assert (=> b!4428155 (= res!1831107 (allKeysSameHashInMap!867 lm!1616 hashF!1220))))

(declare-fun b!4428156 () Bool)

(declare-fun e!2757213 () Bool)

(assert (=> b!4428156 (= e!2757213 e!2757221)))

(declare-fun res!1831109 () Bool)

(assert (=> b!4428156 (=> res!1831109 e!2757221)))

(declare-fun containsKey!1136 (List!49735 K!10975) Bool)

(assert (=> b!4428156 (= res!1831109 (containsKey!1136 (_2!28006 (h!55303 (toList!3509 lm!1616))) key!3717))))

(assert (=> b!4428156 (not (containsKey!1136 (apply!11613 lm!1616 (_1!28006 (h!55303 (toList!3509 lm!1616)))) key!3717))))

(declare-fun lt!1627276 () Unit!82403)

(declare-fun lemmaNotSameHashThenCannotContainKey!140 (ListLongMap!2159 K!10975 (_ BitVec 64) Hashable!5155) Unit!82403)

(assert (=> b!4428156 (= lt!1627276 (lemmaNotSameHashThenCannotContainKey!140 lm!1616 key!3717 (_1!28006 (h!55303 (toList!3509 lm!1616))) hashF!1220))))

(declare-fun b!4428157 () Bool)

(assert (=> b!4428157 (= e!2757214 e!2757215)))

(declare-fun res!1831111 () Bool)

(assert (=> b!4428157 (=> (not res!1831111) (not e!2757215))))

(assert (=> b!4428157 (= res!1831111 e!2757218)))

(declare-fun res!1831116 () Bool)

(assert (=> b!4428157 (=> res!1831116 e!2757218)))

(assert (=> b!4428157 (= res!1831116 e!2757222)))

(declare-fun res!1831115 () Bool)

(assert (=> b!4428157 (=> (not res!1831115) (not e!2757222))))

(assert (=> b!4428157 (= res!1831115 lt!1627267)))

(declare-fun contains!12125 (ListLongMap!2159 (_ BitVec 64)) Bool)

(assert (=> b!4428157 (= lt!1627267 (contains!12125 lm!1616 hash!366))))

(declare-fun b!4428158 () Bool)

(assert (=> b!4428158 (= e!2757223 e!2757213)))

(declare-fun res!1831106 () Bool)

(assert (=> b!4428158 (=> res!1831106 e!2757213)))

(assert (=> b!4428158 (= res!1831106 (not (eq!419 lt!1627274 lt!1627266)))))

(assert (=> b!4428158 (= lt!1627266 (addToMapMapFromBucket!398 (_2!28006 (h!55303 (toList!3509 lm!1616))) lt!1627278))))

(declare-fun tp!1333328 () Bool)

(declare-fun b!4428159 () Bool)

(assert (=> b!4428159 (= e!2757216 (and tp_is_empty!26291 tp_is_empty!26289 tp!1333328))))

(assert (= (and start!432184 res!1831112) b!4428155))

(assert (= (and b!4428155 res!1831107) b!4428145))

(assert (= (and b!4428145 res!1831110) b!4428153))

(assert (= (and b!4428153 res!1831105) b!4428147))

(assert (= (and b!4428147 res!1831113) b!4428157))

(assert (= (and b!4428157 res!1831115) b!4428146))

(assert (= (and b!4428157 (not res!1831116)) b!4428151))

(assert (= (and b!4428157 res!1831111) b!4428142))

(assert (= (and b!4428142 res!1831108) b!4428150))

(assert (= (and b!4428150 res!1831114) b!4428144))

(assert (= (and b!4428144 (not res!1831103)) b!4428149))

(assert (= (and b!4428149 (not res!1831117)) b!4428154))

(assert (= (and b!4428154 c!753821) b!4428152))

(assert (= (and b!4428154 (not c!753821)) b!4428141))

(assert (= (and b!4428154 (not res!1831104)) b!4428158))

(assert (= (and b!4428158 (not res!1831106)) b!4428156))

(assert (= (and b!4428156 (not res!1831109)) b!4428143))

(assert (= (and start!432184 ((_ is Cons!49611) newBucket!194)) b!4428159))

(assert (= start!432184 b!4428148))

(declare-fun m!5111137 () Bool)

(assert (=> b!4428146 m!5111137))

(declare-fun m!5111139 () Bool)

(assert (=> start!432184 m!5111139))

(declare-fun m!5111141 () Bool)

(assert (=> start!432184 m!5111141))

(declare-fun m!5111143 () Bool)

(assert (=> b!4428152 m!5111143))

(declare-fun m!5111145 () Bool)

(assert (=> b!4428147 m!5111145))

(declare-fun m!5111147 () Bool)

(assert (=> b!4428147 m!5111147))

(declare-fun m!5111149 () Bool)

(assert (=> b!4428143 m!5111149))

(declare-fun m!5111151 () Bool)

(assert (=> b!4428143 m!5111151))

(declare-fun m!5111153 () Bool)

(assert (=> b!4428143 m!5111153))

(declare-fun m!5111155 () Bool)

(assert (=> b!4428143 m!5111155))

(declare-fun m!5111157 () Bool)

(assert (=> b!4428143 m!5111157))

(declare-fun m!5111159 () Bool)

(assert (=> b!4428143 m!5111159))

(declare-fun m!5111161 () Bool)

(assert (=> b!4428143 m!5111161))

(declare-fun m!5111163 () Bool)

(assert (=> b!4428143 m!5111163))

(assert (=> b!4428143 m!5111161))

(declare-fun m!5111165 () Bool)

(assert (=> b!4428154 m!5111165))

(declare-fun m!5111167 () Bool)

(assert (=> b!4428154 m!5111167))

(declare-fun m!5111169 () Bool)

(assert (=> b!4428154 m!5111169))

(declare-fun m!5111171 () Bool)

(assert (=> b!4428154 m!5111171))

(declare-fun m!5111173 () Bool)

(assert (=> b!4428154 m!5111173))

(declare-fun m!5111175 () Bool)

(assert (=> b!4428154 m!5111175))

(declare-fun m!5111177 () Bool)

(assert (=> b!4428154 m!5111177))

(declare-fun m!5111179 () Bool)

(assert (=> b!4428154 m!5111179))

(assert (=> b!4428154 m!5111165))

(declare-fun m!5111181 () Bool)

(assert (=> b!4428154 m!5111181))

(assert (=> b!4428154 m!5111167))

(declare-fun m!5111183 () Bool)

(assert (=> b!4428154 m!5111183))

(declare-fun m!5111185 () Bool)

(assert (=> b!4428154 m!5111185))

(declare-fun m!5111187 () Bool)

(assert (=> b!4428156 m!5111187))

(declare-fun m!5111189 () Bool)

(assert (=> b!4428156 m!5111189))

(assert (=> b!4428156 m!5111189))

(declare-fun m!5111191 () Bool)

(assert (=> b!4428156 m!5111191))

(declare-fun m!5111193 () Bool)

(assert (=> b!4428156 m!5111193))

(assert (=> b!4428150 m!5111139))

(declare-fun m!5111195 () Bool)

(assert (=> b!4428157 m!5111195))

(declare-fun m!5111197 () Bool)

(assert (=> b!4428142 m!5111197))

(declare-fun m!5111199 () Bool)

(assert (=> b!4428158 m!5111199))

(declare-fun m!5111201 () Bool)

(assert (=> b!4428158 m!5111201))

(declare-fun m!5111203 () Bool)

(assert (=> b!4428145 m!5111203))

(declare-fun m!5111205 () Bool)

(assert (=> b!4428155 m!5111205))

(declare-fun m!5111207 () Bool)

(assert (=> b!4428153 m!5111207))

(declare-fun m!5111209 () Bool)

(assert (=> b!4428144 m!5111209))

(assert (=> b!4428144 m!5111209))

(declare-fun m!5111211 () Bool)

(assert (=> b!4428144 m!5111211))

(declare-fun m!5111213 () Bool)

(assert (=> b!4428144 m!5111213))

(check-sat (not b!4428157) (not b!4428147) (not b!4428159) tp_is_empty!26289 (not b!4428152) (not start!432184) (not b!4428153) (not b!4428145) (not b!4428154) (not b!4428156) (not b!4428150) (not b!4428155) (not b!4428158) (not b!4428144) (not b!4428146) (not b!4428148) tp_is_empty!26291 (not b!4428142) (not b!4428143))
(check-sat)
(get-model)

(declare-fun bs!759222 () Bool)

(declare-fun d!1342809 () Bool)

(assert (= bs!759222 (and d!1342809 start!432184)))

(declare-fun lambda!154517 () Int)

(assert (=> bs!759222 (not (= lambda!154517 lambda!154514))))

(assert (=> d!1342809 true))

(assert (=> d!1342809 (= (allKeysSameHashInMap!867 lm!1616 hashF!1220) (forall!9582 (toList!3509 lm!1616) lambda!154517))))

(declare-fun bs!759223 () Bool)

(assert (= bs!759223 d!1342809))

(declare-fun m!5111219 () Bool)

(assert (=> bs!759223 m!5111219))

(assert (=> b!4428155 d!1342809))

(declare-fun d!1342811 () Bool)

(declare-fun res!1831128 () Bool)

(declare-fun e!2757235 () Bool)

(assert (=> d!1342811 (=> res!1831128 e!2757235)))

(assert (=> d!1342811 (= res!1831128 ((_ is Nil!49612) (toList!3509 lt!1627269)))))

(assert (=> d!1342811 (= (forall!9582 (toList!3509 lt!1627269) lambda!154514) e!2757235)))

(declare-fun b!4428172 () Bool)

(declare-fun e!2757236 () Bool)

(assert (=> b!4428172 (= e!2757235 e!2757236)))

(declare-fun res!1831129 () Bool)

(assert (=> b!4428172 (=> (not res!1831129) (not e!2757236))))

(declare-fun dynLambda!20854 (Int tuple2!49424) Bool)

(assert (=> b!4428172 (= res!1831129 (dynLambda!20854 lambda!154514 (h!55303 (toList!3509 lt!1627269))))))

(declare-fun b!4428173 () Bool)

(assert (=> b!4428173 (= e!2757236 (forall!9582 (t!356674 (toList!3509 lt!1627269)) lambda!154514))))

(assert (= (and d!1342811 (not res!1831128)) b!4428172))

(assert (= (and b!4428172 res!1831129) b!4428173))

(declare-fun b_lambda!143469 () Bool)

(assert (=> (not b_lambda!143469) (not b!4428172)))

(declare-fun m!5111221 () Bool)

(assert (=> b!4428172 m!5111221))

(declare-fun m!5111223 () Bool)

(assert (=> b!4428173 m!5111223))

(assert (=> b!4428144 d!1342811))

(declare-fun d!1342813 () Bool)

(declare-fun e!2757260 () Bool)

(assert (=> d!1342813 e!2757260))

(declare-fun res!1831144 () Bool)

(assert (=> d!1342813 (=> (not res!1831144) (not e!2757260))))

(declare-fun lt!1627320 () ListLongMap!2159)

(assert (=> d!1342813 (= res!1831144 (contains!12125 lt!1627320 (_1!28006 lt!1627271)))))

(declare-fun lt!1627318 () List!49736)

(assert (=> d!1342813 (= lt!1627320 (ListLongMap!2160 lt!1627318))))

(declare-fun lt!1627319 () Unit!82403)

(declare-fun lt!1627317 () Unit!82403)

(assert (=> d!1342813 (= lt!1627319 lt!1627317)))

(declare-datatypes ((Option!10737 0))(
  ( (None!10736) (Some!10736 (v!43930 List!49735)) )
))
(declare-fun getValueByKey!723 (List!49736 (_ BitVec 64)) Option!10737)

(assert (=> d!1342813 (= (getValueByKey!723 lt!1627318 (_1!28006 lt!1627271)) (Some!10736 (_2!28006 lt!1627271)))))

(declare-fun lemmaContainsTupThenGetReturnValue!457 (List!49736 (_ BitVec 64) List!49735) Unit!82403)

(assert (=> d!1342813 (= lt!1627317 (lemmaContainsTupThenGetReturnValue!457 lt!1627318 (_1!28006 lt!1627271) (_2!28006 lt!1627271)))))

(declare-fun insertStrictlySorted!266 (List!49736 (_ BitVec 64) List!49735) List!49736)

(assert (=> d!1342813 (= lt!1627318 (insertStrictlySorted!266 (toList!3509 lm!1616) (_1!28006 lt!1627271) (_2!28006 lt!1627271)))))

(assert (=> d!1342813 (= (+!1107 lm!1616 lt!1627271) lt!1627320)))

(declare-fun b!4428211 () Bool)

(declare-fun res!1831143 () Bool)

(assert (=> b!4428211 (=> (not res!1831143) (not e!2757260))))

(assert (=> b!4428211 (= res!1831143 (= (getValueByKey!723 (toList!3509 lt!1627320) (_1!28006 lt!1627271)) (Some!10736 (_2!28006 lt!1627271))))))

(declare-fun b!4428212 () Bool)

(declare-fun contains!12128 (List!49736 tuple2!49424) Bool)

(assert (=> b!4428212 (= e!2757260 (contains!12128 (toList!3509 lt!1627320) lt!1627271))))

(assert (= (and d!1342813 res!1831144) b!4428211))

(assert (= (and b!4428211 res!1831143) b!4428212))

(declare-fun m!5111253 () Bool)

(assert (=> d!1342813 m!5111253))

(declare-fun m!5111255 () Bool)

(assert (=> d!1342813 m!5111255))

(declare-fun m!5111257 () Bool)

(assert (=> d!1342813 m!5111257))

(declare-fun m!5111259 () Bool)

(assert (=> d!1342813 m!5111259))

(declare-fun m!5111261 () Bool)

(assert (=> b!4428211 m!5111261))

(declare-fun m!5111263 () Bool)

(assert (=> b!4428212 m!5111263))

(assert (=> b!4428144 d!1342813))

(declare-fun d!1342819 () Bool)

(assert (=> d!1342819 (forall!9582 (toList!3509 (+!1107 lm!1616 (tuple2!49425 hash!366 newBucket!194))) lambda!154514)))

(declare-fun lt!1627323 () Unit!82403)

(declare-fun choose!27997 (ListLongMap!2159 Int (_ BitVec 64) List!49735) Unit!82403)

(assert (=> d!1342819 (= lt!1627323 (choose!27997 lm!1616 lambda!154514 hash!366 newBucket!194))))

(declare-fun e!2757263 () Bool)

(assert (=> d!1342819 e!2757263))

(declare-fun res!1831147 () Bool)

(assert (=> d!1342819 (=> (not res!1831147) (not e!2757263))))

(assert (=> d!1342819 (= res!1831147 (forall!9582 (toList!3509 lm!1616) lambda!154514))))

(assert (=> d!1342819 (= (addValidProp!405 lm!1616 lambda!154514 hash!366 newBucket!194) lt!1627323)))

(declare-fun b!4428216 () Bool)

(assert (=> b!4428216 (= e!2757263 (dynLambda!20854 lambda!154514 (tuple2!49425 hash!366 newBucket!194)))))

(assert (= (and d!1342819 res!1831147) b!4428216))

(declare-fun b_lambda!143471 () Bool)

(assert (=> (not b_lambda!143471) (not b!4428216)))

(declare-fun m!5111269 () Bool)

(assert (=> d!1342819 m!5111269))

(declare-fun m!5111271 () Bool)

(assert (=> d!1342819 m!5111271))

(declare-fun m!5111273 () Bool)

(assert (=> d!1342819 m!5111273))

(assert (=> d!1342819 m!5111139))

(declare-fun m!5111275 () Bool)

(assert (=> b!4428216 m!5111275))

(assert (=> b!4428144 d!1342819))

(declare-fun d!1342823 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7968 (List!49735) (InoxSet tuple2!49422))

(assert (=> d!1342823 (= (eq!419 lt!1627268 lt!1627279) (= (content!7968 (toList!3510 lt!1627268)) (content!7968 (toList!3510 lt!1627279))))))

(declare-fun bs!759226 () Bool)

(assert (= bs!759226 d!1342823))

(declare-fun m!5111277 () Bool)

(assert (=> bs!759226 m!5111277))

(declare-fun m!5111279 () Bool)

(assert (=> bs!759226 m!5111279))

(assert (=> b!4428154 d!1342823))

(declare-fun bs!759227 () Bool)

(declare-fun d!1342825 () Bool)

(assert (= bs!759227 (and d!1342825 start!432184)))

(declare-fun lambda!154523 () Int)

(assert (=> bs!759227 (= lambda!154523 lambda!154514)))

(declare-fun bs!759228 () Bool)

(assert (= bs!759228 (and d!1342825 d!1342809)))

(assert (=> bs!759228 (not (= lambda!154523 lambda!154517))))

(declare-fun lt!1627326 () ListMap!2753)

(declare-fun invariantList!811 (List!49735) Bool)

(assert (=> d!1342825 (invariantList!811 (toList!3510 lt!1627326))))

(declare-fun e!2757266 () ListMap!2753)

(assert (=> d!1342825 (= lt!1627326 e!2757266)))

(declare-fun c!753836 () Bool)

(assert (=> d!1342825 (= c!753836 ((_ is Cons!49612) (toList!3509 (+!1107 lt!1627275 lt!1627271))))))

(assert (=> d!1342825 (forall!9582 (toList!3509 (+!1107 lt!1627275 lt!1627271)) lambda!154523)))

(assert (=> d!1342825 (= (extractMap!822 (toList!3509 (+!1107 lt!1627275 lt!1627271))) lt!1627326)))

(declare-fun b!4428221 () Bool)

(assert (=> b!4428221 (= e!2757266 (addToMapMapFromBucket!398 (_2!28006 (h!55303 (toList!3509 (+!1107 lt!1627275 lt!1627271)))) (extractMap!822 (t!356674 (toList!3509 (+!1107 lt!1627275 lt!1627271))))))))

(declare-fun b!4428222 () Bool)

(assert (=> b!4428222 (= e!2757266 (ListMap!2754 Nil!49611))))

(assert (= (and d!1342825 c!753836) b!4428221))

(assert (= (and d!1342825 (not c!753836)) b!4428222))

(declare-fun m!5111281 () Bool)

(assert (=> d!1342825 m!5111281))

(declare-fun m!5111283 () Bool)

(assert (=> d!1342825 m!5111283))

(declare-fun m!5111285 () Bool)

(assert (=> b!4428221 m!5111285))

(assert (=> b!4428221 m!5111285))

(declare-fun m!5111287 () Bool)

(assert (=> b!4428221 m!5111287))

(assert (=> b!4428154 d!1342825))

(declare-fun d!1342827 () Bool)

(declare-fun e!2757267 () Bool)

(assert (=> d!1342827 e!2757267))

(declare-fun res!1831149 () Bool)

(assert (=> d!1342827 (=> (not res!1831149) (not e!2757267))))

(declare-fun lt!1627330 () ListLongMap!2159)

(assert (=> d!1342827 (= res!1831149 (contains!12125 lt!1627330 (_1!28006 lt!1627271)))))

(declare-fun lt!1627328 () List!49736)

(assert (=> d!1342827 (= lt!1627330 (ListLongMap!2160 lt!1627328))))

(declare-fun lt!1627329 () Unit!82403)

(declare-fun lt!1627327 () Unit!82403)

(assert (=> d!1342827 (= lt!1627329 lt!1627327)))

(assert (=> d!1342827 (= (getValueByKey!723 lt!1627328 (_1!28006 lt!1627271)) (Some!10736 (_2!28006 lt!1627271)))))

(assert (=> d!1342827 (= lt!1627327 (lemmaContainsTupThenGetReturnValue!457 lt!1627328 (_1!28006 lt!1627271) (_2!28006 lt!1627271)))))

(assert (=> d!1342827 (= lt!1627328 (insertStrictlySorted!266 (toList!3509 lt!1627275) (_1!28006 lt!1627271) (_2!28006 lt!1627271)))))

(assert (=> d!1342827 (= (+!1107 lt!1627275 lt!1627271) lt!1627330)))

(declare-fun b!4428223 () Bool)

(declare-fun res!1831148 () Bool)

(assert (=> b!4428223 (=> (not res!1831148) (not e!2757267))))

(assert (=> b!4428223 (= res!1831148 (= (getValueByKey!723 (toList!3509 lt!1627330) (_1!28006 lt!1627271)) (Some!10736 (_2!28006 lt!1627271))))))

(declare-fun b!4428224 () Bool)

(assert (=> b!4428224 (= e!2757267 (contains!12128 (toList!3509 lt!1627330) lt!1627271))))

(assert (= (and d!1342827 res!1831149) b!4428223))

(assert (= (and b!4428223 res!1831148) b!4428224))

(declare-fun m!5111289 () Bool)

(assert (=> d!1342827 m!5111289))

(declare-fun m!5111291 () Bool)

(assert (=> d!1342827 m!5111291))

(declare-fun m!5111293 () Bool)

(assert (=> d!1342827 m!5111293))

(declare-fun m!5111295 () Bool)

(assert (=> d!1342827 m!5111295))

(declare-fun m!5111297 () Bool)

(assert (=> b!4428223 m!5111297))

(declare-fun m!5111299 () Bool)

(assert (=> b!4428224 m!5111299))

(assert (=> b!4428154 d!1342827))

(declare-fun bs!759229 () Bool)

(declare-fun d!1342829 () Bool)

(assert (= bs!759229 (and d!1342829 start!432184)))

(declare-fun lambda!154524 () Int)

(assert (=> bs!759229 (= lambda!154524 lambda!154514)))

(declare-fun bs!759230 () Bool)

(assert (= bs!759230 (and d!1342829 d!1342809)))

(assert (=> bs!759230 (not (= lambda!154524 lambda!154517))))

(declare-fun bs!759231 () Bool)

(assert (= bs!759231 (and d!1342829 d!1342825)))

(assert (=> bs!759231 (= lambda!154524 lambda!154523)))

(declare-fun lt!1627331 () ListMap!2753)

(assert (=> d!1342829 (invariantList!811 (toList!3510 lt!1627331))))

(declare-fun e!2757268 () ListMap!2753)

(assert (=> d!1342829 (= lt!1627331 e!2757268)))

(declare-fun c!753837 () Bool)

(assert (=> d!1342829 (= c!753837 ((_ is Cons!49612) (toList!3509 lt!1627275)))))

(assert (=> d!1342829 (forall!9582 (toList!3509 lt!1627275) lambda!154524)))

(assert (=> d!1342829 (= (extractMap!822 (toList!3509 lt!1627275)) lt!1627331)))

(declare-fun b!4428225 () Bool)

(assert (=> b!4428225 (= e!2757268 (addToMapMapFromBucket!398 (_2!28006 (h!55303 (toList!3509 lt!1627275))) (extractMap!822 (t!356674 (toList!3509 lt!1627275)))))))

(declare-fun b!4428226 () Bool)

(assert (=> b!4428226 (= e!2757268 (ListMap!2754 Nil!49611))))

(assert (= (and d!1342829 c!753837) b!4428225))

(assert (= (and d!1342829 (not c!753837)) b!4428226))

(declare-fun m!5111301 () Bool)

(assert (=> d!1342829 m!5111301))

(declare-fun m!5111303 () Bool)

(assert (=> d!1342829 m!5111303))

(declare-fun m!5111305 () Bool)

(assert (=> b!4428225 m!5111305))

(assert (=> b!4428225 m!5111305))

(declare-fun m!5111307 () Bool)

(assert (=> b!4428225 m!5111307))

(assert (=> b!4428154 d!1342829))

(declare-fun bs!759232 () Bool)

(declare-fun d!1342831 () Bool)

(assert (= bs!759232 (and d!1342831 start!432184)))

(declare-fun lambda!154527 () Int)

(assert (=> bs!759232 (= lambda!154527 lambda!154514)))

(declare-fun bs!759233 () Bool)

(assert (= bs!759233 (and d!1342831 d!1342809)))

(assert (=> bs!759233 (not (= lambda!154527 lambda!154517))))

(declare-fun bs!759234 () Bool)

(assert (= bs!759234 (and d!1342831 d!1342825)))

(assert (=> bs!759234 (= lambda!154527 lambda!154523)))

(declare-fun bs!759235 () Bool)

(assert (= bs!759235 (and d!1342831 d!1342829)))

(assert (=> bs!759235 (= lambda!154527 lambda!154524)))

(assert (=> d!1342831 (eq!419 (extractMap!822 (toList!3509 (+!1107 lt!1627275 (tuple2!49425 hash!366 newBucket!194)))) (+!1106 (extractMap!822 (toList!3509 lt!1627275)) (tuple2!49423 key!3717 newValue!93)))))

(declare-fun lt!1627334 () Unit!82403)

(declare-fun choose!27998 (ListLongMap!2159 (_ BitVec 64) List!49735 K!10975 V!11221 Hashable!5155) Unit!82403)

(assert (=> d!1342831 (= lt!1627334 (choose!27998 lt!1627275 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(assert (=> d!1342831 (forall!9582 (toList!3509 lt!1627275) lambda!154527)))

(assert (=> d!1342831 (= (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!135 lt!1627275 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220) lt!1627334)))

(declare-fun bs!759236 () Bool)

(assert (= bs!759236 d!1342831))

(assert (=> bs!759236 m!5111173))

(declare-fun m!5111309 () Bool)

(assert (=> bs!759236 m!5111309))

(declare-fun m!5111311 () Bool)

(assert (=> bs!759236 m!5111311))

(declare-fun m!5111313 () Bool)

(assert (=> bs!759236 m!5111313))

(assert (=> bs!759236 m!5111173))

(declare-fun m!5111315 () Bool)

(assert (=> bs!759236 m!5111315))

(assert (=> bs!759236 m!5111315))

(assert (=> bs!759236 m!5111309))

(declare-fun m!5111317 () Bool)

(assert (=> bs!759236 m!5111317))

(declare-fun m!5111319 () Bool)

(assert (=> bs!759236 m!5111319))

(assert (=> b!4428154 d!1342831))

(declare-fun d!1342833 () Bool)

(declare-fun head!9236 (List!49736) tuple2!49424)

(assert (=> d!1342833 (= (head!9234 lm!1616) (head!9236 (toList!3509 lm!1616)))))

(declare-fun bs!759237 () Bool)

(assert (= bs!759237 d!1342833))

(declare-fun m!5111321 () Bool)

(assert (=> bs!759237 m!5111321))

(assert (=> b!4428154 d!1342833))

(declare-fun d!1342835 () Bool)

(declare-fun e!2757277 () Bool)

(assert (=> d!1342835 e!2757277))

(declare-fun res!1831160 () Bool)

(assert (=> d!1342835 (=> (not res!1831160) (not e!2757277))))

(declare-fun lt!1627387 () ListMap!2753)

(assert (=> d!1342835 (= res!1831160 (contains!12124 lt!1627387 (_1!28005 lt!1627273)))))

(declare-fun lt!1627385 () List!49735)

(assert (=> d!1342835 (= lt!1627387 (ListMap!2754 lt!1627385))))

(declare-fun lt!1627388 () Unit!82403)

(declare-fun lt!1627386 () Unit!82403)

(assert (=> d!1342835 (= lt!1627388 lt!1627386)))

(declare-datatypes ((Option!10738 0))(
  ( (None!10737) (Some!10737 (v!43931 V!11221)) )
))
(declare-fun getValueByKey!724 (List!49735 K!10975) Option!10738)

(assert (=> d!1342835 (= (getValueByKey!724 lt!1627385 (_1!28005 lt!1627273)) (Some!10737 (_2!28005 lt!1627273)))))

(declare-fun lemmaContainsTupThenGetReturnValue!459 (List!49735 K!10975 V!11221) Unit!82403)

(assert (=> d!1342835 (= lt!1627386 (lemmaContainsTupThenGetReturnValue!459 lt!1627385 (_1!28005 lt!1627273) (_2!28005 lt!1627273)))))

(declare-fun insertNoDuplicatedKeys!201 (List!49735 K!10975 V!11221) List!49735)

(assert (=> d!1342835 (= lt!1627385 (insertNoDuplicatedKeys!201 (toList!3510 lt!1627278) (_1!28005 lt!1627273) (_2!28005 lt!1627273)))))

(assert (=> d!1342835 (= (+!1106 lt!1627278 lt!1627273) lt!1627387)))

(declare-fun b!4428241 () Bool)

(declare-fun res!1831161 () Bool)

(assert (=> b!4428241 (=> (not res!1831161) (not e!2757277))))

(assert (=> b!4428241 (= res!1831161 (= (getValueByKey!724 (toList!3510 lt!1627387) (_1!28005 lt!1627273)) (Some!10737 (_2!28005 lt!1627273))))))

(declare-fun b!4428242 () Bool)

(declare-fun contains!12130 (List!49735 tuple2!49422) Bool)

(assert (=> b!4428242 (= e!2757277 (contains!12130 (toList!3510 lt!1627387) lt!1627273))))

(assert (= (and d!1342835 res!1831160) b!4428241))

(assert (= (and b!4428241 res!1831161) b!4428242))

(declare-fun m!5111323 () Bool)

(assert (=> d!1342835 m!5111323))

(declare-fun m!5111325 () Bool)

(assert (=> d!1342835 m!5111325))

(declare-fun m!5111327 () Bool)

(assert (=> d!1342835 m!5111327))

(declare-fun m!5111329 () Bool)

(assert (=> d!1342835 m!5111329))

(declare-fun m!5111331 () Bool)

(assert (=> b!4428241 m!5111331))

(declare-fun m!5111333 () Bool)

(assert (=> b!4428242 m!5111333))

(assert (=> b!4428154 d!1342835))

(declare-fun d!1342837 () Bool)

(assert (=> d!1342837 (= (tail!7294 lm!1616) (ListLongMap!2160 (tail!7295 (toList!3509 lm!1616))))))

(declare-fun bs!759239 () Bool)

(assert (= bs!759239 d!1342837))

(assert (=> bs!759239 m!5111165))

(assert (=> b!4428154 d!1342837))

(declare-fun bs!759240 () Bool)

(declare-fun d!1342839 () Bool)

(assert (= bs!759240 (and d!1342839 d!1342825)))

(declare-fun lambda!154559 () Int)

(assert (=> bs!759240 (= lambda!154559 lambda!154523)))

(declare-fun bs!759241 () Bool)

(assert (= bs!759241 (and d!1342839 d!1342831)))

(assert (=> bs!759241 (= lambda!154559 lambda!154527)))

(declare-fun bs!759242 () Bool)

(assert (= bs!759242 (and d!1342839 start!432184)))

(assert (=> bs!759242 (= lambda!154559 lambda!154514)))

(declare-fun bs!759243 () Bool)

(assert (= bs!759243 (and d!1342839 d!1342829)))

(assert (=> bs!759243 (= lambda!154559 lambda!154524)))

(declare-fun bs!759245 () Bool)

(assert (= bs!759245 (and d!1342839 d!1342809)))

(assert (=> bs!759245 (not (= lambda!154559 lambda!154517))))

(declare-fun lt!1627410 () ListMap!2753)

(assert (=> d!1342839 (invariantList!811 (toList!3510 lt!1627410))))

(declare-fun e!2757281 () ListMap!2753)

(assert (=> d!1342839 (= lt!1627410 e!2757281)))

(declare-fun c!753841 () Bool)

(assert (=> d!1342839 (= c!753841 ((_ is Cons!49612) (tail!7295 (toList!3509 lm!1616))))))

(assert (=> d!1342839 (forall!9582 (tail!7295 (toList!3509 lm!1616)) lambda!154559)))

(assert (=> d!1342839 (= (extractMap!822 (tail!7295 (toList!3509 lm!1616))) lt!1627410)))

(declare-fun b!4428250 () Bool)

(assert (=> b!4428250 (= e!2757281 (addToMapMapFromBucket!398 (_2!28006 (h!55303 (tail!7295 (toList!3509 lm!1616)))) (extractMap!822 (t!356674 (tail!7295 (toList!3509 lm!1616))))))))

(declare-fun b!4428251 () Bool)

(assert (=> b!4428251 (= e!2757281 (ListMap!2754 Nil!49611))))

(assert (= (and d!1342839 c!753841) b!4428250))

(assert (= (and d!1342839 (not c!753841)) b!4428251))

(declare-fun m!5111335 () Bool)

(assert (=> d!1342839 m!5111335))

(assert (=> d!1342839 m!5111165))

(declare-fun m!5111337 () Bool)

(assert (=> d!1342839 m!5111337))

(declare-fun m!5111339 () Bool)

(assert (=> b!4428250 m!5111339))

(assert (=> b!4428250 m!5111339))

(declare-fun m!5111341 () Bool)

(assert (=> b!4428250 m!5111341))

(assert (=> b!4428154 d!1342839))

(declare-fun d!1342841 () Bool)

(assert (=> d!1342841 (= (tail!7295 (toList!3509 lm!1616)) (t!356674 (toList!3509 lm!1616)))))

(assert (=> b!4428154 d!1342841))

(declare-fun b!4428285 () Bool)

(declare-fun e!2757304 () Bool)

(declare-datatypes ((List!49738 0))(
  ( (Nil!49614) (Cons!49614 (h!55307 K!10975) (t!356676 List!49738)) )
))
(declare-fun contains!12131 (List!49738 K!10975) Bool)

(declare-fun keys!16946 (ListMap!2753) List!49738)

(assert (=> b!4428285 (= e!2757304 (contains!12131 (keys!16946 (extractMap!822 (tail!7295 (toList!3509 lm!1616)))) key!3717))))

(declare-fun b!4428286 () Bool)

(declare-fun e!2757301 () Bool)

(assert (=> b!4428286 (= e!2757301 (not (contains!12131 (keys!16946 (extractMap!822 (tail!7295 (toList!3509 lm!1616)))) key!3717)))))

(declare-fun b!4428287 () Bool)

(assert (=> b!4428287 false))

(declare-fun lt!1627450 () Unit!82403)

(declare-fun lt!1627446 () Unit!82403)

(assert (=> b!4428287 (= lt!1627450 lt!1627446)))

(declare-fun containsKey!1138 (List!49735 K!10975) Bool)

(assert (=> b!4428287 (containsKey!1138 (toList!3510 (extractMap!822 (tail!7295 (toList!3509 lm!1616)))) key!3717)))

(declare-fun lemmaInGetKeysListThenContainsKey!256 (List!49735 K!10975) Unit!82403)

(assert (=> b!4428287 (= lt!1627446 (lemmaInGetKeysListThenContainsKey!256 (toList!3510 (extractMap!822 (tail!7295 (toList!3509 lm!1616)))) key!3717))))

(declare-fun e!2757305 () Unit!82403)

(declare-fun Unit!82422 () Unit!82403)

(assert (=> b!4428287 (= e!2757305 Unit!82422)))

(declare-fun b!4428288 () Bool)

(declare-fun e!2757306 () Unit!82403)

(assert (=> b!4428288 (= e!2757306 e!2757305)))

(declare-fun c!753850 () Bool)

(declare-fun call!308163 () Bool)

(assert (=> b!4428288 (= c!753850 call!308163)))

(declare-fun b!4428289 () Bool)

(declare-fun Unit!82423 () Unit!82403)

(assert (=> b!4428289 (= e!2757305 Unit!82423)))

(declare-fun b!4428290 () Bool)

(declare-fun e!2757302 () List!49738)

(declare-fun getKeysList!258 (List!49735) List!49738)

(assert (=> b!4428290 (= e!2757302 (getKeysList!258 (toList!3510 (extractMap!822 (tail!7295 (toList!3509 lm!1616))))))))

(declare-fun b!4428291 () Bool)

(declare-fun e!2757303 () Bool)

(assert (=> b!4428291 (= e!2757303 e!2757304)))

(declare-fun res!1831182 () Bool)

(assert (=> b!4428291 (=> (not res!1831182) (not e!2757304))))

(declare-fun isDefined!8028 (Option!10738) Bool)

(assert (=> b!4428291 (= res!1831182 (isDefined!8028 (getValueByKey!724 (toList!3510 (extractMap!822 (tail!7295 (toList!3509 lm!1616)))) key!3717)))))

(declare-fun d!1342843 () Bool)

(assert (=> d!1342843 e!2757303))

(declare-fun res!1831183 () Bool)

(assert (=> d!1342843 (=> res!1831183 e!2757303)))

(assert (=> d!1342843 (= res!1831183 e!2757301)))

(declare-fun res!1831181 () Bool)

(assert (=> d!1342843 (=> (not res!1831181) (not e!2757301))))

(declare-fun lt!1627447 () Bool)

(assert (=> d!1342843 (= res!1831181 (not lt!1627447))))

(declare-fun lt!1627445 () Bool)

(assert (=> d!1342843 (= lt!1627447 lt!1627445)))

(declare-fun lt!1627451 () Unit!82403)

(assert (=> d!1342843 (= lt!1627451 e!2757306)))

(declare-fun c!753849 () Bool)

(assert (=> d!1342843 (= c!753849 lt!1627445)))

(assert (=> d!1342843 (= lt!1627445 (containsKey!1138 (toList!3510 (extractMap!822 (tail!7295 (toList!3509 lm!1616)))) key!3717))))

(assert (=> d!1342843 (= (contains!12124 (extractMap!822 (tail!7295 (toList!3509 lm!1616))) key!3717) lt!1627447)))

(declare-fun bm!308158 () Bool)

(assert (=> bm!308158 (= call!308163 (contains!12131 e!2757302 key!3717))))

(declare-fun c!753848 () Bool)

(assert (=> bm!308158 (= c!753848 c!753849)))

(declare-fun b!4428292 () Bool)

(assert (=> b!4428292 (= e!2757302 (keys!16946 (extractMap!822 (tail!7295 (toList!3509 lm!1616)))))))

(declare-fun b!4428293 () Bool)

(declare-fun lt!1627449 () Unit!82403)

(assert (=> b!4428293 (= e!2757306 lt!1627449)))

(declare-fun lt!1627444 () Unit!82403)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!631 (List!49735 K!10975) Unit!82403)

(assert (=> b!4428293 (= lt!1627444 (lemmaContainsKeyImpliesGetValueByKeyDefined!631 (toList!3510 (extractMap!822 (tail!7295 (toList!3509 lm!1616)))) key!3717))))

(assert (=> b!4428293 (isDefined!8028 (getValueByKey!724 (toList!3510 (extractMap!822 (tail!7295 (toList!3509 lm!1616)))) key!3717))))

(declare-fun lt!1627448 () Unit!82403)

(assert (=> b!4428293 (= lt!1627448 lt!1627444)))

(declare-fun lemmaInListThenGetKeysListContains!255 (List!49735 K!10975) Unit!82403)

(assert (=> b!4428293 (= lt!1627449 (lemmaInListThenGetKeysListContains!255 (toList!3510 (extractMap!822 (tail!7295 (toList!3509 lm!1616)))) key!3717))))

(assert (=> b!4428293 call!308163))

(assert (= (and d!1342843 c!753849) b!4428293))

(assert (= (and d!1342843 (not c!753849)) b!4428288))

(assert (= (and b!4428288 c!753850) b!4428287))

(assert (= (and b!4428288 (not c!753850)) b!4428289))

(assert (= (or b!4428293 b!4428288) bm!308158))

(assert (= (and bm!308158 c!753848) b!4428290))

(assert (= (and bm!308158 (not c!753848)) b!4428292))

(assert (= (and d!1342843 res!1831181) b!4428286))

(assert (= (and d!1342843 (not res!1831183)) b!4428291))

(assert (= (and b!4428291 res!1831182) b!4428285))

(assert (=> b!4428285 m!5111167))

(declare-fun m!5111403 () Bool)

(assert (=> b!4428285 m!5111403))

(assert (=> b!4428285 m!5111403))

(declare-fun m!5111407 () Bool)

(assert (=> b!4428285 m!5111407))

(declare-fun m!5111411 () Bool)

(assert (=> b!4428290 m!5111411))

(declare-fun m!5111413 () Bool)

(assert (=> bm!308158 m!5111413))

(declare-fun m!5111417 () Bool)

(assert (=> b!4428293 m!5111417))

(declare-fun m!5111419 () Bool)

(assert (=> b!4428293 m!5111419))

(assert (=> b!4428293 m!5111419))

(declare-fun m!5111421 () Bool)

(assert (=> b!4428293 m!5111421))

(declare-fun m!5111423 () Bool)

(assert (=> b!4428293 m!5111423))

(assert (=> b!4428292 m!5111167))

(assert (=> b!4428292 m!5111403))

(assert (=> b!4428291 m!5111419))

(assert (=> b!4428291 m!5111419))

(assert (=> b!4428291 m!5111421))

(assert (=> b!4428286 m!5111167))

(assert (=> b!4428286 m!5111403))

(assert (=> b!4428286 m!5111403))

(assert (=> b!4428286 m!5111407))

(declare-fun m!5111425 () Bool)

(assert (=> b!4428287 m!5111425))

(declare-fun m!5111427 () Bool)

(assert (=> b!4428287 m!5111427))

(assert (=> d!1342843 m!5111425))

(assert (=> b!4428154 d!1342843))

(declare-fun d!1342857 () Bool)

(assert (=> d!1342857 (eq!419 (+!1106 lt!1627274 (tuple2!49423 key!3717 newValue!93)) (+!1106 lt!1627266 (tuple2!49423 key!3717 newValue!93)))))

(declare-fun lt!1627455 () Unit!82403)

(declare-fun choose!28001 (ListMap!2753 ListMap!2753 K!10975 V!11221) Unit!82403)

(assert (=> d!1342857 (= lt!1627455 (choose!28001 lt!1627274 lt!1627266 key!3717 newValue!93))))

(assert (=> d!1342857 (eq!419 lt!1627274 lt!1627266)))

(assert (=> d!1342857 (= (lemmaAddToEqMapsPreservesEq!30 lt!1627274 lt!1627266 key!3717 newValue!93) lt!1627455)))

(declare-fun bs!759260 () Bool)

(assert (= bs!759260 d!1342857))

(declare-fun m!5111439 () Bool)

(assert (=> bs!759260 m!5111439))

(declare-fun m!5111443 () Bool)

(assert (=> bs!759260 m!5111443))

(declare-fun m!5111445 () Bool)

(assert (=> bs!759260 m!5111445))

(assert (=> bs!759260 m!5111443))

(assert (=> bs!759260 m!5111439))

(declare-fun m!5111449 () Bool)

(assert (=> bs!759260 m!5111449))

(assert (=> bs!759260 m!5111199))

(assert (=> b!4428143 d!1342857))

(declare-fun d!1342871 () Bool)

(assert (=> d!1342871 (= (eq!419 lt!1627270 lt!1627277) (= (content!7968 (toList!3510 lt!1627270)) (content!7968 (toList!3510 lt!1627277))))))

(declare-fun bs!759262 () Bool)

(assert (= bs!759262 d!1342871))

(declare-fun m!5111453 () Bool)

(assert (=> bs!759262 m!5111453))

(declare-fun m!5111455 () Bool)

(assert (=> bs!759262 m!5111455))

(assert (=> b!4428143 d!1342871))

(declare-fun d!1342873 () Bool)

(declare-fun e!2757316 () Bool)

(assert (=> d!1342873 e!2757316))

(declare-fun res!1831193 () Bool)

(assert (=> d!1342873 (=> (not res!1831193) (not e!2757316))))

(declare-fun lt!1627458 () ListMap!2753)

(assert (=> d!1342873 (= res!1831193 (contains!12124 lt!1627458 (_1!28005 lt!1627273)))))

(declare-fun lt!1627456 () List!49735)

(assert (=> d!1342873 (= lt!1627458 (ListMap!2754 lt!1627456))))

(declare-fun lt!1627459 () Unit!82403)

(declare-fun lt!1627457 () Unit!82403)

(assert (=> d!1342873 (= lt!1627459 lt!1627457)))

(assert (=> d!1342873 (= (getValueByKey!724 lt!1627456 (_1!28005 lt!1627273)) (Some!10737 (_2!28005 lt!1627273)))))

(assert (=> d!1342873 (= lt!1627457 (lemmaContainsTupThenGetReturnValue!459 lt!1627456 (_1!28005 lt!1627273) (_2!28005 lt!1627273)))))

(assert (=> d!1342873 (= lt!1627456 (insertNoDuplicatedKeys!201 (toList!3510 lt!1627274) (_1!28005 lt!1627273) (_2!28005 lt!1627273)))))

(assert (=> d!1342873 (= (+!1106 lt!1627274 lt!1627273) lt!1627458)))

(declare-fun b!4428305 () Bool)

(declare-fun res!1831194 () Bool)

(assert (=> b!4428305 (=> (not res!1831194) (not e!2757316))))

(assert (=> b!4428305 (= res!1831194 (= (getValueByKey!724 (toList!3510 lt!1627458) (_1!28005 lt!1627273)) (Some!10737 (_2!28005 lt!1627273))))))

(declare-fun b!4428306 () Bool)

(assert (=> b!4428306 (= e!2757316 (contains!12130 (toList!3510 lt!1627458) lt!1627273))))

(assert (= (and d!1342873 res!1831193) b!4428305))

(assert (= (and b!4428305 res!1831194) b!4428306))

(declare-fun m!5111457 () Bool)

(assert (=> d!1342873 m!5111457))

(declare-fun m!5111459 () Bool)

(assert (=> d!1342873 m!5111459))

(declare-fun m!5111461 () Bool)

(assert (=> d!1342873 m!5111461))

(declare-fun m!5111463 () Bool)

(assert (=> d!1342873 m!5111463))

(declare-fun m!5111465 () Bool)

(assert (=> b!4428305 m!5111465))

(declare-fun m!5111467 () Bool)

(assert (=> b!4428306 m!5111467))

(assert (=> b!4428143 d!1342873))

(declare-fun d!1342875 () Bool)

(declare-fun e!2757317 () Bool)

(assert (=> d!1342875 e!2757317))

(declare-fun res!1831195 () Bool)

(assert (=> d!1342875 (=> (not res!1831195) (not e!2757317))))

(declare-fun lt!1627462 () ListMap!2753)

(assert (=> d!1342875 (= res!1831195 (contains!12124 lt!1627462 (_1!28005 lt!1627273)))))

(declare-fun lt!1627460 () List!49735)

(assert (=> d!1342875 (= lt!1627462 (ListMap!2754 lt!1627460))))

(declare-fun lt!1627463 () Unit!82403)

(declare-fun lt!1627461 () Unit!82403)

(assert (=> d!1342875 (= lt!1627463 lt!1627461)))

(assert (=> d!1342875 (= (getValueByKey!724 lt!1627460 (_1!28005 lt!1627273)) (Some!10737 (_2!28005 lt!1627273)))))

(assert (=> d!1342875 (= lt!1627461 (lemmaContainsTupThenGetReturnValue!459 lt!1627460 (_1!28005 lt!1627273) (_2!28005 lt!1627273)))))

(assert (=> d!1342875 (= lt!1627460 (insertNoDuplicatedKeys!201 (toList!3510 lt!1627266) (_1!28005 lt!1627273) (_2!28005 lt!1627273)))))

(assert (=> d!1342875 (= (+!1106 lt!1627266 lt!1627273) lt!1627462)))

(declare-fun b!4428307 () Bool)

(declare-fun res!1831196 () Bool)

(assert (=> b!4428307 (=> (not res!1831196) (not e!2757317))))

(assert (=> b!4428307 (= res!1831196 (= (getValueByKey!724 (toList!3510 lt!1627462) (_1!28005 lt!1627273)) (Some!10737 (_2!28005 lt!1627273))))))

(declare-fun b!4428308 () Bool)

(assert (=> b!4428308 (= e!2757317 (contains!12130 (toList!3510 lt!1627462) lt!1627273))))

(assert (= (and d!1342875 res!1831195) b!4428307))

(assert (= (and b!4428307 res!1831196) b!4428308))

(declare-fun m!5111469 () Bool)

(assert (=> d!1342875 m!5111469))

(declare-fun m!5111471 () Bool)

(assert (=> d!1342875 m!5111471))

(declare-fun m!5111473 () Bool)

(assert (=> d!1342875 m!5111473))

(declare-fun m!5111475 () Bool)

(assert (=> d!1342875 m!5111475))

(declare-fun m!5111477 () Bool)

(assert (=> b!4428307 m!5111477))

(declare-fun m!5111479 () Bool)

(assert (=> b!4428308 m!5111479))

(assert (=> b!4428143 d!1342875))

(declare-fun d!1342877 () Bool)

(assert (=> d!1342877 (eq!419 (addToMapMapFromBucket!398 (_2!28006 (h!55303 (toList!3509 lm!1616))) (+!1106 lt!1627278 (tuple2!49423 key!3717 newValue!93))) (+!1106 (addToMapMapFromBucket!398 (_2!28006 (h!55303 (toList!3509 lm!1616))) lt!1627278) (tuple2!49423 key!3717 newValue!93)))))

(declare-fun lt!1627475 () Unit!82403)

(declare-fun choose!28003 (ListMap!2753 K!10975 V!11221 List!49735) Unit!82403)

(assert (=> d!1342877 (= lt!1627475 (choose!28003 lt!1627278 key!3717 newValue!93 (_2!28006 (h!55303 (toList!3509 lm!1616)))))))

(assert (=> d!1342877 (not (containsKey!1136 (_2!28006 (h!55303 (toList!3509 lm!1616))) key!3717))))

(assert (=> d!1342877 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!190 lt!1627278 key!3717 newValue!93 (_2!28006 (h!55303 (toList!3509 lm!1616)))) lt!1627475)))

(declare-fun bs!759280 () Bool)

(assert (= bs!759280 d!1342877))

(declare-fun m!5111517 () Bool)

(assert (=> bs!759280 m!5111517))

(assert (=> bs!759280 m!5111201))

(declare-fun m!5111519 () Bool)

(assert (=> bs!759280 m!5111519))

(declare-fun m!5111521 () Bool)

(assert (=> bs!759280 m!5111521))

(declare-fun m!5111523 () Bool)

(assert (=> bs!759280 m!5111523))

(declare-fun m!5111525 () Bool)

(assert (=> bs!759280 m!5111525))

(assert (=> bs!759280 m!5111187))

(assert (=> bs!759280 m!5111201))

(assert (=> bs!759280 m!5111523))

(assert (=> bs!759280 m!5111517))

(assert (=> bs!759280 m!5111521))

(assert (=> b!4428143 d!1342877))

(declare-fun b!4428382 () Bool)

(assert (=> b!4428382 true))

(declare-fun bs!759323 () Bool)

(declare-fun b!4428378 () Bool)

(assert (= bs!759323 (and b!4428378 b!4428382)))

(declare-fun lambda!154612 () Int)

(declare-fun lambda!154611 () Int)

(assert (=> bs!759323 (= lambda!154612 lambda!154611)))

(assert (=> b!4428378 true))

(declare-fun lt!1627598 () ListMap!2753)

(declare-fun lambda!154613 () Int)

(assert (=> bs!759323 (= (= lt!1627598 lt!1627279) (= lambda!154613 lambda!154611))))

(assert (=> b!4428378 (= (= lt!1627598 lt!1627279) (= lambda!154613 lambda!154612))))

(assert (=> b!4428378 true))

(declare-fun bs!759324 () Bool)

(declare-fun d!1342889 () Bool)

(assert (= bs!759324 (and d!1342889 b!4428382)))

(declare-fun lambda!154614 () Int)

(declare-fun lt!1627606 () ListMap!2753)

(assert (=> bs!759324 (= (= lt!1627606 lt!1627279) (= lambda!154614 lambda!154611))))

(declare-fun bs!759325 () Bool)

(assert (= bs!759325 (and d!1342889 b!4428378)))

(assert (=> bs!759325 (= (= lt!1627606 lt!1627279) (= lambda!154614 lambda!154612))))

(assert (=> bs!759325 (= (= lt!1627606 lt!1627598) (= lambda!154614 lambda!154613))))

(assert (=> d!1342889 true))

(declare-fun e!2757363 () ListMap!2753)

(assert (=> b!4428378 (= e!2757363 lt!1627598)))

(declare-fun lt!1627589 () ListMap!2753)

(assert (=> b!4428378 (= lt!1627589 (+!1106 lt!1627279 (h!55302 (_2!28006 (h!55303 (toList!3509 lm!1616))))))))

(assert (=> b!4428378 (= lt!1627598 (addToMapMapFromBucket!398 (t!356673 (_2!28006 (h!55303 (toList!3509 lm!1616)))) (+!1106 lt!1627279 (h!55302 (_2!28006 (h!55303 (toList!3509 lm!1616)))))))))

(declare-fun lt!1627591 () Unit!82403)

(declare-fun call!308175 () Unit!82403)

(assert (=> b!4428378 (= lt!1627591 call!308175)))

(declare-fun forall!9584 (List!49735 Int) Bool)

(assert (=> b!4428378 (forall!9584 (toList!3510 lt!1627279) lambda!154612)))

(declare-fun lt!1627600 () Unit!82403)

(assert (=> b!4428378 (= lt!1627600 lt!1627591)))

(declare-fun call!308176 () Bool)

(assert (=> b!4428378 call!308176))

(declare-fun lt!1627590 () Unit!82403)

(declare-fun Unit!82424 () Unit!82403)

(assert (=> b!4428378 (= lt!1627590 Unit!82424)))

(assert (=> b!4428378 (forall!9584 (t!356673 (_2!28006 (h!55303 (toList!3509 lm!1616)))) lambda!154613)))

(declare-fun lt!1627596 () Unit!82403)

(declare-fun Unit!82425 () Unit!82403)

(assert (=> b!4428378 (= lt!1627596 Unit!82425)))

(declare-fun lt!1627607 () Unit!82403)

(declare-fun Unit!82426 () Unit!82403)

(assert (=> b!4428378 (= lt!1627607 Unit!82426)))

(declare-fun lt!1627601 () Unit!82403)

(declare-fun forallContained!2101 (List!49735 Int tuple2!49422) Unit!82403)

(assert (=> b!4428378 (= lt!1627601 (forallContained!2101 (toList!3510 lt!1627589) lambda!154613 (h!55302 (_2!28006 (h!55303 (toList!3509 lm!1616))))))))

(assert (=> b!4428378 (contains!12124 lt!1627589 (_1!28005 (h!55302 (_2!28006 (h!55303 (toList!3509 lm!1616))))))))

(declare-fun lt!1627593 () Unit!82403)

(declare-fun Unit!82427 () Unit!82403)

(assert (=> b!4428378 (= lt!1627593 Unit!82427)))

(assert (=> b!4428378 (contains!12124 lt!1627598 (_1!28005 (h!55302 (_2!28006 (h!55303 (toList!3509 lm!1616))))))))

(declare-fun lt!1627594 () Unit!82403)

(declare-fun Unit!82428 () Unit!82403)

(assert (=> b!4428378 (= lt!1627594 Unit!82428)))

(declare-fun call!308174 () Bool)

(assert (=> b!4428378 call!308174))

(declare-fun lt!1627609 () Unit!82403)

(declare-fun Unit!82429 () Unit!82403)

(assert (=> b!4428378 (= lt!1627609 Unit!82429)))

(assert (=> b!4428378 (forall!9584 (toList!3510 lt!1627589) lambda!154613)))

(declare-fun lt!1627597 () Unit!82403)

(declare-fun Unit!82430 () Unit!82403)

(assert (=> b!4428378 (= lt!1627597 Unit!82430)))

(declare-fun lt!1627603 () Unit!82403)

(declare-fun Unit!82431 () Unit!82403)

(assert (=> b!4428378 (= lt!1627603 Unit!82431)))

(declare-fun lt!1627608 () Unit!82403)

(declare-fun addForallContainsKeyThenBeforeAdding!179 (ListMap!2753 ListMap!2753 K!10975 V!11221) Unit!82403)

(assert (=> b!4428378 (= lt!1627608 (addForallContainsKeyThenBeforeAdding!179 lt!1627279 lt!1627598 (_1!28005 (h!55302 (_2!28006 (h!55303 (toList!3509 lm!1616))))) (_2!28005 (h!55302 (_2!28006 (h!55303 (toList!3509 lm!1616)))))))))

(assert (=> b!4428378 (forall!9584 (toList!3510 lt!1627279) lambda!154613)))

(declare-fun lt!1627599 () Unit!82403)

(assert (=> b!4428378 (= lt!1627599 lt!1627608)))

(assert (=> b!4428378 (forall!9584 (toList!3510 lt!1627279) lambda!154613)))

(declare-fun lt!1627604 () Unit!82403)

(declare-fun Unit!82432 () Unit!82403)

(assert (=> b!4428378 (= lt!1627604 Unit!82432)))

(declare-fun res!1831232 () Bool)

(assert (=> b!4428378 (= res!1831232 (forall!9584 (_2!28006 (h!55303 (toList!3509 lm!1616))) lambda!154613))))

(declare-fun e!2757364 () Bool)

(assert (=> b!4428378 (=> (not res!1831232) (not e!2757364))))

(assert (=> b!4428378 e!2757364))

(declare-fun lt!1627595 () Unit!82403)

(declare-fun Unit!82434 () Unit!82403)

(assert (=> b!4428378 (= lt!1627595 Unit!82434)))

(declare-fun b!4428379 () Bool)

(assert (=> b!4428379 (= e!2757364 (forall!9584 (toList!3510 lt!1627279) lambda!154613))))

(declare-fun bm!308169 () Bool)

(declare-fun c!753863 () Bool)

(assert (=> bm!308169 (= call!308176 (forall!9584 (ite c!753863 (toList!3510 lt!1627279) (toList!3510 lt!1627589)) (ite c!753863 lambda!154611 lambda!154613)))))

(declare-fun b!4428380 () Bool)

(declare-fun res!1831234 () Bool)

(declare-fun e!2757362 () Bool)

(assert (=> b!4428380 (=> (not res!1831234) (not e!2757362))))

(assert (=> b!4428380 (= res!1831234 (forall!9584 (toList!3510 lt!1627279) lambda!154614))))

(assert (=> d!1342889 e!2757362))

(declare-fun res!1831233 () Bool)

(assert (=> d!1342889 (=> (not res!1831233) (not e!2757362))))

(assert (=> d!1342889 (= res!1831233 (forall!9584 (_2!28006 (h!55303 (toList!3509 lm!1616))) lambda!154614))))

(assert (=> d!1342889 (= lt!1627606 e!2757363)))

(assert (=> d!1342889 (= c!753863 ((_ is Nil!49611) (_2!28006 (h!55303 (toList!3509 lm!1616)))))))

(assert (=> d!1342889 (noDuplicateKeys!761 (_2!28006 (h!55303 (toList!3509 lm!1616))))))

(assert (=> d!1342889 (= (addToMapMapFromBucket!398 (_2!28006 (h!55303 (toList!3509 lm!1616))) lt!1627279) lt!1627606)))

(declare-fun b!4428381 () Bool)

(assert (=> b!4428381 (= e!2757362 (invariantList!811 (toList!3510 lt!1627606)))))

(declare-fun bm!308170 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!179 (ListMap!2753) Unit!82403)

(assert (=> bm!308170 (= call!308175 (lemmaContainsAllItsOwnKeys!179 lt!1627279))))

(assert (=> b!4428382 (= e!2757363 lt!1627279)))

(declare-fun lt!1627605 () Unit!82403)

(assert (=> b!4428382 (= lt!1627605 call!308175)))

(assert (=> b!4428382 call!308174))

(declare-fun lt!1627602 () Unit!82403)

(assert (=> b!4428382 (= lt!1627602 lt!1627605)))

(assert (=> b!4428382 call!308176))

(declare-fun lt!1627592 () Unit!82403)

(declare-fun Unit!82438 () Unit!82403)

(assert (=> b!4428382 (= lt!1627592 Unit!82438)))

(declare-fun bm!308171 () Bool)

(assert (=> bm!308171 (= call!308174 (forall!9584 (ite c!753863 (toList!3510 lt!1627279) (_2!28006 (h!55303 (toList!3509 lm!1616)))) (ite c!753863 lambda!154611 lambda!154613)))))

(assert (= (and d!1342889 c!753863) b!4428382))

(assert (= (and d!1342889 (not c!753863)) b!4428378))

(assert (= (and b!4428378 res!1831232) b!4428379))

(assert (= (or b!4428382 b!4428378) bm!308170))

(assert (= (or b!4428382 b!4428378) bm!308169))

(assert (= (or b!4428382 b!4428378) bm!308171))

(assert (= (and d!1342889 res!1831233) b!4428380))

(assert (= (and b!4428380 res!1831234) b!4428381))

(declare-fun m!5111683 () Bool)

(assert (=> b!4428380 m!5111683))

(declare-fun m!5111685 () Bool)

(assert (=> b!4428379 m!5111685))

(declare-fun m!5111687 () Bool)

(assert (=> bm!308171 m!5111687))

(declare-fun m!5111689 () Bool)

(assert (=> b!4428381 m!5111689))

(declare-fun m!5111691 () Bool)

(assert (=> d!1342889 m!5111691))

(declare-fun m!5111693 () Bool)

(assert (=> d!1342889 m!5111693))

(declare-fun m!5111695 () Bool)

(assert (=> bm!308169 m!5111695))

(declare-fun m!5111697 () Bool)

(assert (=> b!4428378 m!5111697))

(declare-fun m!5111699 () Bool)

(assert (=> b!4428378 m!5111699))

(declare-fun m!5111701 () Bool)

(assert (=> b!4428378 m!5111701))

(declare-fun m!5111703 () Bool)

(assert (=> b!4428378 m!5111703))

(declare-fun m!5111705 () Bool)

(assert (=> b!4428378 m!5111705))

(declare-fun m!5111707 () Bool)

(assert (=> b!4428378 m!5111707))

(declare-fun m!5111709 () Bool)

(assert (=> b!4428378 m!5111709))

(declare-fun m!5111711 () Bool)

(assert (=> b!4428378 m!5111711))

(assert (=> b!4428378 m!5111705))

(declare-fun m!5111713 () Bool)

(assert (=> b!4428378 m!5111713))

(assert (=> b!4428378 m!5111685))

(assert (=> b!4428378 m!5111685))

(declare-fun m!5111715 () Bool)

(assert (=> b!4428378 m!5111715))

(declare-fun m!5111717 () Bool)

(assert (=> bm!308170 m!5111717))

(assert (=> b!4428143 d!1342889))

(declare-fun d!1342933 () Bool)

(assert (=> d!1342933 (= (eq!419 (+!1106 lt!1627274 lt!1627273) lt!1627277) (= (content!7968 (toList!3510 (+!1106 lt!1627274 lt!1627273))) (content!7968 (toList!3510 lt!1627277))))))

(declare-fun bs!759326 () Bool)

(assert (= bs!759326 d!1342933))

(declare-fun m!5111719 () Bool)

(assert (=> bs!759326 m!5111719))

(assert (=> bs!759326 m!5111455))

(assert (=> b!4428143 d!1342933))

(declare-fun d!1342935 () Bool)

(declare-fun res!1831235 () Bool)

(declare-fun e!2757365 () Bool)

(assert (=> d!1342935 (=> res!1831235 e!2757365)))

(assert (=> d!1342935 (= res!1831235 ((_ is Nil!49612) (toList!3509 lt!1627275)))))

(assert (=> d!1342935 (= (forall!9582 (toList!3509 lt!1627275) lambda!154514) e!2757365)))

(declare-fun b!4428385 () Bool)

(declare-fun e!2757366 () Bool)

(assert (=> b!4428385 (= e!2757365 e!2757366)))

(declare-fun res!1831236 () Bool)

(assert (=> b!4428385 (=> (not res!1831236) (not e!2757366))))

(assert (=> b!4428385 (= res!1831236 (dynLambda!20854 lambda!154514 (h!55303 (toList!3509 lt!1627275))))))

(declare-fun b!4428386 () Bool)

(assert (=> b!4428386 (= e!2757366 (forall!9582 (t!356674 (toList!3509 lt!1627275)) lambda!154514))))

(assert (= (and d!1342935 (not res!1831235)) b!4428385))

(assert (= (and b!4428385 res!1831236) b!4428386))

(declare-fun b_lambda!143487 () Bool)

(assert (=> (not b_lambda!143487) (not b!4428385)))

(declare-fun m!5111721 () Bool)

(assert (=> b!4428385 m!5111721))

(declare-fun m!5111723 () Bool)

(assert (=> b!4428386 m!5111723))

(assert (=> b!4428143 d!1342935))

(declare-fun bs!759327 () Bool)

(declare-fun d!1342937 () Bool)

(assert (= bs!759327 (and d!1342937 b!4428382)))

(declare-fun lambda!154617 () Int)

(assert (=> bs!759327 (not (= lambda!154617 lambda!154611))))

(declare-fun bs!759328 () Bool)

(assert (= bs!759328 (and d!1342937 b!4428378)))

(assert (=> bs!759328 (not (= lambda!154617 lambda!154612))))

(assert (=> bs!759328 (not (= lambda!154617 lambda!154613))))

(declare-fun bs!759329 () Bool)

(assert (= bs!759329 (and d!1342937 d!1342889)))

(assert (=> bs!759329 (not (= lambda!154617 lambda!154614))))

(assert (=> d!1342937 true))

(assert (=> d!1342937 true))

(assert (=> d!1342937 (= (allKeysSameHash!721 newBucket!194 hash!366 hashF!1220) (forall!9584 newBucket!194 lambda!154617))))

(declare-fun bs!759330 () Bool)

(assert (= bs!759330 d!1342937))

(declare-fun m!5111725 () Bool)

(assert (=> bs!759330 m!5111725))

(assert (=> b!4428153 d!1342937))

(declare-fun d!1342939 () Bool)

(declare-fun res!1831241 () Bool)

(declare-fun e!2757371 () Bool)

(assert (=> d!1342939 (=> res!1831241 e!2757371)))

(assert (=> d!1342939 (= res!1831241 (not ((_ is Cons!49611) newBucket!194)))))

(assert (=> d!1342939 (= (noDuplicateKeys!761 newBucket!194) e!2757371)))

(declare-fun b!4428395 () Bool)

(declare-fun e!2757372 () Bool)

(assert (=> b!4428395 (= e!2757371 e!2757372)))

(declare-fun res!1831242 () Bool)

(assert (=> b!4428395 (=> (not res!1831242) (not e!2757372))))

(assert (=> b!4428395 (= res!1831242 (not (containsKey!1136 (t!356673 newBucket!194) (_1!28005 (h!55302 newBucket!194)))))))

(declare-fun b!4428396 () Bool)

(assert (=> b!4428396 (= e!2757372 (noDuplicateKeys!761 (t!356673 newBucket!194)))))

(assert (= (and d!1342939 (not res!1831241)) b!4428395))

(assert (= (and b!4428395 res!1831242) b!4428396))

(declare-fun m!5111727 () Bool)

(assert (=> b!4428395 m!5111727))

(declare-fun m!5111729 () Bool)

(assert (=> b!4428396 m!5111729))

(assert (=> b!4428142 d!1342939))

(declare-fun bs!759331 () Bool)

(declare-fun d!1342941 () Bool)

(assert (= bs!759331 (and d!1342941 d!1342825)))

(declare-fun lambda!154620 () Int)

(assert (=> bs!759331 (= lambda!154620 lambda!154523)))

(declare-fun bs!759332 () Bool)

(assert (= bs!759332 (and d!1342941 d!1342839)))

(assert (=> bs!759332 (= lambda!154620 lambda!154559)))

(declare-fun bs!759333 () Bool)

(assert (= bs!759333 (and d!1342941 d!1342831)))

(assert (=> bs!759333 (= lambda!154620 lambda!154527)))

(declare-fun bs!759334 () Bool)

(assert (= bs!759334 (and d!1342941 start!432184)))

(assert (=> bs!759334 (= lambda!154620 lambda!154514)))

(declare-fun bs!759335 () Bool)

(assert (= bs!759335 (and d!1342941 d!1342829)))

(assert (=> bs!759335 (= lambda!154620 lambda!154524)))

(declare-fun bs!759336 () Bool)

(assert (= bs!759336 (and d!1342941 d!1342809)))

(assert (=> bs!759336 (not (= lambda!154620 lambda!154517))))

(assert (=> d!1342941 (contains!12124 (extractMap!822 (toList!3509 lm!1616)) key!3717)))

(declare-fun lt!1627612 () Unit!82403)

(declare-fun choose!28004 (ListLongMap!2159 K!10975 Hashable!5155) Unit!82403)

(assert (=> d!1342941 (= lt!1627612 (choose!28004 lm!1616 key!3717 hashF!1220))))

(assert (=> d!1342941 (forall!9582 (toList!3509 lm!1616) lambda!154620)))

(assert (=> d!1342941 (= (lemmaExtractTailMapContainsThenExtractMapDoes!48 lm!1616 key!3717 hashF!1220) lt!1627612)))

(declare-fun bs!759337 () Bool)

(assert (= bs!759337 d!1342941))

(assert (=> bs!759337 m!5111147))

(assert (=> bs!759337 m!5111147))

(declare-fun m!5111731 () Bool)

(assert (=> bs!759337 m!5111731))

(declare-fun m!5111733 () Bool)

(assert (=> bs!759337 m!5111733))

(declare-fun m!5111735 () Bool)

(assert (=> bs!759337 m!5111735))

(assert (=> b!4428152 d!1342941))

(declare-fun d!1342943 () Bool)

(declare-fun res!1831243 () Bool)

(declare-fun e!2757373 () Bool)

(assert (=> d!1342943 (=> res!1831243 e!2757373)))

(assert (=> d!1342943 (= res!1831243 ((_ is Nil!49612) (toList!3509 lm!1616)))))

(assert (=> d!1342943 (= (forall!9582 (toList!3509 lm!1616) lambda!154514) e!2757373)))

(declare-fun b!4428397 () Bool)

(declare-fun e!2757374 () Bool)

(assert (=> b!4428397 (= e!2757373 e!2757374)))

(declare-fun res!1831244 () Bool)

(assert (=> b!4428397 (=> (not res!1831244) (not e!2757374))))

(assert (=> b!4428397 (= res!1831244 (dynLambda!20854 lambda!154514 (h!55303 (toList!3509 lm!1616))))))

(declare-fun b!4428398 () Bool)

(assert (=> b!4428398 (= e!2757374 (forall!9582 (t!356674 (toList!3509 lm!1616)) lambda!154514))))

(assert (= (and d!1342943 (not res!1831243)) b!4428397))

(assert (= (and b!4428397 res!1831244) b!4428398))

(declare-fun b_lambda!143489 () Bool)

(assert (=> (not b_lambda!143489) (not b!4428397)))

(declare-fun m!5111737 () Bool)

(assert (=> b!4428397 m!5111737))

(declare-fun m!5111739 () Bool)

(assert (=> b!4428398 m!5111739))

(assert (=> start!432184 d!1342943))

(declare-fun d!1342945 () Bool)

(declare-fun isStrictlySorted!238 (List!49736) Bool)

(assert (=> d!1342945 (= (inv!65161 lm!1616) (isStrictlySorted!238 (toList!3509 lm!1616)))))

(declare-fun bs!759338 () Bool)

(assert (= bs!759338 d!1342945))

(declare-fun m!5111741 () Bool)

(assert (=> bs!759338 m!5111741))

(assert (=> start!432184 d!1342945))

(assert (=> b!4428150 d!1342943))

(declare-fun d!1342947 () Bool)

(assert (=> d!1342947 (= (eq!419 lt!1627274 lt!1627266) (= (content!7968 (toList!3510 lt!1627274)) (content!7968 (toList!3510 lt!1627266))))))

(declare-fun bs!759339 () Bool)

(assert (= bs!759339 d!1342947))

(declare-fun m!5111743 () Bool)

(assert (=> bs!759339 m!5111743))

(declare-fun m!5111745 () Bool)

(assert (=> bs!759339 m!5111745))

(assert (=> b!4428158 d!1342947))

(declare-fun bs!759340 () Bool)

(declare-fun b!4428403 () Bool)

(assert (= bs!759340 (and b!4428403 b!4428378)))

(declare-fun lambda!154621 () Int)

(assert (=> bs!759340 (= (= lt!1627278 lt!1627598) (= lambda!154621 lambda!154613))))

(assert (=> bs!759340 (= (= lt!1627278 lt!1627279) (= lambda!154621 lambda!154612))))

(declare-fun bs!759341 () Bool)

(assert (= bs!759341 (and b!4428403 d!1342889)))

(assert (=> bs!759341 (= (= lt!1627278 lt!1627606) (= lambda!154621 lambda!154614))))

(declare-fun bs!759342 () Bool)

(assert (= bs!759342 (and b!4428403 b!4428382)))

(assert (=> bs!759342 (= (= lt!1627278 lt!1627279) (= lambda!154621 lambda!154611))))

(declare-fun bs!759343 () Bool)

(assert (= bs!759343 (and b!4428403 d!1342937)))

(assert (=> bs!759343 (not (= lambda!154621 lambda!154617))))

(assert (=> b!4428403 true))

(declare-fun bs!759344 () Bool)

(declare-fun b!4428399 () Bool)

(assert (= bs!759344 (and b!4428399 b!4428378)))

(declare-fun lambda!154622 () Int)

(assert (=> bs!759344 (= (= lt!1627278 lt!1627598) (= lambda!154622 lambda!154613))))

(declare-fun bs!759345 () Bool)

(assert (= bs!759345 (and b!4428399 b!4428403)))

(assert (=> bs!759345 (= lambda!154622 lambda!154621)))

(assert (=> bs!759344 (= (= lt!1627278 lt!1627279) (= lambda!154622 lambda!154612))))

(declare-fun bs!759346 () Bool)

(assert (= bs!759346 (and b!4428399 d!1342889)))

(assert (=> bs!759346 (= (= lt!1627278 lt!1627606) (= lambda!154622 lambda!154614))))

(declare-fun bs!759347 () Bool)

(assert (= bs!759347 (and b!4428399 b!4428382)))

(assert (=> bs!759347 (= (= lt!1627278 lt!1627279) (= lambda!154622 lambda!154611))))

(declare-fun bs!759348 () Bool)

(assert (= bs!759348 (and b!4428399 d!1342937)))

(assert (=> bs!759348 (not (= lambda!154622 lambda!154617))))

(assert (=> b!4428399 true))

(declare-fun lt!1627622 () ListMap!2753)

(declare-fun lambda!154623 () Int)

(assert (=> bs!759344 (= (= lt!1627622 lt!1627598) (= lambda!154623 lambda!154613))))

(assert (=> bs!759345 (= (= lt!1627622 lt!1627278) (= lambda!154623 lambda!154621))))

(assert (=> bs!759344 (= (= lt!1627622 lt!1627279) (= lambda!154623 lambda!154612))))

(assert (=> b!4428399 (= (= lt!1627622 lt!1627278) (= lambda!154623 lambda!154622))))

(assert (=> bs!759346 (= (= lt!1627622 lt!1627606) (= lambda!154623 lambda!154614))))

(assert (=> bs!759347 (= (= lt!1627622 lt!1627279) (= lambda!154623 lambda!154611))))

(assert (=> bs!759348 (not (= lambda!154623 lambda!154617))))

(assert (=> b!4428399 true))

(declare-fun bs!759349 () Bool)

(declare-fun d!1342949 () Bool)

(assert (= bs!759349 (and d!1342949 b!4428378)))

(declare-fun lt!1627630 () ListMap!2753)

(declare-fun lambda!154624 () Int)

(assert (=> bs!759349 (= (= lt!1627630 lt!1627598) (= lambda!154624 lambda!154613))))

(declare-fun bs!759350 () Bool)

(assert (= bs!759350 (and d!1342949 b!4428403)))

(assert (=> bs!759350 (= (= lt!1627630 lt!1627278) (= lambda!154624 lambda!154621))))

(assert (=> bs!759349 (= (= lt!1627630 lt!1627279) (= lambda!154624 lambda!154612))))

(declare-fun bs!759351 () Bool)

(assert (= bs!759351 (and d!1342949 b!4428399)))

(assert (=> bs!759351 (= (= lt!1627630 lt!1627622) (= lambda!154624 lambda!154623))))

(assert (=> bs!759351 (= (= lt!1627630 lt!1627278) (= lambda!154624 lambda!154622))))

(declare-fun bs!759352 () Bool)

(assert (= bs!759352 (and d!1342949 d!1342889)))

(assert (=> bs!759352 (= (= lt!1627630 lt!1627606) (= lambda!154624 lambda!154614))))

(declare-fun bs!759353 () Bool)

(assert (= bs!759353 (and d!1342949 b!4428382)))

(assert (=> bs!759353 (= (= lt!1627630 lt!1627279) (= lambda!154624 lambda!154611))))

(declare-fun bs!759354 () Bool)

(assert (= bs!759354 (and d!1342949 d!1342937)))

(assert (=> bs!759354 (not (= lambda!154624 lambda!154617))))

(assert (=> d!1342949 true))

(declare-fun e!2757376 () ListMap!2753)

(assert (=> b!4428399 (= e!2757376 lt!1627622)))

(declare-fun lt!1627613 () ListMap!2753)

(assert (=> b!4428399 (= lt!1627613 (+!1106 lt!1627278 (h!55302 (_2!28006 (h!55303 (toList!3509 lm!1616))))))))

(assert (=> b!4428399 (= lt!1627622 (addToMapMapFromBucket!398 (t!356673 (_2!28006 (h!55303 (toList!3509 lm!1616)))) (+!1106 lt!1627278 (h!55302 (_2!28006 (h!55303 (toList!3509 lm!1616)))))))))

(declare-fun lt!1627615 () Unit!82403)

(declare-fun call!308178 () Unit!82403)

(assert (=> b!4428399 (= lt!1627615 call!308178)))

(assert (=> b!4428399 (forall!9584 (toList!3510 lt!1627278) lambda!154622)))

(declare-fun lt!1627624 () Unit!82403)

(assert (=> b!4428399 (= lt!1627624 lt!1627615)))

(declare-fun call!308179 () Bool)

(assert (=> b!4428399 call!308179))

(declare-fun lt!1627614 () Unit!82403)

(declare-fun Unit!82447 () Unit!82403)

(assert (=> b!4428399 (= lt!1627614 Unit!82447)))

(assert (=> b!4428399 (forall!9584 (t!356673 (_2!28006 (h!55303 (toList!3509 lm!1616)))) lambda!154623)))

(declare-fun lt!1627620 () Unit!82403)

(declare-fun Unit!82448 () Unit!82403)

(assert (=> b!4428399 (= lt!1627620 Unit!82448)))

(declare-fun lt!1627631 () Unit!82403)

(declare-fun Unit!82449 () Unit!82403)

(assert (=> b!4428399 (= lt!1627631 Unit!82449)))

(declare-fun lt!1627625 () Unit!82403)

(assert (=> b!4428399 (= lt!1627625 (forallContained!2101 (toList!3510 lt!1627613) lambda!154623 (h!55302 (_2!28006 (h!55303 (toList!3509 lm!1616))))))))

(assert (=> b!4428399 (contains!12124 lt!1627613 (_1!28005 (h!55302 (_2!28006 (h!55303 (toList!3509 lm!1616))))))))

(declare-fun lt!1627617 () Unit!82403)

(declare-fun Unit!82450 () Unit!82403)

(assert (=> b!4428399 (= lt!1627617 Unit!82450)))

(assert (=> b!4428399 (contains!12124 lt!1627622 (_1!28005 (h!55302 (_2!28006 (h!55303 (toList!3509 lm!1616))))))))

(declare-fun lt!1627618 () Unit!82403)

(declare-fun Unit!82451 () Unit!82403)

(assert (=> b!4428399 (= lt!1627618 Unit!82451)))

(declare-fun call!308177 () Bool)

(assert (=> b!4428399 call!308177))

(declare-fun lt!1627633 () Unit!82403)

(declare-fun Unit!82452 () Unit!82403)

(assert (=> b!4428399 (= lt!1627633 Unit!82452)))

(assert (=> b!4428399 (forall!9584 (toList!3510 lt!1627613) lambda!154623)))

(declare-fun lt!1627621 () Unit!82403)

(declare-fun Unit!82453 () Unit!82403)

(assert (=> b!4428399 (= lt!1627621 Unit!82453)))

(declare-fun lt!1627627 () Unit!82403)

(declare-fun Unit!82454 () Unit!82403)

(assert (=> b!4428399 (= lt!1627627 Unit!82454)))

(declare-fun lt!1627632 () Unit!82403)

(assert (=> b!4428399 (= lt!1627632 (addForallContainsKeyThenBeforeAdding!179 lt!1627278 lt!1627622 (_1!28005 (h!55302 (_2!28006 (h!55303 (toList!3509 lm!1616))))) (_2!28005 (h!55302 (_2!28006 (h!55303 (toList!3509 lm!1616)))))))))

(assert (=> b!4428399 (forall!9584 (toList!3510 lt!1627278) lambda!154623)))

(declare-fun lt!1627623 () Unit!82403)

(assert (=> b!4428399 (= lt!1627623 lt!1627632)))

(assert (=> b!4428399 (forall!9584 (toList!3510 lt!1627278) lambda!154623)))

(declare-fun lt!1627628 () Unit!82403)

(declare-fun Unit!82455 () Unit!82403)

(assert (=> b!4428399 (= lt!1627628 Unit!82455)))

(declare-fun res!1831245 () Bool)

(assert (=> b!4428399 (= res!1831245 (forall!9584 (_2!28006 (h!55303 (toList!3509 lm!1616))) lambda!154623))))

(declare-fun e!2757377 () Bool)

(assert (=> b!4428399 (=> (not res!1831245) (not e!2757377))))

(assert (=> b!4428399 e!2757377))

(declare-fun lt!1627619 () Unit!82403)

(declare-fun Unit!82456 () Unit!82403)

(assert (=> b!4428399 (= lt!1627619 Unit!82456)))

(declare-fun b!4428400 () Bool)

(assert (=> b!4428400 (= e!2757377 (forall!9584 (toList!3510 lt!1627278) lambda!154623))))

(declare-fun bm!308172 () Bool)

(declare-fun c!753864 () Bool)

(assert (=> bm!308172 (= call!308179 (forall!9584 (ite c!753864 (toList!3510 lt!1627278) (toList!3510 lt!1627613)) (ite c!753864 lambda!154621 lambda!154623)))))

(declare-fun b!4428401 () Bool)

(declare-fun res!1831247 () Bool)

(declare-fun e!2757375 () Bool)

(assert (=> b!4428401 (=> (not res!1831247) (not e!2757375))))

(assert (=> b!4428401 (= res!1831247 (forall!9584 (toList!3510 lt!1627278) lambda!154624))))

(assert (=> d!1342949 e!2757375))

(declare-fun res!1831246 () Bool)

(assert (=> d!1342949 (=> (not res!1831246) (not e!2757375))))

(assert (=> d!1342949 (= res!1831246 (forall!9584 (_2!28006 (h!55303 (toList!3509 lm!1616))) lambda!154624))))

(assert (=> d!1342949 (= lt!1627630 e!2757376)))

(assert (=> d!1342949 (= c!753864 ((_ is Nil!49611) (_2!28006 (h!55303 (toList!3509 lm!1616)))))))

(assert (=> d!1342949 (noDuplicateKeys!761 (_2!28006 (h!55303 (toList!3509 lm!1616))))))

(assert (=> d!1342949 (= (addToMapMapFromBucket!398 (_2!28006 (h!55303 (toList!3509 lm!1616))) lt!1627278) lt!1627630)))

(declare-fun b!4428402 () Bool)

(assert (=> b!4428402 (= e!2757375 (invariantList!811 (toList!3510 lt!1627630)))))

(declare-fun bm!308173 () Bool)

(assert (=> bm!308173 (= call!308178 (lemmaContainsAllItsOwnKeys!179 lt!1627278))))

(assert (=> b!4428403 (= e!2757376 lt!1627278)))

(declare-fun lt!1627629 () Unit!82403)

(assert (=> b!4428403 (= lt!1627629 call!308178)))

(assert (=> b!4428403 call!308177))

(declare-fun lt!1627626 () Unit!82403)

(assert (=> b!4428403 (= lt!1627626 lt!1627629)))

(assert (=> b!4428403 call!308179))

(declare-fun lt!1627616 () Unit!82403)

(declare-fun Unit!82457 () Unit!82403)

(assert (=> b!4428403 (= lt!1627616 Unit!82457)))

(declare-fun bm!308174 () Bool)

(assert (=> bm!308174 (= call!308177 (forall!9584 (ite c!753864 (toList!3510 lt!1627278) (_2!28006 (h!55303 (toList!3509 lm!1616)))) (ite c!753864 lambda!154621 lambda!154623)))))

(assert (= (and d!1342949 c!753864) b!4428403))

(assert (= (and d!1342949 (not c!753864)) b!4428399))

(assert (= (and b!4428399 res!1831245) b!4428400))

(assert (= (or b!4428403 b!4428399) bm!308173))

(assert (= (or b!4428403 b!4428399) bm!308172))

(assert (= (or b!4428403 b!4428399) bm!308174))

(assert (= (and d!1342949 res!1831246) b!4428401))

(assert (= (and b!4428401 res!1831247) b!4428402))

(declare-fun m!5111747 () Bool)

(assert (=> b!4428401 m!5111747))

(declare-fun m!5111749 () Bool)

(assert (=> b!4428400 m!5111749))

(declare-fun m!5111751 () Bool)

(assert (=> bm!308174 m!5111751))

(declare-fun m!5111753 () Bool)

(assert (=> b!4428402 m!5111753))

(declare-fun m!5111755 () Bool)

(assert (=> d!1342949 m!5111755))

(assert (=> d!1342949 m!5111693))

(declare-fun m!5111757 () Bool)

(assert (=> bm!308172 m!5111757))

(declare-fun m!5111759 () Bool)

(assert (=> b!4428399 m!5111759))

(declare-fun m!5111761 () Bool)

(assert (=> b!4428399 m!5111761))

(declare-fun m!5111763 () Bool)

(assert (=> b!4428399 m!5111763))

(declare-fun m!5111765 () Bool)

(assert (=> b!4428399 m!5111765))

(declare-fun m!5111767 () Bool)

(assert (=> b!4428399 m!5111767))

(declare-fun m!5111769 () Bool)

(assert (=> b!4428399 m!5111769))

(declare-fun m!5111771 () Bool)

(assert (=> b!4428399 m!5111771))

(declare-fun m!5111773 () Bool)

(assert (=> b!4428399 m!5111773))

(assert (=> b!4428399 m!5111767))

(declare-fun m!5111775 () Bool)

(assert (=> b!4428399 m!5111775))

(assert (=> b!4428399 m!5111749))

(assert (=> b!4428399 m!5111749))

(declare-fun m!5111777 () Bool)

(assert (=> b!4428399 m!5111777))

(declare-fun m!5111779 () Bool)

(assert (=> bm!308173 m!5111779))

(assert (=> b!4428158 d!1342949))

(declare-fun b!4428404 () Bool)

(declare-fun e!2757381 () Bool)

(assert (=> b!4428404 (= e!2757381 (contains!12131 (keys!16946 lt!1627274) key!3717))))

(declare-fun b!4428405 () Bool)

(declare-fun e!2757378 () Bool)

(assert (=> b!4428405 (= e!2757378 (not (contains!12131 (keys!16946 lt!1627274) key!3717)))))

(declare-fun b!4428406 () Bool)

(assert (=> b!4428406 false))

(declare-fun lt!1627640 () Unit!82403)

(declare-fun lt!1627636 () Unit!82403)

(assert (=> b!4428406 (= lt!1627640 lt!1627636)))

(assert (=> b!4428406 (containsKey!1138 (toList!3510 lt!1627274) key!3717)))

(assert (=> b!4428406 (= lt!1627636 (lemmaInGetKeysListThenContainsKey!256 (toList!3510 lt!1627274) key!3717))))

(declare-fun e!2757382 () Unit!82403)

(declare-fun Unit!82458 () Unit!82403)

(assert (=> b!4428406 (= e!2757382 Unit!82458)))

(declare-fun b!4428407 () Bool)

(declare-fun e!2757383 () Unit!82403)

(assert (=> b!4428407 (= e!2757383 e!2757382)))

(declare-fun c!753867 () Bool)

(declare-fun call!308180 () Bool)

(assert (=> b!4428407 (= c!753867 call!308180)))

(declare-fun b!4428408 () Bool)

(declare-fun Unit!82459 () Unit!82403)

(assert (=> b!4428408 (= e!2757382 Unit!82459)))

(declare-fun b!4428409 () Bool)

(declare-fun e!2757379 () List!49738)

(assert (=> b!4428409 (= e!2757379 (getKeysList!258 (toList!3510 lt!1627274)))))

(declare-fun b!4428410 () Bool)

(declare-fun e!2757380 () Bool)

(assert (=> b!4428410 (= e!2757380 e!2757381)))

(declare-fun res!1831249 () Bool)

(assert (=> b!4428410 (=> (not res!1831249) (not e!2757381))))

(assert (=> b!4428410 (= res!1831249 (isDefined!8028 (getValueByKey!724 (toList!3510 lt!1627274) key!3717)))))

(declare-fun d!1342951 () Bool)

(assert (=> d!1342951 e!2757380))

(declare-fun res!1831250 () Bool)

(assert (=> d!1342951 (=> res!1831250 e!2757380)))

(assert (=> d!1342951 (= res!1831250 e!2757378)))

(declare-fun res!1831248 () Bool)

(assert (=> d!1342951 (=> (not res!1831248) (not e!2757378))))

(declare-fun lt!1627637 () Bool)

(assert (=> d!1342951 (= res!1831248 (not lt!1627637))))

(declare-fun lt!1627635 () Bool)

(assert (=> d!1342951 (= lt!1627637 lt!1627635)))

(declare-fun lt!1627641 () Unit!82403)

(assert (=> d!1342951 (= lt!1627641 e!2757383)))

(declare-fun c!753866 () Bool)

(assert (=> d!1342951 (= c!753866 lt!1627635)))

(assert (=> d!1342951 (= lt!1627635 (containsKey!1138 (toList!3510 lt!1627274) key!3717))))

(assert (=> d!1342951 (= (contains!12124 lt!1627274 key!3717) lt!1627637)))

(declare-fun bm!308175 () Bool)

(assert (=> bm!308175 (= call!308180 (contains!12131 e!2757379 key!3717))))

(declare-fun c!753865 () Bool)

(assert (=> bm!308175 (= c!753865 c!753866)))

(declare-fun b!4428411 () Bool)

(assert (=> b!4428411 (= e!2757379 (keys!16946 lt!1627274))))

(declare-fun b!4428412 () Bool)

(declare-fun lt!1627639 () Unit!82403)

(assert (=> b!4428412 (= e!2757383 lt!1627639)))

(declare-fun lt!1627634 () Unit!82403)

(assert (=> b!4428412 (= lt!1627634 (lemmaContainsKeyImpliesGetValueByKeyDefined!631 (toList!3510 lt!1627274) key!3717))))

(assert (=> b!4428412 (isDefined!8028 (getValueByKey!724 (toList!3510 lt!1627274) key!3717))))

(declare-fun lt!1627638 () Unit!82403)

(assert (=> b!4428412 (= lt!1627638 lt!1627634)))

(assert (=> b!4428412 (= lt!1627639 (lemmaInListThenGetKeysListContains!255 (toList!3510 lt!1627274) key!3717))))

(assert (=> b!4428412 call!308180))

(assert (= (and d!1342951 c!753866) b!4428412))

(assert (= (and d!1342951 (not c!753866)) b!4428407))

(assert (= (and b!4428407 c!753867) b!4428406))

(assert (= (and b!4428407 (not c!753867)) b!4428408))

(assert (= (or b!4428412 b!4428407) bm!308175))

(assert (= (and bm!308175 c!753865) b!4428409))

(assert (= (and bm!308175 (not c!753865)) b!4428411))

(assert (= (and d!1342951 res!1831248) b!4428405))

(assert (= (and d!1342951 (not res!1831250)) b!4428410))

(assert (= (and b!4428410 res!1831249) b!4428404))

(declare-fun m!5111781 () Bool)

(assert (=> b!4428404 m!5111781))

(assert (=> b!4428404 m!5111781))

(declare-fun m!5111783 () Bool)

(assert (=> b!4428404 m!5111783))

(declare-fun m!5111785 () Bool)

(assert (=> b!4428409 m!5111785))

(declare-fun m!5111787 () Bool)

(assert (=> bm!308175 m!5111787))

(declare-fun m!5111789 () Bool)

(assert (=> b!4428412 m!5111789))

(declare-fun m!5111791 () Bool)

(assert (=> b!4428412 m!5111791))

(assert (=> b!4428412 m!5111791))

(declare-fun m!5111793 () Bool)

(assert (=> b!4428412 m!5111793))

(declare-fun m!5111795 () Bool)

(assert (=> b!4428412 m!5111795))

(assert (=> b!4428411 m!5111781))

(assert (=> b!4428410 m!5111791))

(assert (=> b!4428410 m!5111791))

(assert (=> b!4428410 m!5111793))

(assert (=> b!4428405 m!5111781))

(assert (=> b!4428405 m!5111781))

(assert (=> b!4428405 m!5111783))

(declare-fun m!5111797 () Bool)

(assert (=> b!4428406 m!5111797))

(declare-fun m!5111799 () Bool)

(assert (=> b!4428406 m!5111799))

(assert (=> d!1342951 m!5111797))

(assert (=> b!4428147 d!1342951))

(declare-fun bs!759355 () Bool)

(declare-fun d!1342953 () Bool)

(assert (= bs!759355 (and d!1342953 d!1342825)))

(declare-fun lambda!154625 () Int)

(assert (=> bs!759355 (= lambda!154625 lambda!154523)))

(declare-fun bs!759356 () Bool)

(assert (= bs!759356 (and d!1342953 d!1342839)))

(assert (=> bs!759356 (= lambda!154625 lambda!154559)))

(declare-fun bs!759357 () Bool)

(assert (= bs!759357 (and d!1342953 d!1342831)))

(assert (=> bs!759357 (= lambda!154625 lambda!154527)))

(declare-fun bs!759358 () Bool)

(assert (= bs!759358 (and d!1342953 start!432184)))

(assert (=> bs!759358 (= lambda!154625 lambda!154514)))

(declare-fun bs!759359 () Bool)

(assert (= bs!759359 (and d!1342953 d!1342941)))

(assert (=> bs!759359 (= lambda!154625 lambda!154620)))

(declare-fun bs!759360 () Bool)

(assert (= bs!759360 (and d!1342953 d!1342829)))

(assert (=> bs!759360 (= lambda!154625 lambda!154524)))

(declare-fun bs!759361 () Bool)

(assert (= bs!759361 (and d!1342953 d!1342809)))

(assert (=> bs!759361 (not (= lambda!154625 lambda!154517))))

(declare-fun lt!1627642 () ListMap!2753)

(assert (=> d!1342953 (invariantList!811 (toList!3510 lt!1627642))))

(declare-fun e!2757384 () ListMap!2753)

(assert (=> d!1342953 (= lt!1627642 e!2757384)))

(declare-fun c!753868 () Bool)

(assert (=> d!1342953 (= c!753868 ((_ is Cons!49612) (toList!3509 lm!1616)))))

(assert (=> d!1342953 (forall!9582 (toList!3509 lm!1616) lambda!154625)))

(assert (=> d!1342953 (= (extractMap!822 (toList!3509 lm!1616)) lt!1627642)))

(declare-fun b!4428413 () Bool)

(assert (=> b!4428413 (= e!2757384 (addToMapMapFromBucket!398 (_2!28006 (h!55303 (toList!3509 lm!1616))) (extractMap!822 (t!356674 (toList!3509 lm!1616)))))))

(declare-fun b!4428414 () Bool)

(assert (=> b!4428414 (= e!2757384 (ListMap!2754 Nil!49611))))

(assert (= (and d!1342953 c!753868) b!4428413))

(assert (= (and d!1342953 (not c!753868)) b!4428414))

(declare-fun m!5111801 () Bool)

(assert (=> d!1342953 m!5111801))

(declare-fun m!5111803 () Bool)

(assert (=> d!1342953 m!5111803))

(declare-fun m!5111805 () Bool)

(assert (=> b!4428413 m!5111805))

(assert (=> b!4428413 m!5111805))

(declare-fun m!5111807 () Bool)

(assert (=> b!4428413 m!5111807))

(assert (=> b!4428147 d!1342953))

(declare-fun d!1342955 () Bool)

(declare-fun e!2757390 () Bool)

(assert (=> d!1342955 e!2757390))

(declare-fun res!1831253 () Bool)

(assert (=> d!1342955 (=> res!1831253 e!2757390)))

(declare-fun lt!1627651 () Bool)

(assert (=> d!1342955 (= res!1831253 (not lt!1627651))))

(declare-fun lt!1627652 () Bool)

(assert (=> d!1342955 (= lt!1627651 lt!1627652)))

(declare-fun lt!1627654 () Unit!82403)

(declare-fun e!2757389 () Unit!82403)

(assert (=> d!1342955 (= lt!1627654 e!2757389)))

(declare-fun c!753871 () Bool)

(assert (=> d!1342955 (= c!753871 lt!1627652)))

(declare-fun containsKey!1140 (List!49736 (_ BitVec 64)) Bool)

(assert (=> d!1342955 (= lt!1627652 (containsKey!1140 (toList!3509 lm!1616) hash!366))))

(assert (=> d!1342955 (= (contains!12125 lm!1616 hash!366) lt!1627651)))

(declare-fun b!4428421 () Bool)

(declare-fun lt!1627653 () Unit!82403)

(assert (=> b!4428421 (= e!2757389 lt!1627653)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!633 (List!49736 (_ BitVec 64)) Unit!82403)

(assert (=> b!4428421 (= lt!1627653 (lemmaContainsKeyImpliesGetValueByKeyDefined!633 (toList!3509 lm!1616) hash!366))))

(declare-fun isDefined!8030 (Option!10737) Bool)

(assert (=> b!4428421 (isDefined!8030 (getValueByKey!723 (toList!3509 lm!1616) hash!366))))

(declare-fun b!4428422 () Bool)

(declare-fun Unit!82460 () Unit!82403)

(assert (=> b!4428422 (= e!2757389 Unit!82460)))

(declare-fun b!4428423 () Bool)

(assert (=> b!4428423 (= e!2757390 (isDefined!8030 (getValueByKey!723 (toList!3509 lm!1616) hash!366)))))

(assert (= (and d!1342955 c!753871) b!4428421))

(assert (= (and d!1342955 (not c!753871)) b!4428422))

(assert (= (and d!1342955 (not res!1831253)) b!4428423))

(declare-fun m!5111809 () Bool)

(assert (=> d!1342955 m!5111809))

(declare-fun m!5111811 () Bool)

(assert (=> b!4428421 m!5111811))

(declare-fun m!5111813 () Bool)

(assert (=> b!4428421 m!5111813))

(assert (=> b!4428421 m!5111813))

(declare-fun m!5111815 () Bool)

(assert (=> b!4428421 m!5111815))

(assert (=> b!4428423 m!5111813))

(assert (=> b!4428423 m!5111813))

(assert (=> b!4428423 m!5111815))

(assert (=> b!4428157 d!1342955))

(declare-fun d!1342957 () Bool)

(declare-fun get!16171 (Option!10737) List!49735)

(assert (=> d!1342957 (= (apply!11613 lm!1616 hash!366) (get!16171 (getValueByKey!723 (toList!3509 lm!1616) hash!366)))))

(declare-fun bs!759362 () Bool)

(assert (= bs!759362 d!1342957))

(assert (=> bs!759362 m!5111813))

(assert (=> bs!759362 m!5111813))

(declare-fun m!5111817 () Bool)

(assert (=> bs!759362 m!5111817))

(assert (=> b!4428146 d!1342957))

(declare-fun d!1342959 () Bool)

(declare-fun res!1831258 () Bool)

(declare-fun e!2757395 () Bool)

(assert (=> d!1342959 (=> res!1831258 e!2757395)))

(assert (=> d!1342959 (= res!1831258 (and ((_ is Cons!49611) (_2!28006 (h!55303 (toList!3509 lm!1616)))) (= (_1!28005 (h!55302 (_2!28006 (h!55303 (toList!3509 lm!1616))))) key!3717)))))

(assert (=> d!1342959 (= (containsKey!1136 (_2!28006 (h!55303 (toList!3509 lm!1616))) key!3717) e!2757395)))

(declare-fun b!4428428 () Bool)

(declare-fun e!2757396 () Bool)

(assert (=> b!4428428 (= e!2757395 e!2757396)))

(declare-fun res!1831259 () Bool)

(assert (=> b!4428428 (=> (not res!1831259) (not e!2757396))))

(assert (=> b!4428428 (= res!1831259 ((_ is Cons!49611) (_2!28006 (h!55303 (toList!3509 lm!1616)))))))

(declare-fun b!4428429 () Bool)

(assert (=> b!4428429 (= e!2757396 (containsKey!1136 (t!356673 (_2!28006 (h!55303 (toList!3509 lm!1616)))) key!3717))))

(assert (= (and d!1342959 (not res!1831258)) b!4428428))

(assert (= (and b!4428428 res!1831259) b!4428429))

(declare-fun m!5111819 () Bool)

(assert (=> b!4428429 m!5111819))

(assert (=> b!4428156 d!1342959))

(declare-fun d!1342961 () Bool)

(declare-fun res!1831260 () Bool)

(declare-fun e!2757397 () Bool)

(assert (=> d!1342961 (=> res!1831260 e!2757397)))

(assert (=> d!1342961 (= res!1831260 (and ((_ is Cons!49611) (apply!11613 lm!1616 (_1!28006 (h!55303 (toList!3509 lm!1616))))) (= (_1!28005 (h!55302 (apply!11613 lm!1616 (_1!28006 (h!55303 (toList!3509 lm!1616)))))) key!3717)))))

(assert (=> d!1342961 (= (containsKey!1136 (apply!11613 lm!1616 (_1!28006 (h!55303 (toList!3509 lm!1616)))) key!3717) e!2757397)))

(declare-fun b!4428430 () Bool)

(declare-fun e!2757398 () Bool)

(assert (=> b!4428430 (= e!2757397 e!2757398)))

(declare-fun res!1831261 () Bool)

(assert (=> b!4428430 (=> (not res!1831261) (not e!2757398))))

(assert (=> b!4428430 (= res!1831261 ((_ is Cons!49611) (apply!11613 lm!1616 (_1!28006 (h!55303 (toList!3509 lm!1616))))))))

(declare-fun b!4428431 () Bool)

(assert (=> b!4428431 (= e!2757398 (containsKey!1136 (t!356673 (apply!11613 lm!1616 (_1!28006 (h!55303 (toList!3509 lm!1616))))) key!3717))))

(assert (= (and d!1342961 (not res!1831260)) b!4428430))

(assert (= (and b!4428430 res!1831261) b!4428431))

(declare-fun m!5111821 () Bool)

(assert (=> b!4428431 m!5111821))

(assert (=> b!4428156 d!1342961))

(declare-fun d!1342963 () Bool)

(assert (=> d!1342963 (= (apply!11613 lm!1616 (_1!28006 (h!55303 (toList!3509 lm!1616)))) (get!16171 (getValueByKey!723 (toList!3509 lm!1616) (_1!28006 (h!55303 (toList!3509 lm!1616))))))))

(declare-fun bs!759363 () Bool)

(assert (= bs!759363 d!1342963))

(declare-fun m!5111823 () Bool)

(assert (=> bs!759363 m!5111823))

(assert (=> bs!759363 m!5111823))

(declare-fun m!5111825 () Bool)

(assert (=> bs!759363 m!5111825))

(assert (=> b!4428156 d!1342963))

(declare-fun bs!759364 () Bool)

(declare-fun d!1342965 () Bool)

(assert (= bs!759364 (and d!1342965 d!1342953)))

(declare-fun lambda!154628 () Int)

(assert (=> bs!759364 (= lambda!154628 lambda!154625)))

(declare-fun bs!759365 () Bool)

(assert (= bs!759365 (and d!1342965 d!1342825)))

(assert (=> bs!759365 (= lambda!154628 lambda!154523)))

(declare-fun bs!759366 () Bool)

(assert (= bs!759366 (and d!1342965 d!1342839)))

(assert (=> bs!759366 (= lambda!154628 lambda!154559)))

(declare-fun bs!759367 () Bool)

(assert (= bs!759367 (and d!1342965 d!1342831)))

(assert (=> bs!759367 (= lambda!154628 lambda!154527)))

(declare-fun bs!759368 () Bool)

(assert (= bs!759368 (and d!1342965 start!432184)))

(assert (=> bs!759368 (= lambda!154628 lambda!154514)))

(declare-fun bs!759369 () Bool)

(assert (= bs!759369 (and d!1342965 d!1342941)))

(assert (=> bs!759369 (= lambda!154628 lambda!154620)))

(declare-fun bs!759370 () Bool)

(assert (= bs!759370 (and d!1342965 d!1342829)))

(assert (=> bs!759370 (= lambda!154628 lambda!154524)))

(declare-fun bs!759371 () Bool)

(assert (= bs!759371 (and d!1342965 d!1342809)))

(assert (=> bs!759371 (not (= lambda!154628 lambda!154517))))

(assert (=> d!1342965 (not (containsKey!1136 (apply!11613 lm!1616 (_1!28006 (h!55303 (toList!3509 lm!1616)))) key!3717))))

(declare-fun lt!1627657 () Unit!82403)

(declare-fun choose!28005 (ListLongMap!2159 K!10975 (_ BitVec 64) Hashable!5155) Unit!82403)

(assert (=> d!1342965 (= lt!1627657 (choose!28005 lm!1616 key!3717 (_1!28006 (h!55303 (toList!3509 lm!1616))) hashF!1220))))

(assert (=> d!1342965 (forall!9582 (toList!3509 lm!1616) lambda!154628)))

(assert (=> d!1342965 (= (lemmaNotSameHashThenCannotContainKey!140 lm!1616 key!3717 (_1!28006 (h!55303 (toList!3509 lm!1616))) hashF!1220) lt!1627657)))

(declare-fun bs!759372 () Bool)

(assert (= bs!759372 d!1342965))

(assert (=> bs!759372 m!5111189))

(assert (=> bs!759372 m!5111189))

(assert (=> bs!759372 m!5111191))

(declare-fun m!5111827 () Bool)

(assert (=> bs!759372 m!5111827))

(declare-fun m!5111829 () Bool)

(assert (=> bs!759372 m!5111829))

(assert (=> b!4428156 d!1342965))

(declare-fun d!1342967 () Bool)

(declare-fun hash!2162 (Hashable!5155 K!10975) (_ BitVec 64))

(assert (=> d!1342967 (= (hash!2156 hashF!1220 key!3717) (hash!2162 hashF!1220 key!3717))))

(declare-fun bs!759373 () Bool)

(assert (= bs!759373 d!1342967))

(declare-fun m!5111831 () Bool)

(assert (=> bs!759373 m!5111831))

(assert (=> b!4428145 d!1342967))

(declare-fun b!4428436 () Bool)

(declare-fun tp!1333340 () Bool)

(declare-fun e!2757401 () Bool)

(assert (=> b!4428436 (= e!2757401 (and tp_is_empty!26291 tp_is_empty!26289 tp!1333340))))

(assert (=> b!4428159 (= tp!1333328 e!2757401)))

(assert (= (and b!4428159 ((_ is Cons!49611) (t!356673 newBucket!194))) b!4428436))

(declare-fun b!4428441 () Bool)

(declare-fun e!2757404 () Bool)

(declare-fun tp!1333345 () Bool)

(declare-fun tp!1333346 () Bool)

(assert (=> b!4428441 (= e!2757404 (and tp!1333345 tp!1333346))))

(assert (=> b!4428148 (= tp!1333327 e!2757404)))

(assert (= (and b!4428148 ((_ is Cons!49612) (toList!3509 lm!1616))) b!4428441))

(declare-fun b_lambda!143491 () Bool)

(assert (= b_lambda!143471 (or start!432184 b_lambda!143491)))

(declare-fun bs!759374 () Bool)

(declare-fun d!1342969 () Bool)

(assert (= bs!759374 (and d!1342969 start!432184)))

(assert (=> bs!759374 (= (dynLambda!20854 lambda!154514 (tuple2!49425 hash!366 newBucket!194)) (noDuplicateKeys!761 (_2!28006 (tuple2!49425 hash!366 newBucket!194))))))

(declare-fun m!5111833 () Bool)

(assert (=> bs!759374 m!5111833))

(assert (=> b!4428216 d!1342969))

(declare-fun b_lambda!143493 () Bool)

(assert (= b_lambda!143469 (or start!432184 b_lambda!143493)))

(declare-fun bs!759375 () Bool)

(declare-fun d!1342971 () Bool)

(assert (= bs!759375 (and d!1342971 start!432184)))

(assert (=> bs!759375 (= (dynLambda!20854 lambda!154514 (h!55303 (toList!3509 lt!1627269))) (noDuplicateKeys!761 (_2!28006 (h!55303 (toList!3509 lt!1627269)))))))

(declare-fun m!5111835 () Bool)

(assert (=> bs!759375 m!5111835))

(assert (=> b!4428172 d!1342971))

(declare-fun b_lambda!143495 () Bool)

(assert (= b_lambda!143489 (or start!432184 b_lambda!143495)))

(declare-fun bs!759376 () Bool)

(declare-fun d!1342973 () Bool)

(assert (= bs!759376 (and d!1342973 start!432184)))

(assert (=> bs!759376 (= (dynLambda!20854 lambda!154514 (h!55303 (toList!3509 lm!1616))) (noDuplicateKeys!761 (_2!28006 (h!55303 (toList!3509 lm!1616)))))))

(assert (=> bs!759376 m!5111693))

(assert (=> b!4428397 d!1342973))

(declare-fun b_lambda!143497 () Bool)

(assert (= b_lambda!143487 (or start!432184 b_lambda!143497)))

(declare-fun bs!759377 () Bool)

(declare-fun d!1342975 () Bool)

(assert (= bs!759377 (and d!1342975 start!432184)))

(assert (=> bs!759377 (= (dynLambda!20854 lambda!154514 (h!55303 (toList!3509 lt!1627275))) (noDuplicateKeys!761 (_2!28006 (h!55303 (toList!3509 lt!1627275)))))))

(declare-fun m!5111837 () Bool)

(assert (=> bs!759377 m!5111837))

(assert (=> b!4428385 d!1342975))

(check-sat (not b!4428250) (not b!4428293) (not b!4428287) (not d!1342963) (not d!1342809) (not b!4428441) (not bm!308173) (not b!4428379) (not d!1342827) (not bm!308174) (not b!4428406) (not d!1342823) (not d!1342813) (not d!1342825) tp_is_empty!26289 (not b!4428429) (not d!1342951) (not b_lambda!143493) (not bm!308158) (not b!4428386) (not b!4428305) (not bm!308171) (not d!1342877) (not d!1342965) (not b_lambda!143491) (not d!1342839) (not b!4428290) (not b!4428401) (not d!1342835) (not d!1342949) (not d!1342933) (not b!4428173) (not b!4428221) (not bs!759376) (not d!1342873) (not d!1342957) (not d!1342833) (not bm!308172) (not bm!308169) (not b!4428411) (not bs!759377) (not b!4428378) (not b!4428285) (not b!4428291) (not b!4428399) (not d!1342941) (not bs!759375) (not b!4428381) (not b!4428306) (not d!1342947) (not b!4428286) (not b!4428307) (not b!4428223) (not b!4428423) (not b!4428412) (not b!4428436) (not b!4428242) (not b!4428431) (not b_lambda!143497) (not d!1342953) (not d!1342829) (not b!4428395) (not b!4428211) (not b_lambda!143495) (not b!4428410) (not b!4428380) (not b!4428292) (not d!1342837) (not d!1342875) (not b!4428212) (not bm!308170) (not b!4428400) (not d!1342843) (not b!4428409) (not d!1342955) (not bs!759374) (not d!1342819) (not d!1342889) (not b!4428421) (not b!4428404) (not b!4428413) (not b!4428224) (not d!1342857) (not d!1342967) (not b!4428241) (not d!1342831) (not b!4428398) (not b!4428225) (not d!1342937) (not b!4428402) (not b!4428405) tp_is_empty!26291 (not b!4428396) (not d!1342871) (not b!4428308) (not bm!308175) (not d!1342945))
(check-sat)

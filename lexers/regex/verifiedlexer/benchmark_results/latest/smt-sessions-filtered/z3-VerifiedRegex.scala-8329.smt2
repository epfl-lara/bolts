; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!433160 () Bool)

(assert start!433160)

(declare-fun e!2760400 () Bool)

(declare-datatypes ((K!11050 0))(
  ( (K!11051 (val!17111 Int)) )
))
(declare-datatypes ((V!11296 0))(
  ( (V!11297 (val!17112 Int)) )
))
(declare-datatypes ((tuple2!49542 0))(
  ( (tuple2!49543 (_1!28065 K!11050) (_2!28065 V!11296)) )
))
(declare-datatypes ((List!49807 0))(
  ( (Nil!49683) (Cons!49683 (h!55386 tuple2!49542) (t!356749 List!49807)) )
))
(declare-fun newBucket!194 () List!49807)

(declare-datatypes ((tuple2!49544 0))(
  ( (tuple2!49545 (_1!28066 (_ BitVec 64)) (_2!28066 List!49807)) )
))
(declare-datatypes ((List!49808 0))(
  ( (Nil!49684) (Cons!49684 (h!55387 tuple2!49544) (t!356750 List!49808)) )
))
(declare-datatypes ((ListLongMap!2219 0))(
  ( (ListLongMap!2220 (toList!3569 List!49808)) )
))
(declare-fun lm!1616 () ListLongMap!2219)

(declare-fun b!4433110 () Bool)

(declare-fun lt!1630718 () ListLongMap!2219)

(declare-datatypes ((ListMap!2813 0))(
  ( (ListMap!2814 (toList!3570 List!49807)) )
))
(declare-fun extractMap!852 (List!49808) ListMap!2813)

(declare-fun addToMapMapFromBucket!416 (List!49807 ListMap!2813) ListMap!2813)

(assert (=> b!4433110 (= e!2760400 (= (extractMap!852 (toList!3569 lt!1630718)) (addToMapMapFromBucket!416 newBucket!194 (extractMap!852 (t!356750 (toList!3569 lm!1616))))))))

(declare-fun b!4433111 () Bool)

(declare-fun res!1834170 () Bool)

(declare-fun e!2760401 () Bool)

(assert (=> b!4433111 (=> (not res!1834170) (not e!2760401))))

(declare-datatypes ((Hashable!5185 0))(
  ( (HashableExt!5184 (__x!30888 Int)) )
))
(declare-fun hashF!1220 () Hashable!5185)

(declare-fun allKeysSameHashInMap!897 (ListLongMap!2219 Hashable!5185) Bool)

(assert (=> b!4433111 (= res!1834170 (allKeysSameHashInMap!897 lm!1616 hashF!1220))))

(declare-fun b!4433112 () Bool)

(declare-fun newValue!93 () V!11296)

(declare-fun key!3717 () K!11050)

(declare-fun e!2760402 () Bool)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun apply!11643 (ListLongMap!2219 (_ BitVec 64)) List!49807)

(assert (=> b!4433112 (= e!2760402 (= newBucket!194 (Cons!49683 (tuple2!49543 key!3717 newValue!93) (apply!11643 lm!1616 hash!366))))))

(declare-fun b!4433113 () Bool)

(declare-fun res!1834173 () Bool)

(assert (=> b!4433113 (=> (not res!1834173) (not e!2760401))))

(declare-fun contains!12218 (ListMap!2813 K!11050) Bool)

(assert (=> b!4433113 (= res!1834173 (not (contains!12218 (extractMap!852 (toList!3569 lm!1616)) key!3717)))))

(declare-fun b!4433114 () Bool)

(declare-fun res!1834176 () Bool)

(assert (=> b!4433114 (=> res!1834176 e!2760400)))

(declare-fun lt!1630715 () Bool)

(get-info :version)

(assert (=> b!4433114 (= res!1834176 (or (not ((_ is Cons!49684) (toList!3569 lm!1616))) (not (= (_1!28066 (h!55387 (toList!3569 lm!1616))) hash!366)) lt!1630715))))

(declare-fun b!4433115 () Bool)

(declare-fun res!1834175 () Bool)

(declare-fun e!2760403 () Bool)

(assert (=> b!4433115 (=> (not res!1834175) (not e!2760403))))

(declare-fun noDuplicateKeys!791 (List!49807) Bool)

(assert (=> b!4433115 (= res!1834175 (noDuplicateKeys!791 newBucket!194))))

(declare-fun b!4433117 () Bool)

(assert (=> b!4433117 (= e!2760401 e!2760403)))

(declare-fun res!1834182 () Bool)

(assert (=> b!4433117 (=> (not res!1834182) (not e!2760403))))

(declare-fun e!2760406 () Bool)

(assert (=> b!4433117 (= res!1834182 e!2760406)))

(declare-fun res!1834178 () Bool)

(assert (=> b!4433117 (=> res!1834178 e!2760406)))

(assert (=> b!4433117 (= res!1834178 e!2760402)))

(declare-fun res!1834183 () Bool)

(assert (=> b!4433117 (=> (not res!1834183) (not e!2760402))))

(assert (=> b!4433117 (= res!1834183 (not lt!1630715))))

(declare-fun lt!1630719 () Bool)

(assert (=> b!4433117 (= lt!1630715 (not lt!1630719))))

(declare-fun contains!12219 (ListLongMap!2219 (_ BitVec 64)) Bool)

(assert (=> b!4433117 (= lt!1630719 (contains!12219 lm!1616 hash!366))))

(declare-fun b!4433118 () Bool)

(declare-fun res!1834171 () Bool)

(assert (=> b!4433118 (=> (not res!1834171) (not e!2760403))))

(declare-fun lambda!155606 () Int)

(declare-fun forall!9630 (List!49808 Int) Bool)

(assert (=> b!4433118 (= res!1834171 (forall!9630 (toList!3569 lm!1616) lambda!155606))))

(declare-fun b!4433119 () Bool)

(declare-fun res!1834179 () Bool)

(assert (=> b!4433119 (=> (not res!1834179) (not e!2760401))))

(declare-fun hash!2210 (Hashable!5185 K!11050) (_ BitVec 64))

(assert (=> b!4433119 (= res!1834179 (= (hash!2210 hashF!1220 key!3717) hash!366))))

(declare-fun tp_is_empty!26409 () Bool)

(declare-fun e!2760404 () Bool)

(declare-fun b!4433120 () Bool)

(declare-fun tp!1333660 () Bool)

(declare-fun tp_is_empty!26411 () Bool)

(assert (=> b!4433120 (= e!2760404 (and tp_is_empty!26411 tp_is_empty!26409 tp!1333660))))

(declare-fun b!4433116 () Bool)

(assert (=> b!4433116 (= e!2760406 (and (not lt!1630719) (= newBucket!194 (Cons!49683 (tuple2!49543 key!3717 newValue!93) Nil!49683))))))

(declare-fun res!1834177 () Bool)

(assert (=> start!433160 (=> (not res!1834177) (not e!2760401))))

(assert (=> start!433160 (= res!1834177 (forall!9630 (toList!3569 lm!1616) lambda!155606))))

(assert (=> start!433160 e!2760401))

(assert (=> start!433160 tp_is_empty!26409))

(assert (=> start!433160 tp_is_empty!26411))

(assert (=> start!433160 e!2760404))

(declare-fun e!2760405 () Bool)

(declare-fun inv!65236 (ListLongMap!2219) Bool)

(assert (=> start!433160 (and (inv!65236 lm!1616) e!2760405)))

(assert (=> start!433160 true))

(declare-fun b!4433121 () Bool)

(declare-fun res!1834181 () Bool)

(assert (=> b!4433121 (=> res!1834181 e!2760400)))

(declare-fun lt!1630716 () tuple2!49544)

(declare-fun head!9256 (List!49808) tuple2!49544)

(assert (=> b!4433121 (= res!1834181 (not (= (head!9256 (toList!3569 lt!1630718)) lt!1630716)))))

(declare-fun b!4433122 () Bool)

(declare-fun tp!1333659 () Bool)

(assert (=> b!4433122 (= e!2760405 tp!1333659)))

(declare-fun b!4433123 () Bool)

(declare-fun res!1834172 () Bool)

(assert (=> b!4433123 (=> res!1834172 e!2760400)))

(declare-fun tail!7319 (List!49808) List!49808)

(assert (=> b!4433123 (= res!1834172 (not (= (tail!7319 (toList!3569 lt!1630718)) (t!356750 (toList!3569 lm!1616)))))))

(declare-fun b!4433124 () Bool)

(assert (=> b!4433124 (= e!2760403 (not e!2760400))))

(declare-fun res!1834174 () Bool)

(assert (=> b!4433124 (=> res!1834174 e!2760400)))

(assert (=> b!4433124 (= res!1834174 (not (forall!9630 (toList!3569 lt!1630718) lambda!155606)))))

(assert (=> b!4433124 (forall!9630 (toList!3569 lt!1630718) lambda!155606)))

(declare-fun +!1151 (ListLongMap!2219 tuple2!49544) ListLongMap!2219)

(assert (=> b!4433124 (= lt!1630718 (+!1151 lm!1616 lt!1630716))))

(assert (=> b!4433124 (= lt!1630716 (tuple2!49545 hash!366 newBucket!194))))

(declare-datatypes ((Unit!82881 0))(
  ( (Unit!82882) )
))
(declare-fun lt!1630717 () Unit!82881)

(declare-fun addValidProp!433 (ListLongMap!2219 Int (_ BitVec 64) List!49807) Unit!82881)

(assert (=> b!4433124 (= lt!1630717 (addValidProp!433 lm!1616 lambda!155606 hash!366 newBucket!194))))

(declare-fun b!4433125 () Bool)

(declare-fun res!1834180 () Bool)

(assert (=> b!4433125 (=> (not res!1834180) (not e!2760401))))

(declare-fun allKeysSameHash!751 (List!49807 (_ BitVec 64) Hashable!5185) Bool)

(assert (=> b!4433125 (= res!1834180 (allKeysSameHash!751 newBucket!194 hash!366 hashF!1220))))

(assert (= (and start!433160 res!1834177) b!4433111))

(assert (= (and b!4433111 res!1834170) b!4433119))

(assert (= (and b!4433119 res!1834179) b!4433125))

(assert (= (and b!4433125 res!1834180) b!4433113))

(assert (= (and b!4433113 res!1834173) b!4433117))

(assert (= (and b!4433117 res!1834183) b!4433112))

(assert (= (and b!4433117 (not res!1834178)) b!4433116))

(assert (= (and b!4433117 res!1834182) b!4433115))

(assert (= (and b!4433115 res!1834175) b!4433118))

(assert (= (and b!4433118 res!1834171) b!4433124))

(assert (= (and b!4433124 (not res!1834174)) b!4433114))

(assert (= (and b!4433114 (not res!1834176)) b!4433121))

(assert (= (and b!4433121 (not res!1834181)) b!4433123))

(assert (= (and b!4433123 (not res!1834172)) b!4433110))

(assert (= (and start!433160 ((_ is Cons!49683) newBucket!194)) b!4433120))

(assert (= start!433160 b!4433122))

(declare-fun m!5118207 () Bool)

(assert (=> start!433160 m!5118207))

(declare-fun m!5118209 () Bool)

(assert (=> start!433160 m!5118209))

(declare-fun m!5118211 () Bool)

(assert (=> b!4433113 m!5118211))

(assert (=> b!4433113 m!5118211))

(declare-fun m!5118213 () Bool)

(assert (=> b!4433113 m!5118213))

(declare-fun m!5118215 () Bool)

(assert (=> b!4433117 m!5118215))

(declare-fun m!5118217 () Bool)

(assert (=> b!4433125 m!5118217))

(declare-fun m!5118219 () Bool)

(assert (=> b!4433115 m!5118219))

(declare-fun m!5118221 () Bool)

(assert (=> b!4433124 m!5118221))

(assert (=> b!4433124 m!5118221))

(declare-fun m!5118223 () Bool)

(assert (=> b!4433124 m!5118223))

(declare-fun m!5118225 () Bool)

(assert (=> b!4433124 m!5118225))

(declare-fun m!5118227 () Bool)

(assert (=> b!4433121 m!5118227))

(declare-fun m!5118229 () Bool)

(assert (=> b!4433112 m!5118229))

(declare-fun m!5118231 () Bool)

(assert (=> b!4433123 m!5118231))

(declare-fun m!5118233 () Bool)

(assert (=> b!4433119 m!5118233))

(assert (=> b!4433118 m!5118207))

(declare-fun m!5118235 () Bool)

(assert (=> b!4433110 m!5118235))

(declare-fun m!5118237 () Bool)

(assert (=> b!4433110 m!5118237))

(assert (=> b!4433110 m!5118237))

(declare-fun m!5118239 () Bool)

(assert (=> b!4433110 m!5118239))

(declare-fun m!5118241 () Bool)

(assert (=> b!4433111 m!5118241))

(check-sat tp_is_empty!26409 (not b!4433117) (not b!4433119) (not b!4433111) tp_is_empty!26411 (not b!4433123) (not b!4433125) (not b!4433112) (not b!4433115) (not b!4433122) (not b!4433118) (not b!4433120) (not start!433160) (not b!4433113) (not b!4433121) (not b!4433124) (not b!4433110))
(check-sat)
(get-model)

(declare-fun d!1345032 () Bool)

(declare-fun res!1834188 () Bool)

(declare-fun e!2760411 () Bool)

(assert (=> d!1345032 (=> res!1834188 e!2760411)))

(assert (=> d!1345032 (= res!1834188 ((_ is Nil!49684) (toList!3569 lt!1630718)))))

(assert (=> d!1345032 (= (forall!9630 (toList!3569 lt!1630718) lambda!155606) e!2760411)))

(declare-fun b!4433130 () Bool)

(declare-fun e!2760412 () Bool)

(assert (=> b!4433130 (= e!2760411 e!2760412)))

(declare-fun res!1834189 () Bool)

(assert (=> b!4433130 (=> (not res!1834189) (not e!2760412))))

(declare-fun dynLambda!20880 (Int tuple2!49544) Bool)

(assert (=> b!4433130 (= res!1834189 (dynLambda!20880 lambda!155606 (h!55387 (toList!3569 lt!1630718))))))

(declare-fun b!4433131 () Bool)

(assert (=> b!4433131 (= e!2760412 (forall!9630 (t!356750 (toList!3569 lt!1630718)) lambda!155606))))

(assert (= (and d!1345032 (not res!1834188)) b!4433130))

(assert (= (and b!4433130 res!1834189) b!4433131))

(declare-fun b_lambda!144115 () Bool)

(assert (=> (not b_lambda!144115) (not b!4433130)))

(declare-fun m!5118243 () Bool)

(assert (=> b!4433130 m!5118243))

(declare-fun m!5118245 () Bool)

(assert (=> b!4433131 m!5118245))

(assert (=> b!4433124 d!1345032))

(declare-fun d!1345036 () Bool)

(declare-fun e!2760435 () Bool)

(assert (=> d!1345036 e!2760435))

(declare-fun res!1834213 () Bool)

(assert (=> d!1345036 (=> (not res!1834213) (not e!2760435))))

(declare-fun lt!1630751 () ListLongMap!2219)

(assert (=> d!1345036 (= res!1834213 (contains!12219 lt!1630751 (_1!28066 lt!1630716)))))

(declare-fun lt!1630748 () List!49808)

(assert (=> d!1345036 (= lt!1630751 (ListLongMap!2220 lt!1630748))))

(declare-fun lt!1630750 () Unit!82881)

(declare-fun lt!1630749 () Unit!82881)

(assert (=> d!1345036 (= lt!1630750 lt!1630749)))

(declare-datatypes ((Option!10761 0))(
  ( (None!10760) (Some!10760 (v!43966 List!49807)) )
))
(declare-fun getValueByKey!747 (List!49808 (_ BitVec 64)) Option!10761)

(assert (=> d!1345036 (= (getValueByKey!747 lt!1630748 (_1!28066 lt!1630716)) (Some!10760 (_2!28066 lt!1630716)))))

(declare-fun lemmaContainsTupThenGetReturnValue!479 (List!49808 (_ BitVec 64) List!49807) Unit!82881)

(assert (=> d!1345036 (= lt!1630749 (lemmaContainsTupThenGetReturnValue!479 lt!1630748 (_1!28066 lt!1630716) (_2!28066 lt!1630716)))))

(declare-fun insertStrictlySorted!278 (List!49808 (_ BitVec 64) List!49807) List!49808)

(assert (=> d!1345036 (= lt!1630748 (insertStrictlySorted!278 (toList!3569 lm!1616) (_1!28066 lt!1630716) (_2!28066 lt!1630716)))))

(assert (=> d!1345036 (= (+!1151 lm!1616 lt!1630716) lt!1630751)))

(declare-fun b!4433161 () Bool)

(declare-fun res!1834214 () Bool)

(assert (=> b!4433161 (=> (not res!1834214) (not e!2760435))))

(assert (=> b!4433161 (= res!1834214 (= (getValueByKey!747 (toList!3569 lt!1630751) (_1!28066 lt!1630716)) (Some!10760 (_2!28066 lt!1630716))))))

(declare-fun b!4433162 () Bool)

(declare-fun contains!12222 (List!49808 tuple2!49544) Bool)

(assert (=> b!4433162 (= e!2760435 (contains!12222 (toList!3569 lt!1630751) lt!1630716))))

(assert (= (and d!1345036 res!1834213) b!4433161))

(assert (= (and b!4433161 res!1834214) b!4433162))

(declare-fun m!5118263 () Bool)

(assert (=> d!1345036 m!5118263))

(declare-fun m!5118265 () Bool)

(assert (=> d!1345036 m!5118265))

(declare-fun m!5118267 () Bool)

(assert (=> d!1345036 m!5118267))

(declare-fun m!5118269 () Bool)

(assert (=> d!1345036 m!5118269))

(declare-fun m!5118271 () Bool)

(assert (=> b!4433161 m!5118271))

(declare-fun m!5118273 () Bool)

(assert (=> b!4433162 m!5118273))

(assert (=> b!4433124 d!1345036))

(declare-fun d!1345044 () Bool)

(assert (=> d!1345044 (forall!9630 (toList!3569 (+!1151 lm!1616 (tuple2!49545 hash!366 newBucket!194))) lambda!155606)))

(declare-fun lt!1630761 () Unit!82881)

(declare-fun choose!28093 (ListLongMap!2219 Int (_ BitVec 64) List!49807) Unit!82881)

(assert (=> d!1345044 (= lt!1630761 (choose!28093 lm!1616 lambda!155606 hash!366 newBucket!194))))

(declare-fun e!2760444 () Bool)

(assert (=> d!1345044 e!2760444))

(declare-fun res!1834224 () Bool)

(assert (=> d!1345044 (=> (not res!1834224) (not e!2760444))))

(assert (=> d!1345044 (= res!1834224 (forall!9630 (toList!3569 lm!1616) lambda!155606))))

(assert (=> d!1345044 (= (addValidProp!433 lm!1616 lambda!155606 hash!366 newBucket!194) lt!1630761)))

(declare-fun b!4433176 () Bool)

(assert (=> b!4433176 (= e!2760444 (dynLambda!20880 lambda!155606 (tuple2!49545 hash!366 newBucket!194)))))

(assert (= (and d!1345044 res!1834224) b!4433176))

(declare-fun b_lambda!144123 () Bool)

(assert (=> (not b_lambda!144123) (not b!4433176)))

(declare-fun m!5118307 () Bool)

(assert (=> d!1345044 m!5118307))

(declare-fun m!5118309 () Bool)

(assert (=> d!1345044 m!5118309))

(declare-fun m!5118313 () Bool)

(assert (=> d!1345044 m!5118313))

(assert (=> d!1345044 m!5118207))

(declare-fun m!5118315 () Bool)

(assert (=> b!4433176 m!5118315))

(assert (=> b!4433124 d!1345044))

(declare-fun d!1345062 () Bool)

(assert (=> d!1345062 true))

(assert (=> d!1345062 true))

(declare-fun lambda!155615 () Int)

(declare-fun forall!9632 (List!49807 Int) Bool)

(assert (=> d!1345062 (= (allKeysSameHash!751 newBucket!194 hash!366 hashF!1220) (forall!9632 newBucket!194 lambda!155615))))

(declare-fun bs!760516 () Bool)

(assert (= bs!760516 d!1345062))

(declare-fun m!5118317 () Bool)

(assert (=> bs!760516 m!5118317))

(assert (=> b!4433125 d!1345062))

(declare-fun d!1345064 () Bool)

(assert (=> d!1345064 (= (tail!7319 (toList!3569 lt!1630718)) (t!356750 (toList!3569 lt!1630718)))))

(assert (=> b!4433123 d!1345064))

(declare-fun d!1345066 () Bool)

(declare-fun get!16198 (Option!10761) List!49807)

(assert (=> d!1345066 (= (apply!11643 lm!1616 hash!366) (get!16198 (getValueByKey!747 (toList!3569 lm!1616) hash!366)))))

(declare-fun bs!760517 () Bool)

(assert (= bs!760517 d!1345066))

(declare-fun m!5118319 () Bool)

(assert (=> bs!760517 m!5118319))

(assert (=> bs!760517 m!5118319))

(declare-fun m!5118321 () Bool)

(assert (=> bs!760517 m!5118321))

(assert (=> b!4433112 d!1345066))

(declare-fun b!4433238 () Bool)

(declare-fun e!2760480 () Bool)

(declare-datatypes ((List!49810 0))(
  ( (Nil!49686) (Cons!49686 (h!55391 K!11050) (t!356752 List!49810)) )
))
(declare-fun contains!12223 (List!49810 K!11050) Bool)

(declare-fun keys!16992 (ListMap!2813) List!49810)

(assert (=> b!4433238 (= e!2760480 (not (contains!12223 (keys!16992 (extractMap!852 (toList!3569 lm!1616))) key!3717)))))

(declare-fun b!4433239 () Bool)

(declare-fun e!2760484 () List!49810)

(assert (=> b!4433239 (= e!2760484 (keys!16992 (extractMap!852 (toList!3569 lm!1616))))))

(declare-fun d!1345068 () Bool)

(declare-fun e!2760482 () Bool)

(assert (=> d!1345068 e!2760482))

(declare-fun res!1834241 () Bool)

(assert (=> d!1345068 (=> res!1834241 e!2760482)))

(assert (=> d!1345068 (= res!1834241 e!2760480)))

(declare-fun res!1834242 () Bool)

(assert (=> d!1345068 (=> (not res!1834242) (not e!2760480))))

(declare-fun lt!1630811 () Bool)

(assert (=> d!1345068 (= res!1834242 (not lt!1630811))))

(declare-fun lt!1630810 () Bool)

(assert (=> d!1345068 (= lt!1630811 lt!1630810)))

(declare-fun lt!1630807 () Unit!82881)

(declare-fun e!2760479 () Unit!82881)

(assert (=> d!1345068 (= lt!1630807 e!2760479)))

(declare-fun c!754560 () Bool)

(assert (=> d!1345068 (= c!754560 lt!1630810)))

(declare-fun containsKey!1180 (List!49807 K!11050) Bool)

(assert (=> d!1345068 (= lt!1630810 (containsKey!1180 (toList!3570 (extractMap!852 (toList!3569 lm!1616))) key!3717))))

(assert (=> d!1345068 (= (contains!12218 (extractMap!852 (toList!3569 lm!1616)) key!3717) lt!1630811)))

(declare-fun b!4433240 () Bool)

(declare-fun lt!1630809 () Unit!82881)

(assert (=> b!4433240 (= e!2760479 lt!1630809)))

(declare-fun lt!1630813 () Unit!82881)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!656 (List!49807 K!11050) Unit!82881)

(assert (=> b!4433240 (= lt!1630813 (lemmaContainsKeyImpliesGetValueByKeyDefined!656 (toList!3570 (extractMap!852 (toList!3569 lm!1616))) key!3717))))

(declare-datatypes ((Option!10762 0))(
  ( (None!10761) (Some!10761 (v!43967 V!11296)) )
))
(declare-fun isDefined!8053 (Option!10762) Bool)

(declare-fun getValueByKey!748 (List!49807 K!11050) Option!10762)

(assert (=> b!4433240 (isDefined!8053 (getValueByKey!748 (toList!3570 (extractMap!852 (toList!3569 lm!1616))) key!3717))))

(declare-fun lt!1630806 () Unit!82881)

(assert (=> b!4433240 (= lt!1630806 lt!1630813)))

(declare-fun lemmaInListThenGetKeysListContains!267 (List!49807 K!11050) Unit!82881)

(assert (=> b!4433240 (= lt!1630809 (lemmaInListThenGetKeysListContains!267 (toList!3570 (extractMap!852 (toList!3569 lm!1616))) key!3717))))

(declare-fun call!308432 () Bool)

(assert (=> b!4433240 call!308432))

(declare-fun b!4433241 () Bool)

(declare-fun getKeysList!270 (List!49807) List!49810)

(assert (=> b!4433241 (= e!2760484 (getKeysList!270 (toList!3570 (extractMap!852 (toList!3569 lm!1616)))))))

(declare-fun b!4433242 () Bool)

(declare-fun e!2760483 () Bool)

(assert (=> b!4433242 (= e!2760483 (contains!12223 (keys!16992 (extractMap!852 (toList!3569 lm!1616))) key!3717))))

(declare-fun b!4433243 () Bool)

(assert (=> b!4433243 (= e!2760482 e!2760483)))

(declare-fun res!1834240 () Bool)

(assert (=> b!4433243 (=> (not res!1834240) (not e!2760483))))

(assert (=> b!4433243 (= res!1834240 (isDefined!8053 (getValueByKey!748 (toList!3570 (extractMap!852 (toList!3569 lm!1616))) key!3717)))))

(declare-fun b!4433244 () Bool)

(declare-fun e!2760481 () Unit!82881)

(declare-fun Unit!82897 () Unit!82881)

(assert (=> b!4433244 (= e!2760481 Unit!82897)))

(declare-fun b!4433245 () Bool)

(assert (=> b!4433245 (= e!2760479 e!2760481)))

(declare-fun c!754558 () Bool)

(assert (=> b!4433245 (= c!754558 call!308432)))

(declare-fun b!4433246 () Bool)

(assert (=> b!4433246 false))

(declare-fun lt!1630808 () Unit!82881)

(declare-fun lt!1630812 () Unit!82881)

(assert (=> b!4433246 (= lt!1630808 lt!1630812)))

(assert (=> b!4433246 (containsKey!1180 (toList!3570 (extractMap!852 (toList!3569 lm!1616))) key!3717)))

(declare-fun lemmaInGetKeysListThenContainsKey!268 (List!49807 K!11050) Unit!82881)

(assert (=> b!4433246 (= lt!1630812 (lemmaInGetKeysListThenContainsKey!268 (toList!3570 (extractMap!852 (toList!3569 lm!1616))) key!3717))))

(declare-fun Unit!82898 () Unit!82881)

(assert (=> b!4433246 (= e!2760481 Unit!82898)))

(declare-fun bm!308427 () Bool)

(assert (=> bm!308427 (= call!308432 (contains!12223 e!2760484 key!3717))))

(declare-fun c!754559 () Bool)

(assert (=> bm!308427 (= c!754559 c!754560)))

(assert (= (and d!1345068 c!754560) b!4433240))

(assert (= (and d!1345068 (not c!754560)) b!4433245))

(assert (= (and b!4433245 c!754558) b!4433246))

(assert (= (and b!4433245 (not c!754558)) b!4433244))

(assert (= (or b!4433240 b!4433245) bm!308427))

(assert (= (and bm!308427 c!754559) b!4433241))

(assert (= (and bm!308427 (not c!754559)) b!4433239))

(assert (= (and d!1345068 res!1834242) b!4433238))

(assert (= (and d!1345068 (not res!1834241)) b!4433243))

(assert (= (and b!4433243 res!1834240) b!4433242))

(declare-fun m!5118357 () Bool)

(assert (=> b!4433240 m!5118357))

(declare-fun m!5118359 () Bool)

(assert (=> b!4433240 m!5118359))

(assert (=> b!4433240 m!5118359))

(declare-fun m!5118361 () Bool)

(assert (=> b!4433240 m!5118361))

(declare-fun m!5118363 () Bool)

(assert (=> b!4433240 m!5118363))

(assert (=> b!4433243 m!5118359))

(assert (=> b!4433243 m!5118359))

(assert (=> b!4433243 m!5118361))

(declare-fun m!5118365 () Bool)

(assert (=> b!4433246 m!5118365))

(declare-fun m!5118367 () Bool)

(assert (=> b!4433246 m!5118367))

(assert (=> b!4433239 m!5118211))

(declare-fun m!5118369 () Bool)

(assert (=> b!4433239 m!5118369))

(assert (=> b!4433238 m!5118211))

(assert (=> b!4433238 m!5118369))

(assert (=> b!4433238 m!5118369))

(declare-fun m!5118371 () Bool)

(assert (=> b!4433238 m!5118371))

(assert (=> d!1345068 m!5118365))

(assert (=> b!4433242 m!5118211))

(assert (=> b!4433242 m!5118369))

(assert (=> b!4433242 m!5118369))

(assert (=> b!4433242 m!5118371))

(declare-fun m!5118373 () Bool)

(assert (=> bm!308427 m!5118373))

(declare-fun m!5118375 () Bool)

(assert (=> b!4433241 m!5118375))

(assert (=> b!4433113 d!1345068))

(declare-fun bs!760523 () Bool)

(declare-fun d!1345078 () Bool)

(assert (= bs!760523 (and d!1345078 start!433160)))

(declare-fun lambda!155622 () Int)

(assert (=> bs!760523 (= lambda!155622 lambda!155606)))

(declare-fun lt!1630816 () ListMap!2813)

(declare-fun invariantList!823 (List!49807) Bool)

(assert (=> d!1345078 (invariantList!823 (toList!3570 lt!1630816))))

(declare-fun e!2760487 () ListMap!2813)

(assert (=> d!1345078 (= lt!1630816 e!2760487)))

(declare-fun c!754563 () Bool)

(assert (=> d!1345078 (= c!754563 ((_ is Cons!49684) (toList!3569 lm!1616)))))

(assert (=> d!1345078 (forall!9630 (toList!3569 lm!1616) lambda!155622)))

(assert (=> d!1345078 (= (extractMap!852 (toList!3569 lm!1616)) lt!1630816)))

(declare-fun b!4433251 () Bool)

(assert (=> b!4433251 (= e!2760487 (addToMapMapFromBucket!416 (_2!28066 (h!55387 (toList!3569 lm!1616))) (extractMap!852 (t!356750 (toList!3569 lm!1616)))))))

(declare-fun b!4433252 () Bool)

(assert (=> b!4433252 (= e!2760487 (ListMap!2814 Nil!49683))))

(assert (= (and d!1345078 c!754563) b!4433251))

(assert (= (and d!1345078 (not c!754563)) b!4433252))

(declare-fun m!5118377 () Bool)

(assert (=> d!1345078 m!5118377))

(declare-fun m!5118379 () Bool)

(assert (=> d!1345078 m!5118379))

(assert (=> b!4433251 m!5118237))

(assert (=> b!4433251 m!5118237))

(declare-fun m!5118381 () Bool)

(assert (=> b!4433251 m!5118381))

(assert (=> b!4433113 d!1345078))

(declare-fun bs!760524 () Bool)

(declare-fun d!1345080 () Bool)

(assert (= bs!760524 (and d!1345080 start!433160)))

(declare-fun lambda!155625 () Int)

(assert (=> bs!760524 (not (= lambda!155625 lambda!155606))))

(declare-fun bs!760525 () Bool)

(assert (= bs!760525 (and d!1345080 d!1345078)))

(assert (=> bs!760525 (not (= lambda!155625 lambda!155622))))

(assert (=> d!1345080 true))

(assert (=> d!1345080 (= (allKeysSameHashInMap!897 lm!1616 hashF!1220) (forall!9630 (toList!3569 lm!1616) lambda!155625))))

(declare-fun bs!760526 () Bool)

(assert (= bs!760526 d!1345080))

(declare-fun m!5118383 () Bool)

(assert (=> bs!760526 m!5118383))

(assert (=> b!4433111 d!1345080))

(declare-fun d!1345082 () Bool)

(assert (=> d!1345082 (= (head!9256 (toList!3569 lt!1630718)) (h!55387 (toList!3569 lt!1630718)))))

(assert (=> b!4433121 d!1345082))

(declare-fun bs!760527 () Bool)

(declare-fun d!1345084 () Bool)

(assert (= bs!760527 (and d!1345084 start!433160)))

(declare-fun lambda!155626 () Int)

(assert (=> bs!760527 (= lambda!155626 lambda!155606)))

(declare-fun bs!760528 () Bool)

(assert (= bs!760528 (and d!1345084 d!1345078)))

(assert (=> bs!760528 (= lambda!155626 lambda!155622)))

(declare-fun bs!760529 () Bool)

(assert (= bs!760529 (and d!1345084 d!1345080)))

(assert (=> bs!760529 (not (= lambda!155626 lambda!155625))))

(declare-fun lt!1630817 () ListMap!2813)

(assert (=> d!1345084 (invariantList!823 (toList!3570 lt!1630817))))

(declare-fun e!2760488 () ListMap!2813)

(assert (=> d!1345084 (= lt!1630817 e!2760488)))

(declare-fun c!754564 () Bool)

(assert (=> d!1345084 (= c!754564 ((_ is Cons!49684) (toList!3569 lt!1630718)))))

(assert (=> d!1345084 (forall!9630 (toList!3569 lt!1630718) lambda!155626)))

(assert (=> d!1345084 (= (extractMap!852 (toList!3569 lt!1630718)) lt!1630817)))

(declare-fun b!4433255 () Bool)

(assert (=> b!4433255 (= e!2760488 (addToMapMapFromBucket!416 (_2!28066 (h!55387 (toList!3569 lt!1630718))) (extractMap!852 (t!356750 (toList!3569 lt!1630718)))))))

(declare-fun b!4433256 () Bool)

(assert (=> b!4433256 (= e!2760488 (ListMap!2814 Nil!49683))))

(assert (= (and d!1345084 c!754564) b!4433255))

(assert (= (and d!1345084 (not c!754564)) b!4433256))

(declare-fun m!5118385 () Bool)

(assert (=> d!1345084 m!5118385))

(declare-fun m!5118387 () Bool)

(assert (=> d!1345084 m!5118387))

(declare-fun m!5118389 () Bool)

(assert (=> b!4433255 m!5118389))

(assert (=> b!4433255 m!5118389))

(declare-fun m!5118391 () Bool)

(assert (=> b!4433255 m!5118391))

(assert (=> b!4433110 d!1345084))

(declare-fun bs!760543 () Bool)

(declare-fun b!4433300 () Bool)

(assert (= bs!760543 (and b!4433300 d!1345062)))

(declare-fun lambda!155688 () Int)

(assert (=> bs!760543 (not (= lambda!155688 lambda!155615))))

(assert (=> b!4433300 true))

(declare-fun bs!760544 () Bool)

(declare-fun b!4433297 () Bool)

(assert (= bs!760544 (and b!4433297 d!1345062)))

(declare-fun lambda!155689 () Int)

(assert (=> bs!760544 (not (= lambda!155689 lambda!155615))))

(declare-fun bs!760545 () Bool)

(assert (= bs!760545 (and b!4433297 b!4433300)))

(assert (=> bs!760545 (= lambda!155689 lambda!155688)))

(assert (=> b!4433297 true))

(declare-fun lambda!155690 () Int)

(assert (=> bs!760544 (not (= lambda!155690 lambda!155615))))

(declare-fun lt!1630944 () ListMap!2813)

(assert (=> bs!760545 (= (= lt!1630944 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155690 lambda!155688))))

(assert (=> b!4433297 (= (= lt!1630944 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155690 lambda!155689))))

(assert (=> b!4433297 true))

(declare-fun bs!760546 () Bool)

(declare-fun d!1345086 () Bool)

(assert (= bs!760546 (and d!1345086 d!1345062)))

(declare-fun lambda!155691 () Int)

(assert (=> bs!760546 (not (= lambda!155691 lambda!155615))))

(declare-fun bs!760547 () Bool)

(assert (= bs!760547 (and d!1345086 b!4433300)))

(declare-fun lt!1630940 () ListMap!2813)

(assert (=> bs!760547 (= (= lt!1630940 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155691 lambda!155688))))

(declare-fun bs!760548 () Bool)

(assert (= bs!760548 (and d!1345086 b!4433297)))

(assert (=> bs!760548 (= (= lt!1630940 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155691 lambda!155689))))

(assert (=> bs!760548 (= (= lt!1630940 lt!1630944) (= lambda!155691 lambda!155690))))

(assert (=> d!1345086 true))

(declare-fun b!4433296 () Bool)

(declare-fun e!2760513 () Bool)

(assert (=> b!4433296 (= e!2760513 (forall!9632 (toList!3570 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) lambda!155690))))

(declare-fun bm!308443 () Bool)

(declare-fun call!308449 () Bool)

(declare-fun c!754571 () Bool)

(assert (=> bm!308443 (= call!308449 (forall!9632 (toList!3570 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (ite c!754571 lambda!155688 lambda!155689)))))

(declare-fun call!308450 () Bool)

(declare-fun lt!1630927 () ListMap!2813)

(declare-fun bm!308444 () Bool)

(assert (=> bm!308444 (= call!308450 (forall!9632 (ite c!754571 (toList!3570 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (toList!3570 lt!1630927)) (ite c!754571 lambda!155688 lambda!155690)))))

(declare-fun e!2760512 () ListMap!2813)

(assert (=> b!4433297 (= e!2760512 lt!1630944)))

(declare-fun +!1153 (ListMap!2813 tuple2!49542) ListMap!2813)

(assert (=> b!4433297 (= lt!1630927 (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194)))))

(assert (=> b!4433297 (= lt!1630944 (addToMapMapFromBucket!416 (t!356749 newBucket!194) (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194))))))

(declare-fun lt!1630928 () Unit!82881)

(declare-fun call!308448 () Unit!82881)

(assert (=> b!4433297 (= lt!1630928 call!308448)))

(assert (=> b!4433297 call!308449))

(declare-fun lt!1630937 () Unit!82881)

(assert (=> b!4433297 (= lt!1630937 lt!1630928)))

(assert (=> b!4433297 (forall!9632 (toList!3570 lt!1630927) lambda!155690)))

(declare-fun lt!1630926 () Unit!82881)

(declare-fun Unit!82899 () Unit!82881)

(assert (=> b!4433297 (= lt!1630926 Unit!82899)))

(assert (=> b!4433297 (forall!9632 (t!356749 newBucket!194) lambda!155690)))

(declare-fun lt!1630938 () Unit!82881)

(declare-fun Unit!82900 () Unit!82881)

(assert (=> b!4433297 (= lt!1630938 Unit!82900)))

(declare-fun lt!1630924 () Unit!82881)

(declare-fun Unit!82901 () Unit!82881)

(assert (=> b!4433297 (= lt!1630924 Unit!82901)))

(declare-fun lt!1630929 () Unit!82881)

(declare-fun forallContained!2119 (List!49807 Int tuple2!49542) Unit!82881)

(assert (=> b!4433297 (= lt!1630929 (forallContained!2119 (toList!3570 lt!1630927) lambda!155690 (h!55386 newBucket!194)))))

(assert (=> b!4433297 (contains!12218 lt!1630927 (_1!28065 (h!55386 newBucket!194)))))

(declare-fun lt!1630930 () Unit!82881)

(declare-fun Unit!82902 () Unit!82881)

(assert (=> b!4433297 (= lt!1630930 Unit!82902)))

(assert (=> b!4433297 (contains!12218 lt!1630944 (_1!28065 (h!55386 newBucket!194)))))

(declare-fun lt!1630934 () Unit!82881)

(declare-fun Unit!82903 () Unit!82881)

(assert (=> b!4433297 (= lt!1630934 Unit!82903)))

(assert (=> b!4433297 (forall!9632 newBucket!194 lambda!155690)))

(declare-fun lt!1630932 () Unit!82881)

(declare-fun Unit!82904 () Unit!82881)

(assert (=> b!4433297 (= lt!1630932 Unit!82904)))

(assert (=> b!4433297 call!308450))

(declare-fun lt!1630933 () Unit!82881)

(declare-fun Unit!82905 () Unit!82881)

(assert (=> b!4433297 (= lt!1630933 Unit!82905)))

(declare-fun lt!1630935 () Unit!82881)

(declare-fun Unit!82906 () Unit!82881)

(assert (=> b!4433297 (= lt!1630935 Unit!82906)))

(declare-fun lt!1630925 () Unit!82881)

(declare-fun addForallContainsKeyThenBeforeAdding!191 (ListMap!2813 ListMap!2813 K!11050 V!11296) Unit!82881)

(assert (=> b!4433297 (= lt!1630925 (addForallContainsKeyThenBeforeAdding!191 (extractMap!852 (t!356750 (toList!3569 lm!1616))) lt!1630944 (_1!28065 (h!55386 newBucket!194)) (_2!28065 (h!55386 newBucket!194))))))

(assert (=> b!4433297 (forall!9632 (toList!3570 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) lambda!155690)))

(declare-fun lt!1630943 () Unit!82881)

(assert (=> b!4433297 (= lt!1630943 lt!1630925)))

(assert (=> b!4433297 (forall!9632 (toList!3570 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) lambda!155690)))

(declare-fun lt!1630936 () Unit!82881)

(declare-fun Unit!82907 () Unit!82881)

(assert (=> b!4433297 (= lt!1630936 Unit!82907)))

(declare-fun res!1834260 () Bool)

(assert (=> b!4433297 (= res!1834260 (forall!9632 newBucket!194 lambda!155690))))

(assert (=> b!4433297 (=> (not res!1834260) (not e!2760513))))

(assert (=> b!4433297 e!2760513))

(declare-fun lt!1630942 () Unit!82881)

(declare-fun Unit!82908 () Unit!82881)

(assert (=> b!4433297 (= lt!1630942 Unit!82908)))

(declare-fun b!4433298 () Bool)

(declare-fun res!1834258 () Bool)

(declare-fun e!2760511 () Bool)

(assert (=> b!4433298 (=> (not res!1834258) (not e!2760511))))

(assert (=> b!4433298 (= res!1834258 (forall!9632 (toList!3570 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) lambda!155691))))

(assert (=> d!1345086 e!2760511))

(declare-fun res!1834259 () Bool)

(assert (=> d!1345086 (=> (not res!1834259) (not e!2760511))))

(assert (=> d!1345086 (= res!1834259 (forall!9632 newBucket!194 lambda!155691))))

(assert (=> d!1345086 (= lt!1630940 e!2760512)))

(assert (=> d!1345086 (= c!754571 ((_ is Nil!49683) newBucket!194))))

(assert (=> d!1345086 (noDuplicateKeys!791 newBucket!194)))

(assert (=> d!1345086 (= (addToMapMapFromBucket!416 newBucket!194 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) lt!1630940)))

(declare-fun b!4433299 () Bool)

(assert (=> b!4433299 (= e!2760511 (invariantList!823 (toList!3570 lt!1630940)))))

(assert (=> b!4433300 (= e!2760512 (extractMap!852 (t!356750 (toList!3569 lm!1616))))))

(declare-fun lt!1630941 () Unit!82881)

(assert (=> b!4433300 (= lt!1630941 call!308448)))

(assert (=> b!4433300 call!308449))

(declare-fun lt!1630931 () Unit!82881)

(assert (=> b!4433300 (= lt!1630931 lt!1630941)))

(assert (=> b!4433300 call!308450))

(declare-fun lt!1630939 () Unit!82881)

(declare-fun Unit!82909 () Unit!82881)

(assert (=> b!4433300 (= lt!1630939 Unit!82909)))

(declare-fun bm!308445 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!191 (ListMap!2813) Unit!82881)

(assert (=> bm!308445 (= call!308448 (lemmaContainsAllItsOwnKeys!191 (extractMap!852 (t!356750 (toList!3569 lm!1616)))))))

(assert (= (and d!1345086 c!754571) b!4433300))

(assert (= (and d!1345086 (not c!754571)) b!4433297))

(assert (= (and b!4433297 res!1834260) b!4433296))

(assert (= (or b!4433300 b!4433297) bm!308445))

(assert (= (or b!4433300 b!4433297) bm!308444))

(assert (= (or b!4433300 b!4433297) bm!308443))

(assert (= (and d!1345086 res!1834259) b!4433298))

(assert (= (and b!4433298 res!1834258) b!4433299))

(declare-fun m!5118439 () Bool)

(assert (=> bm!308444 m!5118439))

(declare-fun m!5118441 () Bool)

(assert (=> b!4433299 m!5118441))

(declare-fun m!5118443 () Bool)

(assert (=> b!4433298 m!5118443))

(declare-fun m!5118445 () Bool)

(assert (=> b!4433296 m!5118445))

(declare-fun m!5118447 () Bool)

(assert (=> d!1345086 m!5118447))

(assert (=> d!1345086 m!5118219))

(declare-fun m!5118449 () Bool)

(assert (=> b!4433297 m!5118449))

(assert (=> b!4433297 m!5118237))

(declare-fun m!5118451 () Bool)

(assert (=> b!4433297 m!5118451))

(assert (=> b!4433297 m!5118445))

(declare-fun m!5118453 () Bool)

(assert (=> b!4433297 m!5118453))

(declare-fun m!5118455 () Bool)

(assert (=> b!4433297 m!5118455))

(declare-fun m!5118457 () Bool)

(assert (=> b!4433297 m!5118457))

(assert (=> b!4433297 m!5118237))

(assert (=> b!4433297 m!5118453))

(declare-fun m!5118459 () Bool)

(assert (=> b!4433297 m!5118459))

(declare-fun m!5118461 () Bool)

(assert (=> b!4433297 m!5118461))

(declare-fun m!5118463 () Bool)

(assert (=> b!4433297 m!5118463))

(assert (=> b!4433297 m!5118445))

(declare-fun m!5118465 () Bool)

(assert (=> b!4433297 m!5118465))

(assert (=> b!4433297 m!5118461))

(assert (=> bm!308445 m!5118237))

(declare-fun m!5118467 () Bool)

(assert (=> bm!308445 m!5118467))

(declare-fun m!5118469 () Bool)

(assert (=> bm!308443 m!5118469))

(assert (=> b!4433110 d!1345086))

(declare-fun bs!760549 () Bool)

(declare-fun d!1345098 () Bool)

(assert (= bs!760549 (and d!1345098 start!433160)))

(declare-fun lambda!155692 () Int)

(assert (=> bs!760549 (= lambda!155692 lambda!155606)))

(declare-fun bs!760550 () Bool)

(assert (= bs!760550 (and d!1345098 d!1345078)))

(assert (=> bs!760550 (= lambda!155692 lambda!155622)))

(declare-fun bs!760551 () Bool)

(assert (= bs!760551 (and d!1345098 d!1345080)))

(assert (=> bs!760551 (not (= lambda!155692 lambda!155625))))

(declare-fun bs!760552 () Bool)

(assert (= bs!760552 (and d!1345098 d!1345084)))

(assert (=> bs!760552 (= lambda!155692 lambda!155626)))

(declare-fun lt!1630945 () ListMap!2813)

(assert (=> d!1345098 (invariantList!823 (toList!3570 lt!1630945))))

(declare-fun e!2760514 () ListMap!2813)

(assert (=> d!1345098 (= lt!1630945 e!2760514)))

(declare-fun c!754572 () Bool)

(assert (=> d!1345098 (= c!754572 ((_ is Cons!49684) (t!356750 (toList!3569 lm!1616))))))

(assert (=> d!1345098 (forall!9630 (t!356750 (toList!3569 lm!1616)) lambda!155692)))

(assert (=> d!1345098 (= (extractMap!852 (t!356750 (toList!3569 lm!1616))) lt!1630945)))

(declare-fun b!4433303 () Bool)

(assert (=> b!4433303 (= e!2760514 (addToMapMapFromBucket!416 (_2!28066 (h!55387 (t!356750 (toList!3569 lm!1616)))) (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616))))))))

(declare-fun b!4433304 () Bool)

(assert (=> b!4433304 (= e!2760514 (ListMap!2814 Nil!49683))))

(assert (= (and d!1345098 c!754572) b!4433303))

(assert (= (and d!1345098 (not c!754572)) b!4433304))

(declare-fun m!5118471 () Bool)

(assert (=> d!1345098 m!5118471))

(declare-fun m!5118473 () Bool)

(assert (=> d!1345098 m!5118473))

(declare-fun m!5118475 () Bool)

(assert (=> b!4433303 m!5118475))

(assert (=> b!4433303 m!5118475))

(declare-fun m!5118477 () Bool)

(assert (=> b!4433303 m!5118477))

(assert (=> b!4433110 d!1345098))

(declare-fun d!1345100 () Bool)

(declare-fun hash!2212 (Hashable!5185 K!11050) (_ BitVec 64))

(assert (=> d!1345100 (= (hash!2210 hashF!1220 key!3717) (hash!2212 hashF!1220 key!3717))))

(declare-fun bs!760553 () Bool)

(assert (= bs!760553 d!1345100))

(declare-fun m!5118479 () Bool)

(assert (=> bs!760553 m!5118479))

(assert (=> b!4433119 d!1345100))

(declare-fun d!1345102 () Bool)

(declare-fun res!1834261 () Bool)

(declare-fun e!2760515 () Bool)

(assert (=> d!1345102 (=> res!1834261 e!2760515)))

(assert (=> d!1345102 (= res!1834261 ((_ is Nil!49684) (toList!3569 lm!1616)))))

(assert (=> d!1345102 (= (forall!9630 (toList!3569 lm!1616) lambda!155606) e!2760515)))

(declare-fun b!4433305 () Bool)

(declare-fun e!2760516 () Bool)

(assert (=> b!4433305 (= e!2760515 e!2760516)))

(declare-fun res!1834262 () Bool)

(assert (=> b!4433305 (=> (not res!1834262) (not e!2760516))))

(assert (=> b!4433305 (= res!1834262 (dynLambda!20880 lambda!155606 (h!55387 (toList!3569 lm!1616))))))

(declare-fun b!4433306 () Bool)

(assert (=> b!4433306 (= e!2760516 (forall!9630 (t!356750 (toList!3569 lm!1616)) lambda!155606))))

(assert (= (and d!1345102 (not res!1834261)) b!4433305))

(assert (= (and b!4433305 res!1834262) b!4433306))

(declare-fun b_lambda!144131 () Bool)

(assert (=> (not b_lambda!144131) (not b!4433305)))

(declare-fun m!5118481 () Bool)

(assert (=> b!4433305 m!5118481))

(declare-fun m!5118483 () Bool)

(assert (=> b!4433306 m!5118483))

(assert (=> start!433160 d!1345102))

(declare-fun d!1345104 () Bool)

(declare-fun isStrictlySorted!250 (List!49808) Bool)

(assert (=> d!1345104 (= (inv!65236 lm!1616) (isStrictlySorted!250 (toList!3569 lm!1616)))))

(declare-fun bs!760554 () Bool)

(assert (= bs!760554 d!1345104))

(declare-fun m!5118485 () Bool)

(assert (=> bs!760554 m!5118485))

(assert (=> start!433160 d!1345104))

(assert (=> b!4433118 d!1345102))

(declare-fun d!1345106 () Bool)

(declare-fun e!2760521 () Bool)

(assert (=> d!1345106 e!2760521))

(declare-fun res!1834265 () Bool)

(assert (=> d!1345106 (=> res!1834265 e!2760521)))

(declare-fun lt!1630955 () Bool)

(assert (=> d!1345106 (= res!1834265 (not lt!1630955))))

(declare-fun lt!1630956 () Bool)

(assert (=> d!1345106 (= lt!1630955 lt!1630956)))

(declare-fun lt!1630954 () Unit!82881)

(declare-fun e!2760522 () Unit!82881)

(assert (=> d!1345106 (= lt!1630954 e!2760522)))

(declare-fun c!754575 () Bool)

(assert (=> d!1345106 (= c!754575 lt!1630956)))

(declare-fun containsKey!1181 (List!49808 (_ BitVec 64)) Bool)

(assert (=> d!1345106 (= lt!1630956 (containsKey!1181 (toList!3569 lm!1616) hash!366))))

(assert (=> d!1345106 (= (contains!12219 lm!1616 hash!366) lt!1630955)))

(declare-fun b!4433313 () Bool)

(declare-fun lt!1630957 () Unit!82881)

(assert (=> b!4433313 (= e!2760522 lt!1630957)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!657 (List!49808 (_ BitVec 64)) Unit!82881)

(assert (=> b!4433313 (= lt!1630957 (lemmaContainsKeyImpliesGetValueByKeyDefined!657 (toList!3569 lm!1616) hash!366))))

(declare-fun isDefined!8054 (Option!10761) Bool)

(assert (=> b!4433313 (isDefined!8054 (getValueByKey!747 (toList!3569 lm!1616) hash!366))))

(declare-fun b!4433314 () Bool)

(declare-fun Unit!82910 () Unit!82881)

(assert (=> b!4433314 (= e!2760522 Unit!82910)))

(declare-fun b!4433315 () Bool)

(assert (=> b!4433315 (= e!2760521 (isDefined!8054 (getValueByKey!747 (toList!3569 lm!1616) hash!366)))))

(assert (= (and d!1345106 c!754575) b!4433313))

(assert (= (and d!1345106 (not c!754575)) b!4433314))

(assert (= (and d!1345106 (not res!1834265)) b!4433315))

(declare-fun m!5118487 () Bool)

(assert (=> d!1345106 m!5118487))

(declare-fun m!5118489 () Bool)

(assert (=> b!4433313 m!5118489))

(assert (=> b!4433313 m!5118319))

(assert (=> b!4433313 m!5118319))

(declare-fun m!5118491 () Bool)

(assert (=> b!4433313 m!5118491))

(assert (=> b!4433315 m!5118319))

(assert (=> b!4433315 m!5118319))

(assert (=> b!4433315 m!5118491))

(assert (=> b!4433117 d!1345106))

(declare-fun d!1345108 () Bool)

(declare-fun res!1834270 () Bool)

(declare-fun e!2760527 () Bool)

(assert (=> d!1345108 (=> res!1834270 e!2760527)))

(assert (=> d!1345108 (= res!1834270 (not ((_ is Cons!49683) newBucket!194)))))

(assert (=> d!1345108 (= (noDuplicateKeys!791 newBucket!194) e!2760527)))

(declare-fun b!4433320 () Bool)

(declare-fun e!2760528 () Bool)

(assert (=> b!4433320 (= e!2760527 e!2760528)))

(declare-fun res!1834271 () Bool)

(assert (=> b!4433320 (=> (not res!1834271) (not e!2760528))))

(declare-fun containsKey!1182 (List!49807 K!11050) Bool)

(assert (=> b!4433320 (= res!1834271 (not (containsKey!1182 (t!356749 newBucket!194) (_1!28065 (h!55386 newBucket!194)))))))

(declare-fun b!4433321 () Bool)

(assert (=> b!4433321 (= e!2760528 (noDuplicateKeys!791 (t!356749 newBucket!194)))))

(assert (= (and d!1345108 (not res!1834270)) b!4433320))

(assert (= (and b!4433320 res!1834271) b!4433321))

(declare-fun m!5118493 () Bool)

(assert (=> b!4433320 m!5118493))

(declare-fun m!5118495 () Bool)

(assert (=> b!4433321 m!5118495))

(assert (=> b!4433115 d!1345108))

(declare-fun b!4433326 () Bool)

(declare-fun e!2760531 () Bool)

(declare-fun tp!1333674 () Bool)

(declare-fun tp!1333675 () Bool)

(assert (=> b!4433326 (= e!2760531 (and tp!1333674 tp!1333675))))

(assert (=> b!4433122 (= tp!1333659 e!2760531)))

(assert (= (and b!4433122 ((_ is Cons!49684) (toList!3569 lm!1616))) b!4433326))

(declare-fun b!4433331 () Bool)

(declare-fun e!2760534 () Bool)

(declare-fun tp!1333678 () Bool)

(assert (=> b!4433331 (= e!2760534 (and tp_is_empty!26411 tp_is_empty!26409 tp!1333678))))

(assert (=> b!4433120 (= tp!1333660 e!2760534)))

(assert (= (and b!4433120 ((_ is Cons!49683) (t!356749 newBucket!194))) b!4433331))

(declare-fun b_lambda!144133 () Bool)

(assert (= b_lambda!144115 (or start!433160 b_lambda!144133)))

(declare-fun bs!760555 () Bool)

(declare-fun d!1345110 () Bool)

(assert (= bs!760555 (and d!1345110 start!433160)))

(assert (=> bs!760555 (= (dynLambda!20880 lambda!155606 (h!55387 (toList!3569 lt!1630718))) (noDuplicateKeys!791 (_2!28066 (h!55387 (toList!3569 lt!1630718)))))))

(declare-fun m!5118497 () Bool)

(assert (=> bs!760555 m!5118497))

(assert (=> b!4433130 d!1345110))

(declare-fun b_lambda!144135 () Bool)

(assert (= b_lambda!144131 (or start!433160 b_lambda!144135)))

(declare-fun bs!760556 () Bool)

(declare-fun d!1345112 () Bool)

(assert (= bs!760556 (and d!1345112 start!433160)))

(assert (=> bs!760556 (= (dynLambda!20880 lambda!155606 (h!55387 (toList!3569 lm!1616))) (noDuplicateKeys!791 (_2!28066 (h!55387 (toList!3569 lm!1616)))))))

(declare-fun m!5118499 () Bool)

(assert (=> bs!760556 m!5118499))

(assert (=> b!4433305 d!1345112))

(declare-fun b_lambda!144137 () Bool)

(assert (= b_lambda!144123 (or start!433160 b_lambda!144137)))

(declare-fun bs!760557 () Bool)

(declare-fun d!1345114 () Bool)

(assert (= bs!760557 (and d!1345114 start!433160)))

(assert (=> bs!760557 (= (dynLambda!20880 lambda!155606 (tuple2!49545 hash!366 newBucket!194)) (noDuplicateKeys!791 (_2!28066 (tuple2!49545 hash!366 newBucket!194))))))

(declare-fun m!5118501 () Bool)

(assert (=> bs!760557 m!5118501))

(assert (=> b!4433176 d!1345114))

(check-sat (not b!4433297) (not bs!760557) (not d!1345036) tp_is_empty!26409 (not b!4433162) (not d!1345104) (not d!1345098) (not b!4433255) (not bm!308444) (not d!1345100) (not d!1345044) (not d!1345068) (not d!1345086) (not b_lambda!144133) (not b!4433243) (not b!4433321) (not b!4433241) (not b!4433240) (not bm!308445) (not b!4433315) (not b!4433296) (not b!4433131) (not b!4433238) (not d!1345066) (not d!1345062) (not bm!308443) (not b!4433326) (not b_lambda!144135) (not d!1345078) (not b_lambda!144137) (not b!4433242) (not bs!760556) (not d!1345080) (not b!4433320) (not b!4433298) (not b!4433251) tp_is_empty!26411 (not b!4433161) (not d!1345084) (not bs!760555) (not b!4433331) (not b!4433239) (not b!4433313) (not b!4433299) (not b!4433246) (not b!4433303) (not b!4433306) (not bm!308427) (not d!1345106))
(check-sat)
(get-model)

(declare-fun bs!760558 () Bool)

(declare-fun b!4433369 () Bool)

(assert (= bs!760558 (and b!4433369 d!1345086)))

(declare-fun lambda!155699 () Int)

(assert (=> bs!760558 (= (= (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194)) lt!1630940) (= lambda!155699 lambda!155691))))

(declare-fun bs!760559 () Bool)

(assert (= bs!760559 (and b!4433369 b!4433297)))

(assert (=> bs!760559 (= (= (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194)) lt!1630944) (= lambda!155699 lambda!155690))))

(assert (=> bs!760559 (= (= (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194)) (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155699 lambda!155689))))

(declare-fun bs!760560 () Bool)

(assert (= bs!760560 (and b!4433369 d!1345062)))

(assert (=> bs!760560 (not (= lambda!155699 lambda!155615))))

(declare-fun bs!760561 () Bool)

(assert (= bs!760561 (and b!4433369 b!4433300)))

(assert (=> bs!760561 (= (= (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194)) (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155699 lambda!155688))))

(assert (=> b!4433369 true))

(declare-fun bs!760562 () Bool)

(declare-fun b!4433366 () Bool)

(assert (= bs!760562 (and b!4433366 d!1345086)))

(declare-fun lambda!155700 () Int)

(assert (=> bs!760562 (= (= (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194)) lt!1630940) (= lambda!155700 lambda!155691))))

(declare-fun bs!760563 () Bool)

(assert (= bs!760563 (and b!4433366 b!4433297)))

(assert (=> bs!760563 (= (= (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194)) lt!1630944) (= lambda!155700 lambda!155690))))

(declare-fun bs!760564 () Bool)

(assert (= bs!760564 (and b!4433366 b!4433369)))

(assert (=> bs!760564 (= lambda!155700 lambda!155699)))

(assert (=> bs!760563 (= (= (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194)) (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155700 lambda!155689))))

(declare-fun bs!760565 () Bool)

(assert (= bs!760565 (and b!4433366 d!1345062)))

(assert (=> bs!760565 (not (= lambda!155700 lambda!155615))))

(declare-fun bs!760566 () Bool)

(assert (= bs!760566 (and b!4433366 b!4433300)))

(assert (=> bs!760566 (= (= (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194)) (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155700 lambda!155688))))

(assert (=> b!4433366 true))

(declare-fun lt!1630985 () ListMap!2813)

(declare-fun lambda!155701 () Int)

(assert (=> bs!760562 (= (= lt!1630985 lt!1630940) (= lambda!155701 lambda!155691))))

(assert (=> bs!760563 (= (= lt!1630985 lt!1630944) (= lambda!155701 lambda!155690))))

(assert (=> b!4433366 (= (= lt!1630985 (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194))) (= lambda!155701 lambda!155700))))

(assert (=> bs!760564 (= (= lt!1630985 (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194))) (= lambda!155701 lambda!155699))))

(assert (=> bs!760563 (= (= lt!1630985 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155701 lambda!155689))))

(assert (=> bs!760565 (not (= lambda!155701 lambda!155615))))

(assert (=> bs!760566 (= (= lt!1630985 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155701 lambda!155688))))

(assert (=> b!4433366 true))

(declare-fun bs!760567 () Bool)

(declare-fun d!1345128 () Bool)

(assert (= bs!760567 (and d!1345128 d!1345086)))

(declare-fun lambda!155702 () Int)

(declare-fun lt!1630981 () ListMap!2813)

(assert (=> bs!760567 (= (= lt!1630981 lt!1630940) (= lambda!155702 lambda!155691))))

(declare-fun bs!760568 () Bool)

(assert (= bs!760568 (and d!1345128 b!4433297)))

(assert (=> bs!760568 (= (= lt!1630981 lt!1630944) (= lambda!155702 lambda!155690))))

(declare-fun bs!760569 () Bool)

(assert (= bs!760569 (and d!1345128 b!4433366)))

(assert (=> bs!760569 (= (= lt!1630981 lt!1630985) (= lambda!155702 lambda!155701))))

(assert (=> bs!760569 (= (= lt!1630981 (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194))) (= lambda!155702 lambda!155700))))

(declare-fun bs!760570 () Bool)

(assert (= bs!760570 (and d!1345128 b!4433369)))

(assert (=> bs!760570 (= (= lt!1630981 (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194))) (= lambda!155702 lambda!155699))))

(assert (=> bs!760568 (= (= lt!1630981 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155702 lambda!155689))))

(declare-fun bs!760571 () Bool)

(assert (= bs!760571 (and d!1345128 d!1345062)))

(assert (=> bs!760571 (not (= lambda!155702 lambda!155615))))

(declare-fun bs!760572 () Bool)

(assert (= bs!760572 (and d!1345128 b!4433300)))

(assert (=> bs!760572 (= (= lt!1630981 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155702 lambda!155688))))

(assert (=> d!1345128 true))

(declare-fun b!4433365 () Bool)

(declare-fun e!2760562 () Bool)

(assert (=> b!4433365 (= e!2760562 (forall!9632 (toList!3570 (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194))) lambda!155701))))

(declare-fun bm!308446 () Bool)

(declare-fun c!754576 () Bool)

(declare-fun call!308452 () Bool)

(assert (=> bm!308446 (= call!308452 (forall!9632 (toList!3570 (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194))) (ite c!754576 lambda!155699 lambda!155700)))))

(declare-fun call!308453 () Bool)

(declare-fun bm!308447 () Bool)

(declare-fun lt!1630968 () ListMap!2813)

(assert (=> bm!308447 (= call!308453 (forall!9632 (ite c!754576 (toList!3570 (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194))) (toList!3570 lt!1630968)) (ite c!754576 lambda!155699 lambda!155701)))))

(declare-fun e!2760561 () ListMap!2813)

(assert (=> b!4433366 (= e!2760561 lt!1630985)))

(assert (=> b!4433366 (= lt!1630968 (+!1153 (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194)) (h!55386 (t!356749 newBucket!194))))))

(assert (=> b!4433366 (= lt!1630985 (addToMapMapFromBucket!416 (t!356749 (t!356749 newBucket!194)) (+!1153 (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194)) (h!55386 (t!356749 newBucket!194)))))))

(declare-fun lt!1630969 () Unit!82881)

(declare-fun call!308451 () Unit!82881)

(assert (=> b!4433366 (= lt!1630969 call!308451)))

(assert (=> b!4433366 call!308452))

(declare-fun lt!1630978 () Unit!82881)

(assert (=> b!4433366 (= lt!1630978 lt!1630969)))

(assert (=> b!4433366 (forall!9632 (toList!3570 lt!1630968) lambda!155701)))

(declare-fun lt!1630967 () Unit!82881)

(declare-fun Unit!82911 () Unit!82881)

(assert (=> b!4433366 (= lt!1630967 Unit!82911)))

(assert (=> b!4433366 (forall!9632 (t!356749 (t!356749 newBucket!194)) lambda!155701)))

(declare-fun lt!1630979 () Unit!82881)

(declare-fun Unit!82912 () Unit!82881)

(assert (=> b!4433366 (= lt!1630979 Unit!82912)))

(declare-fun lt!1630965 () Unit!82881)

(declare-fun Unit!82913 () Unit!82881)

(assert (=> b!4433366 (= lt!1630965 Unit!82913)))

(declare-fun lt!1630970 () Unit!82881)

(assert (=> b!4433366 (= lt!1630970 (forallContained!2119 (toList!3570 lt!1630968) lambda!155701 (h!55386 (t!356749 newBucket!194))))))

(assert (=> b!4433366 (contains!12218 lt!1630968 (_1!28065 (h!55386 (t!356749 newBucket!194))))))

(declare-fun lt!1630971 () Unit!82881)

(declare-fun Unit!82914 () Unit!82881)

(assert (=> b!4433366 (= lt!1630971 Unit!82914)))

(assert (=> b!4433366 (contains!12218 lt!1630985 (_1!28065 (h!55386 (t!356749 newBucket!194))))))

(declare-fun lt!1630975 () Unit!82881)

(declare-fun Unit!82915 () Unit!82881)

(assert (=> b!4433366 (= lt!1630975 Unit!82915)))

(assert (=> b!4433366 (forall!9632 (t!356749 newBucket!194) lambda!155701)))

(declare-fun lt!1630973 () Unit!82881)

(declare-fun Unit!82916 () Unit!82881)

(assert (=> b!4433366 (= lt!1630973 Unit!82916)))

(assert (=> b!4433366 call!308453))

(declare-fun lt!1630974 () Unit!82881)

(declare-fun Unit!82917 () Unit!82881)

(assert (=> b!4433366 (= lt!1630974 Unit!82917)))

(declare-fun lt!1630976 () Unit!82881)

(declare-fun Unit!82918 () Unit!82881)

(assert (=> b!4433366 (= lt!1630976 Unit!82918)))

(declare-fun lt!1630966 () Unit!82881)

(assert (=> b!4433366 (= lt!1630966 (addForallContainsKeyThenBeforeAdding!191 (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194)) lt!1630985 (_1!28065 (h!55386 (t!356749 newBucket!194))) (_2!28065 (h!55386 (t!356749 newBucket!194)))))))

(assert (=> b!4433366 (forall!9632 (toList!3570 (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194))) lambda!155701)))

(declare-fun lt!1630984 () Unit!82881)

(assert (=> b!4433366 (= lt!1630984 lt!1630966)))

(assert (=> b!4433366 (forall!9632 (toList!3570 (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194))) lambda!155701)))

(declare-fun lt!1630977 () Unit!82881)

(declare-fun Unit!82919 () Unit!82881)

(assert (=> b!4433366 (= lt!1630977 Unit!82919)))

(declare-fun res!1834305 () Bool)

(assert (=> b!4433366 (= res!1834305 (forall!9632 (t!356749 newBucket!194) lambda!155701))))

(assert (=> b!4433366 (=> (not res!1834305) (not e!2760562))))

(assert (=> b!4433366 e!2760562))

(declare-fun lt!1630983 () Unit!82881)

(declare-fun Unit!82920 () Unit!82881)

(assert (=> b!4433366 (= lt!1630983 Unit!82920)))

(declare-fun b!4433367 () Bool)

(declare-fun res!1834303 () Bool)

(declare-fun e!2760560 () Bool)

(assert (=> b!4433367 (=> (not res!1834303) (not e!2760560))))

(assert (=> b!4433367 (= res!1834303 (forall!9632 (toList!3570 (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194))) lambda!155702))))

(assert (=> d!1345128 e!2760560))

(declare-fun res!1834304 () Bool)

(assert (=> d!1345128 (=> (not res!1834304) (not e!2760560))))

(assert (=> d!1345128 (= res!1834304 (forall!9632 (t!356749 newBucket!194) lambda!155702))))

(assert (=> d!1345128 (= lt!1630981 e!2760561)))

(assert (=> d!1345128 (= c!754576 ((_ is Nil!49683) (t!356749 newBucket!194)))))

(assert (=> d!1345128 (noDuplicateKeys!791 (t!356749 newBucket!194))))

(assert (=> d!1345128 (= (addToMapMapFromBucket!416 (t!356749 newBucket!194) (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194))) lt!1630981)))

(declare-fun b!4433368 () Bool)

(assert (=> b!4433368 (= e!2760560 (invariantList!823 (toList!3570 lt!1630981)))))

(assert (=> b!4433369 (= e!2760561 (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194)))))

(declare-fun lt!1630982 () Unit!82881)

(assert (=> b!4433369 (= lt!1630982 call!308451)))

(assert (=> b!4433369 call!308452))

(declare-fun lt!1630972 () Unit!82881)

(assert (=> b!4433369 (= lt!1630972 lt!1630982)))

(assert (=> b!4433369 call!308453))

(declare-fun lt!1630980 () Unit!82881)

(declare-fun Unit!82921 () Unit!82881)

(assert (=> b!4433369 (= lt!1630980 Unit!82921)))

(declare-fun bm!308448 () Bool)

(assert (=> bm!308448 (= call!308451 (lemmaContainsAllItsOwnKeys!191 (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194))))))

(assert (= (and d!1345128 c!754576) b!4433369))

(assert (= (and d!1345128 (not c!754576)) b!4433366))

(assert (= (and b!4433366 res!1834305) b!4433365))

(assert (= (or b!4433369 b!4433366) bm!308448))

(assert (= (or b!4433369 b!4433366) bm!308447))

(assert (= (or b!4433369 b!4433366) bm!308446))

(assert (= (and d!1345128 res!1834304) b!4433367))

(assert (= (and b!4433367 res!1834303) b!4433368))

(declare-fun m!5118555 () Bool)

(assert (=> bm!308447 m!5118555))

(declare-fun m!5118557 () Bool)

(assert (=> b!4433368 m!5118557))

(declare-fun m!5118559 () Bool)

(assert (=> b!4433367 m!5118559))

(declare-fun m!5118561 () Bool)

(assert (=> b!4433365 m!5118561))

(declare-fun m!5118563 () Bool)

(assert (=> d!1345128 m!5118563))

(assert (=> d!1345128 m!5118495))

(declare-fun m!5118565 () Bool)

(assert (=> b!4433366 m!5118565))

(assert (=> b!4433366 m!5118453))

(declare-fun m!5118567 () Bool)

(assert (=> b!4433366 m!5118567))

(assert (=> b!4433366 m!5118561))

(declare-fun m!5118569 () Bool)

(assert (=> b!4433366 m!5118569))

(declare-fun m!5118571 () Bool)

(assert (=> b!4433366 m!5118571))

(declare-fun m!5118573 () Bool)

(assert (=> b!4433366 m!5118573))

(assert (=> b!4433366 m!5118453))

(assert (=> b!4433366 m!5118569))

(declare-fun m!5118575 () Bool)

(assert (=> b!4433366 m!5118575))

(declare-fun m!5118577 () Bool)

(assert (=> b!4433366 m!5118577))

(declare-fun m!5118579 () Bool)

(assert (=> b!4433366 m!5118579))

(assert (=> b!4433366 m!5118561))

(declare-fun m!5118581 () Bool)

(assert (=> b!4433366 m!5118581))

(assert (=> b!4433366 m!5118577))

(assert (=> bm!308448 m!5118453))

(declare-fun m!5118583 () Bool)

(assert (=> bm!308448 m!5118583))

(declare-fun m!5118585 () Bool)

(assert (=> bm!308446 m!5118585))

(assert (=> b!4433297 d!1345128))

(declare-fun d!1345138 () Bool)

(declare-fun e!2760578 () Bool)

(assert (=> d!1345138 e!2760578))

(declare-fun res!1834324 () Bool)

(assert (=> d!1345138 (=> (not res!1834324) (not e!2760578))))

(declare-fun lt!1631025 () ListMap!2813)

(assert (=> d!1345138 (= res!1834324 (contains!12218 lt!1631025 (_1!28065 (h!55386 newBucket!194))))))

(declare-fun lt!1631026 () List!49807)

(assert (=> d!1345138 (= lt!1631025 (ListMap!2814 lt!1631026))))

(declare-fun lt!1631023 () Unit!82881)

(declare-fun lt!1631024 () Unit!82881)

(assert (=> d!1345138 (= lt!1631023 lt!1631024)))

(assert (=> d!1345138 (= (getValueByKey!748 lt!1631026 (_1!28065 (h!55386 newBucket!194))) (Some!10761 (_2!28065 (h!55386 newBucket!194))))))

(declare-fun lemmaContainsTupThenGetReturnValue!480 (List!49807 K!11050 V!11296) Unit!82881)

(assert (=> d!1345138 (= lt!1631024 (lemmaContainsTupThenGetReturnValue!480 lt!1631026 (_1!28065 (h!55386 newBucket!194)) (_2!28065 (h!55386 newBucket!194))))))

(declare-fun insertNoDuplicatedKeys!210 (List!49807 K!11050 V!11296) List!49807)

(assert (=> d!1345138 (= lt!1631026 (insertNoDuplicatedKeys!210 (toList!3570 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (_1!28065 (h!55386 newBucket!194)) (_2!28065 (h!55386 newBucket!194))))))

(assert (=> d!1345138 (= (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194)) lt!1631025)))

(declare-fun b!4433392 () Bool)

(declare-fun res!1834323 () Bool)

(assert (=> b!4433392 (=> (not res!1834323) (not e!2760578))))

(assert (=> b!4433392 (= res!1834323 (= (getValueByKey!748 (toList!3570 lt!1631025) (_1!28065 (h!55386 newBucket!194))) (Some!10761 (_2!28065 (h!55386 newBucket!194)))))))

(declare-fun b!4433393 () Bool)

(declare-fun contains!12224 (List!49807 tuple2!49542) Bool)

(assert (=> b!4433393 (= e!2760578 (contains!12224 (toList!3570 lt!1631025) (h!55386 newBucket!194)))))

(assert (= (and d!1345138 res!1834324) b!4433392))

(assert (= (and b!4433392 res!1834323) b!4433393))

(declare-fun m!5118635 () Bool)

(assert (=> d!1345138 m!5118635))

(declare-fun m!5118637 () Bool)

(assert (=> d!1345138 m!5118637))

(declare-fun m!5118639 () Bool)

(assert (=> d!1345138 m!5118639))

(declare-fun m!5118641 () Bool)

(assert (=> d!1345138 m!5118641))

(declare-fun m!5118643 () Bool)

(assert (=> b!4433392 m!5118643))

(declare-fun m!5118647 () Bool)

(assert (=> b!4433393 m!5118647))

(assert (=> b!4433297 d!1345138))

(declare-fun d!1345146 () Bool)

(declare-fun res!1834337 () Bool)

(declare-fun e!2760591 () Bool)

(assert (=> d!1345146 (=> res!1834337 e!2760591)))

(assert (=> d!1345146 (= res!1834337 ((_ is Nil!49683) (t!356749 newBucket!194)))))

(assert (=> d!1345146 (= (forall!9632 (t!356749 newBucket!194) lambda!155690) e!2760591)))

(declare-fun b!4433406 () Bool)

(declare-fun e!2760592 () Bool)

(assert (=> b!4433406 (= e!2760591 e!2760592)))

(declare-fun res!1834338 () Bool)

(assert (=> b!4433406 (=> (not res!1834338) (not e!2760592))))

(declare-fun dynLambda!20882 (Int tuple2!49542) Bool)

(assert (=> b!4433406 (= res!1834338 (dynLambda!20882 lambda!155690 (h!55386 (t!356749 newBucket!194))))))

(declare-fun b!4433407 () Bool)

(assert (=> b!4433407 (= e!2760592 (forall!9632 (t!356749 (t!356749 newBucket!194)) lambda!155690))))

(assert (= (and d!1345146 (not res!1834337)) b!4433406))

(assert (= (and b!4433406 res!1834338) b!4433407))

(declare-fun b_lambda!144149 () Bool)

(assert (=> (not b_lambda!144149) (not b!4433406)))

(declare-fun m!5118665 () Bool)

(assert (=> b!4433406 m!5118665))

(declare-fun m!5118667 () Bool)

(assert (=> b!4433407 m!5118667))

(assert (=> b!4433297 d!1345146))

(declare-fun bs!760605 () Bool)

(declare-fun d!1345158 () Bool)

(assert (= bs!760605 (and d!1345158 d!1345086)))

(declare-fun lambda!155715 () Int)

(assert (=> bs!760605 (= (= lt!1630944 lt!1630940) (= lambda!155715 lambda!155691))))

(declare-fun bs!760606 () Bool)

(assert (= bs!760606 (and d!1345158 b!4433297)))

(assert (=> bs!760606 (= lambda!155715 lambda!155690)))

(declare-fun bs!760607 () Bool)

(assert (= bs!760607 (and d!1345158 b!4433366)))

(assert (=> bs!760607 (= (= lt!1630944 lt!1630985) (= lambda!155715 lambda!155701))))

(assert (=> bs!760607 (= (= lt!1630944 (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194))) (= lambda!155715 lambda!155700))))

(declare-fun bs!760608 () Bool)

(assert (= bs!760608 (and d!1345158 b!4433369)))

(assert (=> bs!760608 (= (= lt!1630944 (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194))) (= lambda!155715 lambda!155699))))

(assert (=> bs!760606 (= (= lt!1630944 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155715 lambda!155689))))

(declare-fun bs!760609 () Bool)

(assert (= bs!760609 (and d!1345158 d!1345128)))

(assert (=> bs!760609 (= (= lt!1630944 lt!1630981) (= lambda!155715 lambda!155702))))

(declare-fun bs!760610 () Bool)

(assert (= bs!760610 (and d!1345158 d!1345062)))

(assert (=> bs!760610 (not (= lambda!155715 lambda!155615))))

(declare-fun bs!760611 () Bool)

(assert (= bs!760611 (and d!1345158 b!4433300)))

(assert (=> bs!760611 (= (= lt!1630944 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155715 lambda!155688))))

(assert (=> d!1345158 true))

(assert (=> d!1345158 (forall!9632 (toList!3570 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) lambda!155715)))

(declare-fun lt!1631032 () Unit!82881)

(declare-fun choose!28094 (ListMap!2813 ListMap!2813 K!11050 V!11296) Unit!82881)

(assert (=> d!1345158 (= lt!1631032 (choose!28094 (extractMap!852 (t!356750 (toList!3569 lm!1616))) lt!1630944 (_1!28065 (h!55386 newBucket!194)) (_2!28065 (h!55386 newBucket!194))))))

(assert (=> d!1345158 (forall!9632 (toList!3570 (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (tuple2!49543 (_1!28065 (h!55386 newBucket!194)) (_2!28065 (h!55386 newBucket!194))))) lambda!155715)))

(assert (=> d!1345158 (= (addForallContainsKeyThenBeforeAdding!191 (extractMap!852 (t!356750 (toList!3569 lm!1616))) lt!1630944 (_1!28065 (h!55386 newBucket!194)) (_2!28065 (h!55386 newBucket!194))) lt!1631032)))

(declare-fun bs!760612 () Bool)

(assert (= bs!760612 d!1345158))

(declare-fun m!5118681 () Bool)

(assert (=> bs!760612 m!5118681))

(assert (=> bs!760612 m!5118237))

(declare-fun m!5118683 () Bool)

(assert (=> bs!760612 m!5118683))

(assert (=> bs!760612 m!5118237))

(declare-fun m!5118685 () Bool)

(assert (=> bs!760612 m!5118685))

(declare-fun m!5118687 () Bool)

(assert (=> bs!760612 m!5118687))

(assert (=> b!4433297 d!1345158))

(declare-fun b!4433423 () Bool)

(declare-fun e!2760602 () Bool)

(assert (=> b!4433423 (= e!2760602 (not (contains!12223 (keys!16992 lt!1630944) (_1!28065 (h!55386 newBucket!194)))))))

(declare-fun b!4433424 () Bool)

(declare-fun e!2760606 () List!49810)

(assert (=> b!4433424 (= e!2760606 (keys!16992 lt!1630944))))

(declare-fun d!1345168 () Bool)

(declare-fun e!2760604 () Bool)

(assert (=> d!1345168 e!2760604))

(declare-fun res!1834342 () Bool)

(assert (=> d!1345168 (=> res!1834342 e!2760604)))

(assert (=> d!1345168 (= res!1834342 e!2760602)))

(declare-fun res!1834343 () Bool)

(assert (=> d!1345168 (=> (not res!1834343) (not e!2760602))))

(declare-fun lt!1631038 () Bool)

(assert (=> d!1345168 (= res!1834343 (not lt!1631038))))

(declare-fun lt!1631037 () Bool)

(assert (=> d!1345168 (= lt!1631038 lt!1631037)))

(declare-fun lt!1631034 () Unit!82881)

(declare-fun e!2760601 () Unit!82881)

(assert (=> d!1345168 (= lt!1631034 e!2760601)))

(declare-fun c!754587 () Bool)

(assert (=> d!1345168 (= c!754587 lt!1631037)))

(assert (=> d!1345168 (= lt!1631037 (containsKey!1180 (toList!3570 lt!1630944) (_1!28065 (h!55386 newBucket!194))))))

(assert (=> d!1345168 (= (contains!12218 lt!1630944 (_1!28065 (h!55386 newBucket!194))) lt!1631038)))

(declare-fun b!4433425 () Bool)

(declare-fun lt!1631036 () Unit!82881)

(assert (=> b!4433425 (= e!2760601 lt!1631036)))

(declare-fun lt!1631040 () Unit!82881)

(assert (=> b!4433425 (= lt!1631040 (lemmaContainsKeyImpliesGetValueByKeyDefined!656 (toList!3570 lt!1630944) (_1!28065 (h!55386 newBucket!194))))))

(assert (=> b!4433425 (isDefined!8053 (getValueByKey!748 (toList!3570 lt!1630944) (_1!28065 (h!55386 newBucket!194))))))

(declare-fun lt!1631033 () Unit!82881)

(assert (=> b!4433425 (= lt!1631033 lt!1631040)))

(assert (=> b!4433425 (= lt!1631036 (lemmaInListThenGetKeysListContains!267 (toList!3570 lt!1630944) (_1!28065 (h!55386 newBucket!194))))))

(declare-fun call!308457 () Bool)

(assert (=> b!4433425 call!308457))

(declare-fun b!4433426 () Bool)

(assert (=> b!4433426 (= e!2760606 (getKeysList!270 (toList!3570 lt!1630944)))))

(declare-fun b!4433427 () Bool)

(declare-fun e!2760605 () Bool)

(assert (=> b!4433427 (= e!2760605 (contains!12223 (keys!16992 lt!1630944) (_1!28065 (h!55386 newBucket!194))))))

(declare-fun b!4433428 () Bool)

(assert (=> b!4433428 (= e!2760604 e!2760605)))

(declare-fun res!1834341 () Bool)

(assert (=> b!4433428 (=> (not res!1834341) (not e!2760605))))

(assert (=> b!4433428 (= res!1834341 (isDefined!8053 (getValueByKey!748 (toList!3570 lt!1630944) (_1!28065 (h!55386 newBucket!194)))))))

(declare-fun b!4433429 () Bool)

(declare-fun e!2760603 () Unit!82881)

(declare-fun Unit!82933 () Unit!82881)

(assert (=> b!4433429 (= e!2760603 Unit!82933)))

(declare-fun b!4433430 () Bool)

(assert (=> b!4433430 (= e!2760601 e!2760603)))

(declare-fun c!754585 () Bool)

(assert (=> b!4433430 (= c!754585 call!308457)))

(declare-fun b!4433431 () Bool)

(assert (=> b!4433431 false))

(declare-fun lt!1631035 () Unit!82881)

(declare-fun lt!1631039 () Unit!82881)

(assert (=> b!4433431 (= lt!1631035 lt!1631039)))

(assert (=> b!4433431 (containsKey!1180 (toList!3570 lt!1630944) (_1!28065 (h!55386 newBucket!194)))))

(assert (=> b!4433431 (= lt!1631039 (lemmaInGetKeysListThenContainsKey!268 (toList!3570 lt!1630944) (_1!28065 (h!55386 newBucket!194))))))

(declare-fun Unit!82934 () Unit!82881)

(assert (=> b!4433431 (= e!2760603 Unit!82934)))

(declare-fun bm!308452 () Bool)

(assert (=> bm!308452 (= call!308457 (contains!12223 e!2760606 (_1!28065 (h!55386 newBucket!194))))))

(declare-fun c!754586 () Bool)

(assert (=> bm!308452 (= c!754586 c!754587)))

(assert (= (and d!1345168 c!754587) b!4433425))

(assert (= (and d!1345168 (not c!754587)) b!4433430))

(assert (= (and b!4433430 c!754585) b!4433431))

(assert (= (and b!4433430 (not c!754585)) b!4433429))

(assert (= (or b!4433425 b!4433430) bm!308452))

(assert (= (and bm!308452 c!754586) b!4433426))

(assert (= (and bm!308452 (not c!754586)) b!4433424))

(assert (= (and d!1345168 res!1834343) b!4433423))

(assert (= (and d!1345168 (not res!1834342)) b!4433428))

(assert (= (and b!4433428 res!1834341) b!4433427))

(declare-fun m!5118691 () Bool)

(assert (=> b!4433425 m!5118691))

(declare-fun m!5118693 () Bool)

(assert (=> b!4433425 m!5118693))

(assert (=> b!4433425 m!5118693))

(declare-fun m!5118695 () Bool)

(assert (=> b!4433425 m!5118695))

(declare-fun m!5118697 () Bool)

(assert (=> b!4433425 m!5118697))

(assert (=> b!4433428 m!5118693))

(assert (=> b!4433428 m!5118693))

(assert (=> b!4433428 m!5118695))

(declare-fun m!5118699 () Bool)

(assert (=> b!4433431 m!5118699))

(declare-fun m!5118701 () Bool)

(assert (=> b!4433431 m!5118701))

(declare-fun m!5118703 () Bool)

(assert (=> b!4433424 m!5118703))

(assert (=> b!4433423 m!5118703))

(assert (=> b!4433423 m!5118703))

(declare-fun m!5118705 () Bool)

(assert (=> b!4433423 m!5118705))

(assert (=> d!1345168 m!5118699))

(assert (=> b!4433427 m!5118703))

(assert (=> b!4433427 m!5118703))

(assert (=> b!4433427 m!5118705))

(declare-fun m!5118707 () Bool)

(assert (=> bm!308452 m!5118707))

(declare-fun m!5118709 () Bool)

(assert (=> b!4433426 m!5118709))

(assert (=> b!4433297 d!1345168))

(declare-fun d!1345172 () Bool)

(declare-fun res!1834348 () Bool)

(declare-fun e!2760611 () Bool)

(assert (=> d!1345172 (=> res!1834348 e!2760611)))

(assert (=> d!1345172 (= res!1834348 ((_ is Nil!49683) (toList!3570 (extractMap!852 (t!356750 (toList!3569 lm!1616))))))))

(assert (=> d!1345172 (= (forall!9632 (toList!3570 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) lambda!155690) e!2760611)))

(declare-fun b!4433436 () Bool)

(declare-fun e!2760612 () Bool)

(assert (=> b!4433436 (= e!2760611 e!2760612)))

(declare-fun res!1834349 () Bool)

(assert (=> b!4433436 (=> (not res!1834349) (not e!2760612))))

(assert (=> b!4433436 (= res!1834349 (dynLambda!20882 lambda!155690 (h!55386 (toList!3570 (extractMap!852 (t!356750 (toList!3569 lm!1616)))))))))

(declare-fun b!4433437 () Bool)

(assert (=> b!4433437 (= e!2760612 (forall!9632 (t!356749 (toList!3570 (extractMap!852 (t!356750 (toList!3569 lm!1616))))) lambda!155690))))

(assert (= (and d!1345172 (not res!1834348)) b!4433436))

(assert (= (and b!4433436 res!1834349) b!4433437))

(declare-fun b_lambda!144153 () Bool)

(assert (=> (not b_lambda!144153) (not b!4433436)))

(declare-fun m!5118711 () Bool)

(assert (=> b!4433436 m!5118711))

(declare-fun m!5118713 () Bool)

(assert (=> b!4433437 m!5118713))

(assert (=> b!4433297 d!1345172))

(declare-fun d!1345174 () Bool)

(declare-fun res!1834352 () Bool)

(declare-fun e!2760615 () Bool)

(assert (=> d!1345174 (=> res!1834352 e!2760615)))

(assert (=> d!1345174 (= res!1834352 ((_ is Nil!49683) (toList!3570 lt!1630927)))))

(assert (=> d!1345174 (= (forall!9632 (toList!3570 lt!1630927) lambda!155690) e!2760615)))

(declare-fun b!4433440 () Bool)

(declare-fun e!2760616 () Bool)

(assert (=> b!4433440 (= e!2760615 e!2760616)))

(declare-fun res!1834353 () Bool)

(assert (=> b!4433440 (=> (not res!1834353) (not e!2760616))))

(assert (=> b!4433440 (= res!1834353 (dynLambda!20882 lambda!155690 (h!55386 (toList!3570 lt!1630927))))))

(declare-fun b!4433441 () Bool)

(assert (=> b!4433441 (= e!2760616 (forall!9632 (t!356749 (toList!3570 lt!1630927)) lambda!155690))))

(assert (= (and d!1345174 (not res!1834352)) b!4433440))

(assert (= (and b!4433440 res!1834353) b!4433441))

(declare-fun b_lambda!144155 () Bool)

(assert (=> (not b_lambda!144155) (not b!4433440)))

(declare-fun m!5118717 () Bool)

(assert (=> b!4433440 m!5118717))

(declare-fun m!5118719 () Bool)

(assert (=> b!4433441 m!5118719))

(assert (=> b!4433297 d!1345174))

(declare-fun d!1345178 () Bool)

(assert (=> d!1345178 (dynLambda!20882 lambda!155690 (h!55386 newBucket!194))))

(declare-fun lt!1631067 () Unit!82881)

(declare-fun choose!28095 (List!49807 Int tuple2!49542) Unit!82881)

(assert (=> d!1345178 (= lt!1631067 (choose!28095 (toList!3570 lt!1630927) lambda!155690 (h!55386 newBucket!194)))))

(declare-fun e!2760624 () Bool)

(assert (=> d!1345178 e!2760624))

(declare-fun res!1834361 () Bool)

(assert (=> d!1345178 (=> (not res!1834361) (not e!2760624))))

(assert (=> d!1345178 (= res!1834361 (forall!9632 (toList!3570 lt!1630927) lambda!155690))))

(assert (=> d!1345178 (= (forallContained!2119 (toList!3570 lt!1630927) lambda!155690 (h!55386 newBucket!194)) lt!1631067)))

(declare-fun b!4433451 () Bool)

(assert (=> b!4433451 (= e!2760624 (contains!12224 (toList!3570 lt!1630927) (h!55386 newBucket!194)))))

(assert (= (and d!1345178 res!1834361) b!4433451))

(declare-fun b_lambda!144159 () Bool)

(assert (=> (not b_lambda!144159) (not d!1345178)))

(declare-fun m!5118729 () Bool)

(assert (=> d!1345178 m!5118729))

(declare-fun m!5118731 () Bool)

(assert (=> d!1345178 m!5118731))

(assert (=> d!1345178 m!5118463))

(declare-fun m!5118733 () Bool)

(assert (=> b!4433451 m!5118733))

(assert (=> b!4433297 d!1345178))

(declare-fun d!1345184 () Bool)

(declare-fun res!1834362 () Bool)

(declare-fun e!2760625 () Bool)

(assert (=> d!1345184 (=> res!1834362 e!2760625)))

(assert (=> d!1345184 (= res!1834362 ((_ is Nil!49683) newBucket!194))))

(assert (=> d!1345184 (= (forall!9632 newBucket!194 lambda!155690) e!2760625)))

(declare-fun b!4433452 () Bool)

(declare-fun e!2760626 () Bool)

(assert (=> b!4433452 (= e!2760625 e!2760626)))

(declare-fun res!1834363 () Bool)

(assert (=> b!4433452 (=> (not res!1834363) (not e!2760626))))

(assert (=> b!4433452 (= res!1834363 (dynLambda!20882 lambda!155690 (h!55386 newBucket!194)))))

(declare-fun b!4433453 () Bool)

(assert (=> b!4433453 (= e!2760626 (forall!9632 (t!356749 newBucket!194) lambda!155690))))

(assert (= (and d!1345184 (not res!1834362)) b!4433452))

(assert (= (and b!4433452 res!1834363) b!4433453))

(declare-fun b_lambda!144161 () Bool)

(assert (=> (not b_lambda!144161) (not b!4433452)))

(assert (=> b!4433452 m!5118729))

(assert (=> b!4433453 m!5118465))

(assert (=> b!4433297 d!1345184))

(declare-fun b!4433454 () Bool)

(declare-fun e!2760628 () Bool)

(assert (=> b!4433454 (= e!2760628 (not (contains!12223 (keys!16992 lt!1630927) (_1!28065 (h!55386 newBucket!194)))))))

(declare-fun b!4433455 () Bool)

(declare-fun e!2760632 () List!49810)

(assert (=> b!4433455 (= e!2760632 (keys!16992 lt!1630927))))

(declare-fun d!1345186 () Bool)

(declare-fun e!2760630 () Bool)

(assert (=> d!1345186 e!2760630))

(declare-fun res!1834365 () Bool)

(assert (=> d!1345186 (=> res!1834365 e!2760630)))

(assert (=> d!1345186 (= res!1834365 e!2760628)))

(declare-fun res!1834366 () Bool)

(assert (=> d!1345186 (=> (not res!1834366) (not e!2760628))))

(declare-fun lt!1631073 () Bool)

(assert (=> d!1345186 (= res!1834366 (not lt!1631073))))

(declare-fun lt!1631072 () Bool)

(assert (=> d!1345186 (= lt!1631073 lt!1631072)))

(declare-fun lt!1631069 () Unit!82881)

(declare-fun e!2760627 () Unit!82881)

(assert (=> d!1345186 (= lt!1631069 e!2760627)))

(declare-fun c!754591 () Bool)

(assert (=> d!1345186 (= c!754591 lt!1631072)))

(assert (=> d!1345186 (= lt!1631072 (containsKey!1180 (toList!3570 lt!1630927) (_1!28065 (h!55386 newBucket!194))))))

(assert (=> d!1345186 (= (contains!12218 lt!1630927 (_1!28065 (h!55386 newBucket!194))) lt!1631073)))

(declare-fun b!4433456 () Bool)

(declare-fun lt!1631071 () Unit!82881)

(assert (=> b!4433456 (= e!2760627 lt!1631071)))

(declare-fun lt!1631075 () Unit!82881)

(assert (=> b!4433456 (= lt!1631075 (lemmaContainsKeyImpliesGetValueByKeyDefined!656 (toList!3570 lt!1630927) (_1!28065 (h!55386 newBucket!194))))))

(assert (=> b!4433456 (isDefined!8053 (getValueByKey!748 (toList!3570 lt!1630927) (_1!28065 (h!55386 newBucket!194))))))

(declare-fun lt!1631068 () Unit!82881)

(assert (=> b!4433456 (= lt!1631068 lt!1631075)))

(assert (=> b!4433456 (= lt!1631071 (lemmaInListThenGetKeysListContains!267 (toList!3570 lt!1630927) (_1!28065 (h!55386 newBucket!194))))))

(declare-fun call!308461 () Bool)

(assert (=> b!4433456 call!308461))

(declare-fun b!4433457 () Bool)

(assert (=> b!4433457 (= e!2760632 (getKeysList!270 (toList!3570 lt!1630927)))))

(declare-fun b!4433458 () Bool)

(declare-fun e!2760631 () Bool)

(assert (=> b!4433458 (= e!2760631 (contains!12223 (keys!16992 lt!1630927) (_1!28065 (h!55386 newBucket!194))))))

(declare-fun b!4433459 () Bool)

(assert (=> b!4433459 (= e!2760630 e!2760631)))

(declare-fun res!1834364 () Bool)

(assert (=> b!4433459 (=> (not res!1834364) (not e!2760631))))

(assert (=> b!4433459 (= res!1834364 (isDefined!8053 (getValueByKey!748 (toList!3570 lt!1630927) (_1!28065 (h!55386 newBucket!194)))))))

(declare-fun b!4433460 () Bool)

(declare-fun e!2760629 () Unit!82881)

(declare-fun Unit!82935 () Unit!82881)

(assert (=> b!4433460 (= e!2760629 Unit!82935)))

(declare-fun b!4433461 () Bool)

(assert (=> b!4433461 (= e!2760627 e!2760629)))

(declare-fun c!754589 () Bool)

(assert (=> b!4433461 (= c!754589 call!308461)))

(declare-fun b!4433462 () Bool)

(assert (=> b!4433462 false))

(declare-fun lt!1631070 () Unit!82881)

(declare-fun lt!1631074 () Unit!82881)

(assert (=> b!4433462 (= lt!1631070 lt!1631074)))

(assert (=> b!4433462 (containsKey!1180 (toList!3570 lt!1630927) (_1!28065 (h!55386 newBucket!194)))))

(assert (=> b!4433462 (= lt!1631074 (lemmaInGetKeysListThenContainsKey!268 (toList!3570 lt!1630927) (_1!28065 (h!55386 newBucket!194))))))

(declare-fun Unit!82936 () Unit!82881)

(assert (=> b!4433462 (= e!2760629 Unit!82936)))

(declare-fun bm!308456 () Bool)

(assert (=> bm!308456 (= call!308461 (contains!12223 e!2760632 (_1!28065 (h!55386 newBucket!194))))))

(declare-fun c!754590 () Bool)

(assert (=> bm!308456 (= c!754590 c!754591)))

(assert (= (and d!1345186 c!754591) b!4433456))

(assert (= (and d!1345186 (not c!754591)) b!4433461))

(assert (= (and b!4433461 c!754589) b!4433462))

(assert (= (and b!4433461 (not c!754589)) b!4433460))

(assert (= (or b!4433456 b!4433461) bm!308456))

(assert (= (and bm!308456 c!754590) b!4433457))

(assert (= (and bm!308456 (not c!754590)) b!4433455))

(assert (= (and d!1345186 res!1834366) b!4433454))

(assert (= (and d!1345186 (not res!1834365)) b!4433459))

(assert (= (and b!4433459 res!1834364) b!4433458))

(declare-fun m!5118735 () Bool)

(assert (=> b!4433456 m!5118735))

(declare-fun m!5118737 () Bool)

(assert (=> b!4433456 m!5118737))

(assert (=> b!4433456 m!5118737))

(declare-fun m!5118739 () Bool)

(assert (=> b!4433456 m!5118739))

(declare-fun m!5118741 () Bool)

(assert (=> b!4433456 m!5118741))

(assert (=> b!4433459 m!5118737))

(assert (=> b!4433459 m!5118737))

(assert (=> b!4433459 m!5118739))

(declare-fun m!5118743 () Bool)

(assert (=> b!4433462 m!5118743))

(declare-fun m!5118745 () Bool)

(assert (=> b!4433462 m!5118745))

(declare-fun m!5118747 () Bool)

(assert (=> b!4433455 m!5118747))

(assert (=> b!4433454 m!5118747))

(assert (=> b!4433454 m!5118747))

(declare-fun m!5118749 () Bool)

(assert (=> b!4433454 m!5118749))

(assert (=> d!1345186 m!5118743))

(assert (=> b!4433458 m!5118747))

(assert (=> b!4433458 m!5118747))

(assert (=> b!4433458 m!5118749))

(declare-fun m!5118751 () Bool)

(assert (=> bm!308456 m!5118751))

(declare-fun m!5118753 () Bool)

(assert (=> b!4433457 m!5118753))

(assert (=> b!4433297 d!1345186))

(declare-fun d!1345188 () Bool)

(declare-fun res!1834367 () Bool)

(declare-fun e!2760633 () Bool)

(assert (=> d!1345188 (=> res!1834367 e!2760633)))

(assert (=> d!1345188 (= res!1834367 ((_ is Nil!49683) (ite c!754571 (toList!3570 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (toList!3570 lt!1630927))))))

(assert (=> d!1345188 (= (forall!9632 (ite c!754571 (toList!3570 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (toList!3570 lt!1630927)) (ite c!754571 lambda!155688 lambda!155690)) e!2760633)))

(declare-fun b!4433463 () Bool)

(declare-fun e!2760634 () Bool)

(assert (=> b!4433463 (= e!2760633 e!2760634)))

(declare-fun res!1834368 () Bool)

(assert (=> b!4433463 (=> (not res!1834368) (not e!2760634))))

(assert (=> b!4433463 (= res!1834368 (dynLambda!20882 (ite c!754571 lambda!155688 lambda!155690) (h!55386 (ite c!754571 (toList!3570 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (toList!3570 lt!1630927)))))))

(declare-fun b!4433464 () Bool)

(assert (=> b!4433464 (= e!2760634 (forall!9632 (t!356749 (ite c!754571 (toList!3570 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (toList!3570 lt!1630927))) (ite c!754571 lambda!155688 lambda!155690)))))

(assert (= (and d!1345188 (not res!1834367)) b!4433463))

(assert (= (and b!4433463 res!1834368) b!4433464))

(declare-fun b_lambda!144163 () Bool)

(assert (=> (not b_lambda!144163) (not b!4433463)))

(declare-fun m!5118755 () Bool)

(assert (=> b!4433463 m!5118755))

(declare-fun m!5118757 () Bool)

(assert (=> b!4433464 m!5118757))

(assert (=> bm!308444 d!1345188))

(declare-fun d!1345190 () Bool)

(declare-fun res!1834373 () Bool)

(declare-fun e!2760639 () Bool)

(assert (=> d!1345190 (=> res!1834373 e!2760639)))

(assert (=> d!1345190 (= res!1834373 (and ((_ is Cons!49684) (toList!3569 lm!1616)) (= (_1!28066 (h!55387 (toList!3569 lm!1616))) hash!366)))))

(assert (=> d!1345190 (= (containsKey!1181 (toList!3569 lm!1616) hash!366) e!2760639)))

(declare-fun b!4433469 () Bool)

(declare-fun e!2760640 () Bool)

(assert (=> b!4433469 (= e!2760639 e!2760640)))

(declare-fun res!1834374 () Bool)

(assert (=> b!4433469 (=> (not res!1834374) (not e!2760640))))

(assert (=> b!4433469 (= res!1834374 (and (or (not ((_ is Cons!49684) (toList!3569 lm!1616))) (bvsle (_1!28066 (h!55387 (toList!3569 lm!1616))) hash!366)) ((_ is Cons!49684) (toList!3569 lm!1616)) (bvslt (_1!28066 (h!55387 (toList!3569 lm!1616))) hash!366)))))

(declare-fun b!4433470 () Bool)

(assert (=> b!4433470 (= e!2760640 (containsKey!1181 (t!356750 (toList!3569 lm!1616)) hash!366))))

(assert (= (and d!1345190 (not res!1834373)) b!4433469))

(assert (= (and b!4433469 res!1834374) b!4433470))

(declare-fun m!5118759 () Bool)

(assert (=> b!4433470 m!5118759))

(assert (=> d!1345106 d!1345190))

(declare-fun d!1345192 () Bool)

(declare-fun res!1834375 () Bool)

(declare-fun e!2760641 () Bool)

(assert (=> d!1345192 (=> res!1834375 e!2760641)))

(assert (=> d!1345192 (= res!1834375 ((_ is Nil!49683) (toList!3570 (extractMap!852 (t!356750 (toList!3569 lm!1616))))))))

(assert (=> d!1345192 (= (forall!9632 (toList!3570 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) lambda!155691) e!2760641)))

(declare-fun b!4433471 () Bool)

(declare-fun e!2760642 () Bool)

(assert (=> b!4433471 (= e!2760641 e!2760642)))

(declare-fun res!1834376 () Bool)

(assert (=> b!4433471 (=> (not res!1834376) (not e!2760642))))

(assert (=> b!4433471 (= res!1834376 (dynLambda!20882 lambda!155691 (h!55386 (toList!3570 (extractMap!852 (t!356750 (toList!3569 lm!1616)))))))))

(declare-fun b!4433472 () Bool)

(assert (=> b!4433472 (= e!2760642 (forall!9632 (t!356749 (toList!3570 (extractMap!852 (t!356750 (toList!3569 lm!1616))))) lambda!155691))))

(assert (= (and d!1345192 (not res!1834375)) b!4433471))

(assert (= (and b!4433471 res!1834376) b!4433472))

(declare-fun b_lambda!144165 () Bool)

(assert (=> (not b_lambda!144165) (not b!4433471)))

(declare-fun m!5118761 () Bool)

(assert (=> b!4433471 m!5118761))

(declare-fun m!5118763 () Bool)

(assert (=> b!4433472 m!5118763))

(assert (=> b!4433298 d!1345192))

(declare-fun d!1345194 () Bool)

(declare-fun res!1834377 () Bool)

(declare-fun e!2760643 () Bool)

(assert (=> d!1345194 (=> res!1834377 e!2760643)))

(assert (=> d!1345194 (= res!1834377 (not ((_ is Cons!49683) (_2!28066 (h!55387 (toList!3569 lt!1630718))))))))

(assert (=> d!1345194 (= (noDuplicateKeys!791 (_2!28066 (h!55387 (toList!3569 lt!1630718)))) e!2760643)))

(declare-fun b!4433473 () Bool)

(declare-fun e!2760644 () Bool)

(assert (=> b!4433473 (= e!2760643 e!2760644)))

(declare-fun res!1834378 () Bool)

(assert (=> b!4433473 (=> (not res!1834378) (not e!2760644))))

(assert (=> b!4433473 (= res!1834378 (not (containsKey!1182 (t!356749 (_2!28066 (h!55387 (toList!3569 lt!1630718)))) (_1!28065 (h!55386 (_2!28066 (h!55387 (toList!3569 lt!1630718))))))))))

(declare-fun b!4433474 () Bool)

(assert (=> b!4433474 (= e!2760644 (noDuplicateKeys!791 (t!356749 (_2!28066 (h!55387 (toList!3569 lt!1630718))))))))

(assert (= (and d!1345194 (not res!1834377)) b!4433473))

(assert (= (and b!4433473 res!1834378) b!4433474))

(declare-fun m!5118765 () Bool)

(assert (=> b!4433473 m!5118765))

(declare-fun m!5118767 () Bool)

(assert (=> b!4433474 m!5118767))

(assert (=> bs!760555 d!1345194))

(assert (=> b!4433296 d!1345172))

(declare-fun d!1345196 () Bool)

(declare-fun res!1834383 () Bool)

(declare-fun e!2760649 () Bool)

(assert (=> d!1345196 (=> res!1834383 e!2760649)))

(assert (=> d!1345196 (= res!1834383 (and ((_ is Cons!49683) (toList!3570 (extractMap!852 (toList!3569 lm!1616)))) (= (_1!28065 (h!55386 (toList!3570 (extractMap!852 (toList!3569 lm!1616))))) key!3717)))))

(assert (=> d!1345196 (= (containsKey!1180 (toList!3570 (extractMap!852 (toList!3569 lm!1616))) key!3717) e!2760649)))

(declare-fun b!4433479 () Bool)

(declare-fun e!2760650 () Bool)

(assert (=> b!4433479 (= e!2760649 e!2760650)))

(declare-fun res!1834384 () Bool)

(assert (=> b!4433479 (=> (not res!1834384) (not e!2760650))))

(assert (=> b!4433479 (= res!1834384 ((_ is Cons!49683) (toList!3570 (extractMap!852 (toList!3569 lm!1616)))))))

(declare-fun b!4433480 () Bool)

(assert (=> b!4433480 (= e!2760650 (containsKey!1180 (t!356749 (toList!3570 (extractMap!852 (toList!3569 lm!1616)))) key!3717))))

(assert (= (and d!1345196 (not res!1834383)) b!4433479))

(assert (= (and b!4433479 res!1834384) b!4433480))

(declare-fun m!5118801 () Bool)

(assert (=> b!4433480 m!5118801))

(assert (=> d!1345068 d!1345196))

(declare-fun d!1345200 () Bool)

(declare-fun res!1834385 () Bool)

(declare-fun e!2760651 () Bool)

(assert (=> d!1345200 (=> res!1834385 e!2760651)))

(assert (=> d!1345200 (= res!1834385 ((_ is Nil!49683) (toList!3570 (extractMap!852 (t!356750 (toList!3569 lm!1616))))))))

(assert (=> d!1345200 (= (forall!9632 (toList!3570 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (ite c!754571 lambda!155688 lambda!155689)) e!2760651)))

(declare-fun b!4433481 () Bool)

(declare-fun e!2760652 () Bool)

(assert (=> b!4433481 (= e!2760651 e!2760652)))

(declare-fun res!1834386 () Bool)

(assert (=> b!4433481 (=> (not res!1834386) (not e!2760652))))

(assert (=> b!4433481 (= res!1834386 (dynLambda!20882 (ite c!754571 lambda!155688 lambda!155689) (h!55386 (toList!3570 (extractMap!852 (t!356750 (toList!3569 lm!1616)))))))))

(declare-fun b!4433482 () Bool)

(assert (=> b!4433482 (= e!2760652 (forall!9632 (t!356749 (toList!3570 (extractMap!852 (t!356750 (toList!3569 lm!1616))))) (ite c!754571 lambda!155688 lambda!155689)))))

(assert (= (and d!1345200 (not res!1834385)) b!4433481))

(assert (= (and b!4433481 res!1834386) b!4433482))

(declare-fun b_lambda!144167 () Bool)

(assert (=> (not b_lambda!144167) (not b!4433481)))

(declare-fun m!5118803 () Bool)

(assert (=> b!4433481 m!5118803))

(declare-fun m!5118805 () Bool)

(assert (=> b!4433482 m!5118805))

(assert (=> bm!308443 d!1345200))

(declare-fun b!4433491 () Bool)

(assert (=> b!4433491 true))

(declare-fun d!1345202 () Bool)

(declare-fun e!2760655 () Bool)

(assert (=> d!1345202 e!2760655))

(declare-fun res!1834394 () Bool)

(assert (=> d!1345202 (=> (not res!1834394) (not e!2760655))))

(declare-fun lt!1631080 () List!49810)

(declare-fun noDuplicate!668 (List!49810) Bool)

(assert (=> d!1345202 (= res!1834394 (noDuplicate!668 lt!1631080))))

(assert (=> d!1345202 (= lt!1631080 (getKeysList!270 (toList!3570 (extractMap!852 (toList!3569 lm!1616)))))))

(assert (=> d!1345202 (= (keys!16992 (extractMap!852 (toList!3569 lm!1616))) lt!1631080)))

(declare-fun b!4433490 () Bool)

(declare-fun res!1834393 () Bool)

(assert (=> b!4433490 (=> (not res!1834393) (not e!2760655))))

(declare-fun length!192 (List!49810) Int)

(declare-fun length!193 (List!49807) Int)

(assert (=> b!4433490 (= res!1834393 (= (length!192 lt!1631080) (length!193 (toList!3570 (extractMap!852 (toList!3569 lm!1616))))))))

(declare-fun res!1834395 () Bool)

(assert (=> b!4433491 (=> (not res!1834395) (not e!2760655))))

(declare-fun lambda!155728 () Int)

(declare-fun forall!9634 (List!49810 Int) Bool)

(assert (=> b!4433491 (= res!1834395 (forall!9634 lt!1631080 lambda!155728))))

(declare-fun lambda!155729 () Int)

(declare-fun b!4433492 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7987 (List!49810) (InoxSet K!11050))

(declare-fun map!10861 (List!49807 Int) List!49810)

(assert (=> b!4433492 (= e!2760655 (= (content!7987 lt!1631080) (content!7987 (map!10861 (toList!3570 (extractMap!852 (toList!3569 lm!1616))) lambda!155729))))))

(assert (= (and d!1345202 res!1834394) b!4433490))

(assert (= (and b!4433490 res!1834393) b!4433491))

(assert (= (and b!4433491 res!1834395) b!4433492))

(declare-fun m!5118807 () Bool)

(assert (=> d!1345202 m!5118807))

(assert (=> d!1345202 m!5118375))

(declare-fun m!5118809 () Bool)

(assert (=> b!4433490 m!5118809))

(declare-fun m!5118811 () Bool)

(assert (=> b!4433490 m!5118811))

(declare-fun m!5118813 () Bool)

(assert (=> b!4433491 m!5118813))

(declare-fun m!5118815 () Bool)

(assert (=> b!4433492 m!5118815))

(declare-fun m!5118817 () Bool)

(assert (=> b!4433492 m!5118817))

(assert (=> b!4433492 m!5118817))

(declare-fun m!5118819 () Bool)

(assert (=> b!4433492 m!5118819))

(assert (=> b!4433239 d!1345202))

(declare-fun d!1345204 () Bool)

(declare-fun isEmpty!28369 (Option!10761) Bool)

(assert (=> d!1345204 (= (isDefined!8054 (getValueByKey!747 (toList!3569 lm!1616) hash!366)) (not (isEmpty!28369 (getValueByKey!747 (toList!3569 lm!1616) hash!366))))))

(declare-fun bs!760652 () Bool)

(assert (= bs!760652 d!1345204))

(assert (=> bs!760652 m!5118319))

(declare-fun m!5118821 () Bool)

(assert (=> bs!760652 m!5118821))

(assert (=> b!4433315 d!1345204))

(declare-fun b!4433504 () Bool)

(declare-fun e!2760660 () Option!10761)

(declare-fun e!2760661 () Option!10761)

(assert (=> b!4433504 (= e!2760660 e!2760661)))

(declare-fun c!754597 () Bool)

(assert (=> b!4433504 (= c!754597 (and ((_ is Cons!49684) (toList!3569 lm!1616)) (not (= (_1!28066 (h!55387 (toList!3569 lm!1616))) hash!366))))))

(declare-fun b!4433506 () Bool)

(assert (=> b!4433506 (= e!2760661 None!10760)))

(declare-fun b!4433503 () Bool)

(assert (=> b!4433503 (= e!2760660 (Some!10760 (_2!28066 (h!55387 (toList!3569 lm!1616)))))))

(declare-fun d!1345206 () Bool)

(declare-fun c!754596 () Bool)

(assert (=> d!1345206 (= c!754596 (and ((_ is Cons!49684) (toList!3569 lm!1616)) (= (_1!28066 (h!55387 (toList!3569 lm!1616))) hash!366)))))

(assert (=> d!1345206 (= (getValueByKey!747 (toList!3569 lm!1616) hash!366) e!2760660)))

(declare-fun b!4433505 () Bool)

(assert (=> b!4433505 (= e!2760661 (getValueByKey!747 (t!356750 (toList!3569 lm!1616)) hash!366))))

(assert (= (and d!1345206 c!754596) b!4433503))

(assert (= (and d!1345206 (not c!754596)) b!4433504))

(assert (= (and b!4433504 c!754597) b!4433505))

(assert (= (and b!4433504 (not c!754597)) b!4433506))

(declare-fun m!5118831 () Bool)

(assert (=> b!4433505 m!5118831))

(assert (=> b!4433315 d!1345206))

(declare-fun d!1345210 () Bool)

(declare-fun res!1834396 () Bool)

(declare-fun e!2760662 () Bool)

(assert (=> d!1345210 (=> res!1834396 e!2760662)))

(assert (=> d!1345210 (= res!1834396 ((_ is Nil!49684) (t!356750 (toList!3569 lm!1616))))))

(assert (=> d!1345210 (= (forall!9630 (t!356750 (toList!3569 lm!1616)) lambda!155606) e!2760662)))

(declare-fun b!4433507 () Bool)

(declare-fun e!2760663 () Bool)

(assert (=> b!4433507 (= e!2760662 e!2760663)))

(declare-fun res!1834397 () Bool)

(assert (=> b!4433507 (=> (not res!1834397) (not e!2760663))))

(assert (=> b!4433507 (= res!1834397 (dynLambda!20880 lambda!155606 (h!55387 (t!356750 (toList!3569 lm!1616)))))))

(declare-fun b!4433508 () Bool)

(assert (=> b!4433508 (= e!2760663 (forall!9630 (t!356750 (t!356750 (toList!3569 lm!1616))) lambda!155606))))

(assert (= (and d!1345210 (not res!1834396)) b!4433507))

(assert (= (and b!4433507 res!1834397) b!4433508))

(declare-fun b_lambda!144169 () Bool)

(assert (=> (not b_lambda!144169) (not b!4433507)))

(declare-fun m!5118833 () Bool)

(assert (=> b!4433507 m!5118833))

(declare-fun m!5118835 () Bool)

(assert (=> b!4433508 m!5118835))

(assert (=> b!4433306 d!1345210))

(declare-fun d!1345212 () Bool)

(assert (=> d!1345212 (= (get!16198 (getValueByKey!747 (toList!3569 lm!1616) hash!366)) (v!43966 (getValueByKey!747 (toList!3569 lm!1616) hash!366)))))

(assert (=> d!1345066 d!1345212))

(assert (=> d!1345066 d!1345206))

(declare-fun d!1345214 () Bool)

(declare-fun res!1834398 () Bool)

(declare-fun e!2760664 () Bool)

(assert (=> d!1345214 (=> res!1834398 e!2760664)))

(assert (=> d!1345214 (= res!1834398 ((_ is Nil!49684) (toList!3569 (+!1151 lm!1616 (tuple2!49545 hash!366 newBucket!194)))))))

(assert (=> d!1345214 (= (forall!9630 (toList!3569 (+!1151 lm!1616 (tuple2!49545 hash!366 newBucket!194))) lambda!155606) e!2760664)))

(declare-fun b!4433509 () Bool)

(declare-fun e!2760665 () Bool)

(assert (=> b!4433509 (= e!2760664 e!2760665)))

(declare-fun res!1834399 () Bool)

(assert (=> b!4433509 (=> (not res!1834399) (not e!2760665))))

(assert (=> b!4433509 (= res!1834399 (dynLambda!20880 lambda!155606 (h!55387 (toList!3569 (+!1151 lm!1616 (tuple2!49545 hash!366 newBucket!194))))))))

(declare-fun b!4433510 () Bool)

(assert (=> b!4433510 (= e!2760665 (forall!9630 (t!356750 (toList!3569 (+!1151 lm!1616 (tuple2!49545 hash!366 newBucket!194)))) lambda!155606))))

(assert (= (and d!1345214 (not res!1834398)) b!4433509))

(assert (= (and b!4433509 res!1834399) b!4433510))

(declare-fun b_lambda!144171 () Bool)

(assert (=> (not b_lambda!144171) (not b!4433509)))

(declare-fun m!5118837 () Bool)

(assert (=> b!4433509 m!5118837))

(declare-fun m!5118839 () Bool)

(assert (=> b!4433510 m!5118839))

(assert (=> d!1345044 d!1345214))

(declare-fun d!1345216 () Bool)

(declare-fun e!2760666 () Bool)

(assert (=> d!1345216 e!2760666))

(declare-fun res!1834400 () Bool)

(assert (=> d!1345216 (=> (not res!1834400) (not e!2760666))))

(declare-fun lt!1631085 () ListLongMap!2219)

(assert (=> d!1345216 (= res!1834400 (contains!12219 lt!1631085 (_1!28066 (tuple2!49545 hash!366 newBucket!194))))))

(declare-fun lt!1631082 () List!49808)

(assert (=> d!1345216 (= lt!1631085 (ListLongMap!2220 lt!1631082))))

(declare-fun lt!1631084 () Unit!82881)

(declare-fun lt!1631083 () Unit!82881)

(assert (=> d!1345216 (= lt!1631084 lt!1631083)))

(assert (=> d!1345216 (= (getValueByKey!747 lt!1631082 (_1!28066 (tuple2!49545 hash!366 newBucket!194))) (Some!10760 (_2!28066 (tuple2!49545 hash!366 newBucket!194))))))

(assert (=> d!1345216 (= lt!1631083 (lemmaContainsTupThenGetReturnValue!479 lt!1631082 (_1!28066 (tuple2!49545 hash!366 newBucket!194)) (_2!28066 (tuple2!49545 hash!366 newBucket!194))))))

(assert (=> d!1345216 (= lt!1631082 (insertStrictlySorted!278 (toList!3569 lm!1616) (_1!28066 (tuple2!49545 hash!366 newBucket!194)) (_2!28066 (tuple2!49545 hash!366 newBucket!194))))))

(assert (=> d!1345216 (= (+!1151 lm!1616 (tuple2!49545 hash!366 newBucket!194)) lt!1631085)))

(declare-fun b!4433511 () Bool)

(declare-fun res!1834401 () Bool)

(assert (=> b!4433511 (=> (not res!1834401) (not e!2760666))))

(assert (=> b!4433511 (= res!1834401 (= (getValueByKey!747 (toList!3569 lt!1631085) (_1!28066 (tuple2!49545 hash!366 newBucket!194))) (Some!10760 (_2!28066 (tuple2!49545 hash!366 newBucket!194)))))))

(declare-fun b!4433512 () Bool)

(assert (=> b!4433512 (= e!2760666 (contains!12222 (toList!3569 lt!1631085) (tuple2!49545 hash!366 newBucket!194)))))

(assert (= (and d!1345216 res!1834400) b!4433511))

(assert (= (and b!4433511 res!1834401) b!4433512))

(declare-fun m!5118841 () Bool)

(assert (=> d!1345216 m!5118841))

(declare-fun m!5118843 () Bool)

(assert (=> d!1345216 m!5118843))

(declare-fun m!5118845 () Bool)

(assert (=> d!1345216 m!5118845))

(declare-fun m!5118847 () Bool)

(assert (=> d!1345216 m!5118847))

(declare-fun m!5118849 () Bool)

(assert (=> b!4433511 m!5118849))

(declare-fun m!5118851 () Bool)

(assert (=> b!4433512 m!5118851))

(assert (=> d!1345044 d!1345216))

(declare-fun d!1345218 () Bool)

(assert (=> d!1345218 (forall!9630 (toList!3569 (+!1151 lm!1616 (tuple2!49545 hash!366 newBucket!194))) lambda!155606)))

(assert (=> d!1345218 true))

(declare-fun _$31!418 () Unit!82881)

(assert (=> d!1345218 (= (choose!28093 lm!1616 lambda!155606 hash!366 newBucket!194) _$31!418)))

(declare-fun bs!760654 () Bool)

(assert (= bs!760654 d!1345218))

(assert (=> bs!760654 m!5118307))

(assert (=> bs!760654 m!5118309))

(assert (=> d!1345044 d!1345218))

(assert (=> d!1345044 d!1345102))

(declare-fun d!1345220 () Bool)

(declare-fun lt!1631100 () Bool)

(assert (=> d!1345220 (= lt!1631100 (select (content!7987 (keys!16992 (extractMap!852 (toList!3569 lm!1616)))) key!3717))))

(declare-fun e!2760678 () Bool)

(assert (=> d!1345220 (= lt!1631100 e!2760678)))

(declare-fun res!1834416 () Bool)

(assert (=> d!1345220 (=> (not res!1834416) (not e!2760678))))

(assert (=> d!1345220 (= res!1834416 ((_ is Cons!49686) (keys!16992 (extractMap!852 (toList!3569 lm!1616)))))))

(assert (=> d!1345220 (= (contains!12223 (keys!16992 (extractMap!852 (toList!3569 lm!1616))) key!3717) lt!1631100)))

(declare-fun b!4433528 () Bool)

(declare-fun e!2760679 () Bool)

(assert (=> b!4433528 (= e!2760678 e!2760679)))

(declare-fun res!1834417 () Bool)

(assert (=> b!4433528 (=> res!1834417 e!2760679)))

(assert (=> b!4433528 (= res!1834417 (= (h!55391 (keys!16992 (extractMap!852 (toList!3569 lm!1616)))) key!3717))))

(declare-fun b!4433529 () Bool)

(assert (=> b!4433529 (= e!2760679 (contains!12223 (t!356752 (keys!16992 (extractMap!852 (toList!3569 lm!1616)))) key!3717))))

(assert (= (and d!1345220 res!1834416) b!4433528))

(assert (= (and b!4433528 (not res!1834417)) b!4433529))

(assert (=> d!1345220 m!5118369))

(declare-fun m!5118873 () Bool)

(assert (=> d!1345220 m!5118873))

(declare-fun m!5118875 () Bool)

(assert (=> d!1345220 m!5118875))

(declare-fun m!5118877 () Bool)

(assert (=> b!4433529 m!5118877))

(assert (=> b!4433238 d!1345220))

(assert (=> b!4433238 d!1345202))

(declare-fun d!1345228 () Bool)

(declare-fun res!1834421 () Bool)

(declare-fun e!2760686 () Bool)

(assert (=> d!1345228 (=> res!1834421 e!2760686)))

(assert (=> d!1345228 (= res!1834421 ((_ is Nil!49684) (toList!3569 lm!1616)))))

(assert (=> d!1345228 (= (forall!9630 (toList!3569 lm!1616) lambda!155625) e!2760686)))

(declare-fun b!4433539 () Bool)

(declare-fun e!2760687 () Bool)

(assert (=> b!4433539 (= e!2760686 e!2760687)))

(declare-fun res!1834422 () Bool)

(assert (=> b!4433539 (=> (not res!1834422) (not e!2760687))))

(assert (=> b!4433539 (= res!1834422 (dynLambda!20880 lambda!155625 (h!55387 (toList!3569 lm!1616))))))

(declare-fun b!4433540 () Bool)

(assert (=> b!4433540 (= e!2760687 (forall!9630 (t!356750 (toList!3569 lm!1616)) lambda!155625))))

(assert (= (and d!1345228 (not res!1834421)) b!4433539))

(assert (= (and b!4433539 res!1834422) b!4433540))

(declare-fun b_lambda!144177 () Bool)

(assert (=> (not b_lambda!144177) (not b!4433539)))

(declare-fun m!5118879 () Bool)

(assert (=> b!4433539 m!5118879))

(declare-fun m!5118881 () Bool)

(assert (=> b!4433540 m!5118881))

(assert (=> d!1345080 d!1345228))

(declare-fun d!1345230 () Bool)

(assert (=> d!1345230 (isDefined!8054 (getValueByKey!747 (toList!3569 lm!1616) hash!366))))

(declare-fun lt!1631119 () Unit!82881)

(declare-fun choose!28098 (List!49808 (_ BitVec 64)) Unit!82881)

(assert (=> d!1345230 (= lt!1631119 (choose!28098 (toList!3569 lm!1616) hash!366))))

(declare-fun e!2760698 () Bool)

(assert (=> d!1345230 e!2760698))

(declare-fun res!1834430 () Bool)

(assert (=> d!1345230 (=> (not res!1834430) (not e!2760698))))

(assert (=> d!1345230 (= res!1834430 (isStrictlySorted!250 (toList!3569 lm!1616)))))

(assert (=> d!1345230 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!657 (toList!3569 lm!1616) hash!366) lt!1631119)))

(declare-fun b!4433554 () Bool)

(assert (=> b!4433554 (= e!2760698 (containsKey!1181 (toList!3569 lm!1616) hash!366))))

(assert (= (and d!1345230 res!1834430) b!4433554))

(assert (=> d!1345230 m!5118319))

(assert (=> d!1345230 m!5118319))

(assert (=> d!1345230 m!5118491))

(declare-fun m!5118925 () Bool)

(assert (=> d!1345230 m!5118925))

(assert (=> d!1345230 m!5118485))

(assert (=> b!4433554 m!5118487))

(assert (=> b!4433313 d!1345230))

(assert (=> b!4433313 d!1345204))

(assert (=> b!4433313 d!1345206))

(declare-fun d!1345238 () Bool)

(declare-fun lt!1631125 () Bool)

(declare-fun content!7988 (List!49808) (InoxSet tuple2!49544))

(assert (=> d!1345238 (= lt!1631125 (select (content!7988 (toList!3569 lt!1630751)) lt!1630716))))

(declare-fun e!2760708 () Bool)

(assert (=> d!1345238 (= lt!1631125 e!2760708)))

(declare-fun res!1834441 () Bool)

(assert (=> d!1345238 (=> (not res!1834441) (not e!2760708))))

(assert (=> d!1345238 (= res!1834441 ((_ is Cons!49684) (toList!3569 lt!1630751)))))

(assert (=> d!1345238 (= (contains!12222 (toList!3569 lt!1630751) lt!1630716) lt!1631125)))

(declare-fun b!4433564 () Bool)

(declare-fun e!2760709 () Bool)

(assert (=> b!4433564 (= e!2760708 e!2760709)))

(declare-fun res!1834440 () Bool)

(assert (=> b!4433564 (=> res!1834440 e!2760709)))

(assert (=> b!4433564 (= res!1834440 (= (h!55387 (toList!3569 lt!1630751)) lt!1630716))))

(declare-fun b!4433565 () Bool)

(assert (=> b!4433565 (= e!2760709 (contains!12222 (t!356750 (toList!3569 lt!1630751)) lt!1630716))))

(assert (= (and d!1345238 res!1834441) b!4433564))

(assert (= (and b!4433564 (not res!1834440)) b!4433565))

(declare-fun m!5118935 () Bool)

(assert (=> d!1345238 m!5118935))

(declare-fun m!5118937 () Bool)

(assert (=> d!1345238 m!5118937))

(declare-fun m!5118939 () Bool)

(assert (=> b!4433565 m!5118939))

(assert (=> b!4433162 d!1345238))

(declare-fun d!1345244 () Bool)

(declare-fun res!1834444 () Bool)

(declare-fun e!2760712 () Bool)

(assert (=> d!1345244 (=> res!1834444 e!2760712)))

(assert (=> d!1345244 (= res!1834444 (not ((_ is Cons!49683) (_2!28066 (h!55387 (toList!3569 lm!1616))))))))

(assert (=> d!1345244 (= (noDuplicateKeys!791 (_2!28066 (h!55387 (toList!3569 lm!1616)))) e!2760712)))

(declare-fun b!4433568 () Bool)

(declare-fun e!2760713 () Bool)

(assert (=> b!4433568 (= e!2760712 e!2760713)))

(declare-fun res!1834445 () Bool)

(assert (=> b!4433568 (=> (not res!1834445) (not e!2760713))))

(assert (=> b!4433568 (= res!1834445 (not (containsKey!1182 (t!356749 (_2!28066 (h!55387 (toList!3569 lm!1616)))) (_1!28065 (h!55386 (_2!28066 (h!55387 (toList!3569 lm!1616))))))))))

(declare-fun b!4433569 () Bool)

(assert (=> b!4433569 (= e!2760713 (noDuplicateKeys!791 (t!356749 (_2!28066 (h!55387 (toList!3569 lm!1616))))))))

(assert (= (and d!1345244 (not res!1834444)) b!4433568))

(assert (= (and b!4433568 res!1834445) b!4433569))

(declare-fun m!5118945 () Bool)

(assert (=> b!4433568 m!5118945))

(declare-fun m!5118947 () Bool)

(assert (=> b!4433569 m!5118947))

(assert (=> bs!760556 d!1345244))

(declare-fun d!1345248 () Bool)

(declare-fun noDuplicatedKeys!184 (List!49807) Bool)

(assert (=> d!1345248 (= (invariantList!823 (toList!3570 lt!1630940)) (noDuplicatedKeys!184 (toList!3570 lt!1630940)))))

(declare-fun bs!760656 () Bool)

(assert (= bs!760656 d!1345248))

(declare-fun m!5118951 () Bool)

(assert (=> bs!760656 m!5118951))

(assert (=> b!4433299 d!1345248))

(declare-fun bs!760659 () Bool)

(declare-fun d!1345252 () Bool)

(assert (= bs!760659 (and d!1345252 d!1345086)))

(declare-fun lambda!155734 () Int)

(assert (=> bs!760659 (= (= (extractMap!852 (t!356750 (toList!3569 lm!1616))) lt!1630940) (= lambda!155734 lambda!155691))))

(declare-fun bs!760660 () Bool)

(assert (= bs!760660 (and d!1345252 b!4433297)))

(assert (=> bs!760660 (= (= (extractMap!852 (t!356750 (toList!3569 lm!1616))) lt!1630944) (= lambda!155734 lambda!155690))))

(declare-fun bs!760662 () Bool)

(assert (= bs!760662 (and d!1345252 b!4433366)))

(assert (=> bs!760662 (= (= (extractMap!852 (t!356750 (toList!3569 lm!1616))) lt!1630985) (= lambda!155734 lambda!155701))))

(declare-fun bs!760664 () Bool)

(assert (= bs!760664 (and d!1345252 d!1345158)))

(assert (=> bs!760664 (= (= (extractMap!852 (t!356750 (toList!3569 lm!1616))) lt!1630944) (= lambda!155734 lambda!155715))))

(assert (=> bs!760662 (= (= (extractMap!852 (t!356750 (toList!3569 lm!1616))) (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194))) (= lambda!155734 lambda!155700))))

(declare-fun bs!760667 () Bool)

(assert (= bs!760667 (and d!1345252 b!4433369)))

(assert (=> bs!760667 (= (= (extractMap!852 (t!356750 (toList!3569 lm!1616))) (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194))) (= lambda!155734 lambda!155699))))

(assert (=> bs!760660 (= lambda!155734 lambda!155689)))

(declare-fun bs!760670 () Bool)

(assert (= bs!760670 (and d!1345252 d!1345128)))

(assert (=> bs!760670 (= (= (extractMap!852 (t!356750 (toList!3569 lm!1616))) lt!1630981) (= lambda!155734 lambda!155702))))

(declare-fun bs!760672 () Bool)

(assert (= bs!760672 (and d!1345252 d!1345062)))

(assert (=> bs!760672 (not (= lambda!155734 lambda!155615))))

(declare-fun bs!760673 () Bool)

(assert (= bs!760673 (and d!1345252 b!4433300)))

(assert (=> bs!760673 (= lambda!155734 lambda!155688)))

(assert (=> d!1345252 true))

(assert (=> d!1345252 (forall!9632 (toList!3570 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) lambda!155734)))

(declare-fun lt!1631149 () Unit!82881)

(declare-fun choose!28099 (ListMap!2813) Unit!82881)

(assert (=> d!1345252 (= lt!1631149 (choose!28099 (extractMap!852 (t!356750 (toList!3569 lm!1616)))))))

(assert (=> d!1345252 (= (lemmaContainsAllItsOwnKeys!191 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) lt!1631149)))

(declare-fun bs!760676 () Bool)

(assert (= bs!760676 d!1345252))

(declare-fun m!5118965 () Bool)

(assert (=> bs!760676 m!5118965))

(assert (=> bs!760676 m!5118237))

(declare-fun m!5118967 () Bool)

(assert (=> bs!760676 m!5118967))

(assert (=> bm!308445 d!1345252))

(declare-fun b!4433592 () Bool)

(declare-fun e!2760727 () Option!10761)

(declare-fun e!2760728 () Option!10761)

(assert (=> b!4433592 (= e!2760727 e!2760728)))

(declare-fun c!754612 () Bool)

(assert (=> b!4433592 (= c!754612 (and ((_ is Cons!49684) (toList!3569 lt!1630751)) (not (= (_1!28066 (h!55387 (toList!3569 lt!1630751))) (_1!28066 lt!1630716)))))))

(declare-fun b!4433594 () Bool)

(assert (=> b!4433594 (= e!2760728 None!10760)))

(declare-fun b!4433591 () Bool)

(assert (=> b!4433591 (= e!2760727 (Some!10760 (_2!28066 (h!55387 (toList!3569 lt!1630751)))))))

(declare-fun d!1345264 () Bool)

(declare-fun c!754611 () Bool)

(assert (=> d!1345264 (= c!754611 (and ((_ is Cons!49684) (toList!3569 lt!1630751)) (= (_1!28066 (h!55387 (toList!3569 lt!1630751))) (_1!28066 lt!1630716))))))

(assert (=> d!1345264 (= (getValueByKey!747 (toList!3569 lt!1630751) (_1!28066 lt!1630716)) e!2760727)))

(declare-fun b!4433593 () Bool)

(assert (=> b!4433593 (= e!2760728 (getValueByKey!747 (t!356750 (toList!3569 lt!1630751)) (_1!28066 lt!1630716)))))

(assert (= (and d!1345264 c!754611) b!4433591))

(assert (= (and d!1345264 (not c!754611)) b!4433592))

(assert (= (and b!4433592 c!754612) b!4433593))

(assert (= (and b!4433592 (not c!754612)) b!4433594))

(declare-fun m!5118969 () Bool)

(assert (=> b!4433593 m!5118969))

(assert (=> b!4433161 d!1345264))

(declare-fun d!1345266 () Bool)

(declare-fun choose!28101 (Hashable!5185 K!11050) (_ BitVec 64))

(assert (=> d!1345266 (= (hash!2212 hashF!1220 key!3717) (choose!28101 hashF!1220 key!3717))))

(declare-fun bs!760686 () Bool)

(assert (= bs!760686 d!1345266))

(declare-fun m!5118971 () Bool)

(assert (=> bs!760686 m!5118971))

(assert (=> d!1345100 d!1345266))

(declare-fun d!1345268 () Bool)

(assert (=> d!1345268 (= (invariantList!823 (toList!3570 lt!1630817)) (noDuplicatedKeys!184 (toList!3570 lt!1630817)))))

(declare-fun bs!760689 () Bool)

(assert (= bs!760689 d!1345268))

(declare-fun m!5118973 () Bool)

(assert (=> bs!760689 m!5118973))

(assert (=> d!1345084 d!1345268))

(declare-fun d!1345270 () Bool)

(declare-fun res!1834453 () Bool)

(declare-fun e!2760729 () Bool)

(assert (=> d!1345270 (=> res!1834453 e!2760729)))

(assert (=> d!1345270 (= res!1834453 ((_ is Nil!49684) (toList!3569 lt!1630718)))))

(assert (=> d!1345270 (= (forall!9630 (toList!3569 lt!1630718) lambda!155626) e!2760729)))

(declare-fun b!4433595 () Bool)

(declare-fun e!2760730 () Bool)

(assert (=> b!4433595 (= e!2760729 e!2760730)))

(declare-fun res!1834454 () Bool)

(assert (=> b!4433595 (=> (not res!1834454) (not e!2760730))))

(assert (=> b!4433595 (= res!1834454 (dynLambda!20880 lambda!155626 (h!55387 (toList!3569 lt!1630718))))))

(declare-fun b!4433596 () Bool)

(assert (=> b!4433596 (= e!2760730 (forall!9630 (t!356750 (toList!3569 lt!1630718)) lambda!155626))))

(assert (= (and d!1345270 (not res!1834453)) b!4433595))

(assert (= (and b!4433595 res!1834454) b!4433596))

(declare-fun b_lambda!144191 () Bool)

(assert (=> (not b_lambda!144191) (not b!4433595)))

(declare-fun m!5118975 () Bool)

(assert (=> b!4433595 m!5118975))

(declare-fun m!5118977 () Bool)

(assert (=> b!4433596 m!5118977))

(assert (=> d!1345084 d!1345270))

(declare-fun d!1345272 () Bool)

(declare-fun res!1834455 () Bool)

(declare-fun e!2760731 () Bool)

(assert (=> d!1345272 (=> res!1834455 e!2760731)))

(assert (=> d!1345272 (= res!1834455 ((_ is Nil!49683) newBucket!194))))

(assert (=> d!1345272 (= (forall!9632 newBucket!194 lambda!155691) e!2760731)))

(declare-fun b!4433597 () Bool)

(declare-fun e!2760732 () Bool)

(assert (=> b!4433597 (= e!2760731 e!2760732)))

(declare-fun res!1834456 () Bool)

(assert (=> b!4433597 (=> (not res!1834456) (not e!2760732))))

(assert (=> b!4433597 (= res!1834456 (dynLambda!20882 lambda!155691 (h!55386 newBucket!194)))))

(declare-fun b!4433598 () Bool)

(assert (=> b!4433598 (= e!2760732 (forall!9632 (t!356749 newBucket!194) lambda!155691))))

(assert (= (and d!1345272 (not res!1834455)) b!4433597))

(assert (= (and b!4433597 res!1834456) b!4433598))

(declare-fun b_lambda!144193 () Bool)

(assert (=> (not b_lambda!144193) (not b!4433597)))

(declare-fun m!5118979 () Bool)

(assert (=> b!4433597 m!5118979))

(declare-fun m!5118981 () Bool)

(assert (=> b!4433598 m!5118981))

(assert (=> d!1345086 d!1345272))

(assert (=> d!1345086 d!1345108))

(declare-fun d!1345274 () Bool)

(declare-fun isEmpty!28370 (Option!10762) Bool)

(assert (=> d!1345274 (= (isDefined!8053 (getValueByKey!748 (toList!3570 (extractMap!852 (toList!3569 lm!1616))) key!3717)) (not (isEmpty!28370 (getValueByKey!748 (toList!3570 (extractMap!852 (toList!3569 lm!1616))) key!3717))))))

(declare-fun bs!760694 () Bool)

(assert (= bs!760694 d!1345274))

(assert (=> bs!760694 m!5118359))

(declare-fun m!5118983 () Bool)

(assert (=> bs!760694 m!5118983))

(assert (=> b!4433243 d!1345274))

(declare-fun d!1345276 () Bool)

(declare-fun c!754617 () Bool)

(assert (=> d!1345276 (= c!754617 (and ((_ is Cons!49683) (toList!3570 (extractMap!852 (toList!3569 lm!1616)))) (= (_1!28065 (h!55386 (toList!3570 (extractMap!852 (toList!3569 lm!1616))))) key!3717)))))

(declare-fun e!2760737 () Option!10762)

(assert (=> d!1345276 (= (getValueByKey!748 (toList!3570 (extractMap!852 (toList!3569 lm!1616))) key!3717) e!2760737)))

(declare-fun b!4433610 () Bool)

(declare-fun e!2760738 () Option!10762)

(assert (=> b!4433610 (= e!2760738 None!10761)))

(declare-fun b!4433607 () Bool)

(assert (=> b!4433607 (= e!2760737 (Some!10761 (_2!28065 (h!55386 (toList!3570 (extractMap!852 (toList!3569 lm!1616)))))))))

(declare-fun b!4433609 () Bool)

(assert (=> b!4433609 (= e!2760738 (getValueByKey!748 (t!356749 (toList!3570 (extractMap!852 (toList!3569 lm!1616)))) key!3717))))

(declare-fun b!4433608 () Bool)

(assert (=> b!4433608 (= e!2760737 e!2760738)))

(declare-fun c!754618 () Bool)

(assert (=> b!4433608 (= c!754618 (and ((_ is Cons!49683) (toList!3570 (extractMap!852 (toList!3569 lm!1616)))) (not (= (_1!28065 (h!55386 (toList!3570 (extractMap!852 (toList!3569 lm!1616))))) key!3717))))))

(assert (= (and d!1345276 c!754617) b!4433607))

(assert (= (and d!1345276 (not c!754617)) b!4433608))

(assert (= (and b!4433608 c!754618) b!4433609))

(assert (= (and b!4433608 (not c!754618)) b!4433610))

(declare-fun m!5118985 () Bool)

(assert (=> b!4433609 m!5118985))

(assert (=> b!4433243 d!1345276))

(declare-fun d!1345278 () Bool)

(assert (=> d!1345278 (= (invariantList!823 (toList!3570 lt!1630945)) (noDuplicatedKeys!184 (toList!3570 lt!1630945)))))

(declare-fun bs!760709 () Bool)

(assert (= bs!760709 d!1345278))

(declare-fun m!5118987 () Bool)

(assert (=> bs!760709 m!5118987))

(assert (=> d!1345098 d!1345278))

(declare-fun d!1345280 () Bool)

(declare-fun res!1834457 () Bool)

(declare-fun e!2760739 () Bool)

(assert (=> d!1345280 (=> res!1834457 e!2760739)))

(assert (=> d!1345280 (= res!1834457 ((_ is Nil!49684) (t!356750 (toList!3569 lm!1616))))))

(assert (=> d!1345280 (= (forall!9630 (t!356750 (toList!3569 lm!1616)) lambda!155692) e!2760739)))

(declare-fun b!4433611 () Bool)

(declare-fun e!2760740 () Bool)

(assert (=> b!4433611 (= e!2760739 e!2760740)))

(declare-fun res!1834458 () Bool)

(assert (=> b!4433611 (=> (not res!1834458) (not e!2760740))))

(assert (=> b!4433611 (= res!1834458 (dynLambda!20880 lambda!155692 (h!55387 (t!356750 (toList!3569 lm!1616)))))))

(declare-fun b!4433612 () Bool)

(assert (=> b!4433612 (= e!2760740 (forall!9630 (t!356750 (t!356750 (toList!3569 lm!1616))) lambda!155692))))

(assert (= (and d!1345280 (not res!1834457)) b!4433611))

(assert (= (and b!4433611 res!1834458) b!4433612))

(declare-fun b_lambda!144195 () Bool)

(assert (=> (not b_lambda!144195) (not b!4433611)))

(declare-fun m!5118989 () Bool)

(assert (=> b!4433611 m!5118989))

(declare-fun m!5118991 () Bool)

(assert (=> b!4433612 m!5118991))

(assert (=> d!1345098 d!1345280))

(declare-fun bs!760764 () Bool)

(declare-fun b!4433639 () Bool)

(assert (= bs!760764 (and b!4433639 b!4433491)))

(declare-fun lambda!155751 () Int)

(assert (=> bs!760764 (= (= (t!356749 (toList!3570 (extractMap!852 (toList!3569 lm!1616)))) (toList!3570 (extractMap!852 (toList!3569 lm!1616)))) (= lambda!155751 lambda!155728))))

(assert (=> b!4433639 true))

(declare-fun bs!760765 () Bool)

(declare-fun b!4433643 () Bool)

(assert (= bs!760765 (and b!4433643 b!4433491)))

(declare-fun lambda!155752 () Int)

(assert (=> bs!760765 (= (= (Cons!49683 (h!55386 (toList!3570 (extractMap!852 (toList!3569 lm!1616)))) (t!356749 (toList!3570 (extractMap!852 (toList!3569 lm!1616))))) (toList!3570 (extractMap!852 (toList!3569 lm!1616)))) (= lambda!155752 lambda!155728))))

(declare-fun bs!760766 () Bool)

(assert (= bs!760766 (and b!4433643 b!4433639)))

(assert (=> bs!760766 (= (= (Cons!49683 (h!55386 (toList!3570 (extractMap!852 (toList!3569 lm!1616)))) (t!356749 (toList!3570 (extractMap!852 (toList!3569 lm!1616))))) (t!356749 (toList!3570 (extractMap!852 (toList!3569 lm!1616))))) (= lambda!155752 lambda!155751))))

(assert (=> b!4433643 true))

(declare-fun bs!760767 () Bool)

(declare-fun b!4433638 () Bool)

(assert (= bs!760767 (and b!4433638 b!4433491)))

(declare-fun lambda!155753 () Int)

(assert (=> bs!760767 (= lambda!155753 lambda!155728)))

(declare-fun bs!760768 () Bool)

(assert (= bs!760768 (and b!4433638 b!4433639)))

(assert (=> bs!760768 (= (= (toList!3570 (extractMap!852 (toList!3569 lm!1616))) (t!356749 (toList!3570 (extractMap!852 (toList!3569 lm!1616))))) (= lambda!155753 lambda!155751))))

(declare-fun bs!760769 () Bool)

(assert (= bs!760769 (and b!4433638 b!4433643)))

(assert (=> bs!760769 (= (= (toList!3570 (extractMap!852 (toList!3569 lm!1616))) (Cons!49683 (h!55386 (toList!3570 (extractMap!852 (toList!3569 lm!1616)))) (t!356749 (toList!3570 (extractMap!852 (toList!3569 lm!1616)))))) (= lambda!155753 lambda!155752))))

(assert (=> b!4433638 true))

(declare-fun bs!760770 () Bool)

(declare-fun b!4433646 () Bool)

(assert (= bs!760770 (and b!4433646 b!4433492)))

(declare-fun lambda!155754 () Int)

(assert (=> bs!760770 (= lambda!155754 lambda!155729)))

(declare-fun res!1834470 () Bool)

(declare-fun e!2760754 () Bool)

(assert (=> b!4433638 (=> (not res!1834470) (not e!2760754))))

(declare-fun lt!1631190 () List!49810)

(assert (=> b!4433638 (= res!1834470 (forall!9634 lt!1631190 lambda!155753))))

(assert (=> b!4433639 false))

(declare-fun lt!1631188 () Unit!82881)

(declare-fun forallContained!2120 (List!49810 Int K!11050) Unit!82881)

(assert (=> b!4433639 (= lt!1631188 (forallContained!2120 (getKeysList!270 (t!356749 (toList!3570 (extractMap!852 (toList!3569 lm!1616))))) lambda!155751 (_1!28065 (h!55386 (toList!3570 (extractMap!852 (toList!3569 lm!1616)))))))))

(declare-fun e!2760753 () Unit!82881)

(declare-fun Unit!82950 () Unit!82881)

(assert (=> b!4433639 (= e!2760753 Unit!82950)))

(declare-fun d!1345282 () Bool)

(assert (=> d!1345282 e!2760754))

(declare-fun res!1834468 () Bool)

(assert (=> d!1345282 (=> (not res!1834468) (not e!2760754))))

(assert (=> d!1345282 (= res!1834468 (noDuplicate!668 lt!1631190))))

(declare-fun e!2760756 () List!49810)

(assert (=> d!1345282 (= lt!1631190 e!2760756)))

(declare-fun c!754627 () Bool)

(assert (=> d!1345282 (= c!754627 ((_ is Cons!49683) (toList!3570 (extractMap!852 (toList!3569 lm!1616)))))))

(assert (=> d!1345282 (invariantList!823 (toList!3570 (extractMap!852 (toList!3569 lm!1616))))))

(assert (=> d!1345282 (= (getKeysList!270 (toList!3570 (extractMap!852 (toList!3569 lm!1616)))) lt!1631190)))

(declare-fun b!4433640 () Bool)

(declare-fun res!1834469 () Bool)

(assert (=> b!4433640 (=> (not res!1834469) (not e!2760754))))

(assert (=> b!4433640 (= res!1834469 (= (length!192 lt!1631190) (length!193 (toList!3570 (extractMap!852 (toList!3569 lm!1616))))))))

(declare-fun b!4433641 () Bool)

(assert (=> b!4433641 (= e!2760756 Nil!49686)))

(declare-fun b!4433642 () Bool)

(assert (=> b!4433642 false))

(declare-fun e!2760755 () Unit!82881)

(declare-fun Unit!82951 () Unit!82881)

(assert (=> b!4433642 (= e!2760755 Unit!82951)))

(assert (=> b!4433643 (= e!2760756 (Cons!49686 (_1!28065 (h!55386 (toList!3570 (extractMap!852 (toList!3569 lm!1616))))) (getKeysList!270 (t!356749 (toList!3570 (extractMap!852 (toList!3569 lm!1616)))))))))

(declare-fun c!754629 () Bool)

(assert (=> b!4433643 (= c!754629 (containsKey!1180 (t!356749 (toList!3570 (extractMap!852 (toList!3569 lm!1616)))) (_1!28065 (h!55386 (toList!3570 (extractMap!852 (toList!3569 lm!1616)))))))))

(declare-fun lt!1631189 () Unit!82881)

(assert (=> b!4433643 (= lt!1631189 e!2760755)))

(declare-fun c!754628 () Bool)

(assert (=> b!4433643 (= c!754628 (contains!12223 (getKeysList!270 (t!356749 (toList!3570 (extractMap!852 (toList!3569 lm!1616))))) (_1!28065 (h!55386 (toList!3570 (extractMap!852 (toList!3569 lm!1616)))))))))

(declare-fun lt!1631192 () Unit!82881)

(assert (=> b!4433643 (= lt!1631192 e!2760753)))

(declare-fun lt!1631187 () List!49810)

(assert (=> b!4433643 (= lt!1631187 (getKeysList!270 (t!356749 (toList!3570 (extractMap!852 (toList!3569 lm!1616))))))))

(declare-fun lt!1631186 () Unit!82881)

(declare-fun lemmaForallContainsAddHeadPreserves!89 (List!49807 List!49810 tuple2!49542) Unit!82881)

(assert (=> b!4433643 (= lt!1631186 (lemmaForallContainsAddHeadPreserves!89 (t!356749 (toList!3570 (extractMap!852 (toList!3569 lm!1616)))) lt!1631187 (h!55386 (toList!3570 (extractMap!852 (toList!3569 lm!1616))))))))

(assert (=> b!4433643 (forall!9634 lt!1631187 lambda!155752)))

(declare-fun lt!1631191 () Unit!82881)

(assert (=> b!4433643 (= lt!1631191 lt!1631186)))

(declare-fun b!4433644 () Bool)

(declare-fun Unit!82952 () Unit!82881)

(assert (=> b!4433644 (= e!2760753 Unit!82952)))

(declare-fun b!4433645 () Bool)

(declare-fun Unit!82953 () Unit!82881)

(assert (=> b!4433645 (= e!2760755 Unit!82953)))

(assert (=> b!4433646 (= e!2760754 (= (content!7987 lt!1631190) (content!7987 (map!10861 (toList!3570 (extractMap!852 (toList!3569 lm!1616))) lambda!155754))))))

(assert (= (and d!1345282 c!754627) b!4433643))

(assert (= (and d!1345282 (not c!754627)) b!4433641))

(assert (= (and b!4433643 c!754629) b!4433642))

(assert (= (and b!4433643 (not c!754629)) b!4433645))

(assert (= (and b!4433643 c!754628) b!4433639))

(assert (= (and b!4433643 (not c!754628)) b!4433644))

(assert (= (and d!1345282 res!1834468) b!4433640))

(assert (= (and b!4433640 res!1834469) b!4433638))

(assert (= (and b!4433638 res!1834470) b!4433646))

(declare-fun m!5119063 () Bool)

(assert (=> b!4433646 m!5119063))

(declare-fun m!5119065 () Bool)

(assert (=> b!4433646 m!5119065))

(assert (=> b!4433646 m!5119065))

(declare-fun m!5119067 () Bool)

(assert (=> b!4433646 m!5119067))

(declare-fun m!5119069 () Bool)

(assert (=> d!1345282 m!5119069))

(declare-fun m!5119071 () Bool)

(assert (=> d!1345282 m!5119071))

(declare-fun m!5119073 () Bool)

(assert (=> b!4433640 m!5119073))

(assert (=> b!4433640 m!5118811))

(declare-fun m!5119075 () Bool)

(assert (=> b!4433639 m!5119075))

(assert (=> b!4433639 m!5119075))

(declare-fun m!5119077 () Bool)

(assert (=> b!4433639 m!5119077))

(declare-fun m!5119079 () Bool)

(assert (=> b!4433638 m!5119079))

(assert (=> b!4433643 m!5119075))

(declare-fun m!5119081 () Bool)

(assert (=> b!4433643 m!5119081))

(declare-fun m!5119083 () Bool)

(assert (=> b!4433643 m!5119083))

(assert (=> b!4433643 m!5119075))

(declare-fun m!5119085 () Bool)

(assert (=> b!4433643 m!5119085))

(declare-fun m!5119087 () Bool)

(assert (=> b!4433643 m!5119087))

(assert (=> b!4433241 d!1345282))

(declare-fun d!1345290 () Bool)

(declare-fun res!1834471 () Bool)

(declare-fun e!2760757 () Bool)

(assert (=> d!1345290 (=> res!1834471 e!2760757)))

(assert (=> d!1345290 (= res!1834471 (not ((_ is Cons!49683) (_2!28066 (tuple2!49545 hash!366 newBucket!194)))))))

(assert (=> d!1345290 (= (noDuplicateKeys!791 (_2!28066 (tuple2!49545 hash!366 newBucket!194))) e!2760757)))

(declare-fun b!4433649 () Bool)

(declare-fun e!2760758 () Bool)

(assert (=> b!4433649 (= e!2760757 e!2760758)))

(declare-fun res!1834472 () Bool)

(assert (=> b!4433649 (=> (not res!1834472) (not e!2760758))))

(assert (=> b!4433649 (= res!1834472 (not (containsKey!1182 (t!356749 (_2!28066 (tuple2!49545 hash!366 newBucket!194))) (_1!28065 (h!55386 (_2!28066 (tuple2!49545 hash!366 newBucket!194)))))))))

(declare-fun b!4433650 () Bool)

(assert (=> b!4433650 (= e!2760758 (noDuplicateKeys!791 (t!356749 (_2!28066 (tuple2!49545 hash!366 newBucket!194)))))))

(assert (= (and d!1345290 (not res!1834471)) b!4433649))

(assert (= (and b!4433649 res!1834472) b!4433650))

(declare-fun m!5119089 () Bool)

(assert (=> b!4433649 m!5119089))

(declare-fun m!5119091 () Bool)

(assert (=> b!4433650 m!5119091))

(assert (=> bs!760557 d!1345290))

(assert (=> b!4433242 d!1345220))

(assert (=> b!4433242 d!1345202))

(declare-fun d!1345292 () Bool)

(declare-fun res!1834473 () Bool)

(declare-fun e!2760759 () Bool)

(assert (=> d!1345292 (=> res!1834473 e!2760759)))

(assert (=> d!1345292 (= res!1834473 ((_ is Nil!49684) (t!356750 (toList!3569 lt!1630718))))))

(assert (=> d!1345292 (= (forall!9630 (t!356750 (toList!3569 lt!1630718)) lambda!155606) e!2760759)))

(declare-fun b!4433651 () Bool)

(declare-fun e!2760760 () Bool)

(assert (=> b!4433651 (= e!2760759 e!2760760)))

(declare-fun res!1834474 () Bool)

(assert (=> b!4433651 (=> (not res!1834474) (not e!2760760))))

(assert (=> b!4433651 (= res!1834474 (dynLambda!20880 lambda!155606 (h!55387 (t!356750 (toList!3569 lt!1630718)))))))

(declare-fun b!4433652 () Bool)

(assert (=> b!4433652 (= e!2760760 (forall!9630 (t!356750 (t!356750 (toList!3569 lt!1630718))) lambda!155606))))

(assert (= (and d!1345292 (not res!1834473)) b!4433651))

(assert (= (and b!4433651 res!1834474) b!4433652))

(declare-fun b_lambda!144197 () Bool)

(assert (=> (not b_lambda!144197) (not b!4433651)))

(declare-fun m!5119093 () Bool)

(assert (=> b!4433651 m!5119093))

(declare-fun m!5119095 () Bool)

(assert (=> b!4433652 m!5119095))

(assert (=> b!4433131 d!1345292))

(declare-fun d!1345294 () Bool)

(declare-fun res!1834475 () Bool)

(declare-fun e!2760761 () Bool)

(assert (=> d!1345294 (=> res!1834475 e!2760761)))

(assert (=> d!1345294 (= res!1834475 ((_ is Nil!49683) newBucket!194))))

(assert (=> d!1345294 (= (forall!9632 newBucket!194 lambda!155615) e!2760761)))

(declare-fun b!4433653 () Bool)

(declare-fun e!2760762 () Bool)

(assert (=> b!4433653 (= e!2760761 e!2760762)))

(declare-fun res!1834476 () Bool)

(assert (=> b!4433653 (=> (not res!1834476) (not e!2760762))))

(assert (=> b!4433653 (= res!1834476 (dynLambda!20882 lambda!155615 (h!55386 newBucket!194)))))

(declare-fun b!4433654 () Bool)

(assert (=> b!4433654 (= e!2760762 (forall!9632 (t!356749 newBucket!194) lambda!155615))))

(assert (= (and d!1345294 (not res!1834475)) b!4433653))

(assert (= (and b!4433653 res!1834476) b!4433654))

(declare-fun b_lambda!144199 () Bool)

(assert (=> (not b_lambda!144199) (not b!4433653)))

(declare-fun m!5119097 () Bool)

(assert (=> b!4433653 m!5119097))

(declare-fun m!5119099 () Bool)

(assert (=> b!4433654 m!5119099))

(assert (=> d!1345062 d!1345294))

(declare-fun d!1345296 () Bool)

(assert (=> d!1345296 (isDefined!8053 (getValueByKey!748 (toList!3570 (extractMap!852 (toList!3569 lm!1616))) key!3717))))

(declare-fun lt!1631201 () Unit!82881)

(declare-fun choose!28102 (List!49807 K!11050) Unit!82881)

(assert (=> d!1345296 (= lt!1631201 (choose!28102 (toList!3570 (extractMap!852 (toList!3569 lm!1616))) key!3717))))

(assert (=> d!1345296 (invariantList!823 (toList!3570 (extractMap!852 (toList!3569 lm!1616))))))

(assert (=> d!1345296 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!656 (toList!3570 (extractMap!852 (toList!3569 lm!1616))) key!3717) lt!1631201)))

(declare-fun bs!760771 () Bool)

(assert (= bs!760771 d!1345296))

(assert (=> bs!760771 m!5118359))

(assert (=> bs!760771 m!5118359))

(assert (=> bs!760771 m!5118361))

(declare-fun m!5119101 () Bool)

(assert (=> bs!760771 m!5119101))

(assert (=> bs!760771 m!5119071))

(assert (=> b!4433240 d!1345296))

(assert (=> b!4433240 d!1345274))

(assert (=> b!4433240 d!1345276))

(declare-fun d!1345298 () Bool)

(assert (=> d!1345298 (contains!12223 (getKeysList!270 (toList!3570 (extractMap!852 (toList!3569 lm!1616)))) key!3717)))

(declare-fun lt!1631212 () Unit!82881)

(declare-fun choose!28103 (List!49807 K!11050) Unit!82881)

(assert (=> d!1345298 (= lt!1631212 (choose!28103 (toList!3570 (extractMap!852 (toList!3569 lm!1616))) key!3717))))

(assert (=> d!1345298 (invariantList!823 (toList!3570 (extractMap!852 (toList!3569 lm!1616))))))

(assert (=> d!1345298 (= (lemmaInListThenGetKeysListContains!267 (toList!3570 (extractMap!852 (toList!3569 lm!1616))) key!3717) lt!1631212)))

(declare-fun bs!760772 () Bool)

(assert (= bs!760772 d!1345298))

(assert (=> bs!760772 m!5118375))

(assert (=> bs!760772 m!5118375))

(declare-fun m!5119103 () Bool)

(assert (=> bs!760772 m!5119103))

(declare-fun m!5119105 () Bool)

(assert (=> bs!760772 m!5119105))

(assert (=> bs!760772 m!5119071))

(assert (=> b!4433240 d!1345298))

(declare-fun bs!760773 () Bool)

(declare-fun b!4433677 () Bool)

(assert (= bs!760773 (and b!4433677 d!1345086)))

(declare-fun lambda!155763 () Int)

(assert (=> bs!760773 (= (= (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616)))) lt!1630940) (= lambda!155763 lambda!155691))))

(declare-fun bs!760774 () Bool)

(assert (= bs!760774 (and b!4433677 b!4433297)))

(assert (=> bs!760774 (= (= (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616)))) lt!1630944) (= lambda!155763 lambda!155690))))

(declare-fun bs!760775 () Bool)

(assert (= bs!760775 (and b!4433677 b!4433366)))

(assert (=> bs!760775 (= (= (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616)))) lt!1630985) (= lambda!155763 lambda!155701))))

(declare-fun bs!760776 () Bool)

(assert (= bs!760776 (and b!4433677 d!1345158)))

(assert (=> bs!760776 (= (= (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616)))) lt!1630944) (= lambda!155763 lambda!155715))))

(assert (=> bs!760775 (= (= (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616)))) (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194))) (= lambda!155763 lambda!155700))))

(declare-fun bs!760777 () Bool)

(assert (= bs!760777 (and b!4433677 b!4433369)))

(assert (=> bs!760777 (= (= (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616)))) (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194))) (= lambda!155763 lambda!155699))))

(declare-fun bs!760778 () Bool)

(assert (= bs!760778 (and b!4433677 d!1345252)))

(assert (=> bs!760778 (= (= (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616)))) (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155763 lambda!155734))))

(assert (=> bs!760774 (= (= (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616)))) (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155763 lambda!155689))))

(declare-fun bs!760779 () Bool)

(assert (= bs!760779 (and b!4433677 d!1345128)))

(assert (=> bs!760779 (= (= (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616)))) lt!1630981) (= lambda!155763 lambda!155702))))

(declare-fun bs!760780 () Bool)

(assert (= bs!760780 (and b!4433677 d!1345062)))

(assert (=> bs!760780 (not (= lambda!155763 lambda!155615))))

(declare-fun bs!760781 () Bool)

(assert (= bs!760781 (and b!4433677 b!4433300)))

(assert (=> bs!760781 (= (= (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616)))) (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155763 lambda!155688))))

(assert (=> b!4433677 true))

(declare-fun bs!760782 () Bool)

(declare-fun b!4433674 () Bool)

(assert (= bs!760782 (and b!4433674 d!1345086)))

(declare-fun lambda!155764 () Int)

(assert (=> bs!760782 (= (= (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616)))) lt!1630940) (= lambda!155764 lambda!155691))))

(declare-fun bs!760783 () Bool)

(assert (= bs!760783 (and b!4433674 b!4433366)))

(assert (=> bs!760783 (= (= (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616)))) lt!1630985) (= lambda!155764 lambda!155701))))

(declare-fun bs!760784 () Bool)

(assert (= bs!760784 (and b!4433674 d!1345158)))

(assert (=> bs!760784 (= (= (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616)))) lt!1630944) (= lambda!155764 lambda!155715))))

(assert (=> bs!760783 (= (= (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616)))) (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194))) (= lambda!155764 lambda!155700))))

(declare-fun bs!760785 () Bool)

(assert (= bs!760785 (and b!4433674 b!4433369)))

(assert (=> bs!760785 (= (= (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616)))) (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194))) (= lambda!155764 lambda!155699))))

(declare-fun bs!760786 () Bool)

(assert (= bs!760786 (and b!4433674 d!1345252)))

(assert (=> bs!760786 (= (= (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616)))) (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155764 lambda!155734))))

(declare-fun bs!760787 () Bool)

(assert (= bs!760787 (and b!4433674 b!4433297)))

(assert (=> bs!760787 (= (= (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616)))) (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155764 lambda!155689))))

(declare-fun bs!760788 () Bool)

(assert (= bs!760788 (and b!4433674 d!1345128)))

(assert (=> bs!760788 (= (= (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616)))) lt!1630981) (= lambda!155764 lambda!155702))))

(declare-fun bs!760789 () Bool)

(assert (= bs!760789 (and b!4433674 b!4433677)))

(assert (=> bs!760789 (= lambda!155764 lambda!155763)))

(assert (=> bs!760787 (= (= (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616)))) lt!1630944) (= lambda!155764 lambda!155690))))

(declare-fun bs!760790 () Bool)

(assert (= bs!760790 (and b!4433674 d!1345062)))

(assert (=> bs!760790 (not (= lambda!155764 lambda!155615))))

(declare-fun bs!760791 () Bool)

(assert (= bs!760791 (and b!4433674 b!4433300)))

(assert (=> bs!760791 (= (= (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616)))) (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155764 lambda!155688))))

(assert (=> b!4433674 true))

(declare-fun lambda!155765 () Int)

(declare-fun lt!1631233 () ListMap!2813)

(assert (=> bs!760782 (= (= lt!1631233 lt!1630940) (= lambda!155765 lambda!155691))))

(assert (=> bs!760783 (= (= lt!1631233 lt!1630985) (= lambda!155765 lambda!155701))))

(assert (=> bs!760784 (= (= lt!1631233 lt!1630944) (= lambda!155765 lambda!155715))))

(assert (=> bs!760783 (= (= lt!1631233 (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194))) (= lambda!155765 lambda!155700))))

(assert (=> bs!760786 (= (= lt!1631233 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155765 lambda!155734))))

(assert (=> bs!760787 (= (= lt!1631233 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155765 lambda!155689))))

(assert (=> bs!760788 (= (= lt!1631233 lt!1630981) (= lambda!155765 lambda!155702))))

(assert (=> bs!760789 (= (= lt!1631233 (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616))))) (= lambda!155765 lambda!155763))))

(assert (=> bs!760787 (= (= lt!1631233 lt!1630944) (= lambda!155765 lambda!155690))))

(assert (=> bs!760790 (not (= lambda!155765 lambda!155615))))

(assert (=> bs!760791 (= (= lt!1631233 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155765 lambda!155688))))

(assert (=> b!4433674 (= (= lt!1631233 (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616))))) (= lambda!155765 lambda!155764))))

(assert (=> bs!760785 (= (= lt!1631233 (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194))) (= lambda!155765 lambda!155699))))

(assert (=> b!4433674 true))

(declare-fun bs!760796 () Bool)

(declare-fun d!1345300 () Bool)

(assert (= bs!760796 (and d!1345300 d!1345086)))

(declare-fun lambda!155769 () Int)

(declare-fun lt!1631229 () ListMap!2813)

(assert (=> bs!760796 (= (= lt!1631229 lt!1630940) (= lambda!155769 lambda!155691))))

(declare-fun bs!760798 () Bool)

(assert (= bs!760798 (and d!1345300 b!4433366)))

(assert (=> bs!760798 (= (= lt!1631229 lt!1630985) (= lambda!155769 lambda!155701))))

(declare-fun bs!760800 () Bool)

(assert (= bs!760800 (and d!1345300 d!1345158)))

(assert (=> bs!760800 (= (= lt!1631229 lt!1630944) (= lambda!155769 lambda!155715))))

(declare-fun bs!760801 () Bool)

(assert (= bs!760801 (and d!1345300 d!1345252)))

(assert (=> bs!760801 (= (= lt!1631229 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155769 lambda!155734))))

(declare-fun bs!760802 () Bool)

(assert (= bs!760802 (and d!1345300 b!4433297)))

(assert (=> bs!760802 (= (= lt!1631229 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155769 lambda!155689))))

(declare-fun bs!760804 () Bool)

(assert (= bs!760804 (and d!1345300 d!1345128)))

(assert (=> bs!760804 (= (= lt!1631229 lt!1630981) (= lambda!155769 lambda!155702))))

(declare-fun bs!760805 () Bool)

(assert (= bs!760805 (and d!1345300 b!4433677)))

(assert (=> bs!760805 (= (= lt!1631229 (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616))))) (= lambda!155769 lambda!155763))))

(assert (=> bs!760802 (= (= lt!1631229 lt!1630944) (= lambda!155769 lambda!155690))))

(declare-fun bs!760806 () Bool)

(assert (= bs!760806 (and d!1345300 d!1345062)))

(assert (=> bs!760806 (not (= lambda!155769 lambda!155615))))

(declare-fun bs!760807 () Bool)

(assert (= bs!760807 (and d!1345300 b!4433300)))

(assert (=> bs!760807 (= (= lt!1631229 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155769 lambda!155688))))

(declare-fun bs!760808 () Bool)

(assert (= bs!760808 (and d!1345300 b!4433674)))

(assert (=> bs!760808 (= (= lt!1631229 lt!1631233) (= lambda!155769 lambda!155765))))

(assert (=> bs!760798 (= (= lt!1631229 (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194))) (= lambda!155769 lambda!155700))))

(assert (=> bs!760808 (= (= lt!1631229 (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616))))) (= lambda!155769 lambda!155764))))

(declare-fun bs!760809 () Bool)

(assert (= bs!760809 (and d!1345300 b!4433369)))

(assert (=> bs!760809 (= (= lt!1631229 (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194))) (= lambda!155769 lambda!155699))))

(assert (=> d!1345300 true))

(declare-fun b!4433673 () Bool)

(declare-fun e!2760773 () Bool)

(assert (=> b!4433673 (= e!2760773 (forall!9632 (toList!3570 (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616))))) lambda!155765))))

(declare-fun call!308471 () Bool)

(declare-fun c!754636 () Bool)

(declare-fun bm!308465 () Bool)

(assert (=> bm!308465 (= call!308471 (forall!9632 (toList!3570 (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616))))) (ite c!754636 lambda!155763 lambda!155764)))))

(declare-fun bm!308466 () Bool)

(declare-fun call!308472 () Bool)

(declare-fun lt!1631216 () ListMap!2813)

(assert (=> bm!308466 (= call!308472 (forall!9632 (ite c!754636 (toList!3570 (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616))))) (toList!3570 lt!1631216)) (ite c!754636 lambda!155763 lambda!155765)))))

(declare-fun e!2760772 () ListMap!2813)

(assert (=> b!4433674 (= e!2760772 lt!1631233)))

(assert (=> b!4433674 (= lt!1631216 (+!1153 (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616)))) (h!55386 (_2!28066 (h!55387 (t!356750 (toList!3569 lm!1616)))))))))

(assert (=> b!4433674 (= lt!1631233 (addToMapMapFromBucket!416 (t!356749 (_2!28066 (h!55387 (t!356750 (toList!3569 lm!1616))))) (+!1153 (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616)))) (h!55386 (_2!28066 (h!55387 (t!356750 (toList!3569 lm!1616))))))))))

(declare-fun lt!1631217 () Unit!82881)

(declare-fun call!308470 () Unit!82881)

(assert (=> b!4433674 (= lt!1631217 call!308470)))

(assert (=> b!4433674 call!308471))

(declare-fun lt!1631226 () Unit!82881)

(assert (=> b!4433674 (= lt!1631226 lt!1631217)))

(assert (=> b!4433674 (forall!9632 (toList!3570 lt!1631216) lambda!155765)))

(declare-fun lt!1631215 () Unit!82881)

(declare-fun Unit!82956 () Unit!82881)

(assert (=> b!4433674 (= lt!1631215 Unit!82956)))

(assert (=> b!4433674 (forall!9632 (t!356749 (_2!28066 (h!55387 (t!356750 (toList!3569 lm!1616))))) lambda!155765)))

(declare-fun lt!1631227 () Unit!82881)

(declare-fun Unit!82957 () Unit!82881)

(assert (=> b!4433674 (= lt!1631227 Unit!82957)))

(declare-fun lt!1631213 () Unit!82881)

(declare-fun Unit!82958 () Unit!82881)

(assert (=> b!4433674 (= lt!1631213 Unit!82958)))

(declare-fun lt!1631218 () Unit!82881)

(assert (=> b!4433674 (= lt!1631218 (forallContained!2119 (toList!3570 lt!1631216) lambda!155765 (h!55386 (_2!28066 (h!55387 (t!356750 (toList!3569 lm!1616)))))))))

(assert (=> b!4433674 (contains!12218 lt!1631216 (_1!28065 (h!55386 (_2!28066 (h!55387 (t!356750 (toList!3569 lm!1616)))))))))

(declare-fun lt!1631219 () Unit!82881)

(declare-fun Unit!82959 () Unit!82881)

(assert (=> b!4433674 (= lt!1631219 Unit!82959)))

(assert (=> b!4433674 (contains!12218 lt!1631233 (_1!28065 (h!55386 (_2!28066 (h!55387 (t!356750 (toList!3569 lm!1616)))))))))

(declare-fun lt!1631223 () Unit!82881)

(declare-fun Unit!82960 () Unit!82881)

(assert (=> b!4433674 (= lt!1631223 Unit!82960)))

(assert (=> b!4433674 (forall!9632 (_2!28066 (h!55387 (t!356750 (toList!3569 lm!1616)))) lambda!155765)))

(declare-fun lt!1631221 () Unit!82881)

(declare-fun Unit!82961 () Unit!82881)

(assert (=> b!4433674 (= lt!1631221 Unit!82961)))

(assert (=> b!4433674 call!308472))

(declare-fun lt!1631222 () Unit!82881)

(declare-fun Unit!82962 () Unit!82881)

(assert (=> b!4433674 (= lt!1631222 Unit!82962)))

(declare-fun lt!1631224 () Unit!82881)

(declare-fun Unit!82963 () Unit!82881)

(assert (=> b!4433674 (= lt!1631224 Unit!82963)))

(declare-fun lt!1631214 () Unit!82881)

(assert (=> b!4433674 (= lt!1631214 (addForallContainsKeyThenBeforeAdding!191 (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616)))) lt!1631233 (_1!28065 (h!55386 (_2!28066 (h!55387 (t!356750 (toList!3569 lm!1616)))))) (_2!28065 (h!55386 (_2!28066 (h!55387 (t!356750 (toList!3569 lm!1616))))))))))

(assert (=> b!4433674 (forall!9632 (toList!3570 (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616))))) lambda!155765)))

(declare-fun lt!1631232 () Unit!82881)

(assert (=> b!4433674 (= lt!1631232 lt!1631214)))

(assert (=> b!4433674 (forall!9632 (toList!3570 (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616))))) lambda!155765)))

(declare-fun lt!1631225 () Unit!82881)

(declare-fun Unit!82964 () Unit!82881)

(assert (=> b!4433674 (= lt!1631225 Unit!82964)))

(declare-fun res!1834485 () Bool)

(assert (=> b!4433674 (= res!1834485 (forall!9632 (_2!28066 (h!55387 (t!356750 (toList!3569 lm!1616)))) lambda!155765))))

(assert (=> b!4433674 (=> (not res!1834485) (not e!2760773))))

(assert (=> b!4433674 e!2760773))

(declare-fun lt!1631231 () Unit!82881)

(declare-fun Unit!82965 () Unit!82881)

(assert (=> b!4433674 (= lt!1631231 Unit!82965)))

(declare-fun b!4433675 () Bool)

(declare-fun res!1834483 () Bool)

(declare-fun e!2760771 () Bool)

(assert (=> b!4433675 (=> (not res!1834483) (not e!2760771))))

(assert (=> b!4433675 (= res!1834483 (forall!9632 (toList!3570 (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616))))) lambda!155769))))

(assert (=> d!1345300 e!2760771))

(declare-fun res!1834484 () Bool)

(assert (=> d!1345300 (=> (not res!1834484) (not e!2760771))))

(assert (=> d!1345300 (= res!1834484 (forall!9632 (_2!28066 (h!55387 (t!356750 (toList!3569 lm!1616)))) lambda!155769))))

(assert (=> d!1345300 (= lt!1631229 e!2760772)))

(assert (=> d!1345300 (= c!754636 ((_ is Nil!49683) (_2!28066 (h!55387 (t!356750 (toList!3569 lm!1616))))))))

(assert (=> d!1345300 (noDuplicateKeys!791 (_2!28066 (h!55387 (t!356750 (toList!3569 lm!1616)))))))

(assert (=> d!1345300 (= (addToMapMapFromBucket!416 (_2!28066 (h!55387 (t!356750 (toList!3569 lm!1616)))) (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616))))) lt!1631229)))

(declare-fun b!4433676 () Bool)

(assert (=> b!4433676 (= e!2760771 (invariantList!823 (toList!3570 lt!1631229)))))

(assert (=> b!4433677 (= e!2760772 (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616)))))))

(declare-fun lt!1631230 () Unit!82881)

(assert (=> b!4433677 (= lt!1631230 call!308470)))

(assert (=> b!4433677 call!308471))

(declare-fun lt!1631220 () Unit!82881)

(assert (=> b!4433677 (= lt!1631220 lt!1631230)))

(assert (=> b!4433677 call!308472))

(declare-fun lt!1631228 () Unit!82881)

(declare-fun Unit!82966 () Unit!82881)

(assert (=> b!4433677 (= lt!1631228 Unit!82966)))

(declare-fun bm!308467 () Bool)

(assert (=> bm!308467 (= call!308470 (lemmaContainsAllItsOwnKeys!191 (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616))))))))

(assert (= (and d!1345300 c!754636) b!4433677))

(assert (= (and d!1345300 (not c!754636)) b!4433674))

(assert (= (and b!4433674 res!1834485) b!4433673))

(assert (= (or b!4433677 b!4433674) bm!308467))

(assert (= (or b!4433677 b!4433674) bm!308466))

(assert (= (or b!4433677 b!4433674) bm!308465))

(assert (= (and d!1345300 res!1834484) b!4433675))

(assert (= (and b!4433675 res!1834483) b!4433676))

(declare-fun m!5119131 () Bool)

(assert (=> bm!308466 m!5119131))

(declare-fun m!5119133 () Bool)

(assert (=> b!4433676 m!5119133))

(declare-fun m!5119135 () Bool)

(assert (=> b!4433675 m!5119135))

(declare-fun m!5119137 () Bool)

(assert (=> b!4433673 m!5119137))

(declare-fun m!5119139 () Bool)

(assert (=> d!1345300 m!5119139))

(declare-fun m!5119141 () Bool)

(assert (=> d!1345300 m!5119141))

(declare-fun m!5119143 () Bool)

(assert (=> b!4433674 m!5119143))

(assert (=> b!4433674 m!5118475))

(declare-fun m!5119147 () Bool)

(assert (=> b!4433674 m!5119147))

(assert (=> b!4433674 m!5119137))

(declare-fun m!5119151 () Bool)

(assert (=> b!4433674 m!5119151))

(declare-fun m!5119153 () Bool)

(assert (=> b!4433674 m!5119153))

(declare-fun m!5119155 () Bool)

(assert (=> b!4433674 m!5119155))

(assert (=> b!4433674 m!5118475))

(assert (=> b!4433674 m!5119151))

(declare-fun m!5119157 () Bool)

(assert (=> b!4433674 m!5119157))

(declare-fun m!5119159 () Bool)

(assert (=> b!4433674 m!5119159))

(declare-fun m!5119161 () Bool)

(assert (=> b!4433674 m!5119161))

(assert (=> b!4433674 m!5119137))

(declare-fun m!5119163 () Bool)

(assert (=> b!4433674 m!5119163))

(assert (=> b!4433674 m!5119159))

(assert (=> bm!308467 m!5118475))

(declare-fun m!5119165 () Bool)

(assert (=> bm!308467 m!5119165))

(declare-fun m!5119167 () Bool)

(assert (=> bm!308465 m!5119167))

(assert (=> b!4433303 d!1345300))

(declare-fun bs!760810 () Bool)

(declare-fun d!1345306 () Bool)

(assert (= bs!760810 (and d!1345306 d!1345078)))

(declare-fun lambda!155771 () Int)

(assert (=> bs!760810 (= lambda!155771 lambda!155622)))

(declare-fun bs!760811 () Bool)

(assert (= bs!760811 (and d!1345306 d!1345098)))

(assert (=> bs!760811 (= lambda!155771 lambda!155692)))

(declare-fun bs!760812 () Bool)

(assert (= bs!760812 (and d!1345306 d!1345084)))

(assert (=> bs!760812 (= lambda!155771 lambda!155626)))

(declare-fun bs!760813 () Bool)

(assert (= bs!760813 (and d!1345306 d!1345080)))

(assert (=> bs!760813 (not (= lambda!155771 lambda!155625))))

(declare-fun bs!760814 () Bool)

(assert (= bs!760814 (and d!1345306 start!433160)))

(assert (=> bs!760814 (= lambda!155771 lambda!155606)))

(declare-fun lt!1631241 () ListMap!2813)

(assert (=> d!1345306 (invariantList!823 (toList!3570 lt!1631241))))

(declare-fun e!2760780 () ListMap!2813)

(assert (=> d!1345306 (= lt!1631241 e!2760780)))

(declare-fun c!754640 () Bool)

(assert (=> d!1345306 (= c!754640 ((_ is Cons!49684) (t!356750 (t!356750 (toList!3569 lm!1616)))))))

(assert (=> d!1345306 (forall!9630 (t!356750 (t!356750 (toList!3569 lm!1616))) lambda!155771)))

(assert (=> d!1345306 (= (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616)))) lt!1631241)))

(declare-fun b!4433691 () Bool)

(assert (=> b!4433691 (= e!2760780 (addToMapMapFromBucket!416 (_2!28066 (h!55387 (t!356750 (t!356750 (toList!3569 lm!1616))))) (extractMap!852 (t!356750 (t!356750 (t!356750 (toList!3569 lm!1616)))))))))

(declare-fun b!4433692 () Bool)

(assert (=> b!4433692 (= e!2760780 (ListMap!2814 Nil!49683))))

(assert (= (and d!1345306 c!754640) b!4433691))

(assert (= (and d!1345306 (not c!754640)) b!4433692))

(declare-fun m!5119169 () Bool)

(assert (=> d!1345306 m!5119169))

(declare-fun m!5119171 () Bool)

(assert (=> d!1345306 m!5119171))

(declare-fun m!5119173 () Bool)

(assert (=> b!4433691 m!5119173))

(assert (=> b!4433691 m!5119173))

(declare-fun m!5119175 () Bool)

(assert (=> b!4433691 m!5119175))

(assert (=> b!4433303 d!1345306))

(declare-fun d!1345308 () Bool)

(declare-fun e!2760781 () Bool)

(assert (=> d!1345308 e!2760781))

(declare-fun res!1834491 () Bool)

(assert (=> d!1345308 (=> res!1834491 e!2760781)))

(declare-fun lt!1631245 () Bool)

(assert (=> d!1345308 (= res!1834491 (not lt!1631245))))

(declare-fun lt!1631246 () Bool)

(assert (=> d!1345308 (= lt!1631245 lt!1631246)))

(declare-fun lt!1631244 () Unit!82881)

(declare-fun e!2760782 () Unit!82881)

(assert (=> d!1345308 (= lt!1631244 e!2760782)))

(declare-fun c!754641 () Bool)

(assert (=> d!1345308 (= c!754641 lt!1631246)))

(assert (=> d!1345308 (= lt!1631246 (containsKey!1181 (toList!3569 lt!1630751) (_1!28066 lt!1630716)))))

(assert (=> d!1345308 (= (contains!12219 lt!1630751 (_1!28066 lt!1630716)) lt!1631245)))

(declare-fun b!4433693 () Bool)

(declare-fun lt!1631247 () Unit!82881)

(assert (=> b!4433693 (= e!2760782 lt!1631247)))

(assert (=> b!4433693 (= lt!1631247 (lemmaContainsKeyImpliesGetValueByKeyDefined!657 (toList!3569 lt!1630751) (_1!28066 lt!1630716)))))

(assert (=> b!4433693 (isDefined!8054 (getValueByKey!747 (toList!3569 lt!1630751) (_1!28066 lt!1630716)))))

(declare-fun b!4433694 () Bool)

(declare-fun Unit!82967 () Unit!82881)

(assert (=> b!4433694 (= e!2760782 Unit!82967)))

(declare-fun b!4433695 () Bool)

(assert (=> b!4433695 (= e!2760781 (isDefined!8054 (getValueByKey!747 (toList!3569 lt!1630751) (_1!28066 lt!1630716))))))

(assert (= (and d!1345308 c!754641) b!4433693))

(assert (= (and d!1345308 (not c!754641)) b!4433694))

(assert (= (and d!1345308 (not res!1834491)) b!4433695))

(declare-fun m!5119177 () Bool)

(assert (=> d!1345308 m!5119177))

(declare-fun m!5119181 () Bool)

(assert (=> b!4433693 m!5119181))

(assert (=> b!4433693 m!5118271))

(assert (=> b!4433693 m!5118271))

(declare-fun m!5119183 () Bool)

(assert (=> b!4433693 m!5119183))

(assert (=> b!4433695 m!5118271))

(assert (=> b!4433695 m!5118271))

(assert (=> b!4433695 m!5119183))

(assert (=> d!1345036 d!1345308))

(declare-fun b!4433697 () Bool)

(declare-fun e!2760783 () Option!10761)

(declare-fun e!2760784 () Option!10761)

(assert (=> b!4433697 (= e!2760783 e!2760784)))

(declare-fun c!754643 () Bool)

(assert (=> b!4433697 (= c!754643 (and ((_ is Cons!49684) lt!1630748) (not (= (_1!28066 (h!55387 lt!1630748)) (_1!28066 lt!1630716)))))))

(declare-fun b!4433699 () Bool)

(assert (=> b!4433699 (= e!2760784 None!10760)))

(declare-fun b!4433696 () Bool)

(assert (=> b!4433696 (= e!2760783 (Some!10760 (_2!28066 (h!55387 lt!1630748))))))

(declare-fun d!1345312 () Bool)

(declare-fun c!754642 () Bool)

(assert (=> d!1345312 (= c!754642 (and ((_ is Cons!49684) lt!1630748) (= (_1!28066 (h!55387 lt!1630748)) (_1!28066 lt!1630716))))))

(assert (=> d!1345312 (= (getValueByKey!747 lt!1630748 (_1!28066 lt!1630716)) e!2760783)))

(declare-fun b!4433698 () Bool)

(assert (=> b!4433698 (= e!2760784 (getValueByKey!747 (t!356750 lt!1630748) (_1!28066 lt!1630716)))))

(assert (= (and d!1345312 c!754642) b!4433696))

(assert (= (and d!1345312 (not c!754642)) b!4433697))

(assert (= (and b!4433697 c!754643) b!4433698))

(assert (= (and b!4433697 (not c!754643)) b!4433699))

(declare-fun m!5119185 () Bool)

(assert (=> b!4433698 m!5119185))

(assert (=> d!1345036 d!1345312))

(declare-fun d!1345314 () Bool)

(assert (=> d!1345314 (= (getValueByKey!747 lt!1630748 (_1!28066 lt!1630716)) (Some!10760 (_2!28066 lt!1630716)))))

(declare-fun lt!1631254 () Unit!82881)

(declare-fun choose!28106 (List!49808 (_ BitVec 64) List!49807) Unit!82881)

(assert (=> d!1345314 (= lt!1631254 (choose!28106 lt!1630748 (_1!28066 lt!1630716) (_2!28066 lt!1630716)))))

(declare-fun e!2760791 () Bool)

(assert (=> d!1345314 e!2760791))

(declare-fun res!1834500 () Bool)

(assert (=> d!1345314 (=> (not res!1834500) (not e!2760791))))

(assert (=> d!1345314 (= res!1834500 (isStrictlySorted!250 lt!1630748))))

(assert (=> d!1345314 (= (lemmaContainsTupThenGetReturnValue!479 lt!1630748 (_1!28066 lt!1630716) (_2!28066 lt!1630716)) lt!1631254)))

(declare-fun b!4433708 () Bool)

(declare-fun res!1834501 () Bool)

(assert (=> b!4433708 (=> (not res!1834501) (not e!2760791))))

(assert (=> b!4433708 (= res!1834501 (containsKey!1181 lt!1630748 (_1!28066 lt!1630716)))))

(declare-fun b!4433709 () Bool)

(assert (=> b!4433709 (= e!2760791 (contains!12222 lt!1630748 (tuple2!49545 (_1!28066 lt!1630716) (_2!28066 lt!1630716))))))

(assert (= (and d!1345314 res!1834500) b!4433708))

(assert (= (and b!4433708 res!1834501) b!4433709))

(assert (=> d!1345314 m!5118265))

(declare-fun m!5119201 () Bool)

(assert (=> d!1345314 m!5119201))

(declare-fun m!5119203 () Bool)

(assert (=> d!1345314 m!5119203))

(declare-fun m!5119205 () Bool)

(assert (=> b!4433708 m!5119205))

(declare-fun m!5119207 () Bool)

(assert (=> b!4433709 m!5119207))

(assert (=> d!1345036 d!1345314))

(declare-fun b!4433758 () Bool)

(declare-fun e!2760824 () List!49808)

(declare-fun e!2760826 () List!49808)

(assert (=> b!4433758 (= e!2760824 e!2760826)))

(declare-fun c!754657 () Bool)

(assert (=> b!4433758 (= c!754657 (and ((_ is Cons!49684) (toList!3569 lm!1616)) (= (_1!28066 (h!55387 (toList!3569 lm!1616))) (_1!28066 lt!1630716))))))

(declare-fun b!4433759 () Bool)

(declare-fun res!1834524 () Bool)

(declare-fun e!2760823 () Bool)

(assert (=> b!4433759 (=> (not res!1834524) (not e!2760823))))

(declare-fun lt!1631267 () List!49808)

(assert (=> b!4433759 (= res!1834524 (containsKey!1181 lt!1631267 (_1!28066 lt!1630716)))))

(declare-fun b!4433760 () Bool)

(declare-fun e!2760825 () List!49808)

(assert (=> b!4433760 (= e!2760825 (insertStrictlySorted!278 (t!356750 (toList!3569 lm!1616)) (_1!28066 lt!1630716) (_2!28066 lt!1630716)))))

(declare-fun b!4433761 () Bool)

(declare-fun e!2760822 () List!49808)

(declare-fun call!308480 () List!49808)

(assert (=> b!4433761 (= e!2760822 call!308480)))

(declare-fun d!1345324 () Bool)

(assert (=> d!1345324 e!2760823))

(declare-fun res!1834525 () Bool)

(assert (=> d!1345324 (=> (not res!1834525) (not e!2760823))))

(assert (=> d!1345324 (= res!1834525 (isStrictlySorted!250 lt!1631267))))

(assert (=> d!1345324 (= lt!1631267 e!2760824)))

(declare-fun c!754658 () Bool)

(assert (=> d!1345324 (= c!754658 (and ((_ is Cons!49684) (toList!3569 lm!1616)) (bvslt (_1!28066 (h!55387 (toList!3569 lm!1616))) (_1!28066 lt!1630716))))))

(assert (=> d!1345324 (isStrictlySorted!250 (toList!3569 lm!1616))))

(assert (=> d!1345324 (= (insertStrictlySorted!278 (toList!3569 lm!1616) (_1!28066 lt!1630716) (_2!28066 lt!1630716)) lt!1631267)))

(declare-fun b!4433762 () Bool)

(declare-fun c!754660 () Bool)

(assert (=> b!4433762 (= e!2760825 (ite c!754657 (t!356750 (toList!3569 lm!1616)) (ite c!754660 (Cons!49684 (h!55387 (toList!3569 lm!1616)) (t!356750 (toList!3569 lm!1616))) Nil!49684)))))

(declare-fun b!4433763 () Bool)

(assert (=> b!4433763 (= e!2760822 call!308480)))

(declare-fun bm!308474 () Bool)

(declare-fun call!308479 () List!49808)

(declare-fun $colon$colon!800 (List!49808 tuple2!49544) List!49808)

(assert (=> bm!308474 (= call!308479 ($colon$colon!800 e!2760825 (ite c!754658 (h!55387 (toList!3569 lm!1616)) (tuple2!49545 (_1!28066 lt!1630716) (_2!28066 lt!1630716)))))))

(declare-fun c!754659 () Bool)

(assert (=> bm!308474 (= c!754659 c!754658)))

(declare-fun b!4433764 () Bool)

(declare-fun call!308481 () List!49808)

(assert (=> b!4433764 (= e!2760826 call!308481)))

(declare-fun bm!308475 () Bool)

(assert (=> bm!308475 (= call!308481 call!308479)))

(declare-fun bm!308476 () Bool)

(assert (=> bm!308476 (= call!308480 call!308481)))

(declare-fun b!4433765 () Bool)

(assert (=> b!4433765 (= e!2760824 call!308479)))

(declare-fun b!4433766 () Bool)

(assert (=> b!4433766 (= e!2760823 (contains!12222 lt!1631267 (tuple2!49545 (_1!28066 lt!1630716) (_2!28066 lt!1630716))))))

(declare-fun b!4433767 () Bool)

(assert (=> b!4433767 (= c!754660 (and ((_ is Cons!49684) (toList!3569 lm!1616)) (bvsgt (_1!28066 (h!55387 (toList!3569 lm!1616))) (_1!28066 lt!1630716))))))

(assert (=> b!4433767 (= e!2760826 e!2760822)))

(assert (= (and d!1345324 c!754658) b!4433765))

(assert (= (and d!1345324 (not c!754658)) b!4433758))

(assert (= (and b!4433758 c!754657) b!4433764))

(assert (= (and b!4433758 (not c!754657)) b!4433767))

(assert (= (and b!4433767 c!754660) b!4433763))

(assert (= (and b!4433767 (not c!754660)) b!4433761))

(assert (= (or b!4433763 b!4433761) bm!308476))

(assert (= (or b!4433764 bm!308476) bm!308475))

(assert (= (or b!4433765 bm!308475) bm!308474))

(assert (= (and bm!308474 c!754659) b!4433760))

(assert (= (and bm!308474 (not c!754659)) b!4433762))

(assert (= (and d!1345324 res!1834525) b!4433759))

(assert (= (and b!4433759 res!1834524) b!4433766))

(declare-fun m!5119237 () Bool)

(assert (=> b!4433766 m!5119237))

(declare-fun m!5119239 () Bool)

(assert (=> b!4433760 m!5119239))

(declare-fun m!5119241 () Bool)

(assert (=> b!4433759 m!5119241))

(declare-fun m!5119243 () Bool)

(assert (=> d!1345324 m!5119243))

(assert (=> d!1345324 m!5118485))

(declare-fun m!5119245 () Bool)

(assert (=> bm!308474 m!5119245))

(assert (=> d!1345036 d!1345324))

(declare-fun d!1345342 () Bool)

(assert (=> d!1345342 (= (invariantList!823 (toList!3570 lt!1630816)) (noDuplicatedKeys!184 (toList!3570 lt!1630816)))))

(declare-fun bs!760819 () Bool)

(assert (= bs!760819 d!1345342))

(declare-fun m!5119247 () Bool)

(assert (=> bs!760819 m!5119247))

(assert (=> d!1345078 d!1345342))

(declare-fun d!1345344 () Bool)

(declare-fun res!1834526 () Bool)

(declare-fun e!2760827 () Bool)

(assert (=> d!1345344 (=> res!1834526 e!2760827)))

(assert (=> d!1345344 (= res!1834526 ((_ is Nil!49684) (toList!3569 lm!1616)))))

(assert (=> d!1345344 (= (forall!9630 (toList!3569 lm!1616) lambda!155622) e!2760827)))

(declare-fun b!4433768 () Bool)

(declare-fun e!2760828 () Bool)

(assert (=> b!4433768 (= e!2760827 e!2760828)))

(declare-fun res!1834527 () Bool)

(assert (=> b!4433768 (=> (not res!1834527) (not e!2760828))))

(assert (=> b!4433768 (= res!1834527 (dynLambda!20880 lambda!155622 (h!55387 (toList!3569 lm!1616))))))

(declare-fun b!4433769 () Bool)

(assert (=> b!4433769 (= e!2760828 (forall!9630 (t!356750 (toList!3569 lm!1616)) lambda!155622))))

(assert (= (and d!1345344 (not res!1834526)) b!4433768))

(assert (= (and b!4433768 res!1834527) b!4433769))

(declare-fun b_lambda!144205 () Bool)

(assert (=> (not b_lambda!144205) (not b!4433768)))

(declare-fun m!5119249 () Bool)

(assert (=> b!4433768 m!5119249))

(declare-fun m!5119251 () Bool)

(assert (=> b!4433769 m!5119251))

(assert (=> d!1345078 d!1345344))

(declare-fun bs!760820 () Bool)

(declare-fun b!4433774 () Bool)

(assert (= bs!760820 (and b!4433774 d!1345300)))

(declare-fun lambda!155772 () Int)

(assert (=> bs!760820 (= (= (extractMap!852 (t!356750 (toList!3569 lm!1616))) lt!1631229) (= lambda!155772 lambda!155769))))

(declare-fun bs!760821 () Bool)

(assert (= bs!760821 (and b!4433774 d!1345086)))

(assert (=> bs!760821 (= (= (extractMap!852 (t!356750 (toList!3569 lm!1616))) lt!1630940) (= lambda!155772 lambda!155691))))

(declare-fun bs!760822 () Bool)

(assert (= bs!760822 (and b!4433774 b!4433366)))

(assert (=> bs!760822 (= (= (extractMap!852 (t!356750 (toList!3569 lm!1616))) lt!1630985) (= lambda!155772 lambda!155701))))

(declare-fun bs!760823 () Bool)

(assert (= bs!760823 (and b!4433774 d!1345158)))

(assert (=> bs!760823 (= (= (extractMap!852 (t!356750 (toList!3569 lm!1616))) lt!1630944) (= lambda!155772 lambda!155715))))

(declare-fun bs!760824 () Bool)

(assert (= bs!760824 (and b!4433774 d!1345252)))

(assert (=> bs!760824 (= lambda!155772 lambda!155734)))

(declare-fun bs!760825 () Bool)

(assert (= bs!760825 (and b!4433774 b!4433297)))

(assert (=> bs!760825 (= lambda!155772 lambda!155689)))

(declare-fun bs!760826 () Bool)

(assert (= bs!760826 (and b!4433774 d!1345128)))

(assert (=> bs!760826 (= (= (extractMap!852 (t!356750 (toList!3569 lm!1616))) lt!1630981) (= lambda!155772 lambda!155702))))

(declare-fun bs!760827 () Bool)

(assert (= bs!760827 (and b!4433774 b!4433677)))

(assert (=> bs!760827 (= (= (extractMap!852 (t!356750 (toList!3569 lm!1616))) (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616))))) (= lambda!155772 lambda!155763))))

(assert (=> bs!760825 (= (= (extractMap!852 (t!356750 (toList!3569 lm!1616))) lt!1630944) (= lambda!155772 lambda!155690))))

(declare-fun bs!760828 () Bool)

(assert (= bs!760828 (and b!4433774 d!1345062)))

(assert (=> bs!760828 (not (= lambda!155772 lambda!155615))))

(declare-fun bs!760829 () Bool)

(assert (= bs!760829 (and b!4433774 b!4433300)))

(assert (=> bs!760829 (= lambda!155772 lambda!155688)))

(declare-fun bs!760830 () Bool)

(assert (= bs!760830 (and b!4433774 b!4433674)))

(assert (=> bs!760830 (= (= (extractMap!852 (t!356750 (toList!3569 lm!1616))) lt!1631233) (= lambda!155772 lambda!155765))))

(assert (=> bs!760822 (= (= (extractMap!852 (t!356750 (toList!3569 lm!1616))) (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194))) (= lambda!155772 lambda!155700))))

(assert (=> bs!760830 (= (= (extractMap!852 (t!356750 (toList!3569 lm!1616))) (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616))))) (= lambda!155772 lambda!155764))))

(declare-fun bs!760831 () Bool)

(assert (= bs!760831 (and b!4433774 b!4433369)))

(assert (=> bs!760831 (= (= (extractMap!852 (t!356750 (toList!3569 lm!1616))) (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194))) (= lambda!155772 lambda!155699))))

(assert (=> b!4433774 true))

(declare-fun bs!760832 () Bool)

(declare-fun b!4433771 () Bool)

(assert (= bs!760832 (and b!4433771 d!1345300)))

(declare-fun lambda!155773 () Int)

(assert (=> bs!760832 (= (= (extractMap!852 (t!356750 (toList!3569 lm!1616))) lt!1631229) (= lambda!155773 lambda!155769))))

(declare-fun bs!760833 () Bool)

(assert (= bs!760833 (and b!4433771 b!4433774)))

(assert (=> bs!760833 (= lambda!155773 lambda!155772)))

(declare-fun bs!760834 () Bool)

(assert (= bs!760834 (and b!4433771 d!1345086)))

(assert (=> bs!760834 (= (= (extractMap!852 (t!356750 (toList!3569 lm!1616))) lt!1630940) (= lambda!155773 lambda!155691))))

(declare-fun bs!760835 () Bool)

(assert (= bs!760835 (and b!4433771 b!4433366)))

(assert (=> bs!760835 (= (= (extractMap!852 (t!356750 (toList!3569 lm!1616))) lt!1630985) (= lambda!155773 lambda!155701))))

(declare-fun bs!760836 () Bool)

(assert (= bs!760836 (and b!4433771 d!1345158)))

(assert (=> bs!760836 (= (= (extractMap!852 (t!356750 (toList!3569 lm!1616))) lt!1630944) (= lambda!155773 lambda!155715))))

(declare-fun bs!760837 () Bool)

(assert (= bs!760837 (and b!4433771 d!1345252)))

(assert (=> bs!760837 (= lambda!155773 lambda!155734)))

(declare-fun bs!760838 () Bool)

(assert (= bs!760838 (and b!4433771 b!4433297)))

(assert (=> bs!760838 (= lambda!155773 lambda!155689)))

(declare-fun bs!760839 () Bool)

(assert (= bs!760839 (and b!4433771 d!1345128)))

(assert (=> bs!760839 (= (= (extractMap!852 (t!356750 (toList!3569 lm!1616))) lt!1630981) (= lambda!155773 lambda!155702))))

(declare-fun bs!760840 () Bool)

(assert (= bs!760840 (and b!4433771 b!4433677)))

(assert (=> bs!760840 (= (= (extractMap!852 (t!356750 (toList!3569 lm!1616))) (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616))))) (= lambda!155773 lambda!155763))))

(assert (=> bs!760838 (= (= (extractMap!852 (t!356750 (toList!3569 lm!1616))) lt!1630944) (= lambda!155773 lambda!155690))))

(declare-fun bs!760841 () Bool)

(assert (= bs!760841 (and b!4433771 d!1345062)))

(assert (=> bs!760841 (not (= lambda!155773 lambda!155615))))

(declare-fun bs!760842 () Bool)

(assert (= bs!760842 (and b!4433771 b!4433300)))

(assert (=> bs!760842 (= lambda!155773 lambda!155688)))

(declare-fun bs!760843 () Bool)

(assert (= bs!760843 (and b!4433771 b!4433674)))

(assert (=> bs!760843 (= (= (extractMap!852 (t!356750 (toList!3569 lm!1616))) lt!1631233) (= lambda!155773 lambda!155765))))

(assert (=> bs!760835 (= (= (extractMap!852 (t!356750 (toList!3569 lm!1616))) (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194))) (= lambda!155773 lambda!155700))))

(assert (=> bs!760843 (= (= (extractMap!852 (t!356750 (toList!3569 lm!1616))) (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616))))) (= lambda!155773 lambda!155764))))

(declare-fun bs!760844 () Bool)

(assert (= bs!760844 (and b!4433771 b!4433369)))

(assert (=> bs!760844 (= (= (extractMap!852 (t!356750 (toList!3569 lm!1616))) (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194))) (= lambda!155773 lambda!155699))))

(assert (=> b!4433771 true))

(declare-fun lambda!155774 () Int)

(declare-fun lt!1631288 () ListMap!2813)

(assert (=> bs!760832 (= (= lt!1631288 lt!1631229) (= lambda!155774 lambda!155769))))

(assert (=> bs!760833 (= (= lt!1631288 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155774 lambda!155772))))

(assert (=> bs!760834 (= (= lt!1631288 lt!1630940) (= lambda!155774 lambda!155691))))

(assert (=> bs!760835 (= (= lt!1631288 lt!1630985) (= lambda!155774 lambda!155701))))

(assert (=> b!4433771 (= (= lt!1631288 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155774 lambda!155773))))

(assert (=> bs!760836 (= (= lt!1631288 lt!1630944) (= lambda!155774 lambda!155715))))

(assert (=> bs!760837 (= (= lt!1631288 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155774 lambda!155734))))

(assert (=> bs!760838 (= (= lt!1631288 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155774 lambda!155689))))

(assert (=> bs!760839 (= (= lt!1631288 lt!1630981) (= lambda!155774 lambda!155702))))

(assert (=> bs!760840 (= (= lt!1631288 (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616))))) (= lambda!155774 lambda!155763))))

(assert (=> bs!760838 (= (= lt!1631288 lt!1630944) (= lambda!155774 lambda!155690))))

(assert (=> bs!760841 (not (= lambda!155774 lambda!155615))))

(assert (=> bs!760842 (= (= lt!1631288 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155774 lambda!155688))))

(assert (=> bs!760843 (= (= lt!1631288 lt!1631233) (= lambda!155774 lambda!155765))))

(assert (=> bs!760835 (= (= lt!1631288 (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194))) (= lambda!155774 lambda!155700))))

(assert (=> bs!760843 (= (= lt!1631288 (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616))))) (= lambda!155774 lambda!155764))))

(assert (=> bs!760844 (= (= lt!1631288 (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194))) (= lambda!155774 lambda!155699))))

(assert (=> b!4433771 true))

(declare-fun bs!760845 () Bool)

(declare-fun d!1345346 () Bool)

(assert (= bs!760845 (and d!1345346 d!1345300)))

(declare-fun lambda!155775 () Int)

(declare-fun lt!1631284 () ListMap!2813)

(assert (=> bs!760845 (= (= lt!1631284 lt!1631229) (= lambda!155775 lambda!155769))))

(declare-fun bs!760846 () Bool)

(assert (= bs!760846 (and d!1345346 b!4433774)))

(assert (=> bs!760846 (= (= lt!1631284 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155775 lambda!155772))))

(declare-fun bs!760847 () Bool)

(assert (= bs!760847 (and d!1345346 d!1345086)))

(assert (=> bs!760847 (= (= lt!1631284 lt!1630940) (= lambda!155775 lambda!155691))))

(declare-fun bs!760848 () Bool)

(assert (= bs!760848 (and d!1345346 b!4433366)))

(assert (=> bs!760848 (= (= lt!1631284 lt!1630985) (= lambda!155775 lambda!155701))))

(declare-fun bs!760849 () Bool)

(assert (= bs!760849 (and d!1345346 b!4433771)))

(assert (=> bs!760849 (= (= lt!1631284 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155775 lambda!155773))))

(declare-fun bs!760850 () Bool)

(assert (= bs!760850 (and d!1345346 d!1345158)))

(assert (=> bs!760850 (= (= lt!1631284 lt!1630944) (= lambda!155775 lambda!155715))))

(declare-fun bs!760851 () Bool)

(assert (= bs!760851 (and d!1345346 d!1345252)))

(assert (=> bs!760851 (= (= lt!1631284 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155775 lambda!155734))))

(declare-fun bs!760852 () Bool)

(assert (= bs!760852 (and d!1345346 b!4433297)))

(assert (=> bs!760852 (= (= lt!1631284 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155775 lambda!155689))))

(declare-fun bs!760853 () Bool)

(assert (= bs!760853 (and d!1345346 d!1345128)))

(assert (=> bs!760853 (= (= lt!1631284 lt!1630981) (= lambda!155775 lambda!155702))))

(assert (=> bs!760849 (= (= lt!1631284 lt!1631288) (= lambda!155775 lambda!155774))))

(declare-fun bs!760854 () Bool)

(assert (= bs!760854 (and d!1345346 b!4433677)))

(assert (=> bs!760854 (= (= lt!1631284 (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616))))) (= lambda!155775 lambda!155763))))

(assert (=> bs!760852 (= (= lt!1631284 lt!1630944) (= lambda!155775 lambda!155690))))

(declare-fun bs!760855 () Bool)

(assert (= bs!760855 (and d!1345346 d!1345062)))

(assert (=> bs!760855 (not (= lambda!155775 lambda!155615))))

(declare-fun bs!760856 () Bool)

(assert (= bs!760856 (and d!1345346 b!4433300)))

(assert (=> bs!760856 (= (= lt!1631284 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155775 lambda!155688))))

(declare-fun bs!760857 () Bool)

(assert (= bs!760857 (and d!1345346 b!4433674)))

(assert (=> bs!760857 (= (= lt!1631284 lt!1631233) (= lambda!155775 lambda!155765))))

(assert (=> bs!760848 (= (= lt!1631284 (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194))) (= lambda!155775 lambda!155700))))

(assert (=> bs!760857 (= (= lt!1631284 (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616))))) (= lambda!155775 lambda!155764))))

(declare-fun bs!760858 () Bool)

(assert (= bs!760858 (and d!1345346 b!4433369)))

(assert (=> bs!760858 (= (= lt!1631284 (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194))) (= lambda!155775 lambda!155699))))

(assert (=> d!1345346 true))

(declare-fun b!4433770 () Bool)

(declare-fun e!2760831 () Bool)

(assert (=> b!4433770 (= e!2760831 (forall!9632 (toList!3570 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) lambda!155774))))

(declare-fun bm!308477 () Bool)

(declare-fun call!308483 () Bool)

(declare-fun c!754661 () Bool)

(assert (=> bm!308477 (= call!308483 (forall!9632 (toList!3570 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (ite c!754661 lambda!155772 lambda!155773)))))

(declare-fun lt!1631271 () ListMap!2813)

(declare-fun call!308484 () Bool)

(declare-fun bm!308478 () Bool)

(assert (=> bm!308478 (= call!308484 (forall!9632 (ite c!754661 (toList!3570 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (toList!3570 lt!1631271)) (ite c!754661 lambda!155772 lambda!155774)))))

(declare-fun e!2760830 () ListMap!2813)

(assert (=> b!4433771 (= e!2760830 lt!1631288)))

(assert (=> b!4433771 (= lt!1631271 (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 (_2!28066 (h!55387 (toList!3569 lm!1616))))))))

(assert (=> b!4433771 (= lt!1631288 (addToMapMapFromBucket!416 (t!356749 (_2!28066 (h!55387 (toList!3569 lm!1616)))) (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 (_2!28066 (h!55387 (toList!3569 lm!1616)))))))))

(declare-fun lt!1631272 () Unit!82881)

(declare-fun call!308482 () Unit!82881)

(assert (=> b!4433771 (= lt!1631272 call!308482)))

(assert (=> b!4433771 call!308483))

(declare-fun lt!1631281 () Unit!82881)

(assert (=> b!4433771 (= lt!1631281 lt!1631272)))

(assert (=> b!4433771 (forall!9632 (toList!3570 lt!1631271) lambda!155774)))

(declare-fun lt!1631270 () Unit!82881)

(declare-fun Unit!82979 () Unit!82881)

(assert (=> b!4433771 (= lt!1631270 Unit!82979)))

(assert (=> b!4433771 (forall!9632 (t!356749 (_2!28066 (h!55387 (toList!3569 lm!1616)))) lambda!155774)))

(declare-fun lt!1631282 () Unit!82881)

(declare-fun Unit!82980 () Unit!82881)

(assert (=> b!4433771 (= lt!1631282 Unit!82980)))

(declare-fun lt!1631268 () Unit!82881)

(declare-fun Unit!82981 () Unit!82881)

(assert (=> b!4433771 (= lt!1631268 Unit!82981)))

(declare-fun lt!1631273 () Unit!82881)

(assert (=> b!4433771 (= lt!1631273 (forallContained!2119 (toList!3570 lt!1631271) lambda!155774 (h!55386 (_2!28066 (h!55387 (toList!3569 lm!1616))))))))

(assert (=> b!4433771 (contains!12218 lt!1631271 (_1!28065 (h!55386 (_2!28066 (h!55387 (toList!3569 lm!1616))))))))

(declare-fun lt!1631274 () Unit!82881)

(declare-fun Unit!82982 () Unit!82881)

(assert (=> b!4433771 (= lt!1631274 Unit!82982)))

(assert (=> b!4433771 (contains!12218 lt!1631288 (_1!28065 (h!55386 (_2!28066 (h!55387 (toList!3569 lm!1616))))))))

(declare-fun lt!1631278 () Unit!82881)

(declare-fun Unit!82983 () Unit!82881)

(assert (=> b!4433771 (= lt!1631278 Unit!82983)))

(assert (=> b!4433771 (forall!9632 (_2!28066 (h!55387 (toList!3569 lm!1616))) lambda!155774)))

(declare-fun lt!1631276 () Unit!82881)

(declare-fun Unit!82984 () Unit!82881)

(assert (=> b!4433771 (= lt!1631276 Unit!82984)))

(assert (=> b!4433771 call!308484))

(declare-fun lt!1631277 () Unit!82881)

(declare-fun Unit!82985 () Unit!82881)

(assert (=> b!4433771 (= lt!1631277 Unit!82985)))

(declare-fun lt!1631279 () Unit!82881)

(declare-fun Unit!82986 () Unit!82881)

(assert (=> b!4433771 (= lt!1631279 Unit!82986)))

(declare-fun lt!1631269 () Unit!82881)

(assert (=> b!4433771 (= lt!1631269 (addForallContainsKeyThenBeforeAdding!191 (extractMap!852 (t!356750 (toList!3569 lm!1616))) lt!1631288 (_1!28065 (h!55386 (_2!28066 (h!55387 (toList!3569 lm!1616))))) (_2!28065 (h!55386 (_2!28066 (h!55387 (toList!3569 lm!1616)))))))))

(assert (=> b!4433771 (forall!9632 (toList!3570 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) lambda!155774)))

(declare-fun lt!1631287 () Unit!82881)

(assert (=> b!4433771 (= lt!1631287 lt!1631269)))

(assert (=> b!4433771 (forall!9632 (toList!3570 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) lambda!155774)))

(declare-fun lt!1631280 () Unit!82881)

(declare-fun Unit!82987 () Unit!82881)

(assert (=> b!4433771 (= lt!1631280 Unit!82987)))

(declare-fun res!1834530 () Bool)

(assert (=> b!4433771 (= res!1834530 (forall!9632 (_2!28066 (h!55387 (toList!3569 lm!1616))) lambda!155774))))

(assert (=> b!4433771 (=> (not res!1834530) (not e!2760831))))

(assert (=> b!4433771 e!2760831))

(declare-fun lt!1631286 () Unit!82881)

(declare-fun Unit!82988 () Unit!82881)

(assert (=> b!4433771 (= lt!1631286 Unit!82988)))

(declare-fun b!4433772 () Bool)

(declare-fun res!1834528 () Bool)

(declare-fun e!2760829 () Bool)

(assert (=> b!4433772 (=> (not res!1834528) (not e!2760829))))

(assert (=> b!4433772 (= res!1834528 (forall!9632 (toList!3570 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) lambda!155775))))

(assert (=> d!1345346 e!2760829))

(declare-fun res!1834529 () Bool)

(assert (=> d!1345346 (=> (not res!1834529) (not e!2760829))))

(assert (=> d!1345346 (= res!1834529 (forall!9632 (_2!28066 (h!55387 (toList!3569 lm!1616))) lambda!155775))))

(assert (=> d!1345346 (= lt!1631284 e!2760830)))

(assert (=> d!1345346 (= c!754661 ((_ is Nil!49683) (_2!28066 (h!55387 (toList!3569 lm!1616)))))))

(assert (=> d!1345346 (noDuplicateKeys!791 (_2!28066 (h!55387 (toList!3569 lm!1616))))))

(assert (=> d!1345346 (= (addToMapMapFromBucket!416 (_2!28066 (h!55387 (toList!3569 lm!1616))) (extractMap!852 (t!356750 (toList!3569 lm!1616)))) lt!1631284)))

(declare-fun b!4433773 () Bool)

(assert (=> b!4433773 (= e!2760829 (invariantList!823 (toList!3570 lt!1631284)))))

(assert (=> b!4433774 (= e!2760830 (extractMap!852 (t!356750 (toList!3569 lm!1616))))))

(declare-fun lt!1631285 () Unit!82881)

(assert (=> b!4433774 (= lt!1631285 call!308482)))

(assert (=> b!4433774 call!308483))

(declare-fun lt!1631275 () Unit!82881)

(assert (=> b!4433774 (= lt!1631275 lt!1631285)))

(assert (=> b!4433774 call!308484))

(declare-fun lt!1631283 () Unit!82881)

(declare-fun Unit!82989 () Unit!82881)

(assert (=> b!4433774 (= lt!1631283 Unit!82989)))

(declare-fun bm!308479 () Bool)

(assert (=> bm!308479 (= call!308482 (lemmaContainsAllItsOwnKeys!191 (extractMap!852 (t!356750 (toList!3569 lm!1616)))))))

(assert (= (and d!1345346 c!754661) b!4433774))

(assert (= (and d!1345346 (not c!754661)) b!4433771))

(assert (= (and b!4433771 res!1834530) b!4433770))

(assert (= (or b!4433774 b!4433771) bm!308479))

(assert (= (or b!4433774 b!4433771) bm!308478))

(assert (= (or b!4433774 b!4433771) bm!308477))

(assert (= (and d!1345346 res!1834529) b!4433772))

(assert (= (and b!4433772 res!1834528) b!4433773))

(declare-fun m!5119253 () Bool)

(assert (=> bm!308478 m!5119253))

(declare-fun m!5119255 () Bool)

(assert (=> b!4433773 m!5119255))

(declare-fun m!5119257 () Bool)

(assert (=> b!4433772 m!5119257))

(declare-fun m!5119259 () Bool)

(assert (=> b!4433770 m!5119259))

(declare-fun m!5119261 () Bool)

(assert (=> d!1345346 m!5119261))

(assert (=> d!1345346 m!5118499))

(declare-fun m!5119263 () Bool)

(assert (=> b!4433771 m!5119263))

(assert (=> b!4433771 m!5118237))

(declare-fun m!5119265 () Bool)

(assert (=> b!4433771 m!5119265))

(assert (=> b!4433771 m!5119259))

(declare-fun m!5119267 () Bool)

(assert (=> b!4433771 m!5119267))

(declare-fun m!5119269 () Bool)

(assert (=> b!4433771 m!5119269))

(declare-fun m!5119271 () Bool)

(assert (=> b!4433771 m!5119271))

(assert (=> b!4433771 m!5118237))

(assert (=> b!4433771 m!5119267))

(declare-fun m!5119273 () Bool)

(assert (=> b!4433771 m!5119273))

(declare-fun m!5119275 () Bool)

(assert (=> b!4433771 m!5119275))

(declare-fun m!5119277 () Bool)

(assert (=> b!4433771 m!5119277))

(assert (=> b!4433771 m!5119259))

(declare-fun m!5119279 () Bool)

(assert (=> b!4433771 m!5119279))

(assert (=> b!4433771 m!5119275))

(assert (=> bm!308479 m!5118237))

(assert (=> bm!308479 m!5118467))

(declare-fun m!5119281 () Bool)

(assert (=> bm!308477 m!5119281))

(assert (=> b!4433251 d!1345346))

(assert (=> b!4433251 d!1345098))

(declare-fun bs!760859 () Bool)

(declare-fun b!4433809 () Bool)

(assert (= bs!760859 (and b!4433809 d!1345300)))

(declare-fun lambda!155776 () Int)

(assert (=> bs!760859 (= (= (extractMap!852 (t!356750 (toList!3569 lt!1630718))) lt!1631229) (= lambda!155776 lambda!155769))))

(declare-fun bs!760860 () Bool)

(assert (= bs!760860 (and b!4433809 b!4433774)))

(assert (=> bs!760860 (= (= (extractMap!852 (t!356750 (toList!3569 lt!1630718))) (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155776 lambda!155772))))

(declare-fun bs!760861 () Bool)

(assert (= bs!760861 (and b!4433809 d!1345086)))

(assert (=> bs!760861 (= (= (extractMap!852 (t!356750 (toList!3569 lt!1630718))) lt!1630940) (= lambda!155776 lambda!155691))))

(declare-fun bs!760862 () Bool)

(assert (= bs!760862 (and b!4433809 b!4433366)))

(assert (=> bs!760862 (= (= (extractMap!852 (t!356750 (toList!3569 lt!1630718))) lt!1630985) (= lambda!155776 lambda!155701))))

(declare-fun bs!760863 () Bool)

(assert (= bs!760863 (and b!4433809 b!4433771)))

(assert (=> bs!760863 (= (= (extractMap!852 (t!356750 (toList!3569 lt!1630718))) (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155776 lambda!155773))))

(declare-fun bs!760864 () Bool)

(assert (= bs!760864 (and b!4433809 d!1345158)))

(assert (=> bs!760864 (= (= (extractMap!852 (t!356750 (toList!3569 lt!1630718))) lt!1630944) (= lambda!155776 lambda!155715))))

(declare-fun bs!760865 () Bool)

(assert (= bs!760865 (and b!4433809 d!1345252)))

(assert (=> bs!760865 (= (= (extractMap!852 (t!356750 (toList!3569 lt!1630718))) (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155776 lambda!155734))))

(declare-fun bs!760866 () Bool)

(assert (= bs!760866 (and b!4433809 b!4433297)))

(assert (=> bs!760866 (= (= (extractMap!852 (t!356750 (toList!3569 lt!1630718))) (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155776 lambda!155689))))

(declare-fun bs!760867 () Bool)

(assert (= bs!760867 (and b!4433809 d!1345128)))

(assert (=> bs!760867 (= (= (extractMap!852 (t!356750 (toList!3569 lt!1630718))) lt!1630981) (= lambda!155776 lambda!155702))))

(declare-fun bs!760868 () Bool)

(assert (= bs!760868 (and b!4433809 d!1345346)))

(assert (=> bs!760868 (= (= (extractMap!852 (t!356750 (toList!3569 lt!1630718))) lt!1631284) (= lambda!155776 lambda!155775))))

(assert (=> bs!760863 (= (= (extractMap!852 (t!356750 (toList!3569 lt!1630718))) lt!1631288) (= lambda!155776 lambda!155774))))

(declare-fun bs!760869 () Bool)

(assert (= bs!760869 (and b!4433809 b!4433677)))

(assert (=> bs!760869 (= (= (extractMap!852 (t!356750 (toList!3569 lt!1630718))) (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616))))) (= lambda!155776 lambda!155763))))

(assert (=> bs!760866 (= (= (extractMap!852 (t!356750 (toList!3569 lt!1630718))) lt!1630944) (= lambda!155776 lambda!155690))))

(declare-fun bs!760870 () Bool)

(assert (= bs!760870 (and b!4433809 d!1345062)))

(assert (=> bs!760870 (not (= lambda!155776 lambda!155615))))

(declare-fun bs!760871 () Bool)

(assert (= bs!760871 (and b!4433809 b!4433300)))

(assert (=> bs!760871 (= (= (extractMap!852 (t!356750 (toList!3569 lt!1630718))) (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155776 lambda!155688))))

(declare-fun bs!760872 () Bool)

(assert (= bs!760872 (and b!4433809 b!4433674)))

(assert (=> bs!760872 (= (= (extractMap!852 (t!356750 (toList!3569 lt!1630718))) lt!1631233) (= lambda!155776 lambda!155765))))

(assert (=> bs!760862 (= (= (extractMap!852 (t!356750 (toList!3569 lt!1630718))) (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194))) (= lambda!155776 lambda!155700))))

(assert (=> bs!760872 (= (= (extractMap!852 (t!356750 (toList!3569 lt!1630718))) (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616))))) (= lambda!155776 lambda!155764))))

(declare-fun bs!760873 () Bool)

(assert (= bs!760873 (and b!4433809 b!4433369)))

(assert (=> bs!760873 (= (= (extractMap!852 (t!356750 (toList!3569 lt!1630718))) (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194))) (= lambda!155776 lambda!155699))))

(assert (=> b!4433809 true))

(declare-fun bs!760874 () Bool)

(declare-fun b!4433806 () Bool)

(assert (= bs!760874 (and b!4433806 d!1345300)))

(declare-fun lambda!155777 () Int)

(assert (=> bs!760874 (= (= (extractMap!852 (t!356750 (toList!3569 lt!1630718))) lt!1631229) (= lambda!155777 lambda!155769))))

(declare-fun bs!760875 () Bool)

(assert (= bs!760875 (and b!4433806 d!1345086)))

(assert (=> bs!760875 (= (= (extractMap!852 (t!356750 (toList!3569 lt!1630718))) lt!1630940) (= lambda!155777 lambda!155691))))

(declare-fun bs!760876 () Bool)

(assert (= bs!760876 (and b!4433806 b!4433366)))

(assert (=> bs!760876 (= (= (extractMap!852 (t!356750 (toList!3569 lt!1630718))) lt!1630985) (= lambda!155777 lambda!155701))))

(declare-fun bs!760877 () Bool)

(assert (= bs!760877 (and b!4433806 b!4433771)))

(assert (=> bs!760877 (= (= (extractMap!852 (t!356750 (toList!3569 lt!1630718))) (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155777 lambda!155773))))

(declare-fun bs!760878 () Bool)

(assert (= bs!760878 (and b!4433806 d!1345158)))

(assert (=> bs!760878 (= (= (extractMap!852 (t!356750 (toList!3569 lt!1630718))) lt!1630944) (= lambda!155777 lambda!155715))))

(declare-fun bs!760879 () Bool)

(assert (= bs!760879 (and b!4433806 d!1345252)))

(assert (=> bs!760879 (= (= (extractMap!852 (t!356750 (toList!3569 lt!1630718))) (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155777 lambda!155734))))

(declare-fun bs!760880 () Bool)

(assert (= bs!760880 (and b!4433806 b!4433297)))

(assert (=> bs!760880 (= (= (extractMap!852 (t!356750 (toList!3569 lt!1630718))) (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155777 lambda!155689))))

(declare-fun bs!760881 () Bool)

(assert (= bs!760881 (and b!4433806 d!1345128)))

(assert (=> bs!760881 (= (= (extractMap!852 (t!356750 (toList!3569 lt!1630718))) lt!1630981) (= lambda!155777 lambda!155702))))

(declare-fun bs!760882 () Bool)

(assert (= bs!760882 (and b!4433806 d!1345346)))

(assert (=> bs!760882 (= (= (extractMap!852 (t!356750 (toList!3569 lt!1630718))) lt!1631284) (= lambda!155777 lambda!155775))))

(assert (=> bs!760877 (= (= (extractMap!852 (t!356750 (toList!3569 lt!1630718))) lt!1631288) (= lambda!155777 lambda!155774))))

(declare-fun bs!760883 () Bool)

(assert (= bs!760883 (and b!4433806 b!4433809)))

(assert (=> bs!760883 (= lambda!155777 lambda!155776)))

(declare-fun bs!760884 () Bool)

(assert (= bs!760884 (and b!4433806 b!4433774)))

(assert (=> bs!760884 (= (= (extractMap!852 (t!356750 (toList!3569 lt!1630718))) (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155777 lambda!155772))))

(declare-fun bs!760885 () Bool)

(assert (= bs!760885 (and b!4433806 b!4433677)))

(assert (=> bs!760885 (= (= (extractMap!852 (t!356750 (toList!3569 lt!1630718))) (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616))))) (= lambda!155777 lambda!155763))))

(assert (=> bs!760880 (= (= (extractMap!852 (t!356750 (toList!3569 lt!1630718))) lt!1630944) (= lambda!155777 lambda!155690))))

(declare-fun bs!760886 () Bool)

(assert (= bs!760886 (and b!4433806 d!1345062)))

(assert (=> bs!760886 (not (= lambda!155777 lambda!155615))))

(declare-fun bs!760887 () Bool)

(assert (= bs!760887 (and b!4433806 b!4433300)))

(assert (=> bs!760887 (= (= (extractMap!852 (t!356750 (toList!3569 lt!1630718))) (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155777 lambda!155688))))

(declare-fun bs!760888 () Bool)

(assert (= bs!760888 (and b!4433806 b!4433674)))

(assert (=> bs!760888 (= (= (extractMap!852 (t!356750 (toList!3569 lt!1630718))) lt!1631233) (= lambda!155777 lambda!155765))))

(assert (=> bs!760876 (= (= (extractMap!852 (t!356750 (toList!3569 lt!1630718))) (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194))) (= lambda!155777 lambda!155700))))

(assert (=> bs!760888 (= (= (extractMap!852 (t!356750 (toList!3569 lt!1630718))) (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616))))) (= lambda!155777 lambda!155764))))

(declare-fun bs!760889 () Bool)

(assert (= bs!760889 (and b!4433806 b!4433369)))

(assert (=> bs!760889 (= (= (extractMap!852 (t!356750 (toList!3569 lt!1630718))) (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194))) (= lambda!155777 lambda!155699))))

(assert (=> b!4433806 true))

(declare-fun lambda!155778 () Int)

(declare-fun lt!1631312 () ListMap!2813)

(assert (=> bs!760874 (= (= lt!1631312 lt!1631229) (= lambda!155778 lambda!155769))))

(assert (=> bs!760875 (= (= lt!1631312 lt!1630940) (= lambda!155778 lambda!155691))))

(assert (=> bs!760876 (= (= lt!1631312 lt!1630985) (= lambda!155778 lambda!155701))))

(assert (=> bs!760877 (= (= lt!1631312 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155778 lambda!155773))))

(assert (=> bs!760878 (= (= lt!1631312 lt!1630944) (= lambda!155778 lambda!155715))))

(assert (=> bs!760880 (= (= lt!1631312 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155778 lambda!155689))))

(assert (=> bs!760881 (= (= lt!1631312 lt!1630981) (= lambda!155778 lambda!155702))))

(assert (=> bs!760882 (= (= lt!1631312 lt!1631284) (= lambda!155778 lambda!155775))))

(assert (=> bs!760877 (= (= lt!1631312 lt!1631288) (= lambda!155778 lambda!155774))))

(assert (=> bs!760883 (= (= lt!1631312 (extractMap!852 (t!356750 (toList!3569 lt!1630718)))) (= lambda!155778 lambda!155776))))

(assert (=> bs!760884 (= (= lt!1631312 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155778 lambda!155772))))

(assert (=> bs!760885 (= (= lt!1631312 (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616))))) (= lambda!155778 lambda!155763))))

(assert (=> bs!760880 (= (= lt!1631312 lt!1630944) (= lambda!155778 lambda!155690))))

(assert (=> bs!760886 (not (= lambda!155778 lambda!155615))))

(assert (=> bs!760887 (= (= lt!1631312 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155778 lambda!155688))))

(assert (=> bs!760888 (= (= lt!1631312 lt!1631233) (= lambda!155778 lambda!155765))))

(assert (=> bs!760876 (= (= lt!1631312 (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194))) (= lambda!155778 lambda!155700))))

(assert (=> bs!760888 (= (= lt!1631312 (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616))))) (= lambda!155778 lambda!155764))))

(assert (=> bs!760889 (= (= lt!1631312 (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194))) (= lambda!155778 lambda!155699))))

(assert (=> bs!760879 (= (= lt!1631312 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155778 lambda!155734))))

(assert (=> b!4433806 (= (= lt!1631312 (extractMap!852 (t!356750 (toList!3569 lt!1630718)))) (= lambda!155778 lambda!155777))))

(assert (=> b!4433806 true))

(declare-fun bs!760904 () Bool)

(declare-fun d!1345348 () Bool)

(assert (= bs!760904 (and d!1345348 d!1345300)))

(declare-fun lt!1631308 () ListMap!2813)

(declare-fun lambda!155779 () Int)

(assert (=> bs!760904 (= (= lt!1631308 lt!1631229) (= lambda!155779 lambda!155769))))

(declare-fun bs!760905 () Bool)

(assert (= bs!760905 (and d!1345348 d!1345086)))

(assert (=> bs!760905 (= (= lt!1631308 lt!1630940) (= lambda!155779 lambda!155691))))

(declare-fun bs!760906 () Bool)

(assert (= bs!760906 (and d!1345348 b!4433366)))

(assert (=> bs!760906 (= (= lt!1631308 lt!1630985) (= lambda!155779 lambda!155701))))

(declare-fun bs!760907 () Bool)

(assert (= bs!760907 (and d!1345348 b!4433771)))

(assert (=> bs!760907 (= (= lt!1631308 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155779 lambda!155773))))

(declare-fun bs!760908 () Bool)

(assert (= bs!760908 (and d!1345348 d!1345158)))

(assert (=> bs!760908 (= (= lt!1631308 lt!1630944) (= lambda!155779 lambda!155715))))

(declare-fun bs!760909 () Bool)

(assert (= bs!760909 (and d!1345348 b!4433297)))

(assert (=> bs!760909 (= (= lt!1631308 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155779 lambda!155689))))

(declare-fun bs!760910 () Bool)

(assert (= bs!760910 (and d!1345348 d!1345128)))

(assert (=> bs!760910 (= (= lt!1631308 lt!1630981) (= lambda!155779 lambda!155702))))

(declare-fun bs!760911 () Bool)

(assert (= bs!760911 (and d!1345348 d!1345346)))

(assert (=> bs!760911 (= (= lt!1631308 lt!1631284) (= lambda!155779 lambda!155775))))

(assert (=> bs!760907 (= (= lt!1631308 lt!1631288) (= lambda!155779 lambda!155774))))

(declare-fun bs!760912 () Bool)

(assert (= bs!760912 (and d!1345348 b!4433809)))

(assert (=> bs!760912 (= (= lt!1631308 (extractMap!852 (t!356750 (toList!3569 lt!1630718)))) (= lambda!155779 lambda!155776))))

(declare-fun bs!760913 () Bool)

(assert (= bs!760913 (and d!1345348 b!4433774)))

(assert (=> bs!760913 (= (= lt!1631308 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155779 lambda!155772))))

(declare-fun bs!760914 () Bool)

(assert (= bs!760914 (and d!1345348 b!4433677)))

(assert (=> bs!760914 (= (= lt!1631308 (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616))))) (= lambda!155779 lambda!155763))))

(assert (=> bs!760909 (= (= lt!1631308 lt!1630944) (= lambda!155779 lambda!155690))))

(declare-fun bs!760915 () Bool)

(assert (= bs!760915 (and d!1345348 d!1345062)))

(assert (=> bs!760915 (not (= lambda!155779 lambda!155615))))

(declare-fun bs!760916 () Bool)

(assert (= bs!760916 (and d!1345348 b!4433300)))

(assert (=> bs!760916 (= (= lt!1631308 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155779 lambda!155688))))

(declare-fun bs!760917 () Bool)

(assert (= bs!760917 (and d!1345348 b!4433674)))

(assert (=> bs!760917 (= (= lt!1631308 lt!1631233) (= lambda!155779 lambda!155765))))

(assert (=> bs!760906 (= (= lt!1631308 (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194))) (= lambda!155779 lambda!155700))))

(declare-fun bs!760918 () Bool)

(assert (= bs!760918 (and d!1345348 b!4433806)))

(assert (=> bs!760918 (= (= lt!1631308 lt!1631312) (= lambda!155779 lambda!155778))))

(assert (=> bs!760917 (= (= lt!1631308 (extractMap!852 (t!356750 (t!356750 (toList!3569 lm!1616))))) (= lambda!155779 lambda!155764))))

(declare-fun bs!760919 () Bool)

(assert (= bs!760919 (and d!1345348 b!4433369)))

(assert (=> bs!760919 (= (= lt!1631308 (+!1153 (extractMap!852 (t!356750 (toList!3569 lm!1616))) (h!55386 newBucket!194))) (= lambda!155779 lambda!155699))))

(declare-fun bs!760920 () Bool)

(assert (= bs!760920 (and d!1345348 d!1345252)))

(assert (=> bs!760920 (= (= lt!1631308 (extractMap!852 (t!356750 (toList!3569 lm!1616)))) (= lambda!155779 lambda!155734))))

(assert (=> bs!760918 (= (= lt!1631308 (extractMap!852 (t!356750 (toList!3569 lt!1630718)))) (= lambda!155779 lambda!155777))))

(assert (=> d!1345348 true))

(declare-fun b!4433805 () Bool)

(declare-fun e!2760849 () Bool)

(assert (=> b!4433805 (= e!2760849 (forall!9632 (toList!3570 (extractMap!852 (t!356750 (toList!3569 lt!1630718)))) lambda!155778))))

(declare-fun c!754674 () Bool)

(declare-fun bm!308489 () Bool)

(declare-fun call!308495 () Bool)

(assert (=> bm!308489 (= call!308495 (forall!9632 (toList!3570 (extractMap!852 (t!356750 (toList!3569 lt!1630718)))) (ite c!754674 lambda!155776 lambda!155777)))))

(declare-fun lt!1631295 () ListMap!2813)

(declare-fun call!308496 () Bool)

(declare-fun bm!308490 () Bool)

(assert (=> bm!308490 (= call!308496 (forall!9632 (ite c!754674 (toList!3570 (extractMap!852 (t!356750 (toList!3569 lt!1630718)))) (toList!3570 lt!1631295)) (ite c!754674 lambda!155776 lambda!155778)))))

(declare-fun e!2760848 () ListMap!2813)

(assert (=> b!4433806 (= e!2760848 lt!1631312)))

(assert (=> b!4433806 (= lt!1631295 (+!1153 (extractMap!852 (t!356750 (toList!3569 lt!1630718))) (h!55386 (_2!28066 (h!55387 (toList!3569 lt!1630718))))))))

(assert (=> b!4433806 (= lt!1631312 (addToMapMapFromBucket!416 (t!356749 (_2!28066 (h!55387 (toList!3569 lt!1630718)))) (+!1153 (extractMap!852 (t!356750 (toList!3569 lt!1630718))) (h!55386 (_2!28066 (h!55387 (toList!3569 lt!1630718)))))))))

(declare-fun lt!1631296 () Unit!82881)

(declare-fun call!308494 () Unit!82881)

(assert (=> b!4433806 (= lt!1631296 call!308494)))

(assert (=> b!4433806 call!308495))

(declare-fun lt!1631305 () Unit!82881)

(assert (=> b!4433806 (= lt!1631305 lt!1631296)))

(assert (=> b!4433806 (forall!9632 (toList!3570 lt!1631295) lambda!155778)))

(declare-fun lt!1631294 () Unit!82881)

(declare-fun Unit!83005 () Unit!82881)

(assert (=> b!4433806 (= lt!1631294 Unit!83005)))

(assert (=> b!4433806 (forall!9632 (t!356749 (_2!28066 (h!55387 (toList!3569 lt!1630718)))) lambda!155778)))

(declare-fun lt!1631306 () Unit!82881)

(declare-fun Unit!83006 () Unit!82881)

(assert (=> b!4433806 (= lt!1631306 Unit!83006)))

(declare-fun lt!1631292 () Unit!82881)

(declare-fun Unit!83007 () Unit!82881)

(assert (=> b!4433806 (= lt!1631292 Unit!83007)))

(declare-fun lt!1631297 () Unit!82881)

(assert (=> b!4433806 (= lt!1631297 (forallContained!2119 (toList!3570 lt!1631295) lambda!155778 (h!55386 (_2!28066 (h!55387 (toList!3569 lt!1630718))))))))

(assert (=> b!4433806 (contains!12218 lt!1631295 (_1!28065 (h!55386 (_2!28066 (h!55387 (toList!3569 lt!1630718))))))))

(declare-fun lt!1631298 () Unit!82881)

(declare-fun Unit!83008 () Unit!82881)

(assert (=> b!4433806 (= lt!1631298 Unit!83008)))

(assert (=> b!4433806 (contains!12218 lt!1631312 (_1!28065 (h!55386 (_2!28066 (h!55387 (toList!3569 lt!1630718))))))))

(declare-fun lt!1631302 () Unit!82881)

(declare-fun Unit!83009 () Unit!82881)

(assert (=> b!4433806 (= lt!1631302 Unit!83009)))

(assert (=> b!4433806 (forall!9632 (_2!28066 (h!55387 (toList!3569 lt!1630718))) lambda!155778)))

(declare-fun lt!1631300 () Unit!82881)

(declare-fun Unit!83010 () Unit!82881)

(assert (=> b!4433806 (= lt!1631300 Unit!83010)))

(assert (=> b!4433806 call!308496))

(declare-fun lt!1631301 () Unit!82881)

(declare-fun Unit!83011 () Unit!82881)

(assert (=> b!4433806 (= lt!1631301 Unit!83011)))

(declare-fun lt!1631303 () Unit!82881)

(declare-fun Unit!83012 () Unit!82881)

(assert (=> b!4433806 (= lt!1631303 Unit!83012)))

(declare-fun lt!1631293 () Unit!82881)

(assert (=> b!4433806 (= lt!1631293 (addForallContainsKeyThenBeforeAdding!191 (extractMap!852 (t!356750 (toList!3569 lt!1630718))) lt!1631312 (_1!28065 (h!55386 (_2!28066 (h!55387 (toList!3569 lt!1630718))))) (_2!28065 (h!55386 (_2!28066 (h!55387 (toList!3569 lt!1630718)))))))))

(assert (=> b!4433806 (forall!9632 (toList!3570 (extractMap!852 (t!356750 (toList!3569 lt!1630718)))) lambda!155778)))

(declare-fun lt!1631311 () Unit!82881)

(assert (=> b!4433806 (= lt!1631311 lt!1631293)))

(assert (=> b!4433806 (forall!9632 (toList!3570 (extractMap!852 (t!356750 (toList!3569 lt!1630718)))) lambda!155778)))

(declare-fun lt!1631304 () Unit!82881)

(declare-fun Unit!83013 () Unit!82881)

(assert (=> b!4433806 (= lt!1631304 Unit!83013)))

(declare-fun res!1834539 () Bool)

(assert (=> b!4433806 (= res!1834539 (forall!9632 (_2!28066 (h!55387 (toList!3569 lt!1630718))) lambda!155778))))

(assert (=> b!4433806 (=> (not res!1834539) (not e!2760849))))

(assert (=> b!4433806 e!2760849))

(declare-fun lt!1631310 () Unit!82881)

(declare-fun Unit!83014 () Unit!82881)

(assert (=> b!4433806 (= lt!1631310 Unit!83014)))

(declare-fun b!4433807 () Bool)

(declare-fun res!1834537 () Bool)

(declare-fun e!2760847 () Bool)

(assert (=> b!4433807 (=> (not res!1834537) (not e!2760847))))

(assert (=> b!4433807 (= res!1834537 (forall!9632 (toList!3570 (extractMap!852 (t!356750 (toList!3569 lt!1630718)))) lambda!155779))))

(assert (=> d!1345348 e!2760847))

(declare-fun res!1834538 () Bool)

(assert (=> d!1345348 (=> (not res!1834538) (not e!2760847))))

(assert (=> d!1345348 (= res!1834538 (forall!9632 (_2!28066 (h!55387 (toList!3569 lt!1630718))) lambda!155779))))

(assert (=> d!1345348 (= lt!1631308 e!2760848)))

(assert (=> d!1345348 (= c!754674 ((_ is Nil!49683) (_2!28066 (h!55387 (toList!3569 lt!1630718)))))))

(assert (=> d!1345348 (noDuplicateKeys!791 (_2!28066 (h!55387 (toList!3569 lt!1630718))))))

(assert (=> d!1345348 (= (addToMapMapFromBucket!416 (_2!28066 (h!55387 (toList!3569 lt!1630718))) (extractMap!852 (t!356750 (toList!3569 lt!1630718)))) lt!1631308)))

(declare-fun b!4433808 () Bool)

(assert (=> b!4433808 (= e!2760847 (invariantList!823 (toList!3570 lt!1631308)))))

(assert (=> b!4433809 (= e!2760848 (extractMap!852 (t!356750 (toList!3569 lt!1630718))))))

(declare-fun lt!1631309 () Unit!82881)

(assert (=> b!4433809 (= lt!1631309 call!308494)))

(assert (=> b!4433809 call!308495))

(declare-fun lt!1631299 () Unit!82881)

(assert (=> b!4433809 (= lt!1631299 lt!1631309)))

(assert (=> b!4433809 call!308496))

(declare-fun lt!1631307 () Unit!82881)

(declare-fun Unit!83015 () Unit!82881)

(assert (=> b!4433809 (= lt!1631307 Unit!83015)))

(declare-fun bm!308491 () Bool)

(assert (=> bm!308491 (= call!308494 (lemmaContainsAllItsOwnKeys!191 (extractMap!852 (t!356750 (toList!3569 lt!1630718)))))))

(assert (= (and d!1345348 c!754674) b!4433809))

(assert (= (and d!1345348 (not c!754674)) b!4433806))

(assert (= (and b!4433806 res!1834539) b!4433805))

(assert (= (or b!4433809 b!4433806) bm!308491))

(assert (= (or b!4433809 b!4433806) bm!308490))

(assert (= (or b!4433809 b!4433806) bm!308489))

(assert (= (and d!1345348 res!1834538) b!4433807))

(assert (= (and b!4433807 res!1834537) b!4433808))

(declare-fun m!5119313 () Bool)

(assert (=> bm!308490 m!5119313))

(declare-fun m!5119315 () Bool)

(assert (=> b!4433808 m!5119315))

(declare-fun m!5119317 () Bool)

(assert (=> b!4433807 m!5119317))

(declare-fun m!5119319 () Bool)

(assert (=> b!4433805 m!5119319))

(declare-fun m!5119321 () Bool)

(assert (=> d!1345348 m!5119321))

(assert (=> d!1345348 m!5118497))

(declare-fun m!5119323 () Bool)

(assert (=> b!4433806 m!5119323))

(assert (=> b!4433806 m!5118389))

(declare-fun m!5119325 () Bool)

(assert (=> b!4433806 m!5119325))

(assert (=> b!4433806 m!5119319))

(declare-fun m!5119327 () Bool)

(assert (=> b!4433806 m!5119327))

(declare-fun m!5119329 () Bool)

(assert (=> b!4433806 m!5119329))

(declare-fun m!5119331 () Bool)

(assert (=> b!4433806 m!5119331))

(assert (=> b!4433806 m!5118389))

(assert (=> b!4433806 m!5119327))

(declare-fun m!5119333 () Bool)

(assert (=> b!4433806 m!5119333))

(declare-fun m!5119335 () Bool)

(assert (=> b!4433806 m!5119335))

(declare-fun m!5119337 () Bool)

(assert (=> b!4433806 m!5119337))

(assert (=> b!4433806 m!5119319))

(declare-fun m!5119339 () Bool)

(assert (=> b!4433806 m!5119339))

(assert (=> b!4433806 m!5119335))

(assert (=> bm!308491 m!5118389))

(declare-fun m!5119341 () Bool)

(assert (=> bm!308491 m!5119341))

(declare-fun m!5119343 () Bool)

(assert (=> bm!308489 m!5119343))

(assert (=> b!4433255 d!1345348))

(declare-fun bs!760921 () Bool)

(declare-fun d!1345380 () Bool)

(assert (= bs!760921 (and d!1345380 d!1345078)))

(declare-fun lambda!155780 () Int)

(assert (=> bs!760921 (= lambda!155780 lambda!155622)))

(declare-fun bs!760922 () Bool)

(assert (= bs!760922 (and d!1345380 d!1345306)))

(assert (=> bs!760922 (= lambda!155780 lambda!155771)))

(declare-fun bs!760923 () Bool)

(assert (= bs!760923 (and d!1345380 d!1345098)))

(assert (=> bs!760923 (= lambda!155780 lambda!155692)))

(declare-fun bs!760924 () Bool)

(assert (= bs!760924 (and d!1345380 d!1345084)))

(assert (=> bs!760924 (= lambda!155780 lambda!155626)))

(declare-fun bs!760925 () Bool)

(assert (= bs!760925 (and d!1345380 d!1345080)))

(assert (=> bs!760925 (not (= lambda!155780 lambda!155625))))

(declare-fun bs!760926 () Bool)

(assert (= bs!760926 (and d!1345380 start!433160)))

(assert (=> bs!760926 (= lambda!155780 lambda!155606)))

(declare-fun lt!1631313 () ListMap!2813)

(assert (=> d!1345380 (invariantList!823 (toList!3570 lt!1631313))))

(declare-fun e!2760859 () ListMap!2813)

(assert (=> d!1345380 (= lt!1631313 e!2760859)))

(declare-fun c!754675 () Bool)

(assert (=> d!1345380 (= c!754675 ((_ is Cons!49684) (t!356750 (toList!3569 lt!1630718))))))

(assert (=> d!1345380 (forall!9630 (t!356750 (toList!3569 lt!1630718)) lambda!155780)))

(assert (=> d!1345380 (= (extractMap!852 (t!356750 (toList!3569 lt!1630718))) lt!1631313)))

(declare-fun b!4433819 () Bool)

(assert (=> b!4433819 (= e!2760859 (addToMapMapFromBucket!416 (_2!28066 (h!55387 (t!356750 (toList!3569 lt!1630718)))) (extractMap!852 (t!356750 (t!356750 (toList!3569 lt!1630718))))))))

(declare-fun b!4433820 () Bool)

(assert (=> b!4433820 (= e!2760859 (ListMap!2814 Nil!49683))))

(assert (= (and d!1345380 c!754675) b!4433819))

(assert (= (and d!1345380 (not c!754675)) b!4433820))

(declare-fun m!5119345 () Bool)

(assert (=> d!1345380 m!5119345))

(declare-fun m!5119347 () Bool)

(assert (=> d!1345380 m!5119347))

(declare-fun m!5119349 () Bool)

(assert (=> b!4433819 m!5119349))

(assert (=> b!4433819 m!5119349))

(declare-fun m!5119351 () Bool)

(assert (=> b!4433819 m!5119351))

(assert (=> b!4433255 d!1345380))

(declare-fun d!1345382 () Bool)

(declare-fun res!1834546 () Bool)

(declare-fun e!2760860 () Bool)

(assert (=> d!1345382 (=> res!1834546 e!2760860)))

(assert (=> d!1345382 (= res!1834546 (not ((_ is Cons!49683) (t!356749 newBucket!194))))))

(assert (=> d!1345382 (= (noDuplicateKeys!791 (t!356749 newBucket!194)) e!2760860)))

(declare-fun b!4433821 () Bool)

(declare-fun e!2760861 () Bool)

(assert (=> b!4433821 (= e!2760860 e!2760861)))

(declare-fun res!1834547 () Bool)

(assert (=> b!4433821 (=> (not res!1834547) (not e!2760861))))

(assert (=> b!4433821 (= res!1834547 (not (containsKey!1182 (t!356749 (t!356749 newBucket!194)) (_1!28065 (h!55386 (t!356749 newBucket!194))))))))

(declare-fun b!4433822 () Bool)

(assert (=> b!4433822 (= e!2760861 (noDuplicateKeys!791 (t!356749 (t!356749 newBucket!194))))))

(assert (= (and d!1345382 (not res!1834546)) b!4433821))

(assert (= (and b!4433821 res!1834547) b!4433822))

(declare-fun m!5119353 () Bool)

(assert (=> b!4433821 m!5119353))

(declare-fun m!5119355 () Bool)

(assert (=> b!4433822 m!5119355))

(assert (=> b!4433321 d!1345382))

(declare-fun d!1345384 () Bool)

(declare-fun lt!1631314 () Bool)

(assert (=> d!1345384 (= lt!1631314 (select (content!7987 e!2760484) key!3717))))

(declare-fun e!2760862 () Bool)

(assert (=> d!1345384 (= lt!1631314 e!2760862)))

(declare-fun res!1834548 () Bool)

(assert (=> d!1345384 (=> (not res!1834548) (not e!2760862))))

(assert (=> d!1345384 (= res!1834548 ((_ is Cons!49686) e!2760484))))

(assert (=> d!1345384 (= (contains!12223 e!2760484 key!3717) lt!1631314)))

(declare-fun b!4433823 () Bool)

(declare-fun e!2760863 () Bool)

(assert (=> b!4433823 (= e!2760862 e!2760863)))

(declare-fun res!1834549 () Bool)

(assert (=> b!4433823 (=> res!1834549 e!2760863)))

(assert (=> b!4433823 (= res!1834549 (= (h!55391 e!2760484) key!3717))))

(declare-fun b!4433824 () Bool)

(assert (=> b!4433824 (= e!2760863 (contains!12223 (t!356752 e!2760484) key!3717))))

(assert (= (and d!1345384 res!1834548) b!4433823))

(assert (= (and b!4433823 (not res!1834549)) b!4433824))

(declare-fun m!5119357 () Bool)

(assert (=> d!1345384 m!5119357))

(declare-fun m!5119359 () Bool)

(assert (=> d!1345384 m!5119359))

(declare-fun m!5119361 () Bool)

(assert (=> b!4433824 m!5119361))

(assert (=> bm!308427 d!1345384))

(declare-fun d!1345386 () Bool)

(declare-fun res!1834554 () Bool)

(declare-fun e!2760868 () Bool)

(assert (=> d!1345386 (=> res!1834554 e!2760868)))

(assert (=> d!1345386 (= res!1834554 (or ((_ is Nil!49684) (toList!3569 lm!1616)) ((_ is Nil!49684) (t!356750 (toList!3569 lm!1616)))))))

(assert (=> d!1345386 (= (isStrictlySorted!250 (toList!3569 lm!1616)) e!2760868)))

(declare-fun b!4433829 () Bool)

(declare-fun e!2760869 () Bool)

(assert (=> b!4433829 (= e!2760868 e!2760869)))

(declare-fun res!1834555 () Bool)

(assert (=> b!4433829 (=> (not res!1834555) (not e!2760869))))

(assert (=> b!4433829 (= res!1834555 (bvslt (_1!28066 (h!55387 (toList!3569 lm!1616))) (_1!28066 (h!55387 (t!356750 (toList!3569 lm!1616))))))))

(declare-fun b!4433830 () Bool)

(assert (=> b!4433830 (= e!2760869 (isStrictlySorted!250 (t!356750 (toList!3569 lm!1616))))))

(assert (= (and d!1345386 (not res!1834554)) b!4433829))

(assert (= (and b!4433829 res!1834555) b!4433830))

(declare-fun m!5119363 () Bool)

(assert (=> b!4433830 m!5119363))

(assert (=> d!1345104 d!1345386))

(declare-fun d!1345388 () Bool)

(declare-fun res!1834560 () Bool)

(declare-fun e!2760874 () Bool)

(assert (=> d!1345388 (=> res!1834560 e!2760874)))

(assert (=> d!1345388 (= res!1834560 (and ((_ is Cons!49683) (t!356749 newBucket!194)) (= (_1!28065 (h!55386 (t!356749 newBucket!194))) (_1!28065 (h!55386 newBucket!194)))))))

(assert (=> d!1345388 (= (containsKey!1182 (t!356749 newBucket!194) (_1!28065 (h!55386 newBucket!194))) e!2760874)))

(declare-fun b!4433835 () Bool)

(declare-fun e!2760875 () Bool)

(assert (=> b!4433835 (= e!2760874 e!2760875)))

(declare-fun res!1834561 () Bool)

(assert (=> b!4433835 (=> (not res!1834561) (not e!2760875))))

(assert (=> b!4433835 (= res!1834561 ((_ is Cons!49683) (t!356749 newBucket!194)))))

(declare-fun b!4433836 () Bool)

(assert (=> b!4433836 (= e!2760875 (containsKey!1182 (t!356749 (t!356749 newBucket!194)) (_1!28065 (h!55386 newBucket!194))))))

(assert (= (and d!1345388 (not res!1834560)) b!4433835))

(assert (= (and b!4433835 res!1834561) b!4433836))

(declare-fun m!5119365 () Bool)

(assert (=> b!4433836 m!5119365))

(assert (=> b!4433320 d!1345388))

(assert (=> b!4433246 d!1345196))

(declare-fun d!1345390 () Bool)

(assert (=> d!1345390 (containsKey!1180 (toList!3570 (extractMap!852 (toList!3569 lm!1616))) key!3717)))

(declare-fun lt!1631317 () Unit!82881)

(declare-fun choose!28110 (List!49807 K!11050) Unit!82881)

(assert (=> d!1345390 (= lt!1631317 (choose!28110 (toList!3570 (extractMap!852 (toList!3569 lm!1616))) key!3717))))

(assert (=> d!1345390 (invariantList!823 (toList!3570 (extractMap!852 (toList!3569 lm!1616))))))

(assert (=> d!1345390 (= (lemmaInGetKeysListThenContainsKey!268 (toList!3570 (extractMap!852 (toList!3569 lm!1616))) key!3717) lt!1631317)))

(declare-fun bs!760927 () Bool)

(assert (= bs!760927 d!1345390))

(assert (=> bs!760927 m!5118365))

(declare-fun m!5119367 () Bool)

(assert (=> bs!760927 m!5119367))

(assert (=> bs!760927 m!5119071))

(assert (=> b!4433246 d!1345390))

(declare-fun b!4433837 () Bool)

(declare-fun e!2760876 () Bool)

(declare-fun tp!1333683 () Bool)

(assert (=> b!4433837 (= e!2760876 (and tp_is_empty!26411 tp_is_empty!26409 tp!1333683))))

(assert (=> b!4433326 (= tp!1333674 e!2760876)))

(assert (= (and b!4433326 ((_ is Cons!49683) (_2!28066 (h!55387 (toList!3569 lm!1616))))) b!4433837))

(declare-fun b!4433838 () Bool)

(declare-fun e!2760877 () Bool)

(declare-fun tp!1333684 () Bool)

(declare-fun tp!1333685 () Bool)

(assert (=> b!4433838 (= e!2760877 (and tp!1333684 tp!1333685))))

(assert (=> b!4433326 (= tp!1333675 e!2760877)))

(assert (= (and b!4433326 ((_ is Cons!49684) (t!356750 (toList!3569 lm!1616)))) b!4433838))

(declare-fun b!4433839 () Bool)

(declare-fun tp!1333686 () Bool)

(declare-fun e!2760878 () Bool)

(assert (=> b!4433839 (= e!2760878 (and tp_is_empty!26411 tp_is_empty!26409 tp!1333686))))

(assert (=> b!4433331 (= tp!1333678 e!2760878)))

(assert (= (and b!4433331 ((_ is Cons!49683) (t!356749 (t!356749 newBucket!194)))) b!4433839))

(declare-fun b_lambda!144237 () Bool)

(assert (= b_lambda!144159 (or b!4433297 b_lambda!144237)))

(declare-fun bs!760928 () Bool)

(declare-fun d!1345392 () Bool)

(assert (= bs!760928 (and d!1345392 b!4433297)))

(assert (=> bs!760928 (= (dynLambda!20882 lambda!155690 (h!55386 newBucket!194)) (contains!12218 lt!1630944 (_1!28065 (h!55386 newBucket!194))))))

(assert (=> bs!760928 m!5118449))

(assert (=> d!1345178 d!1345392))

(declare-fun b_lambda!144239 () Bool)

(assert (= b_lambda!144205 (or d!1345078 b_lambda!144239)))

(declare-fun bs!760929 () Bool)

(declare-fun d!1345394 () Bool)

(assert (= bs!760929 (and d!1345394 d!1345078)))

(assert (=> bs!760929 (= (dynLambda!20880 lambda!155622 (h!55387 (toList!3569 lm!1616))) (noDuplicateKeys!791 (_2!28066 (h!55387 (toList!3569 lm!1616)))))))

(assert (=> bs!760929 m!5118499))

(assert (=> b!4433768 d!1345394))

(declare-fun b_lambda!144241 () Bool)

(assert (= b_lambda!144199 (or d!1345062 b_lambda!144241)))

(declare-fun bs!760930 () Bool)

(declare-fun d!1345396 () Bool)

(assert (= bs!760930 (and d!1345396 d!1345062)))

(assert (=> bs!760930 (= (dynLambda!20882 lambda!155615 (h!55386 newBucket!194)) (= (hash!2210 hashF!1220 (_1!28065 (h!55386 newBucket!194))) hash!366))))

(declare-fun m!5119369 () Bool)

(assert (=> bs!760930 m!5119369))

(assert (=> b!4433653 d!1345396))

(declare-fun b_lambda!144243 () Bool)

(assert (= b_lambda!144197 (or start!433160 b_lambda!144243)))

(declare-fun bs!760931 () Bool)

(declare-fun d!1345398 () Bool)

(assert (= bs!760931 (and d!1345398 start!433160)))

(assert (=> bs!760931 (= (dynLambda!20880 lambda!155606 (h!55387 (t!356750 (toList!3569 lt!1630718)))) (noDuplicateKeys!791 (_2!28066 (h!55387 (t!356750 (toList!3569 lt!1630718))))))))

(declare-fun m!5119371 () Bool)

(assert (=> bs!760931 m!5119371))

(assert (=> b!4433651 d!1345398))

(declare-fun b_lambda!144245 () Bool)

(assert (= b_lambda!144169 (or start!433160 b_lambda!144245)))

(declare-fun bs!760932 () Bool)

(declare-fun d!1345400 () Bool)

(assert (= bs!760932 (and d!1345400 start!433160)))

(assert (=> bs!760932 (= (dynLambda!20880 lambda!155606 (h!55387 (t!356750 (toList!3569 lm!1616)))) (noDuplicateKeys!791 (_2!28066 (h!55387 (t!356750 (toList!3569 lm!1616))))))))

(assert (=> bs!760932 m!5119141))

(assert (=> b!4433507 d!1345400))

(declare-fun b_lambda!144247 () Bool)

(assert (= b_lambda!144191 (or d!1345084 b_lambda!144247)))

(declare-fun bs!760933 () Bool)

(declare-fun d!1345402 () Bool)

(assert (= bs!760933 (and d!1345402 d!1345084)))

(assert (=> bs!760933 (= (dynLambda!20880 lambda!155626 (h!55387 (toList!3569 lt!1630718))) (noDuplicateKeys!791 (_2!28066 (h!55387 (toList!3569 lt!1630718)))))))

(assert (=> bs!760933 m!5118497))

(assert (=> b!4433595 d!1345402))

(declare-fun b_lambda!144249 () Bool)

(assert (= b_lambda!144171 (or start!433160 b_lambda!144249)))

(declare-fun bs!760934 () Bool)

(declare-fun d!1345404 () Bool)

(assert (= bs!760934 (and d!1345404 start!433160)))

(assert (=> bs!760934 (= (dynLambda!20880 lambda!155606 (h!55387 (toList!3569 (+!1151 lm!1616 (tuple2!49545 hash!366 newBucket!194))))) (noDuplicateKeys!791 (_2!28066 (h!55387 (toList!3569 (+!1151 lm!1616 (tuple2!49545 hash!366 newBucket!194)))))))))

(declare-fun m!5119373 () Bool)

(assert (=> bs!760934 m!5119373))

(assert (=> b!4433509 d!1345404))

(declare-fun b_lambda!144251 () Bool)

(assert (= b_lambda!144193 (or d!1345086 b_lambda!144251)))

(declare-fun bs!760935 () Bool)

(declare-fun d!1345406 () Bool)

(assert (= bs!760935 (and d!1345406 d!1345086)))

(assert (=> bs!760935 (= (dynLambda!20882 lambda!155691 (h!55386 newBucket!194)) (contains!12218 lt!1630940 (_1!28065 (h!55386 newBucket!194))))))

(declare-fun m!5119375 () Bool)

(assert (=> bs!760935 m!5119375))

(assert (=> b!4433597 d!1345406))

(declare-fun b_lambda!144253 () Bool)

(assert (= b_lambda!144161 (or b!4433297 b_lambda!144253)))

(assert (=> b!4433452 d!1345392))

(declare-fun b_lambda!144255 () Bool)

(assert (= b_lambda!144165 (or d!1345086 b_lambda!144255)))

(declare-fun bs!760936 () Bool)

(declare-fun d!1345408 () Bool)

(assert (= bs!760936 (and d!1345408 d!1345086)))

(assert (=> bs!760936 (= (dynLambda!20882 lambda!155691 (h!55386 (toList!3570 (extractMap!852 (t!356750 (toList!3569 lm!1616)))))) (contains!12218 lt!1630940 (_1!28065 (h!55386 (toList!3570 (extractMap!852 (t!356750 (toList!3569 lm!1616))))))))))

(declare-fun m!5119377 () Bool)

(assert (=> bs!760936 m!5119377))

(assert (=> b!4433471 d!1345408))

(declare-fun b_lambda!144257 () Bool)

(assert (= b_lambda!144177 (or d!1345080 b_lambda!144257)))

(declare-fun bs!760937 () Bool)

(declare-fun d!1345410 () Bool)

(assert (= bs!760937 (and d!1345410 d!1345080)))

(assert (=> bs!760937 (= (dynLambda!20880 lambda!155625 (h!55387 (toList!3569 lm!1616))) (allKeysSameHash!751 (_2!28066 (h!55387 (toList!3569 lm!1616))) (_1!28066 (h!55387 (toList!3569 lm!1616))) hashF!1220))))

(declare-fun m!5119379 () Bool)

(assert (=> bs!760937 m!5119379))

(assert (=> b!4433539 d!1345410))

(declare-fun b_lambda!144259 () Bool)

(assert (= b_lambda!144155 (or b!4433297 b_lambda!144259)))

(declare-fun bs!760938 () Bool)

(declare-fun d!1345412 () Bool)

(assert (= bs!760938 (and d!1345412 b!4433297)))

(assert (=> bs!760938 (= (dynLambda!20882 lambda!155690 (h!55386 (toList!3570 lt!1630927))) (contains!12218 lt!1630944 (_1!28065 (h!55386 (toList!3570 lt!1630927)))))))

(declare-fun m!5119381 () Bool)

(assert (=> bs!760938 m!5119381))

(assert (=> b!4433440 d!1345412))

(declare-fun b_lambda!144261 () Bool)

(assert (= b_lambda!144195 (or d!1345098 b_lambda!144261)))

(declare-fun bs!760939 () Bool)

(declare-fun d!1345414 () Bool)

(assert (= bs!760939 (and d!1345414 d!1345098)))

(assert (=> bs!760939 (= (dynLambda!20880 lambda!155692 (h!55387 (t!356750 (toList!3569 lm!1616)))) (noDuplicateKeys!791 (_2!28066 (h!55387 (t!356750 (toList!3569 lm!1616))))))))

(assert (=> bs!760939 m!5119141))

(assert (=> b!4433611 d!1345414))

(declare-fun b_lambda!144263 () Bool)

(assert (= b_lambda!144153 (or b!4433297 b_lambda!144263)))

(declare-fun bs!760940 () Bool)

(declare-fun d!1345416 () Bool)

(assert (= bs!760940 (and d!1345416 b!4433297)))

(assert (=> bs!760940 (= (dynLambda!20882 lambda!155690 (h!55386 (toList!3570 (extractMap!852 (t!356750 (toList!3569 lm!1616)))))) (contains!12218 lt!1630944 (_1!28065 (h!55386 (toList!3570 (extractMap!852 (t!356750 (toList!3569 lm!1616))))))))))

(declare-fun m!5119383 () Bool)

(assert (=> bs!760940 m!5119383))

(assert (=> b!4433436 d!1345416))

(declare-fun b_lambda!144265 () Bool)

(assert (= b_lambda!144149 (or b!4433297 b_lambda!144265)))

(declare-fun bs!760941 () Bool)

(declare-fun d!1345418 () Bool)

(assert (= bs!760941 (and d!1345418 b!4433297)))

(assert (=> bs!760941 (= (dynLambda!20882 lambda!155690 (h!55386 (t!356749 newBucket!194))) (contains!12218 lt!1630944 (_1!28065 (h!55386 (t!356749 newBucket!194)))))))

(declare-fun m!5119385 () Bool)

(assert (=> bs!760941 m!5119385))

(assert (=> b!4433406 d!1345418))

(check-sat (not b_lambda!144241) (not d!1345298) (not b_lambda!144237) (not b!4433458) (not b!4433492) (not bs!760938) (not b!4433392) (not b!4433457) (not b!4433759) (not b!4433512) (not b_lambda!144133) (not b!4433482) (not b!4433673) (not b!4433423) (not b!4433427) (not d!1345204) (not b_lambda!144247) (not b!4433837) (not b!4433695) (not b!4433807) (not bs!760931) (not b!4433480) (not b!4433806) (not b!4433638) (not b!4433612) (not b!4433459) (not d!1345296) (not b!4433453) (not d!1345380) (not b!4433451) (not b!4433568) (not b!4433454) (not b!4433565) (not b!4433770) (not bm!308466) tp_is_empty!26409 (not b!4433425) (not b!4433650) (not b!4433593) (not d!1345274) (not b!4433441) (not d!1345266) (not b!4433693) (not b!4433505) (not bs!760928) (not d!1345230) (not d!1345168) (not b!4433456) (not b!4433366) (not b_lambda!144263) (not d!1345314) (not d!1345300) (not b!4433554) (not bm!308490) (not b!4433540) (not b!4433426) (not b!4433646) (not b!4433676) (not b_lambda!144261) (not bs!760934) (not bm!308447) (not b!4433437) (not b!4433598) (not b!4433365) (not b!4433510) (not bm!308448) (not d!1345390) (not b!4433766) (not bm!308489) (not bm!308478) (not b!4433639) (not b!4433805) (not bs!760939) (not b_lambda!144253) (not b!4433473) (not b!4433821) (not b!4433368) (not d!1345346) (not d!1345268) (not bs!760932) (not b!4433824) (not bs!760936) (not bm!308491) (not bm!308446) (not b_lambda!144257) (not b!4433474) (not b_lambda!144243) (not bm!308465) (not bs!760933) (not b_lambda!144163) (not b!4433569) (not b_lambda!144135) (not b!4433709) (not b!4433643) (not b_lambda!144259) (not b!4433472) (not b!4433596) (not b_lambda!144137) (not b!4433649) (not b_lambda!144265) (not bm!308452) (not d!1345308) (not b_lambda!144239) (not b_lambda!144255) (not b!4433428) (not bm!308477) (not b_lambda!144167) tp_is_empty!26411 (not b!4433819) (not b!4433407) (not b!4433511) (not bm!308479) (not b!4433771) (not b!4433698) (not b!4433838) (not b!4433769) (not b!4433839) (not bm!308456) (not d!1345252) (not b!4433464) (not b!4433470) (not b!4433455) (not b!4433367) (not d!1345238) (not d!1345128) (not d!1345348) (not b!4433654) (not b!4433491) (not d!1345278) (not d!1345248) (not b!4433773) (not bs!760941) (not b!4433830) (not b!4433424) (not b!4433760) (not b!4433508) (not b!4433808) (not d!1345218) (not b!4433836) (not bs!760930) (not d!1345282) (not b_lambda!144245) (not d!1345202) (not b!4433691) (not b!4433490) (not b!4433462) (not bm!308474) (not d!1345220) (not b!4433674) (not d!1345384) (not b!4433822) (not b!4433431) (not b_lambda!144249) (not b!4433675) (not d!1345216) (not d!1345138) (not d!1345158) (not d!1345306) (not b!4433529) (not bs!760940) (not b!4433652) (not d!1345178) (not d!1345324) (not b!4433772) (not d!1345342) (not bs!760929) (not b!4433609) (not bm!308467) (not bs!760935) (not b!4433708) (not bs!760937) (not d!1345186) (not b!4433640) (not b!4433393) (not b_lambda!144251))
(check-sat)

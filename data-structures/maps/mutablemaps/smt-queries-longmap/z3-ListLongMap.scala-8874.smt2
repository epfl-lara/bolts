; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107782 () Bool)

(assert start!107782)

(declare-datatypes ((B!2116 0))(
  ( (B!2117 (val!16654 Int)) )
))
(declare-datatypes ((tuple2!21536 0))(
  ( (tuple2!21537 (_1!10778 (_ BitVec 64)) (_2!10778 B!2116)) )
))
(declare-datatypes ((List!28738 0))(
  ( (Nil!28735) (Cons!28734 (h!29943 tuple2!21536) (t!42278 List!28738)) )
))
(declare-datatypes ((ListLongMap!19277 0))(
  ( (ListLongMap!19278 (toList!9654 List!28738)) )
))
(declare-fun thiss!217 () ListLongMap!19277)

(declare-fun key!129 () (_ BitVec 64))

(declare-fun contains!7697 (ListLongMap!19277 (_ BitVec 64)) Bool)

(declare-fun removeStrictlySorted!178 (List!28738 (_ BitVec 64)) List!28738)

(assert (=> start!107782 (contains!7697 (ListLongMap!19278 (removeStrictlySorted!178 (toList!9654 thiss!217) key!129)) key!129)))

(declare-fun e!727269 () Bool)

(declare-fun inv!44708 (ListLongMap!19277) Bool)

(assert (=> start!107782 (and (inv!44708 thiss!217) e!727269)))

(assert (=> start!107782 true))

(declare-fun b!1274341 () Bool)

(declare-fun tp!97935 () Bool)

(assert (=> b!1274341 (= e!727269 tp!97935)))

(assert (= start!107782 b!1274341))

(declare-fun m!1171147 () Bool)

(assert (=> start!107782 m!1171147))

(declare-fun m!1171149 () Bool)

(assert (=> start!107782 m!1171149))

(declare-fun m!1171151 () Bool)

(assert (=> start!107782 m!1171151))

(check-sat (not start!107782) (not b!1274341))
(check-sat)
(get-model)

(declare-fun d!140069 () Bool)

(declare-fun e!727287 () Bool)

(assert (=> d!140069 e!727287))

(declare-fun res!847278 () Bool)

(assert (=> d!140069 (=> res!847278 e!727287)))

(declare-fun lt!575193 () Bool)

(assert (=> d!140069 (= res!847278 (not lt!575193))))

(declare-fun lt!575192 () Bool)

(assert (=> d!140069 (= lt!575193 lt!575192)))

(declare-datatypes ((Unit!42288 0))(
  ( (Unit!42289) )
))
(declare-fun lt!575191 () Unit!42288)

(declare-fun e!727288 () Unit!42288)

(assert (=> d!140069 (= lt!575191 e!727288)))

(declare-fun c!123794 () Bool)

(assert (=> d!140069 (= c!123794 lt!575192)))

(declare-fun containsKey!696 (List!28738 (_ BitVec 64)) Bool)

(assert (=> d!140069 (= lt!575192 (containsKey!696 (toList!9654 (ListLongMap!19278 (removeStrictlySorted!178 (toList!9654 thiss!217) key!129))) key!129))))

(assert (=> d!140069 (= (contains!7697 (ListLongMap!19278 (removeStrictlySorted!178 (toList!9654 thiss!217) key!129)) key!129) lt!575193)))

(declare-fun b!1274366 () Bool)

(declare-fun lt!575194 () Unit!42288)

(assert (=> b!1274366 (= e!727288 lt!575194)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!453 (List!28738 (_ BitVec 64)) Unit!42288)

(assert (=> b!1274366 (= lt!575194 (lemmaContainsKeyImpliesGetValueByKeyDefined!453 (toList!9654 (ListLongMap!19278 (removeStrictlySorted!178 (toList!9654 thiss!217) key!129))) key!129))))

(declare-datatypes ((Option!741 0))(
  ( (Some!740 (v!19284 B!2116)) (None!739) )
))
(declare-fun isDefined!493 (Option!741) Bool)

(declare-fun getValueByKey!690 (List!28738 (_ BitVec 64)) Option!741)

(assert (=> b!1274366 (isDefined!493 (getValueByKey!690 (toList!9654 (ListLongMap!19278 (removeStrictlySorted!178 (toList!9654 thiss!217) key!129))) key!129))))

(declare-fun b!1274367 () Bool)

(declare-fun Unit!42293 () Unit!42288)

(assert (=> b!1274367 (= e!727288 Unit!42293)))

(declare-fun b!1274368 () Bool)

(assert (=> b!1274368 (= e!727287 (isDefined!493 (getValueByKey!690 (toList!9654 (ListLongMap!19278 (removeStrictlySorted!178 (toList!9654 thiss!217) key!129))) key!129)))))

(assert (= (and d!140069 c!123794) b!1274366))

(assert (= (and d!140069 (not c!123794)) b!1274367))

(assert (= (and d!140069 (not res!847278)) b!1274368))

(declare-fun m!1171167 () Bool)

(assert (=> d!140069 m!1171167))

(declare-fun m!1171169 () Bool)

(assert (=> b!1274366 m!1171169))

(declare-fun m!1171171 () Bool)

(assert (=> b!1274366 m!1171171))

(assert (=> b!1274366 m!1171171))

(declare-fun m!1171173 () Bool)

(assert (=> b!1274366 m!1171173))

(assert (=> b!1274368 m!1171171))

(assert (=> b!1274368 m!1171171))

(assert (=> b!1274368 m!1171173))

(assert (=> start!107782 d!140069))

(declare-fun b!1274407 () Bool)

(declare-fun e!727314 () List!28738)

(assert (=> b!1274407 (= e!727314 Nil!28735)))

(declare-fun b!1274408 () Bool)

(declare-fun e!727312 () List!28738)

(assert (=> b!1274408 (= e!727312 (t!42278 (toList!9654 thiss!217)))))

(declare-fun b!1274409 () Bool)

(declare-fun $colon$colon!661 (List!28738 tuple2!21536) List!28738)

(assert (=> b!1274409 (= e!727314 ($colon$colon!661 (removeStrictlySorted!178 (t!42278 (toList!9654 thiss!217)) key!129) (h!29943 (toList!9654 thiss!217))))))

(declare-fun b!1274410 () Bool)

(assert (=> b!1274410 (= e!727312 e!727314)))

(declare-fun c!123811 () Bool)

(get-info :version)

(assert (=> b!1274410 (= c!123811 (and ((_ is Cons!28734) (toList!9654 thiss!217)) (not (= (_1!10778 (h!29943 (toList!9654 thiss!217))) key!129))))))

(declare-fun d!140075 () Bool)

(declare-fun e!727313 () Bool)

(assert (=> d!140075 e!727313))

(declare-fun res!847287 () Bool)

(assert (=> d!140075 (=> (not res!847287) (not e!727313))))

(declare-fun lt!575206 () List!28738)

(declare-fun isStrictlySorted!838 (List!28738) Bool)

(assert (=> d!140075 (= res!847287 (isStrictlySorted!838 lt!575206))))

(assert (=> d!140075 (= lt!575206 e!727312)))

(declare-fun c!123810 () Bool)

(assert (=> d!140075 (= c!123810 (and ((_ is Cons!28734) (toList!9654 thiss!217)) (= (_1!10778 (h!29943 (toList!9654 thiss!217))) key!129)))))

(assert (=> d!140075 (isStrictlySorted!838 (toList!9654 thiss!217))))

(assert (=> d!140075 (= (removeStrictlySorted!178 (toList!9654 thiss!217) key!129) lt!575206)))

(declare-fun b!1274411 () Bool)

(assert (=> b!1274411 (= e!727313 (not (containsKey!696 lt!575206 key!129)))))

(assert (= (and d!140075 c!123810) b!1274408))

(assert (= (and d!140075 (not c!123810)) b!1274410))

(assert (= (and b!1274410 c!123811) b!1274409))

(assert (= (and b!1274410 (not c!123811)) b!1274407))

(assert (= (and d!140075 res!847287) b!1274411))

(declare-fun m!1171193 () Bool)

(assert (=> b!1274409 m!1171193))

(assert (=> b!1274409 m!1171193))

(declare-fun m!1171195 () Bool)

(assert (=> b!1274409 m!1171195))

(declare-fun m!1171197 () Bool)

(assert (=> d!140075 m!1171197))

(declare-fun m!1171199 () Bool)

(assert (=> d!140075 m!1171199))

(declare-fun m!1171201 () Bool)

(assert (=> b!1274411 m!1171201))

(assert (=> start!107782 d!140075))

(declare-fun d!140081 () Bool)

(assert (=> d!140081 (= (inv!44708 thiss!217) (isStrictlySorted!838 (toList!9654 thiss!217)))))

(declare-fun bs!36186 () Bool)

(assert (= bs!36186 d!140081))

(assert (=> bs!36186 m!1171199))

(assert (=> start!107782 d!140081))

(declare-fun b!1274430 () Bool)

(declare-fun e!727325 () Bool)

(declare-fun tp_is_empty!33159 () Bool)

(declare-fun tp!97946 () Bool)

(assert (=> b!1274430 (= e!727325 (and tp_is_empty!33159 tp!97946))))

(assert (=> b!1274341 (= tp!97935 e!727325)))

(assert (= (and b!1274341 ((_ is Cons!28734) (toList!9654 thiss!217))) b!1274430))

(check-sat (not d!140081) (not b!1274411) (not b!1274366) (not b!1274409) (not b!1274368) tp_is_empty!33159 (not d!140069) (not b!1274430) (not d!140075))
(check-sat)

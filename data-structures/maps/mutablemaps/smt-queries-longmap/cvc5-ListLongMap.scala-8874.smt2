; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107780 () Bool)

(assert start!107780)

(declare-datatypes ((B!2114 0))(
  ( (B!2115 (val!16653 Int)) )
))
(declare-datatypes ((tuple2!21534 0))(
  ( (tuple2!21535 (_1!10777 (_ BitVec 64)) (_2!10777 B!2114)) )
))
(declare-datatypes ((List!28737 0))(
  ( (Nil!28734) (Cons!28733 (h!29942 tuple2!21534) (t!42277 List!28737)) )
))
(declare-datatypes ((ListLongMap!19275 0))(
  ( (ListLongMap!19276 (toList!9653 List!28737)) )
))
(declare-fun thiss!217 () ListLongMap!19275)

(declare-fun key!129 () (_ BitVec 64))

(declare-fun contains!7696 (ListLongMap!19275 (_ BitVec 64)) Bool)

(declare-fun removeStrictlySorted!177 (List!28737 (_ BitVec 64)) List!28737)

(assert (=> start!107780 (contains!7696 (ListLongMap!19276 (removeStrictlySorted!177 (toList!9653 thiss!217) key!129)) key!129)))

(declare-fun e!727266 () Bool)

(declare-fun inv!44707 (ListLongMap!19275) Bool)

(assert (=> start!107780 (and (inv!44707 thiss!217) e!727266)))

(assert (=> start!107780 true))

(declare-fun b!1274338 () Bool)

(declare-fun tp!97932 () Bool)

(assert (=> b!1274338 (= e!727266 tp!97932)))

(assert (= start!107780 b!1274338))

(declare-fun m!1171141 () Bool)

(assert (=> start!107780 m!1171141))

(declare-fun m!1171143 () Bool)

(assert (=> start!107780 m!1171143))

(declare-fun m!1171145 () Bool)

(assert (=> start!107780 m!1171145))

(push 1)

(assert (not start!107780))

(assert (not b!1274338))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!140067 () Bool)

(declare-fun e!727285 () Bool)

(assert (=> d!140067 e!727285))

(declare-fun res!847277 () Bool)

(assert (=> d!140067 (=> res!847277 e!727285)))

(declare-fun lt!575188 () Bool)

(assert (=> d!140067 (= res!847277 (not lt!575188))))

(declare-fun lt!575189 () Bool)

(assert (=> d!140067 (= lt!575188 lt!575189)))

(declare-datatypes ((Unit!42286 0))(
  ( (Unit!42287) )
))
(declare-fun lt!575187 () Unit!42286)

(declare-fun e!727286 () Unit!42286)

(assert (=> d!140067 (= lt!575187 e!727286)))

(declare-fun c!123793 () Bool)

(assert (=> d!140067 (= c!123793 lt!575189)))

(declare-fun containsKey!695 (List!28737 (_ BitVec 64)) Bool)

(assert (=> d!140067 (= lt!575189 (containsKey!695 (toList!9653 (ListLongMap!19276 (removeStrictlySorted!177 (toList!9653 thiss!217) key!129))) key!129))))

(assert (=> d!140067 (= (contains!7696 (ListLongMap!19276 (removeStrictlySorted!177 (toList!9653 thiss!217) key!129)) key!129) lt!575188)))

(declare-fun b!1274363 () Bool)

(declare-fun lt!575190 () Unit!42286)

(assert (=> b!1274363 (= e!727286 lt!575190)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!452 (List!28737 (_ BitVec 64)) Unit!42286)

(assert (=> b!1274363 (= lt!575190 (lemmaContainsKeyImpliesGetValueByKeyDefined!452 (toList!9653 (ListLongMap!19276 (removeStrictlySorted!177 (toList!9653 thiss!217) key!129))) key!129))))

(declare-datatypes ((Option!740 0))(
  ( (Some!739 (v!19283 B!2114)) (None!738) )
))
(declare-fun isDefined!492 (Option!740) Bool)

(declare-fun getValueByKey!689 (List!28737 (_ BitVec 64)) Option!740)

(assert (=> b!1274363 (isDefined!492 (getValueByKey!689 (toList!9653 (ListLongMap!19276 (removeStrictlySorted!177 (toList!9653 thiss!217) key!129))) key!129))))

(declare-fun b!1274364 () Bool)

(declare-fun Unit!42292 () Unit!42286)

(assert (=> b!1274364 (= e!727286 Unit!42292)))

(declare-fun b!1274365 () Bool)

(assert (=> b!1274365 (= e!727285 (isDefined!492 (getValueByKey!689 (toList!9653 (ListLongMap!19276 (removeStrictlySorted!177 (toList!9653 thiss!217) key!129))) key!129)))))

(assert (= (and d!140067 c!123793) b!1274363))

(assert (= (and d!140067 (not c!123793)) b!1274364))

(assert (= (and d!140067 (not res!847277)) b!1274365))

(declare-fun m!1171159 () Bool)

(assert (=> d!140067 m!1171159))

(declare-fun m!1171161 () Bool)

(assert (=> b!1274363 m!1171161))

(declare-fun m!1171163 () Bool)

(assert (=> b!1274363 m!1171163))

(assert (=> b!1274363 m!1171163))

(declare-fun m!1171165 () Bool)

(assert (=> b!1274363 m!1171165))

(assert (=> b!1274365 m!1171163))

(assert (=> b!1274365 m!1171163))

(assert (=> b!1274365 m!1171165))

(assert (=> start!107780 d!140067))

(declare-fun b!1274402 () Bool)

(declare-fun e!727309 () List!28737)

(assert (=> b!1274402 (= e!727309 Nil!28734)))

(declare-fun b!1274404 () Bool)

(declare-fun $colon$colon!660 (List!28737 tuple2!21534) List!28737)

(assert (=> b!1274404 (= e!727309 ($colon$colon!660 (removeStrictlySorted!177 (t!42277 (toList!9653 thiss!217)) key!129) (h!29942 (toList!9653 thiss!217))))))

(declare-fun b!1274405 () Bool)

(declare-fun e!727310 () List!28737)

(assert (=> b!1274405 (= e!727310 e!727309)))

(declare-fun c!123809 () Bool)

(assert (=> b!1274405 (= c!123809 (and (is-Cons!28733 (toList!9653 thiss!217)) (not (= (_1!10777 (h!29942 (toList!9653 thiss!217))) key!129))))))

(declare-fun b!1274406 () Bool)

(assert (=> b!1274406 (= e!727310 (t!42277 (toList!9653 thiss!217)))))

(declare-fun d!140073 () Bool)

(declare-fun e!727311 () Bool)

(assert (=> d!140073 e!727311))

(declare-fun res!847286 () Bool)

(assert (=> d!140073 (=> (not res!847286) (not e!727311))))

(declare-fun lt!575205 () List!28737)

(declare-fun isStrictlySorted!837 (List!28737) Bool)

(assert (=> d!140073 (= res!847286 (isStrictlySorted!837 lt!575205))))

(assert (=> d!140073 (= lt!575205 e!727310)))

(declare-fun c!123808 () Bool)

(assert (=> d!140073 (= c!123808 (and (is-Cons!28733 (toList!9653 thiss!217)) (= (_1!10777 (h!29942 (toList!9653 thiss!217))) key!129)))))

(assert (=> d!140073 (isStrictlySorted!837 (toList!9653 thiss!217))))

(assert (=> d!140073 (= (removeStrictlySorted!177 (toList!9653 thiss!217) key!129) lt!575205)))

(declare-fun b!1274403 () Bool)

(assert (=> b!1274403 (= e!727311 (not (containsKey!695 lt!575205 key!129)))))

(assert (= (and d!140073 c!123808) b!1274406))

(assert (= (and d!140073 (not c!123808)) b!1274405))

(assert (= (and b!1274405 c!123809) b!1274404))

(assert (= (and b!1274405 (not c!123809)) b!1274402))

(assert (= (and d!140073 res!847286) b!1274403))

(declare-fun m!1171183 () Bool)

(assert (=> b!1274404 m!1171183))

(assert (=> b!1274404 m!1171183))

(declare-fun m!1171185 () Bool)

(assert (=> b!1274404 m!1171185))

(declare-fun m!1171187 () Bool)

(assert (=> d!140073 m!1171187))

(declare-fun m!1171189 () Bool)

(assert (=> d!140073 m!1171189))

(declare-fun m!1171191 () Bool)

(assert (=> b!1274403 m!1171191))

(assert (=> start!107780 d!140073))

(declare-fun d!140079 () Bool)

(assert (=> d!140079 (= (inv!44707 thiss!217) (isStrictlySorted!837 (toList!9653 thiss!217)))))

(declare-fun bs!36185 () Bool)

(assert (= bs!36185 d!140079))

(assert (=> bs!36185 m!1171189))

(assert (=> start!107780 d!140079))

(declare-fun b!1274421 () Bool)

(declare-fun e!727320 () Bool)

(declare-fun tp_is_empty!33157 () Bool)

(declare-fun tp!97941 () Bool)

(assert (=> b!1274421 (= e!727320 (and tp_is_empty!33157 tp!97941))))

(assert (=> b!1274338 (= tp!97932 e!727320)))

(assert (= (and b!1274338 (is-Cons!28733 (toList!9653 thiss!217))) b!1274421))

(push 1)


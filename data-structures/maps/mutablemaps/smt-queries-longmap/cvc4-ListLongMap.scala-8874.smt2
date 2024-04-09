; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107784 () Bool)

(assert start!107784)

(declare-datatypes ((B!2118 0))(
  ( (B!2119 (val!16655 Int)) )
))
(declare-datatypes ((tuple2!21538 0))(
  ( (tuple2!21539 (_1!10779 (_ BitVec 64)) (_2!10779 B!2118)) )
))
(declare-datatypes ((List!28739 0))(
  ( (Nil!28736) (Cons!28735 (h!29944 tuple2!21538) (t!42279 List!28739)) )
))
(declare-datatypes ((ListLongMap!19279 0))(
  ( (ListLongMap!19280 (toList!9655 List!28739)) )
))
(declare-fun thiss!217 () ListLongMap!19279)

(declare-fun key!129 () (_ BitVec 64))

(declare-fun contains!7698 (ListLongMap!19279 (_ BitVec 64)) Bool)

(declare-fun removeStrictlySorted!179 (List!28739 (_ BitVec 64)) List!28739)

(assert (=> start!107784 (contains!7698 (ListLongMap!19280 (removeStrictlySorted!179 (toList!9655 thiss!217) key!129)) key!129)))

(declare-fun e!727272 () Bool)

(declare-fun inv!44709 (ListLongMap!19279) Bool)

(assert (=> start!107784 (and (inv!44709 thiss!217) e!727272)))

(assert (=> start!107784 true))

(declare-fun b!1274344 () Bool)

(declare-fun tp!97938 () Bool)

(assert (=> b!1274344 (= e!727272 tp!97938)))

(assert (= start!107784 b!1274344))

(declare-fun m!1171153 () Bool)

(assert (=> start!107784 m!1171153))

(declare-fun m!1171155 () Bool)

(assert (=> start!107784 m!1171155))

(declare-fun m!1171157 () Bool)

(assert (=> start!107784 m!1171157))

(push 1)

(assert (not start!107784))

(assert (not b!1274344))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!140071 () Bool)

(declare-fun e!727289 () Bool)

(assert (=> d!140071 e!727289))

(declare-fun res!847279 () Bool)

(assert (=> d!140071 (=> res!847279 e!727289)))

(declare-fun lt!575198 () Bool)

(assert (=> d!140071 (= res!847279 (not lt!575198))))

(declare-fun lt!575197 () Bool)

(assert (=> d!140071 (= lt!575198 lt!575197)))

(declare-datatypes ((Unit!42290 0))(
  ( (Unit!42291) )
))
(declare-fun lt!575195 () Unit!42290)

(declare-fun e!727290 () Unit!42290)

(assert (=> d!140071 (= lt!575195 e!727290)))

(declare-fun c!123795 () Bool)

(assert (=> d!140071 (= c!123795 lt!575197)))

(declare-fun containsKey!697 (List!28739 (_ BitVec 64)) Bool)

(assert (=> d!140071 (= lt!575197 (containsKey!697 (toList!9655 (ListLongMap!19280 (removeStrictlySorted!179 (toList!9655 thiss!217) key!129))) key!129))))

(assert (=> d!140071 (= (contains!7698 (ListLongMap!19280 (removeStrictlySorted!179 (toList!9655 thiss!217) key!129)) key!129) lt!575198)))

(declare-fun b!1274369 () Bool)

(declare-fun lt!575196 () Unit!42290)

(assert (=> b!1274369 (= e!727290 lt!575196)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!454 (List!28739 (_ BitVec 64)) Unit!42290)

(assert (=> b!1274369 (= lt!575196 (lemmaContainsKeyImpliesGetValueByKeyDefined!454 (toList!9655 (ListLongMap!19280 (removeStrictlySorted!179 (toList!9655 thiss!217) key!129))) key!129))))

(declare-datatypes ((Option!742 0))(
  ( (Some!741 (v!19285 B!2118)) (None!740) )
))
(declare-fun isDefined!494 (Option!742) Bool)

(declare-fun getValueByKey!691 (List!28739 (_ BitVec 64)) Option!742)

(assert (=> b!1274369 (isDefined!494 (getValueByKey!691 (toList!9655 (ListLongMap!19280 (removeStrictlySorted!179 (toList!9655 thiss!217) key!129))) key!129))))

(declare-fun b!1274370 () Bool)

(declare-fun Unit!42294 () Unit!42290)

(assert (=> b!1274370 (= e!727290 Unit!42294)))

(declare-fun b!1274371 () Bool)

(assert (=> b!1274371 (= e!727289 (isDefined!494 (getValueByKey!691 (toList!9655 (ListLongMap!19280 (removeStrictlySorted!179 (toList!9655 thiss!217) key!129))) key!129)))))

(assert (= (and d!140071 c!123795) b!1274369))

(assert (= (and d!140071 (not c!123795)) b!1274370))

(assert (= (and d!140071 (not res!847279)) b!1274371))

(declare-fun m!1171175 () Bool)

(assert (=> d!140071 m!1171175))

(declare-fun m!1171177 () Bool)

(assert (=> b!1274369 m!1171177))

(declare-fun m!1171179 () Bool)

(assert (=> b!1274369 m!1171179))

(assert (=> b!1274369 m!1171179))

(declare-fun m!1171181 () Bool)

(assert (=> b!1274369 m!1171181))

(assert (=> b!1274371 m!1171179))

(assert (=> b!1274371 m!1171179))

(assert (=> b!1274371 m!1171181))

(assert (=> start!107784 d!140071))

(declare-fun d!140077 () Bool)

(declare-fun e!727316 () Bool)

(assert (=> d!140077 e!727316))

(declare-fun res!847288 () Bool)

(assert (=> d!140077 (=> (not res!847288) (not e!727316))))

(declare-fun lt!575207 () List!28739)

(declare-fun isStrictlySorted!839 (List!28739) Bool)

(assert (=> d!140077 (= res!847288 (isStrictlySorted!839 lt!575207))))

(declare-fun e!727317 () List!28739)

(assert (=> d!140077 (= lt!575207 e!727317)))

(declare-fun c!123812 () Bool)

(assert (=> d!140077 (= c!123812 (and (is-Cons!28735 (toList!9655 thiss!217)) (= (_1!10779 (h!29944 (toList!9655 thiss!217))) key!129)))))

(assert (=> d!140077 (isStrictlySorted!839 (toList!9655 thiss!217))))

(assert (=> d!140077 (= (removeStrictlySorted!179 (toList!9655 thiss!217) key!129) lt!575207)))

(declare-fun b!1274412 () Bool)

(assert (=> b!1274412 (= e!727317 (t!42279 (toList!9655 thiss!217)))))

(declare-fun b!1274413 () Bool)

(declare-fun e!727315 () List!28739)

(declare-fun $colon$colon!662 (List!28739 tuple2!21538) List!28739)

(assert (=> b!1274413 (= e!727315 ($colon$colon!662 (removeStrictlySorted!179 (t!42279 (toList!9655 thiss!217)) key!129) (h!29944 (toList!9655 thiss!217))))))

(declare-fun b!1274414 () Bool)

(assert (=> b!1274414 (= e!727316 (not (containsKey!697 lt!575207 key!129)))))

(declare-fun b!1274415 () Bool)

(assert (=> b!1274415 (= e!727315 Nil!28736)))

(declare-fun b!1274416 () Bool)

(assert (=> b!1274416 (= e!727317 e!727315)))

(declare-fun c!123813 () Bool)

(assert (=> b!1274416 (= c!123813 (and (is-Cons!28735 (toList!9655 thiss!217)) (not (= (_1!10779 (h!29944 (toList!9655 thiss!217))) key!129))))))


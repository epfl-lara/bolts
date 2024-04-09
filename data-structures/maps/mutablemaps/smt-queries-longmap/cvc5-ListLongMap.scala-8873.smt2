; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107762 () Bool)

(assert start!107762)

(declare-datatypes ((B!2108 0))(
  ( (B!2109 (val!16650 Int)) )
))
(declare-datatypes ((tuple2!21528 0))(
  ( (tuple2!21529 (_1!10774 (_ BitVec 64)) (_2!10774 B!2108)) )
))
(declare-datatypes ((List!28734 0))(
  ( (Nil!28731) (Cons!28730 (h!29939 tuple2!21528) (t!42274 List!28734)) )
))
(declare-datatypes ((ListLongMap!19269 0))(
  ( (ListLongMap!19270 (toList!9650 List!28734)) )
))
(declare-fun thiss!217 () ListLongMap!19269)

(declare-fun key!129 () (_ BitVec 64))

(declare-fun inv!44699 (ListLongMap!19269) Bool)

(declare-fun removeStrictlySorted!174 (List!28734 (_ BitVec 64)) List!28734)

(assert (=> start!107762 (not (inv!44699 (ListLongMap!19270 (removeStrictlySorted!174 (toList!9650 thiss!217) key!129))))))

(declare-fun e!727221 () Bool)

(assert (=> start!107762 (and (inv!44699 thiss!217) e!727221)))

(assert (=> start!107762 true))

(declare-fun b!1274269 () Bool)

(declare-fun tp!97914 () Bool)

(assert (=> b!1274269 (= e!727221 tp!97914)))

(assert (= start!107762 b!1274269))

(declare-fun m!1171087 () Bool)

(assert (=> start!107762 m!1171087))

(declare-fun m!1171089 () Bool)

(assert (=> start!107762 m!1171089))

(declare-fun m!1171091 () Bool)

(assert (=> start!107762 m!1171091))

(push 1)

(assert (not start!107762))

(assert (not b!1274269))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!140047 () Bool)

(declare-fun isStrictlySorted!834 (List!28734) Bool)

(assert (=> d!140047 (= (inv!44699 (ListLongMap!19270 (removeStrictlySorted!174 (toList!9650 thiss!217) key!129))) (isStrictlySorted!834 (toList!9650 (ListLongMap!19270 (removeStrictlySorted!174 (toList!9650 thiss!217) key!129)))))))

(declare-fun bs!36176 () Bool)

(assert (= bs!36176 d!140047))

(declare-fun m!1171105 () Bool)

(assert (=> bs!36176 m!1171105))

(assert (=> start!107762 d!140047))

(declare-fun b!1274306 () Bool)

(declare-fun e!727248 () List!28734)

(declare-fun $colon$colon!657 (List!28734 tuple2!21528) List!28734)

(assert (=> b!1274306 (= e!727248 ($colon$colon!657 (removeStrictlySorted!174 (t!42274 (toList!9650 thiss!217)) key!129) (h!29939 (toList!9650 thiss!217))))))

(declare-fun b!1274307 () Bool)

(declare-fun e!727247 () Bool)

(declare-fun lt!575160 () List!28734)

(declare-fun containsKey!692 (List!28734 (_ BitVec 64)) Bool)

(assert (=> b!1274307 (= e!727247 (not (containsKey!692 lt!575160 key!129)))))

(declare-fun d!140051 () Bool)

(assert (=> d!140051 e!727247))

(declare-fun res!847268 () Bool)

(assert (=> d!140051 (=> (not res!847268) (not e!727247))))

(assert (=> d!140051 (= res!847268 (isStrictlySorted!834 lt!575160))))

(declare-fun e!727246 () List!28734)

(assert (=> d!140051 (= lt!575160 e!727246)))

(declare-fun c!123782 () Bool)

(assert (=> d!140051 (= c!123782 (and (is-Cons!28730 (toList!9650 thiss!217)) (= (_1!10774 (h!29939 (toList!9650 thiss!217))) key!129)))))

(assert (=> d!140051 (isStrictlySorted!834 (toList!9650 thiss!217))))

(assert (=> d!140051 (= (removeStrictlySorted!174 (toList!9650 thiss!217) key!129) lt!575160)))

(declare-fun b!1274308 () Bool)

(assert (=> b!1274308 (= e!727248 Nil!28731)))

(declare-fun b!1274309 () Bool)

(assert (=> b!1274309 (= e!727246 (t!42274 (toList!9650 thiss!217)))))

(declare-fun b!1274310 () Bool)

(assert (=> b!1274310 (= e!727246 e!727248)))

(declare-fun c!123781 () Bool)

(assert (=> b!1274310 (= c!123781 (and (is-Cons!28730 (toList!9650 thiss!217)) (not (= (_1!10774 (h!29939 (toList!9650 thiss!217))) key!129))))))

(assert (= (and d!140051 c!123782) b!1274309))

(assert (= (and d!140051 (not c!123782)) b!1274310))

(assert (= (and b!1274310 c!123781) b!1274306))

(assert (= (and b!1274310 (not c!123781)) b!1274308))

(assert (= (and d!140051 res!847268) b!1274307))

(declare-fun m!1171111 () Bool)

(assert (=> b!1274306 m!1171111))

(assert (=> b!1274306 m!1171111))

(declare-fun m!1171113 () Bool)

(assert (=> b!1274306 m!1171113))

(declare-fun m!1171115 () Bool)

(assert (=> b!1274307 m!1171115))

(declare-fun m!1171117 () Bool)

(assert (=> d!140051 m!1171117))

(declare-fun m!1171119 () Bool)

(assert (=> d!140051 m!1171119))

(assert (=> start!107762 d!140051))

(declare-fun d!140059 () Bool)

(assert (=> d!140059 (= (inv!44699 thiss!217) (isStrictlySorted!834 (toList!9650 thiss!217)))))

(declare-fun bs!36179 () Bool)

(assert (= bs!36179 d!140059))

(assert (=> bs!36179 m!1171119))

(assert (=> start!107762 d!140059))

(declare-fun b!1274329 () Bool)

(declare-fun e!727259 () Bool)

(declare-fun tp_is_empty!33151 () Bool)

(declare-fun tp!97925 () Bool)

(assert (=> b!1274329 (= e!727259 (and tp_is_empty!33151 tp!97925))))

(assert (=> b!1274269 (= tp!97914 e!727259)))

(assert (= (and b!1274269 (is-Cons!28730 (toList!9650 thiss!217))) b!1274329))

(push 1)


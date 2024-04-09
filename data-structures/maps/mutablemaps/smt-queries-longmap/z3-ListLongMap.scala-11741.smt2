; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137760 () Bool)

(assert start!137760)

(declare-fun b!1582486 () Bool)

(declare-fun e!883244 () Bool)

(declare-datatypes ((B!2788 0))(
  ( (B!2789 (val!19756 Int)) )
))
(declare-datatypes ((tuple2!25844 0))(
  ( (tuple2!25845 (_1!12932 (_ BitVec 64)) (_2!12932 B!2788)) )
))
(declare-datatypes ((List!37037 0))(
  ( (Nil!37034) (Cons!37033 (h!38577 tuple2!25844) (t!51958 List!37037)) )
))
(declare-datatypes ((ListLongMap!22967 0))(
  ( (ListLongMap!22968 (toList!11499 List!37037)) )
))
(declare-fun thiss!185 () ListLongMap!22967)

(declare-fun key!86 () (_ BitVec 64))

(declare-datatypes ((Option!937 0))(
  ( (Some!936 (v!22460 B!2788)) (None!935) )
))
(declare-fun isDefined!597 (Option!937) Bool)

(declare-fun getValueByKey!829 (List!37037 (_ BitVec 64)) Option!937)

(assert (=> b!1582486 (= e!883244 (not (isDefined!597 (getValueByKey!829 (toList!11499 thiss!185) key!86))))))

(declare-fun res!1081181 () Bool)

(assert (=> start!137760 (=> (not res!1081181) (not e!883244))))

(declare-fun lt!677031 () Bool)

(assert (=> start!137760 (= res!1081181 lt!677031)))

(declare-datatypes ((Unit!52205 0))(
  ( (Unit!52206) )
))
(declare-fun lt!677030 () Unit!52205)

(declare-fun e!883245 () Unit!52205)

(assert (=> start!137760 (= lt!677030 e!883245)))

(declare-fun c!146598 () Bool)

(assert (=> start!137760 (= c!146598 lt!677031)))

(declare-fun containsKey!963 (List!37037 (_ BitVec 64)) Bool)

(assert (=> start!137760 (= lt!677031 (containsKey!963 (toList!11499 thiss!185) key!86))))

(assert (=> start!137760 e!883244))

(declare-fun e!883243 () Bool)

(declare-fun inv!59136 (ListLongMap!22967) Bool)

(assert (=> start!137760 (and (inv!59136 thiss!185) e!883243)))

(assert (=> start!137760 true))

(declare-fun b!1582485 () Bool)

(declare-fun Unit!52207 () Unit!52205)

(assert (=> b!1582485 (= e!883245 Unit!52207)))

(declare-fun b!1582487 () Bool)

(declare-fun tp!114799 () Bool)

(assert (=> b!1582487 (= e!883243 tp!114799)))

(declare-fun b!1582484 () Bool)

(declare-fun lt!677032 () Unit!52205)

(assert (=> b!1582484 (= e!883245 lt!677032)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!545 (List!37037 (_ BitVec 64)) Unit!52205)

(assert (=> b!1582484 (= lt!677032 (lemmaContainsKeyImpliesGetValueByKeyDefined!545 (toList!11499 thiss!185) key!86))))

(assert (=> b!1582484 (isDefined!597 (getValueByKey!829 (toList!11499 thiss!185) key!86))))

(assert (= (and start!137760 c!146598) b!1582484))

(assert (= (and start!137760 (not c!146598)) b!1582485))

(assert (= (and start!137760 res!1081181) b!1582486))

(assert (= start!137760 b!1582487))

(declare-fun m!1452873 () Bool)

(assert (=> b!1582486 m!1452873))

(assert (=> b!1582486 m!1452873))

(declare-fun m!1452875 () Bool)

(assert (=> b!1582486 m!1452875))

(declare-fun m!1452877 () Bool)

(assert (=> start!137760 m!1452877))

(declare-fun m!1452879 () Bool)

(assert (=> start!137760 m!1452879))

(declare-fun m!1452881 () Bool)

(assert (=> b!1582484 m!1452881))

(assert (=> b!1582484 m!1452873))

(assert (=> b!1582484 m!1452873))

(assert (=> b!1582484 m!1452875))

(check-sat (not b!1582484) (not b!1582486) (not start!137760) (not b!1582487))
(check-sat)

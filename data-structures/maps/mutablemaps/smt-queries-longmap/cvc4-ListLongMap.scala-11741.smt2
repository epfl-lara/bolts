; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137762 () Bool)

(assert start!137762)

(declare-fun res!1081184 () Bool)

(declare-fun e!883254 () Bool)

(assert (=> start!137762 (=> (not res!1081184) (not e!883254))))

(declare-fun lt!677039 () Bool)

(assert (=> start!137762 (= res!1081184 lt!677039)))

(declare-datatypes ((Unit!52208 0))(
  ( (Unit!52209) )
))
(declare-fun lt!677041 () Unit!52208)

(declare-fun e!883253 () Unit!52208)

(assert (=> start!137762 (= lt!677041 e!883253)))

(declare-fun c!146601 () Bool)

(assert (=> start!137762 (= c!146601 lt!677039)))

(declare-datatypes ((B!2790 0))(
  ( (B!2791 (val!19757 Int)) )
))
(declare-datatypes ((tuple2!25846 0))(
  ( (tuple2!25847 (_1!12933 (_ BitVec 64)) (_2!12933 B!2790)) )
))
(declare-datatypes ((List!37038 0))(
  ( (Nil!37035) (Cons!37034 (h!38578 tuple2!25846) (t!51959 List!37038)) )
))
(declare-datatypes ((ListLongMap!22969 0))(
  ( (ListLongMap!22970 (toList!11500 List!37038)) )
))
(declare-fun thiss!185 () ListLongMap!22969)

(declare-fun key!86 () (_ BitVec 64))

(declare-fun containsKey!964 (List!37038 (_ BitVec 64)) Bool)

(assert (=> start!137762 (= lt!677039 (containsKey!964 (toList!11500 thiss!185) key!86))))

(assert (=> start!137762 e!883254))

(declare-fun e!883252 () Bool)

(declare-fun inv!59137 (ListLongMap!22969) Bool)

(assert (=> start!137762 (and (inv!59137 thiss!185) e!883252)))

(assert (=> start!137762 true))

(declare-fun b!1582499 () Bool)

(declare-fun tp!114802 () Bool)

(assert (=> b!1582499 (= e!883252 tp!114802)))

(declare-fun b!1582497 () Bool)

(declare-fun Unit!52210 () Unit!52208)

(assert (=> b!1582497 (= e!883253 Unit!52210)))

(declare-fun b!1582496 () Bool)

(declare-fun lt!677040 () Unit!52208)

(assert (=> b!1582496 (= e!883253 lt!677040)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!546 (List!37038 (_ BitVec 64)) Unit!52208)

(assert (=> b!1582496 (= lt!677040 (lemmaContainsKeyImpliesGetValueByKeyDefined!546 (toList!11500 thiss!185) key!86))))

(declare-datatypes ((Option!938 0))(
  ( (Some!937 (v!22461 B!2790)) (None!936) )
))
(declare-fun isDefined!598 (Option!938) Bool)

(declare-fun getValueByKey!830 (List!37038 (_ BitVec 64)) Option!938)

(assert (=> b!1582496 (isDefined!598 (getValueByKey!830 (toList!11500 thiss!185) key!86))))

(declare-fun b!1582498 () Bool)

(assert (=> b!1582498 (= e!883254 (not (isDefined!598 (getValueByKey!830 (toList!11500 thiss!185) key!86))))))

(assert (= (and start!137762 c!146601) b!1582496))

(assert (= (and start!137762 (not c!146601)) b!1582497))

(assert (= (and start!137762 res!1081184) b!1582498))

(assert (= start!137762 b!1582499))

(declare-fun m!1452883 () Bool)

(assert (=> start!137762 m!1452883))

(declare-fun m!1452885 () Bool)

(assert (=> start!137762 m!1452885))

(declare-fun m!1452887 () Bool)

(assert (=> b!1582496 m!1452887))

(declare-fun m!1452889 () Bool)

(assert (=> b!1582496 m!1452889))

(assert (=> b!1582496 m!1452889))

(declare-fun m!1452891 () Bool)

(assert (=> b!1582496 m!1452891))

(assert (=> b!1582498 m!1452889))

(assert (=> b!1582498 m!1452889))

(assert (=> b!1582498 m!1452891))

(push 1)

(assert (not b!1582496))

(assert (not start!137762))

(assert (not b!1582498))

(assert (not b!1582499))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


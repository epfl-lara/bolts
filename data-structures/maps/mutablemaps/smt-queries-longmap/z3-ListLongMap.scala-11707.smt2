; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136986 () Bool)

(assert start!136986)

(declare-fun res!1079048 () Bool)

(declare-fun e!880934 () Bool)

(assert (=> start!136986 (=> (not res!1079048) (not e!880934))))

(declare-datatypes ((B!2584 0))(
  ( (B!2585 (val!19654 Int)) )
))
(declare-datatypes ((tuple2!25574 0))(
  ( (tuple2!25575 (_1!12797 (_ BitVec 64)) (_2!12797 B!2584)) )
))
(declare-datatypes ((List!36935 0))(
  ( (Nil!36932) (Cons!36931 (h!38475 tuple2!25574) (t!51856 List!36935)) )
))
(declare-fun lt!676411 () List!36935)

(declare-fun isStrictlySorted!1033 (List!36935) Bool)

(assert (=> start!136986 (= res!1079048 (isStrictlySorted!1033 lt!676411))))

(declare-datatypes ((ListLongMap!22925 0))(
  ( (ListLongMap!22926 (toList!11478 List!36935)) )
))
(declare-fun thiss!201 () ListLongMap!22925)

(declare-fun keyValue!4 () tuple2!25574)

(declare-fun insertStrictlySorted!605 (List!36935 (_ BitVec 64) B!2584) List!36935)

(assert (=> start!136986 (= lt!676411 (insertStrictlySorted!605 (toList!11478 thiss!201) (_1!12797 keyValue!4) (_2!12797 keyValue!4)))))

(assert (=> start!136986 e!880934))

(declare-fun e!880935 () Bool)

(declare-fun inv!58945 (ListLongMap!22925) Bool)

(assert (=> start!136986 (and (inv!58945 thiss!201) e!880935)))

(declare-fun tp_is_empty!39129 () Bool)

(assert (=> start!136986 tp_is_empty!39129))

(declare-fun b!1579170 () Bool)

(declare-fun res!1079047 () Bool)

(assert (=> b!1579170 (=> (not res!1079047) (not e!880934))))

(declare-fun containsKey!880 (List!36935 (_ BitVec 64)) Bool)

(assert (=> b!1579170 (= res!1079047 (containsKey!880 lt!676411 (_1!12797 keyValue!4)))))

(declare-fun b!1579171 () Bool)

(assert (=> b!1579171 (= e!880934 false)))

(declare-fun lt!676410 () Bool)

(declare-fun contains!10463 (List!36935 tuple2!25574) Bool)

(assert (=> b!1579171 (= lt!676410 (contains!10463 lt!676411 keyValue!4))))

(declare-fun b!1579172 () Bool)

(declare-fun tp!114319 () Bool)

(assert (=> b!1579172 (= e!880935 tp!114319)))

(assert (= (and start!136986 res!1079048) b!1579170))

(assert (= (and b!1579170 res!1079047) b!1579171))

(assert (= start!136986 b!1579172))

(declare-fun m!1451067 () Bool)

(assert (=> start!136986 m!1451067))

(declare-fun m!1451069 () Bool)

(assert (=> start!136986 m!1451069))

(declare-fun m!1451071 () Bool)

(assert (=> start!136986 m!1451071))

(declare-fun m!1451073 () Bool)

(assert (=> b!1579170 m!1451073))

(declare-fun m!1451075 () Bool)

(assert (=> b!1579171 m!1451075))

(check-sat (not b!1579171) (not start!136986) tp_is_empty!39129 (not b!1579172) (not b!1579170))
(check-sat)

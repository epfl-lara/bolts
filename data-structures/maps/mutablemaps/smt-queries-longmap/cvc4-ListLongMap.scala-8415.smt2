; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102470 () Bool)

(assert start!102470)

(declare-fun b!1231978 () Bool)

(declare-fun res!820460 () Bool)

(declare-fun e!698894 () Bool)

(assert (=> b!1231978 (=> (not res!820460) (not e!698894))))

(declare-datatypes ((array!79440 0))(
  ( (array!79441 (arr!38330 (Array (_ BitVec 32) (_ BitVec 64))) (size!38867 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79440)

(declare-datatypes ((List!27281 0))(
  ( (Nil!27278) (Cons!27277 (h!28486 (_ BitVec 64)) (t!40751 List!27281)) )
))
(declare-fun acc!823 () List!27281)

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79440 (_ BitVec 32) List!27281) Bool)

(assert (=> b!1231978 (= res!820460 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1231979 () Bool)

(declare-fun res!820461 () Bool)

(assert (=> b!1231979 (=> (not res!820461) (not e!698894))))

(declare-fun noDuplicate!1803 (List!27281) Bool)

(assert (=> b!1231979 (= res!820461 (noDuplicate!1803 acc!823))))

(declare-fun b!1231980 () Bool)

(declare-fun res!820467 () Bool)

(assert (=> b!1231980 (=> (not res!820467) (not e!698894))))

(declare-fun contains!7196 (List!27281 (_ BitVec 64)) Bool)

(assert (=> b!1231980 (= res!820467 (not (contains!7196 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1231981 () Bool)

(declare-fun e!698895 () Bool)

(assert (=> b!1231981 (= e!698895 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27277 (select (arr!38330 a!3806) from!3184) Nil!27278)))))

(declare-fun b!1231982 () Bool)

(declare-fun res!820465 () Bool)

(assert (=> b!1231982 (=> (not res!820465) (not e!698894))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1231982 (= res!820465 (validKeyInArray!0 (select (arr!38330 a!3806) from!3184)))))

(declare-fun b!1231983 () Bool)

(declare-fun res!820468 () Bool)

(assert (=> b!1231983 (=> (not res!820468) (not e!698894))))

(assert (=> b!1231983 (= res!820468 (not (contains!7196 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1231984 () Bool)

(declare-fun res!820466 () Bool)

(assert (=> b!1231984 (=> (not res!820466) (not e!698894))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79440 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1231984 (= res!820466 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1231985 () Bool)

(declare-fun res!820469 () Bool)

(assert (=> b!1231985 (=> (not res!820469) (not e!698894))))

(assert (=> b!1231985 (= res!820469 (validKeyInArray!0 k!2913))))

(declare-fun b!1231986 () Bool)

(assert (=> b!1231986 (= e!698894 (not true))))

(assert (=> b!1231986 e!698895))

(declare-fun res!820464 () Bool)

(assert (=> b!1231986 (=> (not res!820464) (not e!698895))))

(assert (=> b!1231986 (= res!820464 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27278))))

(declare-datatypes ((Unit!40740 0))(
  ( (Unit!40741) )
))
(declare-fun lt!559421 () Unit!40740)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79440 List!27281 List!27281 (_ BitVec 32)) Unit!40740)

(assert (=> b!1231986 (= lt!559421 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27278 from!3184))))

(assert (=> b!1231986 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27277 (select (arr!38330 a!3806) from!3184) acc!823))))

(declare-fun res!820462 () Bool)

(assert (=> start!102470 (=> (not res!820462) (not e!698894))))

(assert (=> start!102470 (= res!820462 (bvslt (size!38867 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102470 e!698894))

(declare-fun array_inv!29106 (array!79440) Bool)

(assert (=> start!102470 (array_inv!29106 a!3806)))

(assert (=> start!102470 true))

(declare-fun b!1231977 () Bool)

(declare-fun res!820463 () Bool)

(assert (=> b!1231977 (=> (not res!820463) (not e!698894))))

(assert (=> b!1231977 (= res!820463 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38867 a!3806)) (bvslt from!3184 (size!38867 a!3806))))))

(assert (= (and start!102470 res!820462) b!1231985))

(assert (= (and b!1231985 res!820469) b!1231977))

(assert (= (and b!1231977 res!820463) b!1231979))

(assert (= (and b!1231979 res!820461) b!1231980))

(assert (= (and b!1231980 res!820467) b!1231983))

(assert (= (and b!1231983 res!820468) b!1231984))

(assert (= (and b!1231984 res!820466) b!1231978))

(assert (= (and b!1231978 res!820460) b!1231982))

(assert (= (and b!1231982 res!820465) b!1231986))

(assert (= (and b!1231986 res!820464) b!1231981))

(declare-fun m!1136091 () Bool)

(assert (=> b!1231982 m!1136091))

(assert (=> b!1231982 m!1136091))

(declare-fun m!1136093 () Bool)

(assert (=> b!1231982 m!1136093))

(declare-fun m!1136095 () Bool)

(assert (=> b!1231978 m!1136095))

(declare-fun m!1136097 () Bool)

(assert (=> b!1231980 m!1136097))

(declare-fun m!1136099 () Bool)

(assert (=> b!1231984 m!1136099))

(declare-fun m!1136101 () Bool)

(assert (=> b!1231986 m!1136101))

(declare-fun m!1136103 () Bool)

(assert (=> b!1231986 m!1136103))

(assert (=> b!1231986 m!1136091))

(declare-fun m!1136105 () Bool)

(assert (=> b!1231986 m!1136105))

(assert (=> b!1231981 m!1136091))

(declare-fun m!1136107 () Bool)

(assert (=> b!1231981 m!1136107))

(declare-fun m!1136109 () Bool)

(assert (=> start!102470 m!1136109))

(declare-fun m!1136111 () Bool)

(assert (=> b!1231985 m!1136111))

(declare-fun m!1136113 () Bool)

(assert (=> b!1231979 m!1136113))

(declare-fun m!1136115 () Bool)

(assert (=> b!1231983 m!1136115))

(push 1)

(assert (not b!1231985))

(assert (not b!1231980))

(assert (not b!1231984))

(assert (not b!1231979))

(assert (not b!1231986))

(assert (not b!1231981))

(assert (not b!1231978))

(assert (not b!1231982))

(assert (not start!102470))

(assert (not b!1231983))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


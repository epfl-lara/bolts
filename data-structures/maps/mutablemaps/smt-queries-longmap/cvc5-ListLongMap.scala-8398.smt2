; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102208 () Bool)

(assert start!102208)

(declare-fun b!1229861 () Bool)

(declare-fun res!818452 () Bool)

(declare-fun e!697976 () Bool)

(assert (=> b!1229861 (=> res!818452 e!697976)))

(declare-datatypes ((List!27228 0))(
  ( (Nil!27225) (Cons!27224 (h!28433 (_ BitVec 64)) (t!40698 List!27228)) )
))
(declare-fun lt!559224 () List!27228)

(declare-fun contains!7143 (List!27228 (_ BitVec 64)) Bool)

(assert (=> b!1229861 (= res!818452 (contains!7143 lt!559224 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1229862 () Bool)

(declare-fun res!818456 () Bool)

(declare-fun e!697977 () Bool)

(assert (=> b!1229862 (=> (not res!818456) (not e!697977))))

(declare-fun acc!823 () List!27228)

(assert (=> b!1229862 (= res!818456 (not (contains!7143 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1229863 () Bool)

(assert (=> b!1229863 (= e!697977 (not e!697976))))

(declare-fun res!818465 () Bool)

(assert (=> b!1229863 (=> res!818465 e!697976)))

(declare-fun from!3184 () (_ BitVec 32))

(assert (=> b!1229863 (= res!818465 (bvslt (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000))))

(declare-datatypes ((array!79322 0))(
  ( (array!79323 (arr!38277 (Array (_ BitVec 32) (_ BitVec 64))) (size!38814 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79322)

(assert (=> b!1229863 (= lt!559224 (Cons!27224 (select (arr!38277 a!3806) from!3184) Nil!27225))))

(declare-fun e!697978 () Bool)

(assert (=> b!1229863 e!697978))

(declare-fun res!818454 () Bool)

(assert (=> b!1229863 (=> (not res!818454) (not e!697978))))

(declare-fun arrayNoDuplicates!0 (array!79322 (_ BitVec 32) List!27228) Bool)

(assert (=> b!1229863 (= res!818454 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27225))))

(declare-datatypes ((Unit!40694 0))(
  ( (Unit!40695) )
))
(declare-fun lt!559226 () Unit!40694)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79322 List!27228 List!27228 (_ BitVec 32)) Unit!40694)

(assert (=> b!1229863 (= lt!559226 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27225 from!3184))))

(assert (=> b!1229863 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27224 (select (arr!38277 a!3806) from!3184) acc!823))))

(declare-fun b!1229865 () Bool)

(declare-fun res!818462 () Bool)

(assert (=> b!1229865 (=> (not res!818462) (not e!697977))))

(declare-fun noDuplicate!1750 (List!27228) Bool)

(assert (=> b!1229865 (= res!818462 (noDuplicate!1750 acc!823))))

(declare-fun b!1229866 () Bool)

(declare-fun res!818461 () Bool)

(assert (=> b!1229866 (=> res!818461 e!697976)))

(assert (=> b!1229866 (= res!818461 (not (noDuplicate!1750 lt!559224)))))

(declare-fun b!1229867 () Bool)

(declare-fun res!818455 () Bool)

(assert (=> b!1229867 (=> (not res!818455) (not e!697977))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79322 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1229867 (= res!818455 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1229868 () Bool)

(declare-fun res!818460 () Bool)

(assert (=> b!1229868 (=> (not res!818460) (not e!697977))))

(assert (=> b!1229868 (= res!818460 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1229869 () Bool)

(declare-fun res!818459 () Bool)

(assert (=> b!1229869 (=> (not res!818459) (not e!697977))))

(assert (=> b!1229869 (= res!818459 (not (contains!7143 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1229870 () Bool)

(assert (=> b!1229870 (= e!697978 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27224 (select (arr!38277 a!3806) from!3184) Nil!27225)))))

(declare-fun b!1229864 () Bool)

(declare-fun res!818458 () Bool)

(assert (=> b!1229864 (=> (not res!818458) (not e!697977))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1229864 (= res!818458 (validKeyInArray!0 k!2913))))

(declare-fun res!818457 () Bool)

(assert (=> start!102208 (=> (not res!818457) (not e!697977))))

(assert (=> start!102208 (= res!818457 (bvslt (size!38814 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102208 e!697977))

(declare-fun array_inv!29053 (array!79322) Bool)

(assert (=> start!102208 (array_inv!29053 a!3806)))

(assert (=> start!102208 true))

(declare-fun b!1229871 () Bool)

(assert (=> b!1229871 (= e!697976 true)))

(declare-fun lt!559225 () Bool)

(assert (=> b!1229871 (= lt!559225 (contains!7143 lt!559224 (select (arr!38277 a!3806) from!3184)))))

(declare-fun b!1229872 () Bool)

(declare-fun res!818464 () Bool)

(assert (=> b!1229872 (=> (not res!818464) (not e!697977))))

(assert (=> b!1229872 (= res!818464 (validKeyInArray!0 (select (arr!38277 a!3806) from!3184)))))

(declare-fun b!1229873 () Bool)

(declare-fun res!818463 () Bool)

(assert (=> b!1229873 (=> (not res!818463) (not e!697977))))

(assert (=> b!1229873 (= res!818463 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38814 a!3806)) (bvslt from!3184 (size!38814 a!3806))))))

(declare-fun b!1229874 () Bool)

(declare-fun res!818453 () Bool)

(assert (=> b!1229874 (=> res!818453 e!697976)))

(assert (=> b!1229874 (= res!818453 (contains!7143 lt!559224 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!102208 res!818457) b!1229864))

(assert (= (and b!1229864 res!818458) b!1229873))

(assert (= (and b!1229873 res!818463) b!1229865))

(assert (= (and b!1229865 res!818462) b!1229869))

(assert (= (and b!1229869 res!818459) b!1229862))

(assert (= (and b!1229862 res!818456) b!1229867))

(assert (= (and b!1229867 res!818455) b!1229868))

(assert (= (and b!1229868 res!818460) b!1229872))

(assert (= (and b!1229872 res!818464) b!1229863))

(assert (= (and b!1229863 res!818454) b!1229870))

(assert (= (and b!1229863 (not res!818465)) b!1229866))

(assert (= (and b!1229866 (not res!818461)) b!1229874))

(assert (= (and b!1229874 (not res!818453)) b!1229861))

(assert (= (and b!1229861 (not res!818452)) b!1229871))

(declare-fun m!1134401 () Bool)

(assert (=> b!1229870 m!1134401))

(declare-fun m!1134403 () Bool)

(assert (=> b!1229870 m!1134403))

(declare-fun m!1134405 () Bool)

(assert (=> b!1229874 m!1134405))

(assert (=> b!1229872 m!1134401))

(assert (=> b!1229872 m!1134401))

(declare-fun m!1134407 () Bool)

(assert (=> b!1229872 m!1134407))

(declare-fun m!1134409 () Bool)

(assert (=> b!1229867 m!1134409))

(declare-fun m!1134411 () Bool)

(assert (=> start!102208 m!1134411))

(declare-fun m!1134413 () Bool)

(assert (=> b!1229862 m!1134413))

(declare-fun m!1134415 () Bool)

(assert (=> b!1229869 m!1134415))

(declare-fun m!1134417 () Bool)

(assert (=> b!1229865 m!1134417))

(assert (=> b!1229863 m!1134401))

(declare-fun m!1134419 () Bool)

(assert (=> b!1229863 m!1134419))

(declare-fun m!1134421 () Bool)

(assert (=> b!1229863 m!1134421))

(declare-fun m!1134423 () Bool)

(assert (=> b!1229863 m!1134423))

(declare-fun m!1134425 () Bool)

(assert (=> b!1229861 m!1134425))

(declare-fun m!1134427 () Bool)

(assert (=> b!1229864 m!1134427))

(assert (=> b!1229871 m!1134401))

(assert (=> b!1229871 m!1134401))

(declare-fun m!1134429 () Bool)

(assert (=> b!1229871 m!1134429))

(declare-fun m!1134431 () Bool)

(assert (=> b!1229866 m!1134431))

(declare-fun m!1134433 () Bool)

(assert (=> b!1229868 m!1134433))

(push 1)

(assert (not b!1229874))

(assert (not b!1229867))

(assert (not b!1229870))

(assert (not b!1229871))

(assert (not b!1229865))

(assert (not b!1229866))

(assert (not b!1229864))

(assert (not b!1229872))

(assert (not b!1229861))

(assert (not b!1229869))

(assert (not b!1229862))

(assert (not start!102208))

(assert (not b!1229868))

(assert (not b!1229863))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102216 () Bool)

(assert start!102216)

(declare-fun b!1230009 () Bool)

(declare-fun res!818607 () Bool)

(declare-fun e!698018 () Bool)

(assert (=> b!1230009 (=> (not res!818607) (not e!698018))))

(declare-fun k0!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1230009 (= res!818607 (validKeyInArray!0 k0!2913))))

(declare-fun b!1230010 () Bool)

(declare-fun res!818606 () Bool)

(assert (=> b!1230010 (=> (not res!818606) (not e!698018))))

(declare-datatypes ((array!79330 0))(
  ( (array!79331 (arr!38281 (Array (_ BitVec 32) (_ BitVec 64))) (size!38818 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79330)

(declare-fun from!3184 () (_ BitVec 32))

(assert (=> b!1230010 (= res!818606 (validKeyInArray!0 (select (arr!38281 a!3806) from!3184)))))

(declare-fun b!1230011 () Bool)

(declare-fun res!818600 () Bool)

(assert (=> b!1230011 (=> (not res!818600) (not e!698018))))

(declare-datatypes ((List!27232 0))(
  ( (Nil!27229) (Cons!27228 (h!28437 (_ BitVec 64)) (t!40702 List!27232)) )
))
(declare-fun acc!823 () List!27232)

(declare-fun contains!7147 (List!27232 (_ BitVec 64)) Bool)

(assert (=> b!1230011 (= res!818600 (not (contains!7147 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1230012 () Bool)

(declare-fun res!818601 () Bool)

(assert (=> b!1230012 (=> (not res!818601) (not e!698018))))

(declare-fun noDuplicate!1754 (List!27232) Bool)

(assert (=> b!1230012 (= res!818601 (noDuplicate!1754 acc!823))))

(declare-fun b!1230013 () Bool)

(declare-fun e!698019 () Bool)

(declare-fun arrayNoDuplicates!0 (array!79330 (_ BitVec 32) List!27232) Bool)

(assert (=> b!1230013 (= e!698019 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27228 (select (arr!38281 a!3806) from!3184) Nil!27229)))))

(declare-fun b!1230014 () Bool)

(declare-fun res!818608 () Bool)

(assert (=> b!1230014 (=> (not res!818608) (not e!698018))))

(assert (=> b!1230014 (= res!818608 (not (contains!7147 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1230015 () Bool)

(declare-fun res!818603 () Bool)

(assert (=> b!1230015 (=> (not res!818603) (not e!698018))))

(declare-fun arrayContainsKey!0 (array!79330 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1230015 (= res!818603 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1230016 () Bool)

(assert (=> b!1230016 (= e!698018 (not (bvsge (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000)))))

(assert (=> b!1230016 (not (arrayContainsKey!0 a!3806 (select (arr!38281 a!3806) from!3184) (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-datatypes ((Unit!40702 0))(
  ( (Unit!40703) )
))
(declare-fun lt!559256 () Unit!40702)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!79330 (_ BitVec 32) (_ BitVec 64) List!27232) Unit!40702)

(assert (=> b!1230016 (= lt!559256 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (select (arr!38281 a!3806) from!3184) (Cons!27228 (select (arr!38281 a!3806) from!3184) Nil!27229)))))

(assert (=> b!1230016 e!698019))

(declare-fun res!818602 () Bool)

(assert (=> b!1230016 (=> (not res!818602) (not e!698019))))

(assert (=> b!1230016 (= res!818602 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27229))))

(declare-fun lt!559255 () Unit!40702)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79330 List!27232 List!27232 (_ BitVec 32)) Unit!40702)

(assert (=> b!1230016 (= lt!559255 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27229 from!3184))))

(assert (=> b!1230016 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27228 (select (arr!38281 a!3806) from!3184) acc!823))))

(declare-fun b!1230017 () Bool)

(declare-fun res!818609 () Bool)

(assert (=> b!1230017 (=> (not res!818609) (not e!698018))))

(assert (=> b!1230017 (= res!818609 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38818 a!3806)) (bvslt from!3184 (size!38818 a!3806))))))

(declare-fun res!818605 () Bool)

(assert (=> start!102216 (=> (not res!818605) (not e!698018))))

(assert (=> start!102216 (= res!818605 (bvslt (size!38818 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102216 e!698018))

(declare-fun array_inv!29057 (array!79330) Bool)

(assert (=> start!102216 (array_inv!29057 a!3806)))

(assert (=> start!102216 true))

(declare-fun b!1230018 () Bool)

(declare-fun res!818604 () Bool)

(assert (=> b!1230018 (=> (not res!818604) (not e!698018))))

(assert (=> b!1230018 (= res!818604 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(assert (= (and start!102216 res!818605) b!1230009))

(assert (= (and b!1230009 res!818607) b!1230017))

(assert (= (and b!1230017 res!818609) b!1230012))

(assert (= (and b!1230012 res!818601) b!1230014))

(assert (= (and b!1230014 res!818608) b!1230011))

(assert (= (and b!1230011 res!818600) b!1230015))

(assert (= (and b!1230015 res!818603) b!1230018))

(assert (= (and b!1230018 res!818604) b!1230010))

(assert (= (and b!1230010 res!818606) b!1230016))

(assert (= (and b!1230016 res!818602) b!1230013))

(declare-fun m!1134533 () Bool)

(assert (=> b!1230014 m!1134533))

(declare-fun m!1134535 () Bool)

(assert (=> b!1230011 m!1134535))

(declare-fun m!1134537 () Bool)

(assert (=> b!1230015 m!1134537))

(declare-fun m!1134539 () Bool)

(assert (=> b!1230018 m!1134539))

(declare-fun m!1134541 () Bool)

(assert (=> b!1230010 m!1134541))

(assert (=> b!1230010 m!1134541))

(declare-fun m!1134543 () Bool)

(assert (=> b!1230010 m!1134543))

(declare-fun m!1134545 () Bool)

(assert (=> b!1230016 m!1134545))

(declare-fun m!1134547 () Bool)

(assert (=> b!1230016 m!1134547))

(assert (=> b!1230016 m!1134541))

(declare-fun m!1134549 () Bool)

(assert (=> b!1230016 m!1134549))

(assert (=> b!1230016 m!1134541))

(declare-fun m!1134551 () Bool)

(assert (=> b!1230016 m!1134551))

(assert (=> b!1230016 m!1134541))

(declare-fun m!1134553 () Bool)

(assert (=> b!1230016 m!1134553))

(declare-fun m!1134555 () Bool)

(assert (=> start!102216 m!1134555))

(declare-fun m!1134557 () Bool)

(assert (=> b!1230009 m!1134557))

(assert (=> b!1230013 m!1134541))

(declare-fun m!1134559 () Bool)

(assert (=> b!1230013 m!1134559))

(declare-fun m!1134561 () Bool)

(assert (=> b!1230012 m!1134561))

(check-sat (not b!1230012) (not b!1230016) (not b!1230009) (not b!1230018) (not b!1230011) (not b!1230014) (not start!102216) (not b!1230010) (not b!1230015) (not b!1230013))
(check-sat)

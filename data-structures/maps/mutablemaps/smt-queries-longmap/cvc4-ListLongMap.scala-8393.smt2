; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102182 () Bool)

(assert start!102182)

(declare-fun b!1229315 () Bool)

(declare-fun res!817912 () Bool)

(declare-fun e!697819 () Bool)

(assert (=> b!1229315 (=> (not res!817912) (not e!697819))))

(declare-datatypes ((List!27215 0))(
  ( (Nil!27212) (Cons!27211 (h!28420 (_ BitVec 64)) (t!40685 List!27215)) )
))
(declare-fun acc!823 () List!27215)

(declare-fun noDuplicate!1737 (List!27215) Bool)

(assert (=> b!1229315 (= res!817912 (noDuplicate!1737 acc!823))))

(declare-fun b!1229316 () Bool)

(declare-fun res!817913 () Bool)

(declare-fun e!697820 () Bool)

(assert (=> b!1229316 (=> res!817913 e!697820)))

(declare-fun lt!559107 () List!27215)

(assert (=> b!1229316 (= res!817913 (not (noDuplicate!1737 lt!559107)))))

(declare-fun b!1229317 () Bool)

(assert (=> b!1229317 (= e!697820 true)))

(declare-datatypes ((array!79296 0))(
  ( (array!79297 (arr!38264 (Array (_ BitVec 32) (_ BitVec 64))) (size!38801 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79296)

(declare-fun lt!559109 () Bool)

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun contains!7130 (List!27215 (_ BitVec 64)) Bool)

(assert (=> b!1229317 (= lt!559109 (contains!7130 lt!559107 (select (arr!38264 a!3806) from!3184)))))

(declare-fun b!1229318 () Bool)

(declare-fun res!817908 () Bool)

(assert (=> b!1229318 (=> (not res!817908) (not e!697819))))

(assert (=> b!1229318 (= res!817908 (not (contains!7130 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1229319 () Bool)

(assert (=> b!1229319 (= e!697819 (not e!697820))))

(declare-fun res!817916 () Bool)

(assert (=> b!1229319 (=> res!817916 e!697820)))

(assert (=> b!1229319 (= res!817916 (bvslt (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000))))

(assert (=> b!1229319 (= lt!559107 (Cons!27211 (select (arr!38264 a!3806) from!3184) Nil!27212))))

(declare-fun e!697822 () Bool)

(assert (=> b!1229319 e!697822))

(declare-fun res!817914 () Bool)

(assert (=> b!1229319 (=> (not res!817914) (not e!697822))))

(declare-fun arrayNoDuplicates!0 (array!79296 (_ BitVec 32) List!27215) Bool)

(assert (=> b!1229319 (= res!817914 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27212))))

(declare-datatypes ((Unit!40668 0))(
  ( (Unit!40669) )
))
(declare-fun lt!559108 () Unit!40668)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79296 List!27215 List!27215 (_ BitVec 32)) Unit!40668)

(assert (=> b!1229319 (= lt!559108 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27212 from!3184))))

(assert (=> b!1229319 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27211 (select (arr!38264 a!3806) from!3184) acc!823))))

(declare-fun res!817917 () Bool)

(assert (=> start!102182 (=> (not res!817917) (not e!697819))))

(assert (=> start!102182 (= res!817917 (bvslt (size!38801 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102182 e!697819))

(declare-fun array_inv!29040 (array!79296) Bool)

(assert (=> start!102182 (array_inv!29040 a!3806)))

(assert (=> start!102182 true))

(declare-fun b!1229320 () Bool)

(declare-fun res!817918 () Bool)

(assert (=> b!1229320 (=> (not res!817918) (not e!697819))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79296 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1229320 (= res!817918 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1229321 () Bool)

(declare-fun res!817911 () Bool)

(assert (=> b!1229321 (=> res!817911 e!697820)))

(assert (=> b!1229321 (= res!817911 (contains!7130 lt!559107 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1229322 () Bool)

(declare-fun res!817910 () Bool)

(assert (=> b!1229322 (=> (not res!817910) (not e!697819))))

(assert (=> b!1229322 (= res!817910 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1229323 () Bool)

(declare-fun res!817915 () Bool)

(assert (=> b!1229323 (=> (not res!817915) (not e!697819))))

(assert (=> b!1229323 (= res!817915 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38801 a!3806)) (bvslt from!3184 (size!38801 a!3806))))))

(declare-fun b!1229324 () Bool)

(declare-fun res!817919 () Bool)

(assert (=> b!1229324 (=> res!817919 e!697820)))

(assert (=> b!1229324 (= res!817919 (contains!7130 lt!559107 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1229325 () Bool)

(declare-fun res!817907 () Bool)

(assert (=> b!1229325 (=> (not res!817907) (not e!697819))))

(assert (=> b!1229325 (= res!817907 (not (contains!7130 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1229326 () Bool)

(assert (=> b!1229326 (= e!697822 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27211 (select (arr!38264 a!3806) from!3184) Nil!27212)))))

(declare-fun b!1229327 () Bool)

(declare-fun res!817909 () Bool)

(assert (=> b!1229327 (=> (not res!817909) (not e!697819))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1229327 (= res!817909 (validKeyInArray!0 k!2913))))

(declare-fun b!1229328 () Bool)

(declare-fun res!817906 () Bool)

(assert (=> b!1229328 (=> (not res!817906) (not e!697819))))

(assert (=> b!1229328 (= res!817906 (validKeyInArray!0 (select (arr!38264 a!3806) from!3184)))))

(assert (= (and start!102182 res!817917) b!1229327))

(assert (= (and b!1229327 res!817909) b!1229323))

(assert (= (and b!1229323 res!817915) b!1229315))

(assert (= (and b!1229315 res!817912) b!1229325))

(assert (= (and b!1229325 res!817907) b!1229318))

(assert (= (and b!1229318 res!817908) b!1229320))

(assert (= (and b!1229320 res!817918) b!1229322))

(assert (= (and b!1229322 res!817910) b!1229328))

(assert (= (and b!1229328 res!817906) b!1229319))

(assert (= (and b!1229319 res!817914) b!1229326))

(assert (= (and b!1229319 (not res!817916)) b!1229316))

(assert (= (and b!1229316 (not res!817913)) b!1229321))

(assert (= (and b!1229321 (not res!817911)) b!1229324))

(assert (= (and b!1229324 (not res!817919)) b!1229317))

(declare-fun m!1133959 () Bool)

(assert (=> b!1229320 m!1133959))

(declare-fun m!1133961 () Bool)

(assert (=> b!1229317 m!1133961))

(assert (=> b!1229317 m!1133961))

(declare-fun m!1133963 () Bool)

(assert (=> b!1229317 m!1133963))

(assert (=> b!1229319 m!1133961))

(declare-fun m!1133965 () Bool)

(assert (=> b!1229319 m!1133965))

(declare-fun m!1133967 () Bool)

(assert (=> b!1229319 m!1133967))

(declare-fun m!1133969 () Bool)

(assert (=> b!1229319 m!1133969))

(declare-fun m!1133971 () Bool)

(assert (=> b!1229322 m!1133971))

(declare-fun m!1133973 () Bool)

(assert (=> b!1229315 m!1133973))

(declare-fun m!1133975 () Bool)

(assert (=> b!1229316 m!1133975))

(declare-fun m!1133977 () Bool)

(assert (=> b!1229327 m!1133977))

(declare-fun m!1133979 () Bool)

(assert (=> b!1229324 m!1133979))

(declare-fun m!1133981 () Bool)

(assert (=> b!1229325 m!1133981))

(assert (=> b!1229328 m!1133961))

(assert (=> b!1229328 m!1133961))

(declare-fun m!1133983 () Bool)

(assert (=> b!1229328 m!1133983))

(declare-fun m!1133985 () Bool)

(assert (=> start!102182 m!1133985))

(assert (=> b!1229326 m!1133961))

(declare-fun m!1133987 () Bool)

(assert (=> b!1229326 m!1133987))

(declare-fun m!1133989 () Bool)

(assert (=> b!1229321 m!1133989))

(declare-fun m!1133991 () Bool)

(assert (=> b!1229318 m!1133991))

(push 1)

(assert (not b!1229321))

(assert (not b!1229316))

(assert (not b!1229324))

(assert (not start!102182))

(assert (not b!1229315))

(assert (not b!1229320))

(assert (not b!1229322))

(assert (not b!1229317))

(assert (not b!1229318))

(assert (not b!1229325))

(assert (not b!1229328))

(assert (not b!1229327))

(assert (not b!1229319))

(assert (not b!1229326))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


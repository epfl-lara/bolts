; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102466 () Bool)

(assert start!102466)

(declare-fun b!1231917 () Bool)

(declare-fun res!820400 () Bool)

(declare-fun e!698878 () Bool)

(assert (=> b!1231917 (=> (not res!820400) (not e!698878))))

(declare-datatypes ((array!79436 0))(
  ( (array!79437 (arr!38328 (Array (_ BitVec 32) (_ BitVec 64))) (size!38865 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79436)

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!79436 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1231917 (= res!820400 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun res!820406 () Bool)

(assert (=> start!102466 (=> (not res!820406) (not e!698878))))

(assert (=> start!102466 (= res!820406 (bvslt (size!38865 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102466 e!698878))

(declare-fun array_inv!29104 (array!79436) Bool)

(assert (=> start!102466 (array_inv!29104 a!3806)))

(assert (=> start!102466 true))

(declare-fun b!1231918 () Bool)

(assert (=> b!1231918 (= e!698878 (not true))))

(declare-fun e!698877 () Bool)

(assert (=> b!1231918 e!698877))

(declare-fun res!820403 () Bool)

(assert (=> b!1231918 (=> (not res!820403) (not e!698877))))

(declare-datatypes ((List!27279 0))(
  ( (Nil!27276) (Cons!27275 (h!28484 (_ BitVec 64)) (t!40749 List!27279)) )
))
(declare-fun arrayNoDuplicates!0 (array!79436 (_ BitVec 32) List!27279) Bool)

(assert (=> b!1231918 (= res!820403 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27276))))

(declare-fun acc!823 () List!27279)

(declare-datatypes ((Unit!40736 0))(
  ( (Unit!40737) )
))
(declare-fun lt!559415 () Unit!40736)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79436 List!27279 List!27279 (_ BitVec 32)) Unit!40736)

(assert (=> b!1231918 (= lt!559415 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27276 from!3184))))

(assert (=> b!1231918 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27275 (select (arr!38328 a!3806) from!3184) acc!823))))

(declare-fun b!1231919 () Bool)

(declare-fun res!820402 () Bool)

(assert (=> b!1231919 (=> (not res!820402) (not e!698878))))

(declare-fun contains!7194 (List!27279 (_ BitVec 64)) Bool)

(assert (=> b!1231919 (= res!820402 (not (contains!7194 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1231920 () Bool)

(assert (=> b!1231920 (= e!698877 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27275 (select (arr!38328 a!3806) from!3184) Nil!27276)))))

(declare-fun b!1231921 () Bool)

(declare-fun res!820401 () Bool)

(assert (=> b!1231921 (=> (not res!820401) (not e!698878))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1231921 (= res!820401 (validKeyInArray!0 k!2913))))

(declare-fun b!1231922 () Bool)

(declare-fun res!820408 () Bool)

(assert (=> b!1231922 (=> (not res!820408) (not e!698878))))

(assert (=> b!1231922 (= res!820408 (not (contains!7194 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1231923 () Bool)

(declare-fun res!820407 () Bool)

(assert (=> b!1231923 (=> (not res!820407) (not e!698878))))

(assert (=> b!1231923 (= res!820407 (validKeyInArray!0 (select (arr!38328 a!3806) from!3184)))))

(declare-fun b!1231924 () Bool)

(declare-fun res!820405 () Bool)

(assert (=> b!1231924 (=> (not res!820405) (not e!698878))))

(declare-fun noDuplicate!1801 (List!27279) Bool)

(assert (=> b!1231924 (= res!820405 (noDuplicate!1801 acc!823))))

(declare-fun b!1231925 () Bool)

(declare-fun res!820409 () Bool)

(assert (=> b!1231925 (=> (not res!820409) (not e!698878))))

(assert (=> b!1231925 (= res!820409 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1231926 () Bool)

(declare-fun res!820404 () Bool)

(assert (=> b!1231926 (=> (not res!820404) (not e!698878))))

(assert (=> b!1231926 (= res!820404 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38865 a!3806)) (bvslt from!3184 (size!38865 a!3806))))))

(assert (= (and start!102466 res!820406) b!1231921))

(assert (= (and b!1231921 res!820401) b!1231926))

(assert (= (and b!1231926 res!820404) b!1231924))

(assert (= (and b!1231924 res!820405) b!1231922))

(assert (= (and b!1231922 res!820408) b!1231919))

(assert (= (and b!1231919 res!820402) b!1231917))

(assert (= (and b!1231917 res!820400) b!1231925))

(assert (= (and b!1231925 res!820409) b!1231923))

(assert (= (and b!1231923 res!820407) b!1231918))

(assert (= (and b!1231918 res!820403) b!1231920))

(declare-fun m!1136039 () Bool)

(assert (=> b!1231919 m!1136039))

(declare-fun m!1136041 () Bool)

(assert (=> b!1231921 m!1136041))

(declare-fun m!1136043 () Bool)

(assert (=> b!1231917 m!1136043))

(declare-fun m!1136045 () Bool)

(assert (=> b!1231920 m!1136045))

(declare-fun m!1136047 () Bool)

(assert (=> b!1231920 m!1136047))

(declare-fun m!1136049 () Bool)

(assert (=> b!1231925 m!1136049))

(declare-fun m!1136051 () Bool)

(assert (=> b!1231922 m!1136051))

(declare-fun m!1136053 () Bool)

(assert (=> b!1231924 m!1136053))

(declare-fun m!1136055 () Bool)

(assert (=> b!1231918 m!1136055))

(declare-fun m!1136057 () Bool)

(assert (=> b!1231918 m!1136057))

(assert (=> b!1231918 m!1136045))

(declare-fun m!1136059 () Bool)

(assert (=> b!1231918 m!1136059))

(assert (=> b!1231923 m!1136045))

(assert (=> b!1231923 m!1136045))

(declare-fun m!1136061 () Bool)

(assert (=> b!1231923 m!1136061))

(declare-fun m!1136063 () Bool)

(assert (=> start!102466 m!1136063))

(push 1)

(assert (not b!1231924))

(assert (not b!1231923))

(assert (not b!1231925))

(assert (not b!1231918))

(assert (not b!1231921))

(assert (not b!1231920))

(assert (not b!1231922))

(assert (not b!1231917))

(assert (not b!1231919))

(assert (not start!102466))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


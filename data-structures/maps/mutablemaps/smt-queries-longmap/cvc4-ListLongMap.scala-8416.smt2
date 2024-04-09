; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102476 () Bool)

(assert start!102476)

(declare-fun b!1232067 () Bool)

(declare-fun e!698922 () Bool)

(declare-datatypes ((array!79446 0))(
  ( (array!79447 (arr!38333 (Array (_ BitVec 32) (_ BitVec 64))) (size!38870 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79446)

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((List!27284 0))(
  ( (Nil!27281) (Cons!27280 (h!28489 (_ BitVec 64)) (t!40754 List!27284)) )
))
(declare-fun arrayNoDuplicates!0 (array!79446 (_ BitVec 32) List!27284) Bool)

(assert (=> b!1232067 (= e!698922 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27280 (select (arr!38333 a!3806) from!3184) Nil!27281)))))

(declare-fun b!1232068 () Bool)

(declare-fun res!820556 () Bool)

(declare-fun e!698921 () Bool)

(assert (=> b!1232068 (=> (not res!820556) (not e!698921))))

(declare-fun acc!823 () List!27284)

(declare-fun contains!7199 (List!27284 (_ BitVec 64)) Bool)

(assert (=> b!1232068 (= res!820556 (not (contains!7199 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1232069 () Bool)

(declare-fun res!820559 () Bool)

(assert (=> b!1232069 (=> (not res!820559) (not e!698921))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79446 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1232069 (= res!820559 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1232070 () Bool)

(declare-fun res!820558 () Bool)

(assert (=> b!1232070 (=> (not res!820558) (not e!698921))))

(assert (=> b!1232070 (= res!820558 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1232072 () Bool)

(declare-fun res!820554 () Bool)

(assert (=> b!1232072 (=> (not res!820554) (not e!698921))))

(assert (=> b!1232072 (= res!820554 (not (contains!7199 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1232073 () Bool)

(assert (=> b!1232073 (= e!698921 (not true))))

(assert (=> b!1232073 e!698922))

(declare-fun res!820552 () Bool)

(assert (=> b!1232073 (=> (not res!820552) (not e!698922))))

(assert (=> b!1232073 (= res!820552 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27281))))

(declare-datatypes ((Unit!40746 0))(
  ( (Unit!40747) )
))
(declare-fun lt!559430 () Unit!40746)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79446 List!27284 List!27284 (_ BitVec 32)) Unit!40746)

(assert (=> b!1232073 (= lt!559430 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27281 from!3184))))

(assert (=> b!1232073 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27280 (select (arr!38333 a!3806) from!3184) acc!823))))

(declare-fun b!1232074 () Bool)

(declare-fun res!820550 () Bool)

(assert (=> b!1232074 (=> (not res!820550) (not e!698921))))

(declare-fun noDuplicate!1806 (List!27284) Bool)

(assert (=> b!1232074 (= res!820550 (noDuplicate!1806 acc!823))))

(declare-fun b!1232075 () Bool)

(declare-fun res!820553 () Bool)

(assert (=> b!1232075 (=> (not res!820553) (not e!698921))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1232075 (= res!820553 (validKeyInArray!0 k!2913))))

(declare-fun b!1232076 () Bool)

(declare-fun res!820551 () Bool)

(assert (=> b!1232076 (=> (not res!820551) (not e!698921))))

(assert (=> b!1232076 (= res!820551 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38870 a!3806)) (bvslt from!3184 (size!38870 a!3806))))))

(declare-fun b!1232071 () Bool)

(declare-fun res!820555 () Bool)

(assert (=> b!1232071 (=> (not res!820555) (not e!698921))))

(assert (=> b!1232071 (= res!820555 (validKeyInArray!0 (select (arr!38333 a!3806) from!3184)))))

(declare-fun res!820557 () Bool)

(assert (=> start!102476 (=> (not res!820557) (not e!698921))))

(assert (=> start!102476 (= res!820557 (bvslt (size!38870 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102476 e!698921))

(declare-fun array_inv!29109 (array!79446) Bool)

(assert (=> start!102476 (array_inv!29109 a!3806)))

(assert (=> start!102476 true))

(assert (= (and start!102476 res!820557) b!1232075))

(assert (= (and b!1232075 res!820553) b!1232076))

(assert (= (and b!1232076 res!820551) b!1232074))

(assert (= (and b!1232074 res!820550) b!1232072))

(assert (= (and b!1232072 res!820554) b!1232068))

(assert (= (and b!1232068 res!820556) b!1232069))

(assert (= (and b!1232069 res!820559) b!1232070))

(assert (= (and b!1232070 res!820558) b!1232071))

(assert (= (and b!1232071 res!820555) b!1232073))

(assert (= (and b!1232073 res!820552) b!1232067))

(declare-fun m!1136169 () Bool)

(assert (=> b!1232068 m!1136169))

(declare-fun m!1136171 () Bool)

(assert (=> b!1232071 m!1136171))

(assert (=> b!1232071 m!1136171))

(declare-fun m!1136173 () Bool)

(assert (=> b!1232071 m!1136173))

(declare-fun m!1136175 () Bool)

(assert (=> b!1232072 m!1136175))

(declare-fun m!1136177 () Bool)

(assert (=> start!102476 m!1136177))

(declare-fun m!1136179 () Bool)

(assert (=> b!1232073 m!1136179))

(declare-fun m!1136181 () Bool)

(assert (=> b!1232073 m!1136181))

(assert (=> b!1232073 m!1136171))

(declare-fun m!1136183 () Bool)

(assert (=> b!1232073 m!1136183))

(declare-fun m!1136185 () Bool)

(assert (=> b!1232069 m!1136185))

(declare-fun m!1136187 () Bool)

(assert (=> b!1232074 m!1136187))

(declare-fun m!1136189 () Bool)

(assert (=> b!1232075 m!1136189))

(declare-fun m!1136191 () Bool)

(assert (=> b!1232070 m!1136191))

(assert (=> b!1232067 m!1136171))

(declare-fun m!1136193 () Bool)

(assert (=> b!1232067 m!1136193))

(push 1)

(assert (not b!1232074))

(assert (not b!1232075))

(assert (not b!1232069))

(assert (not start!102476))

(assert (not b!1232071))

(assert (not b!1232073))

(assert (not b!1232072))

(assert (not b!1232067))

(assert (not b!1232068))

(assert (not b!1232070))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


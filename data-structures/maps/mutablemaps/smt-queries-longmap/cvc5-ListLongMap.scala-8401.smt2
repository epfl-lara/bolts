; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102226 () Bool)

(assert start!102226)

(declare-fun b!1230159 () Bool)

(declare-fun res!818751 () Bool)

(declare-fun e!698064 () Bool)

(assert (=> b!1230159 (=> (not res!818751) (not e!698064))))

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((array!79340 0))(
  ( (array!79341 (arr!38286 (Array (_ BitVec 32) (_ BitVec 64))) (size!38823 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79340)

(assert (=> b!1230159 (= res!818751 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38823 a!3806)) (bvslt from!3184 (size!38823 a!3806))))))

(declare-fun b!1230160 () Bool)

(assert (=> b!1230160 (= e!698064 (not true))))

(declare-fun arrayContainsKey!0 (array!79340 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1230160 (not (arrayContainsKey!0 a!3806 (select (arr!38286 a!3806) from!3184) (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-datatypes ((Unit!40712 0))(
  ( (Unit!40713) )
))
(declare-fun lt!559286 () Unit!40712)

(declare-datatypes ((List!27237 0))(
  ( (Nil!27234) (Cons!27233 (h!28442 (_ BitVec 64)) (t!40707 List!27237)) )
))
(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!79340 (_ BitVec 32) (_ BitVec 64) List!27237) Unit!40712)

(assert (=> b!1230160 (= lt!559286 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (select (arr!38286 a!3806) from!3184) (Cons!27233 (select (arr!38286 a!3806) from!3184) Nil!27234)))))

(declare-fun e!698063 () Bool)

(assert (=> b!1230160 e!698063))

(declare-fun res!818756 () Bool)

(assert (=> b!1230160 (=> (not res!818756) (not e!698063))))

(declare-fun arrayNoDuplicates!0 (array!79340 (_ BitVec 32) List!27237) Bool)

(assert (=> b!1230160 (= res!818756 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27234))))

(declare-fun acc!823 () List!27237)

(declare-fun lt!559285 () Unit!40712)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79340 List!27237 List!27237 (_ BitVec 32)) Unit!40712)

(assert (=> b!1230160 (= lt!559285 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27234 from!3184))))

(assert (=> b!1230160 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27233 (select (arr!38286 a!3806) from!3184) acc!823))))

(declare-fun b!1230161 () Bool)

(declare-fun res!818757 () Bool)

(assert (=> b!1230161 (=> (not res!818757) (not e!698064))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1230161 (= res!818757 (validKeyInArray!0 k!2913))))

(declare-fun res!818753 () Bool)

(assert (=> start!102226 (=> (not res!818753) (not e!698064))))

(assert (=> start!102226 (= res!818753 (bvslt (size!38823 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102226 e!698064))

(declare-fun array_inv!29062 (array!79340) Bool)

(assert (=> start!102226 (array_inv!29062 a!3806)))

(assert (=> start!102226 true))

(declare-fun b!1230162 () Bool)

(declare-fun res!818759 () Bool)

(assert (=> b!1230162 (=> (not res!818759) (not e!698064))))

(declare-fun noDuplicate!1759 (List!27237) Bool)

(assert (=> b!1230162 (= res!818759 (noDuplicate!1759 acc!823))))

(declare-fun b!1230163 () Bool)

(declare-fun res!818758 () Bool)

(assert (=> b!1230163 (=> (not res!818758) (not e!698064))))

(declare-fun contains!7152 (List!27237 (_ BitVec 64)) Bool)

(assert (=> b!1230163 (= res!818758 (not (contains!7152 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1230164 () Bool)

(declare-fun res!818752 () Bool)

(assert (=> b!1230164 (=> (not res!818752) (not e!698064))))

(assert (=> b!1230164 (= res!818752 (not (contains!7152 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1230165 () Bool)

(declare-fun res!818755 () Bool)

(assert (=> b!1230165 (=> (not res!818755) (not e!698064))))

(assert (=> b!1230165 (= res!818755 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1230166 () Bool)

(assert (=> b!1230166 (= e!698063 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27233 (select (arr!38286 a!3806) from!3184) Nil!27234)))))

(declare-fun b!1230167 () Bool)

(declare-fun res!818750 () Bool)

(assert (=> b!1230167 (=> (not res!818750) (not e!698064))))

(assert (=> b!1230167 (= res!818750 (validKeyInArray!0 (select (arr!38286 a!3806) from!3184)))))

(declare-fun b!1230168 () Bool)

(declare-fun res!818754 () Bool)

(assert (=> b!1230168 (=> (not res!818754) (not e!698064))))

(assert (=> b!1230168 (= res!818754 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(assert (= (and start!102226 res!818753) b!1230161))

(assert (= (and b!1230161 res!818757) b!1230159))

(assert (= (and b!1230159 res!818751) b!1230162))

(assert (= (and b!1230162 res!818759) b!1230163))

(assert (= (and b!1230163 res!818758) b!1230164))

(assert (= (and b!1230164 res!818752) b!1230165))

(assert (= (and b!1230165 res!818755) b!1230168))

(assert (= (and b!1230168 res!818754) b!1230167))

(assert (= (and b!1230167 res!818750) b!1230160))

(assert (= (and b!1230160 res!818756) b!1230166))

(declare-fun m!1134683 () Bool)

(assert (=> b!1230165 m!1134683))

(declare-fun m!1134685 () Bool)

(assert (=> b!1230162 m!1134685))

(declare-fun m!1134687 () Bool)

(assert (=> b!1230164 m!1134687))

(declare-fun m!1134689 () Bool)

(assert (=> b!1230166 m!1134689))

(declare-fun m!1134691 () Bool)

(assert (=> b!1230166 m!1134691))

(declare-fun m!1134693 () Bool)

(assert (=> b!1230168 m!1134693))

(declare-fun m!1134695 () Bool)

(assert (=> b!1230161 m!1134695))

(declare-fun m!1134697 () Bool)

(assert (=> b!1230163 m!1134697))

(declare-fun m!1134699 () Bool)

(assert (=> start!102226 m!1134699))

(assert (=> b!1230167 m!1134689))

(assert (=> b!1230167 m!1134689))

(declare-fun m!1134701 () Bool)

(assert (=> b!1230167 m!1134701))

(declare-fun m!1134703 () Bool)

(assert (=> b!1230160 m!1134703))

(declare-fun m!1134705 () Bool)

(assert (=> b!1230160 m!1134705))

(assert (=> b!1230160 m!1134689))

(declare-fun m!1134707 () Bool)

(assert (=> b!1230160 m!1134707))

(assert (=> b!1230160 m!1134689))

(declare-fun m!1134709 () Bool)

(assert (=> b!1230160 m!1134709))

(assert (=> b!1230160 m!1134689))

(declare-fun m!1134711 () Bool)

(assert (=> b!1230160 m!1134711))

(push 1)

(assert (not b!1230161))

(assert (not b!1230168))

(assert (not b!1230166))

(assert (not b!1230164))

(assert (not b!1230163))

(assert (not b!1230160))

(assert (not b!1230165))

(assert (not b!1230167))

(assert (not b!1230162))

(assert (not start!102226))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


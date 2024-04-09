; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102414 () Bool)

(assert start!102414)

(declare-fun b!1231630 () Bool)

(declare-fun res!820150 () Bool)

(declare-fun e!698713 () Bool)

(assert (=> b!1231630 (=> (not res!820150) (not e!698713))))

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((array!79423 0))(
  ( (array!79424 (arr!38323 (Array (_ BitVec 32) (_ BitVec 64))) (size!38860 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79423)

(assert (=> b!1231630 (= res!820150 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38860 a!3806)) (bvslt from!3184 (size!38860 a!3806))))))

(declare-fun b!1231631 () Bool)

(declare-fun res!820151 () Bool)

(assert (=> b!1231631 (=> (not res!820151) (not e!698713))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1231631 (= res!820151 (validKeyInArray!0 (select (arr!38323 a!3806) from!3184)))))

(declare-fun b!1231632 () Bool)

(declare-fun res!820149 () Bool)

(assert (=> b!1231632 (=> (not res!820149) (not e!698713))))

(declare-fun k0!2913 () (_ BitVec 64))

(assert (=> b!1231632 (= res!820149 (validKeyInArray!0 k0!2913))))

(declare-fun b!1231634 () Bool)

(assert (=> b!1231634 (= e!698713 (not true))))

(declare-datatypes ((List!27274 0))(
  ( (Nil!27271) (Cons!27270 (h!28479 (_ BitVec 64)) (t!40744 List!27274)) )
))
(declare-fun arrayNoDuplicates!0 (array!79423 (_ BitVec 32) List!27274) Bool)

(assert (=> b!1231634 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27271)))

(declare-datatypes ((Unit!40726 0))(
  ( (Unit!40727) )
))
(declare-fun lt!559379 () Unit!40726)

(declare-fun acc!823 () List!27274)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79423 List!27274 List!27274 (_ BitVec 32)) Unit!40726)

(assert (=> b!1231634 (= lt!559379 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27271 from!3184))))

(assert (=> b!1231634 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27270 (select (arr!38323 a!3806) from!3184) acc!823))))

(declare-fun b!1231635 () Bool)

(declare-fun res!820152 () Bool)

(assert (=> b!1231635 (=> (not res!820152) (not e!698713))))

(declare-fun arrayContainsKey!0 (array!79423 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1231635 (= res!820152 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1231636 () Bool)

(declare-fun res!820154 () Bool)

(assert (=> b!1231636 (=> (not res!820154) (not e!698713))))

(declare-fun contains!7189 (List!27274 (_ BitVec 64)) Bool)

(assert (=> b!1231636 (= res!820154 (not (contains!7189 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1231637 () Bool)

(declare-fun res!820153 () Bool)

(assert (=> b!1231637 (=> (not res!820153) (not e!698713))))

(assert (=> b!1231637 (= res!820153 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1231638 () Bool)

(declare-fun res!820155 () Bool)

(assert (=> b!1231638 (=> (not res!820155) (not e!698713))))

(assert (=> b!1231638 (= res!820155 (not (contains!7189 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!820156 () Bool)

(assert (=> start!102414 (=> (not res!820156) (not e!698713))))

(assert (=> start!102414 (= res!820156 (bvslt (size!38860 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102414 e!698713))

(declare-fun array_inv!29099 (array!79423) Bool)

(assert (=> start!102414 (array_inv!29099 a!3806)))

(assert (=> start!102414 true))

(declare-fun b!1231633 () Bool)

(declare-fun res!820157 () Bool)

(assert (=> b!1231633 (=> (not res!820157) (not e!698713))))

(declare-fun noDuplicate!1796 (List!27274) Bool)

(assert (=> b!1231633 (= res!820157 (noDuplicate!1796 acc!823))))

(assert (= (and start!102414 res!820156) b!1231632))

(assert (= (and b!1231632 res!820149) b!1231630))

(assert (= (and b!1231630 res!820150) b!1231633))

(assert (= (and b!1231633 res!820157) b!1231636))

(assert (= (and b!1231636 res!820154) b!1231638))

(assert (= (and b!1231638 res!820155) b!1231635))

(assert (= (and b!1231635 res!820152) b!1231637))

(assert (= (and b!1231637 res!820153) b!1231631))

(assert (= (and b!1231631 res!820151) b!1231634))

(declare-fun m!1135799 () Bool)

(assert (=> b!1231632 m!1135799))

(declare-fun m!1135801 () Bool)

(assert (=> b!1231635 m!1135801))

(declare-fun m!1135803 () Bool)

(assert (=> b!1231634 m!1135803))

(declare-fun m!1135805 () Bool)

(assert (=> b!1231634 m!1135805))

(declare-fun m!1135807 () Bool)

(assert (=> b!1231634 m!1135807))

(declare-fun m!1135809 () Bool)

(assert (=> b!1231634 m!1135809))

(declare-fun m!1135811 () Bool)

(assert (=> start!102414 m!1135811))

(declare-fun m!1135813 () Bool)

(assert (=> b!1231638 m!1135813))

(declare-fun m!1135815 () Bool)

(assert (=> b!1231636 m!1135815))

(declare-fun m!1135817 () Bool)

(assert (=> b!1231633 m!1135817))

(declare-fun m!1135819 () Bool)

(assert (=> b!1231637 m!1135819))

(assert (=> b!1231631 m!1135807))

(assert (=> b!1231631 m!1135807))

(declare-fun m!1135821 () Bool)

(assert (=> b!1231631 m!1135821))

(check-sat (not b!1231633) (not b!1231636) (not b!1231637) (not b!1231632) (not b!1231631) (not start!102414) (not b!1231634) (not b!1231635) (not b!1231638))
(check-sat)

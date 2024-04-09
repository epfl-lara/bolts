; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102198 () Bool)

(assert start!102198)

(declare-fun b!1229651 () Bool)

(declare-fun res!818247 () Bool)

(declare-fun e!697915 () Bool)

(assert (=> b!1229651 (=> (not res!818247) (not e!697915))))

(declare-datatypes ((List!27223 0))(
  ( (Nil!27220) (Cons!27219 (h!28428 (_ BitVec 64)) (t!40693 List!27223)) )
))
(declare-fun acc!823 () List!27223)

(declare-fun contains!7138 (List!27223 (_ BitVec 64)) Bool)

(assert (=> b!1229651 (= res!818247 (not (contains!7138 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1229652 () Bool)

(declare-fun res!818244 () Bool)

(assert (=> b!1229652 (=> (not res!818244) (not e!697915))))

(declare-datatypes ((array!79312 0))(
  ( (array!79313 (arr!38272 (Array (_ BitVec 32) (_ BitVec 64))) (size!38809 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79312)

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79312 (_ BitVec 32) List!27223) Bool)

(assert (=> b!1229652 (= res!818244 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1229653 () Bool)

(declare-fun res!818243 () Bool)

(declare-fun e!697916 () Bool)

(assert (=> b!1229653 (=> res!818243 e!697916)))

(declare-fun lt!559179 () List!27223)

(declare-fun noDuplicate!1745 (List!27223) Bool)

(assert (=> b!1229653 (= res!818243 (not (noDuplicate!1745 lt!559179)))))

(declare-fun b!1229654 () Bool)

(declare-fun res!818249 () Bool)

(assert (=> b!1229654 (=> (not res!818249) (not e!697915))))

(assert (=> b!1229654 (= res!818249 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38809 a!3806)) (bvslt from!3184 (size!38809 a!3806))))))

(declare-fun b!1229655 () Bool)

(declare-fun e!697918 () Bool)

(assert (=> b!1229655 (= e!697918 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27219 (select (arr!38272 a!3806) from!3184) Nil!27220)))))

(declare-fun b!1229656 () Bool)

(assert (=> b!1229656 (= e!697915 (not e!697916))))

(declare-fun res!818248 () Bool)

(assert (=> b!1229656 (=> res!818248 e!697916)))

(assert (=> b!1229656 (= res!818248 (bvslt (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000))))

(assert (=> b!1229656 (= lt!559179 (Cons!27219 (select (arr!38272 a!3806) from!3184) Nil!27220))))

(assert (=> b!1229656 e!697918))

(declare-fun res!818254 () Bool)

(assert (=> b!1229656 (=> (not res!818254) (not e!697918))))

(assert (=> b!1229656 (= res!818254 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27220))))

(declare-datatypes ((Unit!40684 0))(
  ( (Unit!40685) )
))
(declare-fun lt!559181 () Unit!40684)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79312 List!27223 List!27223 (_ BitVec 32)) Unit!40684)

(assert (=> b!1229656 (= lt!559181 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27220 from!3184))))

(assert (=> b!1229656 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27219 (select (arr!38272 a!3806) from!3184) acc!823))))

(declare-fun res!818255 () Bool)

(assert (=> start!102198 (=> (not res!818255) (not e!697915))))

(assert (=> start!102198 (= res!818255 (bvslt (size!38809 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102198 e!697915))

(declare-fun array_inv!29048 (array!79312) Bool)

(assert (=> start!102198 (array_inv!29048 a!3806)))

(assert (=> start!102198 true))

(declare-fun b!1229657 () Bool)

(declare-fun res!818253 () Bool)

(assert (=> b!1229657 (=> (not res!818253) (not e!697915))))

(assert (=> b!1229657 (= res!818253 (noDuplicate!1745 acc!823))))

(declare-fun b!1229658 () Bool)

(declare-fun res!818242 () Bool)

(assert (=> b!1229658 (=> res!818242 e!697916)))

(assert (=> b!1229658 (= res!818242 (contains!7138 lt!559179 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1229659 () Bool)

(declare-fun res!818252 () Bool)

(assert (=> b!1229659 (=> res!818252 e!697916)))

(assert (=> b!1229659 (= res!818252 (contains!7138 lt!559179 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1229660 () Bool)

(declare-fun res!818245 () Bool)

(assert (=> b!1229660 (=> (not res!818245) (not e!697915))))

(declare-fun k0!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79312 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1229660 (= res!818245 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1229661 () Bool)

(declare-fun res!818251 () Bool)

(assert (=> b!1229661 (=> (not res!818251) (not e!697915))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1229661 (= res!818251 (validKeyInArray!0 k0!2913))))

(declare-fun b!1229662 () Bool)

(declare-fun res!818250 () Bool)

(assert (=> b!1229662 (=> (not res!818250) (not e!697915))))

(assert (=> b!1229662 (= res!818250 (not (contains!7138 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1229663 () Bool)

(assert (=> b!1229663 (= e!697916 true)))

(declare-fun lt!559180 () Bool)

(assert (=> b!1229663 (= lt!559180 (contains!7138 lt!559179 (select (arr!38272 a!3806) from!3184)))))

(declare-fun b!1229664 () Bool)

(declare-fun res!818246 () Bool)

(assert (=> b!1229664 (=> (not res!818246) (not e!697915))))

(assert (=> b!1229664 (= res!818246 (validKeyInArray!0 (select (arr!38272 a!3806) from!3184)))))

(assert (= (and start!102198 res!818255) b!1229661))

(assert (= (and b!1229661 res!818251) b!1229654))

(assert (= (and b!1229654 res!818249) b!1229657))

(assert (= (and b!1229657 res!818253) b!1229662))

(assert (= (and b!1229662 res!818250) b!1229651))

(assert (= (and b!1229651 res!818247) b!1229660))

(assert (= (and b!1229660 res!818245) b!1229652))

(assert (= (and b!1229652 res!818244) b!1229664))

(assert (= (and b!1229664 res!818246) b!1229656))

(assert (= (and b!1229656 res!818254) b!1229655))

(assert (= (and b!1229656 (not res!818248)) b!1229653))

(assert (= (and b!1229653 (not res!818243)) b!1229659))

(assert (= (and b!1229659 (not res!818252)) b!1229658))

(assert (= (and b!1229658 (not res!818242)) b!1229663))

(declare-fun m!1134231 () Bool)

(assert (=> b!1229660 m!1134231))

(declare-fun m!1134233 () Bool)

(assert (=> b!1229656 m!1134233))

(declare-fun m!1134235 () Bool)

(assert (=> b!1229656 m!1134235))

(declare-fun m!1134237 () Bool)

(assert (=> b!1229656 m!1134237))

(declare-fun m!1134239 () Bool)

(assert (=> b!1229656 m!1134239))

(declare-fun m!1134241 () Bool)

(assert (=> b!1229662 m!1134241))

(declare-fun m!1134243 () Bool)

(assert (=> b!1229657 m!1134243))

(assert (=> b!1229655 m!1134233))

(declare-fun m!1134245 () Bool)

(assert (=> b!1229655 m!1134245))

(declare-fun m!1134247 () Bool)

(assert (=> b!1229658 m!1134247))

(assert (=> b!1229663 m!1134233))

(assert (=> b!1229663 m!1134233))

(declare-fun m!1134249 () Bool)

(assert (=> b!1229663 m!1134249))

(assert (=> b!1229664 m!1134233))

(assert (=> b!1229664 m!1134233))

(declare-fun m!1134251 () Bool)

(assert (=> b!1229664 m!1134251))

(declare-fun m!1134253 () Bool)

(assert (=> b!1229651 m!1134253))

(declare-fun m!1134255 () Bool)

(assert (=> b!1229652 m!1134255))

(declare-fun m!1134257 () Bool)

(assert (=> b!1229653 m!1134257))

(declare-fun m!1134259 () Bool)

(assert (=> b!1229661 m!1134259))

(declare-fun m!1134261 () Bool)

(assert (=> b!1229659 m!1134261))

(declare-fun m!1134263 () Bool)

(assert (=> start!102198 m!1134263))

(check-sat (not b!1229660) (not b!1229653) (not b!1229652) (not b!1229655) (not b!1229656) (not b!1229657) (not b!1229658) (not b!1229664) (not b!1229662) (not b!1229663) (not b!1229661) (not b!1229651) (not b!1229659) (not start!102198))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102180 () Bool)

(assert start!102180)

(declare-fun b!1229273 () Bool)

(declare-fun res!817875 () Bool)

(declare-fun e!697810 () Bool)

(assert (=> b!1229273 (=> res!817875 e!697810)))

(declare-datatypes ((List!27214 0))(
  ( (Nil!27211) (Cons!27210 (h!28419 (_ BitVec 64)) (t!40684 List!27214)) )
))
(declare-fun lt!559100 () List!27214)

(declare-fun contains!7129 (List!27214 (_ BitVec 64)) Bool)

(assert (=> b!1229273 (= res!817875 (contains!7129 lt!559100 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1229274 () Bool)

(declare-fun res!817865 () Bool)

(declare-fun e!697808 () Bool)

(assert (=> b!1229274 (=> (not res!817865) (not e!697808))))

(declare-datatypes ((array!79294 0))(
  ( (array!79295 (arr!38263 (Array (_ BitVec 32) (_ BitVec 64))) (size!38800 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79294)

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1229274 (= res!817865 (validKeyInArray!0 (select (arr!38263 a!3806) from!3184)))))

(declare-fun res!817871 () Bool)

(assert (=> start!102180 (=> (not res!817871) (not e!697808))))

(assert (=> start!102180 (= res!817871 (bvslt (size!38800 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102180 e!697808))

(declare-fun array_inv!29039 (array!79294) Bool)

(assert (=> start!102180 (array_inv!29039 a!3806)))

(assert (=> start!102180 true))

(declare-fun b!1229275 () Bool)

(declare-fun res!817864 () Bool)

(assert (=> b!1229275 (=> (not res!817864) (not e!697808))))

(declare-fun k0!2913 () (_ BitVec 64))

(assert (=> b!1229275 (= res!817864 (validKeyInArray!0 k0!2913))))

(declare-fun b!1229276 () Bool)

(declare-fun res!817873 () Bool)

(assert (=> b!1229276 (=> (not res!817873) (not e!697808))))

(declare-fun acc!823 () List!27214)

(declare-fun arrayNoDuplicates!0 (array!79294 (_ BitVec 32) List!27214) Bool)

(assert (=> b!1229276 (= res!817873 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1229277 () Bool)

(assert (=> b!1229277 (= e!697810 true)))

(declare-fun lt!559098 () Bool)

(assert (=> b!1229277 (= lt!559098 (contains!7129 lt!559100 (select (arr!38263 a!3806) from!3184)))))

(declare-fun b!1229278 () Bool)

(declare-fun res!817869 () Bool)

(assert (=> b!1229278 (=> (not res!817869) (not e!697808))))

(declare-fun arrayContainsKey!0 (array!79294 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1229278 (= res!817869 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1229279 () Bool)

(declare-fun res!817872 () Bool)

(assert (=> b!1229279 (=> res!817872 e!697810)))

(declare-fun noDuplicate!1736 (List!27214) Bool)

(assert (=> b!1229279 (= res!817872 (not (noDuplicate!1736 lt!559100)))))

(declare-fun b!1229280 () Bool)

(assert (=> b!1229280 (= e!697808 (not e!697810))))

(declare-fun res!817877 () Bool)

(assert (=> b!1229280 (=> res!817877 e!697810)))

(assert (=> b!1229280 (= res!817877 (bvslt (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000))))

(assert (=> b!1229280 (= lt!559100 (Cons!27210 (select (arr!38263 a!3806) from!3184) Nil!27211))))

(declare-fun e!697807 () Bool)

(assert (=> b!1229280 e!697807))

(declare-fun res!817876 () Bool)

(assert (=> b!1229280 (=> (not res!817876) (not e!697807))))

(assert (=> b!1229280 (= res!817876 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27211))))

(declare-datatypes ((Unit!40666 0))(
  ( (Unit!40667) )
))
(declare-fun lt!559099 () Unit!40666)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79294 List!27214 List!27214 (_ BitVec 32)) Unit!40666)

(assert (=> b!1229280 (= lt!559099 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27211 from!3184))))

(assert (=> b!1229280 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27210 (select (arr!38263 a!3806) from!3184) acc!823))))

(declare-fun b!1229281 () Bool)

(declare-fun res!817868 () Bool)

(assert (=> b!1229281 (=> (not res!817868) (not e!697808))))

(assert (=> b!1229281 (= res!817868 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38800 a!3806)) (bvslt from!3184 (size!38800 a!3806))))))

(declare-fun b!1229282 () Bool)

(declare-fun res!817866 () Bool)

(assert (=> b!1229282 (=> res!817866 e!697810)))

(assert (=> b!1229282 (= res!817866 (contains!7129 lt!559100 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1229283 () Bool)

(assert (=> b!1229283 (= e!697807 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27210 (select (arr!38263 a!3806) from!3184) Nil!27211)))))

(declare-fun b!1229284 () Bool)

(declare-fun res!817870 () Bool)

(assert (=> b!1229284 (=> (not res!817870) (not e!697808))))

(assert (=> b!1229284 (= res!817870 (not (contains!7129 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1229285 () Bool)

(declare-fun res!817867 () Bool)

(assert (=> b!1229285 (=> (not res!817867) (not e!697808))))

(assert (=> b!1229285 (= res!817867 (noDuplicate!1736 acc!823))))

(declare-fun b!1229286 () Bool)

(declare-fun res!817874 () Bool)

(assert (=> b!1229286 (=> (not res!817874) (not e!697808))))

(assert (=> b!1229286 (= res!817874 (not (contains!7129 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!102180 res!817871) b!1229275))

(assert (= (and b!1229275 res!817864) b!1229281))

(assert (= (and b!1229281 res!817868) b!1229285))

(assert (= (and b!1229285 res!817867) b!1229286))

(assert (= (and b!1229286 res!817874) b!1229284))

(assert (= (and b!1229284 res!817870) b!1229278))

(assert (= (and b!1229278 res!817869) b!1229276))

(assert (= (and b!1229276 res!817873) b!1229274))

(assert (= (and b!1229274 res!817865) b!1229280))

(assert (= (and b!1229280 res!817876) b!1229283))

(assert (= (and b!1229280 (not res!817877)) b!1229279))

(assert (= (and b!1229279 (not res!817872)) b!1229282))

(assert (= (and b!1229282 (not res!817866)) b!1229273))

(assert (= (and b!1229273 (not res!817875)) b!1229277))

(declare-fun m!1133925 () Bool)

(assert (=> b!1229285 m!1133925))

(declare-fun m!1133927 () Bool)

(assert (=> b!1229273 m!1133927))

(declare-fun m!1133929 () Bool)

(assert (=> b!1229276 m!1133929))

(declare-fun m!1133931 () Bool)

(assert (=> b!1229275 m!1133931))

(declare-fun m!1133933 () Bool)

(assert (=> b!1229284 m!1133933))

(declare-fun m!1133935 () Bool)

(assert (=> b!1229279 m!1133935))

(declare-fun m!1133937 () Bool)

(assert (=> b!1229283 m!1133937))

(declare-fun m!1133939 () Bool)

(assert (=> b!1229283 m!1133939))

(declare-fun m!1133941 () Bool)

(assert (=> start!102180 m!1133941))

(declare-fun m!1133943 () Bool)

(assert (=> b!1229286 m!1133943))

(declare-fun m!1133945 () Bool)

(assert (=> b!1229278 m!1133945))

(assert (=> b!1229280 m!1133937))

(declare-fun m!1133947 () Bool)

(assert (=> b!1229280 m!1133947))

(declare-fun m!1133949 () Bool)

(assert (=> b!1229280 m!1133949))

(declare-fun m!1133951 () Bool)

(assert (=> b!1229280 m!1133951))

(assert (=> b!1229277 m!1133937))

(assert (=> b!1229277 m!1133937))

(declare-fun m!1133953 () Bool)

(assert (=> b!1229277 m!1133953))

(assert (=> b!1229274 m!1133937))

(assert (=> b!1229274 m!1133937))

(declare-fun m!1133955 () Bool)

(assert (=> b!1229274 m!1133955))

(declare-fun m!1133957 () Bool)

(assert (=> b!1229282 m!1133957))

(check-sat (not b!1229276) (not b!1229277) (not b!1229273) (not b!1229284) (not start!102180) (not b!1229280) (not b!1229282) (not b!1229285) (not b!1229283) (not b!1229274) (not b!1229286) (not b!1229275) (not b!1229279) (not b!1229278))
(check-sat)

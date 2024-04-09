; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102682 () Bool)

(assert start!102682)

(declare-fun b!1233813 () Bool)

(declare-fun res!822104 () Bool)

(declare-fun e!699908 () Bool)

(assert (=> b!1233813 (=> (not res!822104) (not e!699908))))

(declare-datatypes ((List!27313 0))(
  ( (Nil!27310) (Cons!27309 (h!28518 (_ BitVec 64)) (t!40783 List!27313)) )
))
(declare-fun acc!823 () List!27313)

(declare-fun contains!7228 (List!27313 (_ BitVec 64)) Bool)

(assert (=> b!1233813 (= res!822104 (not (contains!7228 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1233814 () Bool)

(declare-fun res!822108 () Bool)

(assert (=> b!1233814 (=> (not res!822108) (not e!699908))))

(declare-fun noDuplicate!1835 (List!27313) Bool)

(assert (=> b!1233814 (= res!822108 (noDuplicate!1835 acc!823))))

(declare-fun b!1233816 () Bool)

(declare-fun res!822107 () Bool)

(assert (=> b!1233816 (=> (not res!822107) (not e!699908))))

(declare-datatypes ((array!79513 0))(
  ( (array!79514 (arr!38362 (Array (_ BitVec 32) (_ BitVec 64))) (size!38899 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79513)

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1233816 (= res!822107 (validKeyInArray!0 (select (arr!38362 a!3806) from!3184)))))

(declare-fun b!1233817 () Bool)

(declare-fun e!699909 () Bool)

(declare-fun arrayNoDuplicates!0 (array!79513 (_ BitVec 32) List!27313) Bool)

(assert (=> b!1233817 (= e!699909 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27309 (select (arr!38362 a!3806) from!3184) Nil!27310)))))

(declare-fun b!1233818 () Bool)

(declare-fun res!822109 () Bool)

(assert (=> b!1233818 (=> (not res!822109) (not e!699908))))

(assert (=> b!1233818 (= res!822109 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1233819 () Bool)

(assert (=> b!1233819 (= e!699908 (not true))))

(declare-fun arrayContainsKey!0 (array!79513 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1233819 (not (arrayContainsKey!0 a!3806 (select (arr!38362 a!3806) from!3184) (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-datatypes ((Unit!40804 0))(
  ( (Unit!40805) )
))
(declare-fun lt!559704 () Unit!40804)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!79513 (_ BitVec 32) (_ BitVec 64) List!27313) Unit!40804)

(assert (=> b!1233819 (= lt!559704 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (select (arr!38362 a!3806) from!3184) (Cons!27309 (select (arr!38362 a!3806) from!3184) Nil!27310)))))

(assert (=> b!1233819 e!699909))

(declare-fun res!822110 () Bool)

(assert (=> b!1233819 (=> (not res!822110) (not e!699909))))

(assert (=> b!1233819 (= res!822110 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27310))))

(declare-fun lt!559705 () Unit!40804)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79513 List!27313 List!27313 (_ BitVec 32)) Unit!40804)

(assert (=> b!1233819 (= lt!559705 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27310 from!3184))))

(assert (=> b!1233819 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27309 (select (arr!38362 a!3806) from!3184) acc!823))))

(declare-fun b!1233820 () Bool)

(declare-fun res!822106 () Bool)

(assert (=> b!1233820 (=> (not res!822106) (not e!699908))))

(assert (=> b!1233820 (= res!822106 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38899 a!3806)) (bvslt from!3184 (size!38899 a!3806))))))

(declare-fun b!1233821 () Bool)

(declare-fun res!822113 () Bool)

(assert (=> b!1233821 (=> (not res!822113) (not e!699908))))

(assert (=> b!1233821 (= res!822113 (not (contains!7228 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1233822 () Bool)

(declare-fun res!822105 () Bool)

(assert (=> b!1233822 (=> (not res!822105) (not e!699908))))

(declare-fun k0!2913 () (_ BitVec 64))

(assert (=> b!1233822 (= res!822105 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun res!822111 () Bool)

(assert (=> start!102682 (=> (not res!822111) (not e!699908))))

(assert (=> start!102682 (= res!822111 (bvslt (size!38899 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102682 e!699908))

(declare-fun array_inv!29138 (array!79513) Bool)

(assert (=> start!102682 (array_inv!29138 a!3806)))

(assert (=> start!102682 true))

(declare-fun b!1233815 () Bool)

(declare-fun res!822112 () Bool)

(assert (=> b!1233815 (=> (not res!822112) (not e!699908))))

(assert (=> b!1233815 (= res!822112 (validKeyInArray!0 k0!2913))))

(assert (= (and start!102682 res!822111) b!1233815))

(assert (= (and b!1233815 res!822112) b!1233820))

(assert (= (and b!1233820 res!822106) b!1233814))

(assert (= (and b!1233814 res!822108) b!1233813))

(assert (= (and b!1233813 res!822104) b!1233821))

(assert (= (and b!1233821 res!822113) b!1233822))

(assert (= (and b!1233822 res!822105) b!1233818))

(assert (= (and b!1233818 res!822109) b!1233816))

(assert (= (and b!1233816 res!822107) b!1233819))

(assert (= (and b!1233819 res!822110) b!1233817))

(declare-fun m!1137923 () Bool)

(assert (=> b!1233817 m!1137923))

(declare-fun m!1137925 () Bool)

(assert (=> b!1233817 m!1137925))

(declare-fun m!1137927 () Bool)

(assert (=> start!102682 m!1137927))

(declare-fun m!1137929 () Bool)

(assert (=> b!1233818 m!1137929))

(declare-fun m!1137931 () Bool)

(assert (=> b!1233813 m!1137931))

(declare-fun m!1137933 () Bool)

(assert (=> b!1233822 m!1137933))

(declare-fun m!1137935 () Bool)

(assert (=> b!1233821 m!1137935))

(declare-fun m!1137937 () Bool)

(assert (=> b!1233814 m!1137937))

(declare-fun m!1137939 () Bool)

(assert (=> b!1233819 m!1137939))

(declare-fun m!1137941 () Bool)

(assert (=> b!1233819 m!1137941))

(assert (=> b!1233819 m!1137923))

(declare-fun m!1137943 () Bool)

(assert (=> b!1233819 m!1137943))

(assert (=> b!1233819 m!1137923))

(declare-fun m!1137945 () Bool)

(assert (=> b!1233819 m!1137945))

(assert (=> b!1233819 m!1137923))

(declare-fun m!1137947 () Bool)

(assert (=> b!1233819 m!1137947))

(assert (=> b!1233816 m!1137923))

(assert (=> b!1233816 m!1137923))

(declare-fun m!1137949 () Bool)

(assert (=> b!1233816 m!1137949))

(declare-fun m!1137951 () Bool)

(assert (=> b!1233815 m!1137951))

(check-sat (not start!102682) (not b!1233813) (not b!1233816) (not b!1233819) (not b!1233817) (not b!1233818) (not b!1233822) (not b!1233815) (not b!1233814) (not b!1233821))

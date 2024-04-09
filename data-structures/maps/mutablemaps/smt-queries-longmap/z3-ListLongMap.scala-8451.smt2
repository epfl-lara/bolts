; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102880 () Bool)

(assert start!102880)

(declare-fun b!1236053 () Bool)

(declare-fun e!700720 () Bool)

(assert (=> b!1236053 (= e!700720 (not true))))

(declare-datatypes ((array!79666 0))(
  ( (array!79667 (arr!38437 (Array (_ BitVec 32) (_ BitVec 64))) (size!38974 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79666)

(declare-fun k0!2925 () (_ BitVec 64))

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!79666 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1236053 (not (arrayContainsKey!0 a!3835 k0!2925 (bvadd #b00000000000000000000000000000001 from!3213)))))

(declare-datatypes ((Unit!40943 0))(
  ( (Unit!40944) )
))
(declare-fun lt!560634 () Unit!40943)

(declare-datatypes ((List!27388 0))(
  ( (Nil!27385) (Cons!27384 (h!28593 (_ BitVec 64)) (t!40858 List!27388)) )
))
(declare-fun acc!846 () List!27388)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!79666 (_ BitVec 32) (_ BitVec 64) List!27388) Unit!40943)

(assert (=> b!1236053 (= lt!560634 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) k0!2925 acc!846))))

(declare-fun b!1236054 () Bool)

(declare-fun res!824176 () Bool)

(declare-fun e!700717 () Bool)

(assert (=> b!1236054 (=> (not res!824176) (not e!700717))))

(assert (=> b!1236054 (= res!824176 (not (= from!3213 (bvsub (size!38974 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1236055 () Bool)

(declare-fun e!700718 () Unit!40943)

(declare-fun Unit!40945 () Unit!40943)

(assert (=> b!1236055 (= e!700718 Unit!40945)))

(declare-fun b!1236056 () Bool)

(declare-fun res!824179 () Bool)

(assert (=> b!1236056 (=> (not res!824179) (not e!700717))))

(declare-fun contains!7303 (List!27388 (_ BitVec 64)) Bool)

(assert (=> b!1236056 (= res!824179 (not (contains!7303 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236057 () Bool)

(declare-fun res!824175 () Bool)

(assert (=> b!1236057 (=> (not res!824175) (not e!700720))))

(declare-fun arrayNoDuplicates!0 (array!79666 (_ BitVec 32) List!27388) Bool)

(assert (=> b!1236057 (= res!824175 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846))))

(declare-fun b!1236058 () Bool)

(declare-fun res!824177 () Bool)

(assert (=> b!1236058 (=> (not res!824177) (not e!700717))))

(assert (=> b!1236058 (= res!824177 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1236059 () Bool)

(declare-fun res!824180 () Bool)

(assert (=> b!1236059 (=> (not res!824180) (not e!700717))))

(assert (=> b!1236059 (= res!824180 (not (contains!7303 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236060 () Bool)

(declare-fun res!824173 () Bool)

(assert (=> b!1236060 (=> (not res!824173) (not e!700717))))

(declare-fun noDuplicate!1910 (List!27388) Bool)

(assert (=> b!1236060 (= res!824173 (noDuplicate!1910 acc!846))))

(declare-fun res!824174 () Bool)

(assert (=> start!102880 (=> (not res!824174) (not e!700717))))

(assert (=> start!102880 (= res!824174 (and (bvslt (size!38974 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38974 a!3835))))))

(assert (=> start!102880 e!700717))

(declare-fun array_inv!29213 (array!79666) Bool)

(assert (=> start!102880 (array_inv!29213 a!3835)))

(assert (=> start!102880 true))

(declare-fun b!1236061 () Bool)

(declare-fun lt!560633 () Unit!40943)

(assert (=> b!1236061 (= e!700718 lt!560633)))

(declare-fun lt!560632 () List!27388)

(assert (=> b!1236061 (= lt!560632 (Cons!27384 (select (arr!38437 a!3835) from!3213) acc!846))))

(declare-fun lt!560630 () Unit!40943)

(declare-fun lemmaListSubSeqRefl!0 (List!27388) Unit!40943)

(assert (=> b!1236061 (= lt!560630 (lemmaListSubSeqRefl!0 lt!560632))))

(declare-fun subseq!558 (List!27388 List!27388) Bool)

(assert (=> b!1236061 (subseq!558 lt!560632 lt!560632)))

(declare-fun lt!560635 () Unit!40943)

(declare-fun subseqTail!51 (List!27388 List!27388) Unit!40943)

(assert (=> b!1236061 (= lt!560635 (subseqTail!51 lt!560632 lt!560632))))

(assert (=> b!1236061 (subseq!558 acc!846 lt!560632)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79666 List!27388 List!27388 (_ BitVec 32)) Unit!40943)

(assert (=> b!1236061 (= lt!560633 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!560632 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(assert (=> b!1236061 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(declare-fun b!1236062 () Bool)

(declare-fun res!824178 () Bool)

(assert (=> b!1236062 (=> (not res!824178) (not e!700717))))

(assert (=> b!1236062 (= res!824178 (contains!7303 acc!846 k0!2925))))

(declare-fun b!1236063 () Bool)

(assert (=> b!1236063 (= e!700717 e!700720)))

(declare-fun res!824172 () Bool)

(assert (=> b!1236063 (=> (not res!824172) (not e!700720))))

(assert (=> b!1236063 (= res!824172 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3213) (size!38974 a!3835))))))

(declare-fun lt!560631 () Unit!40943)

(assert (=> b!1236063 (= lt!560631 e!700718)))

(declare-fun c!120803 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1236063 (= c!120803 (validKeyInArray!0 (select (arr!38437 a!3835) from!3213)))))

(assert (= (and start!102880 res!824174) b!1236060))

(assert (= (and b!1236060 res!824173) b!1236056))

(assert (= (and b!1236056 res!824179) b!1236059))

(assert (= (and b!1236059 res!824180) b!1236058))

(assert (= (and b!1236058 res!824177) b!1236062))

(assert (= (and b!1236062 res!824178) b!1236054))

(assert (= (and b!1236054 res!824176) b!1236063))

(assert (= (and b!1236063 c!120803) b!1236061))

(assert (= (and b!1236063 (not c!120803)) b!1236055))

(assert (= (and b!1236063 res!824172) b!1236057))

(assert (= (and b!1236057 res!824175) b!1236053))

(declare-fun m!1139947 () Bool)

(assert (=> b!1236058 m!1139947))

(declare-fun m!1139949 () Bool)

(assert (=> b!1236059 m!1139949))

(declare-fun m!1139951 () Bool)

(assert (=> b!1236056 m!1139951))

(declare-fun m!1139953 () Bool)

(assert (=> b!1236057 m!1139953))

(declare-fun m!1139955 () Bool)

(assert (=> b!1236060 m!1139955))

(declare-fun m!1139957 () Bool)

(assert (=> b!1236063 m!1139957))

(assert (=> b!1236063 m!1139957))

(declare-fun m!1139959 () Bool)

(assert (=> b!1236063 m!1139959))

(declare-fun m!1139961 () Bool)

(assert (=> b!1236062 m!1139961))

(declare-fun m!1139963 () Bool)

(assert (=> b!1236061 m!1139963))

(declare-fun m!1139965 () Bool)

(assert (=> b!1236061 m!1139965))

(declare-fun m!1139967 () Bool)

(assert (=> b!1236061 m!1139967))

(declare-fun m!1139969 () Bool)

(assert (=> b!1236061 m!1139969))

(declare-fun m!1139971 () Bool)

(assert (=> b!1236061 m!1139971))

(assert (=> b!1236061 m!1139953))

(assert (=> b!1236061 m!1139957))

(declare-fun m!1139973 () Bool)

(assert (=> b!1236053 m!1139973))

(declare-fun m!1139975 () Bool)

(assert (=> b!1236053 m!1139975))

(declare-fun m!1139977 () Bool)

(assert (=> start!102880 m!1139977))

(check-sat (not start!102880) (not b!1236061) (not b!1236060) (not b!1236053) (not b!1236057) (not b!1236063) (not b!1236058) (not b!1236059) (not b!1236062) (not b!1236056))
(check-sat)

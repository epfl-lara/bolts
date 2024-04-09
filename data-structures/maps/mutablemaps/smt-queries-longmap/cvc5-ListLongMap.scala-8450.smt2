; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102872 () Bool)

(assert start!102872)

(declare-fun b!1235921 () Bool)

(declare-fun res!824064 () Bool)

(declare-fun e!700670 () Bool)

(assert (=> b!1235921 (=> (not res!824064) (not e!700670))))

(declare-datatypes ((List!27384 0))(
  ( (Nil!27381) (Cons!27380 (h!28589 (_ BitVec 64)) (t!40854 List!27384)) )
))
(declare-fun acc!846 () List!27384)

(declare-fun contains!7299 (List!27384 (_ BitVec 64)) Bool)

(assert (=> b!1235921 (= res!824064 (not (contains!7299 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235922 () Bool)

(declare-fun res!824071 () Bool)

(assert (=> b!1235922 (=> (not res!824071) (not e!700670))))

(assert (=> b!1235922 (= res!824071 (not (contains!7299 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235923 () Bool)

(declare-fun res!824065 () Bool)

(assert (=> b!1235923 (=> (not res!824065) (not e!700670))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1235923 (= res!824065 (contains!7299 acc!846 k!2925))))

(declare-fun res!824072 () Bool)

(assert (=> start!102872 (=> (not res!824072) (not e!700670))))

(declare-datatypes ((array!79658 0))(
  ( (array!79659 (arr!38433 (Array (_ BitVec 32) (_ BitVec 64))) (size!38970 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79658)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> start!102872 (= res!824072 (and (bvslt (size!38970 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38970 a!3835))))))

(assert (=> start!102872 e!700670))

(declare-fun array_inv!29209 (array!79658) Bool)

(assert (=> start!102872 (array_inv!29209 a!3835)))

(assert (=> start!102872 true))

(declare-fun b!1235924 () Bool)

(declare-datatypes ((Unit!40931 0))(
  ( (Unit!40932) )
))
(declare-fun e!700672 () Unit!40931)

(declare-fun Unit!40933 () Unit!40931)

(assert (=> b!1235924 (= e!700672 Unit!40933)))

(declare-fun b!1235925 () Bool)

(declare-fun res!824066 () Bool)

(assert (=> b!1235925 (=> (not res!824066) (not e!700670))))

(declare-fun arrayNoDuplicates!0 (array!79658 (_ BitVec 32) List!27384) Bool)

(assert (=> b!1235925 (= res!824066 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1235926 () Bool)

(declare-fun res!824069 () Bool)

(declare-fun e!700671 () Bool)

(assert (=> b!1235926 (=> (not res!824069) (not e!700671))))

(assert (=> b!1235926 (= res!824069 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846))))

(declare-fun b!1235927 () Bool)

(declare-fun res!824068 () Bool)

(assert (=> b!1235927 (=> (not res!824068) (not e!700670))))

(assert (=> b!1235927 (= res!824068 (not (= from!3213 (bvsub (size!38970 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1235928 () Bool)

(assert (=> b!1235928 (= e!700671 (not true))))

(declare-fun arrayContainsKey!0 (array!79658 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1235928 (not (arrayContainsKey!0 a!3835 k!2925 (bvadd #b00000000000000000000000000000001 from!3213)))))

(declare-fun lt!560563 () Unit!40931)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!79658 (_ BitVec 32) (_ BitVec 64) List!27384) Unit!40931)

(assert (=> b!1235928 (= lt!560563 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) k!2925 acc!846))))

(declare-fun b!1235929 () Bool)

(declare-fun lt!560561 () Unit!40931)

(assert (=> b!1235929 (= e!700672 lt!560561)))

(declare-fun lt!560558 () List!27384)

(assert (=> b!1235929 (= lt!560558 (Cons!27380 (select (arr!38433 a!3835) from!3213) acc!846))))

(declare-fun lt!560562 () Unit!40931)

(declare-fun lemmaListSubSeqRefl!0 (List!27384) Unit!40931)

(assert (=> b!1235929 (= lt!560562 (lemmaListSubSeqRefl!0 lt!560558))))

(declare-fun subseq!554 (List!27384 List!27384) Bool)

(assert (=> b!1235929 (subseq!554 lt!560558 lt!560558)))

(declare-fun lt!560560 () Unit!40931)

(declare-fun subseqTail!47 (List!27384 List!27384) Unit!40931)

(assert (=> b!1235929 (= lt!560560 (subseqTail!47 lt!560558 lt!560558))))

(assert (=> b!1235929 (subseq!554 acc!846 lt!560558)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79658 List!27384 List!27384 (_ BitVec 32)) Unit!40931)

(assert (=> b!1235929 (= lt!560561 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!560558 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(assert (=> b!1235929 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(declare-fun b!1235930 () Bool)

(declare-fun res!824070 () Bool)

(assert (=> b!1235930 (=> (not res!824070) (not e!700670))))

(declare-fun noDuplicate!1906 (List!27384) Bool)

(assert (=> b!1235930 (= res!824070 (noDuplicate!1906 acc!846))))

(declare-fun b!1235931 () Bool)

(assert (=> b!1235931 (= e!700670 e!700671)))

(declare-fun res!824067 () Bool)

(assert (=> b!1235931 (=> (not res!824067) (not e!700671))))

(assert (=> b!1235931 (= res!824067 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3213) (size!38970 a!3835))))))

(declare-fun lt!560559 () Unit!40931)

(assert (=> b!1235931 (= lt!560559 e!700672)))

(declare-fun c!120791 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1235931 (= c!120791 (validKeyInArray!0 (select (arr!38433 a!3835) from!3213)))))

(assert (= (and start!102872 res!824072) b!1235930))

(assert (= (and b!1235930 res!824070) b!1235921))

(assert (= (and b!1235921 res!824064) b!1235922))

(assert (= (and b!1235922 res!824071) b!1235925))

(assert (= (and b!1235925 res!824066) b!1235923))

(assert (= (and b!1235923 res!824065) b!1235927))

(assert (= (and b!1235927 res!824068) b!1235931))

(assert (= (and b!1235931 c!120791) b!1235929))

(assert (= (and b!1235931 (not c!120791)) b!1235924))

(assert (= (and b!1235931 res!824067) b!1235926))

(assert (= (and b!1235926 res!824069) b!1235928))

(declare-fun m!1139819 () Bool)

(assert (=> b!1235926 m!1139819))

(declare-fun m!1139821 () Bool)

(assert (=> start!102872 m!1139821))

(declare-fun m!1139823 () Bool)

(assert (=> b!1235928 m!1139823))

(declare-fun m!1139825 () Bool)

(assert (=> b!1235928 m!1139825))

(declare-fun m!1139827 () Bool)

(assert (=> b!1235930 m!1139827))

(declare-fun m!1139829 () Bool)

(assert (=> b!1235925 m!1139829))

(declare-fun m!1139831 () Bool)

(assert (=> b!1235931 m!1139831))

(assert (=> b!1235931 m!1139831))

(declare-fun m!1139833 () Bool)

(assert (=> b!1235931 m!1139833))

(declare-fun m!1139835 () Bool)

(assert (=> b!1235929 m!1139835))

(declare-fun m!1139837 () Bool)

(assert (=> b!1235929 m!1139837))

(declare-fun m!1139839 () Bool)

(assert (=> b!1235929 m!1139839))

(declare-fun m!1139841 () Bool)

(assert (=> b!1235929 m!1139841))

(declare-fun m!1139843 () Bool)

(assert (=> b!1235929 m!1139843))

(assert (=> b!1235929 m!1139819))

(assert (=> b!1235929 m!1139831))

(declare-fun m!1139845 () Bool)

(assert (=> b!1235922 m!1139845))

(declare-fun m!1139847 () Bool)

(assert (=> b!1235923 m!1139847))

(declare-fun m!1139849 () Bool)

(assert (=> b!1235921 m!1139849))

(push 1)


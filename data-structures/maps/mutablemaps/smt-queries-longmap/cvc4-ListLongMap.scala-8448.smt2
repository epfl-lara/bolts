; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102864 () Bool)

(assert start!102864)

(declare-fun b!1235799 () Bool)

(declare-datatypes ((Unit!40919 0))(
  ( (Unit!40920) )
))
(declare-fun e!700621 () Unit!40919)

(declare-fun lt!560487 () Unit!40919)

(assert (=> b!1235799 (= e!700621 lt!560487)))

(declare-datatypes ((List!27380 0))(
  ( (Nil!27377) (Cons!27376 (h!28585 (_ BitVec 64)) (t!40850 List!27380)) )
))
(declare-fun lt!560488 () List!27380)

(declare-datatypes ((array!79650 0))(
  ( (array!79651 (arr!38429 (Array (_ BitVec 32) (_ BitVec 64))) (size!38966 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79650)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun acc!846 () List!27380)

(assert (=> b!1235799 (= lt!560488 (Cons!27376 (select (arr!38429 a!3835) from!3213) acc!846))))

(declare-fun lt!560490 () Unit!40919)

(declare-fun lemmaListSubSeqRefl!0 (List!27380) Unit!40919)

(assert (=> b!1235799 (= lt!560490 (lemmaListSubSeqRefl!0 lt!560488))))

(declare-fun subseq!550 (List!27380 List!27380) Bool)

(assert (=> b!1235799 (subseq!550 lt!560488 lt!560488)))

(declare-fun lt!560486 () Unit!40919)

(declare-fun subseqTail!43 (List!27380 List!27380) Unit!40919)

(assert (=> b!1235799 (= lt!560486 (subseqTail!43 lt!560488 lt!560488))))

(assert (=> b!1235799 (subseq!550 acc!846 lt!560488)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79650 List!27380 List!27380 (_ BitVec 32)) Unit!40919)

(assert (=> b!1235799 (= lt!560487 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!560488 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(declare-fun arrayNoDuplicates!0 (array!79650 (_ BitVec 32) List!27380) Bool)

(assert (=> b!1235799 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(declare-fun b!1235801 () Bool)

(declare-fun res!823966 () Bool)

(declare-fun e!700623 () Bool)

(assert (=> b!1235801 (=> (not res!823966) (not e!700623))))

(declare-fun noDuplicate!1902 (List!27380) Bool)

(assert (=> b!1235801 (= res!823966 (noDuplicate!1902 acc!846))))

(declare-fun b!1235802 () Bool)

(declare-fun res!823973 () Bool)

(assert (=> b!1235802 (=> (not res!823973) (not e!700623))))

(assert (=> b!1235802 (= res!823973 (not (= from!3213 (bvsub (size!38966 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1235803 () Bool)

(declare-fun res!823970 () Bool)

(assert (=> b!1235803 (=> (not res!823970) (not e!700623))))

(declare-fun contains!7295 (List!27380 (_ BitVec 64)) Bool)

(assert (=> b!1235803 (= res!823970 (not (contains!7295 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235804 () Bool)

(declare-fun e!700624 () Bool)

(assert (=> b!1235804 (= e!700624 false)))

(declare-fun lt!560489 () Bool)

(assert (=> b!1235804 (= lt!560489 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846))))

(declare-fun b!1235805 () Bool)

(declare-fun res!823967 () Bool)

(assert (=> b!1235805 (=> (not res!823967) (not e!700623))))

(assert (=> b!1235805 (= res!823967 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1235806 () Bool)

(declare-fun res!823972 () Bool)

(assert (=> b!1235806 (=> (not res!823972) (not e!700623))))

(assert (=> b!1235806 (= res!823972 (not (contains!7295 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!823971 () Bool)

(assert (=> start!102864 (=> (not res!823971) (not e!700623))))

(assert (=> start!102864 (= res!823971 (and (bvslt (size!38966 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38966 a!3835))))))

(assert (=> start!102864 e!700623))

(declare-fun array_inv!29205 (array!79650) Bool)

(assert (=> start!102864 (array_inv!29205 a!3835)))

(assert (=> start!102864 true))

(declare-fun b!1235800 () Bool)

(assert (=> b!1235800 (= e!700623 e!700624)))

(declare-fun res!823969 () Bool)

(assert (=> b!1235800 (=> (not res!823969) (not e!700624))))

(assert (=> b!1235800 (= res!823969 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3213) (size!38966 a!3835))))))

(declare-fun lt!560491 () Unit!40919)

(assert (=> b!1235800 (= lt!560491 e!700621)))

(declare-fun c!120779 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1235800 (= c!120779 (validKeyInArray!0 (select (arr!38429 a!3835) from!3213)))))

(declare-fun b!1235807 () Bool)

(declare-fun res!823968 () Bool)

(assert (=> b!1235807 (=> (not res!823968) (not e!700623))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1235807 (= res!823968 (contains!7295 acc!846 k!2925))))

(declare-fun b!1235808 () Bool)

(declare-fun Unit!40921 () Unit!40919)

(assert (=> b!1235808 (= e!700621 Unit!40921)))

(assert (= (and start!102864 res!823971) b!1235801))

(assert (= (and b!1235801 res!823966) b!1235806))

(assert (= (and b!1235806 res!823972) b!1235803))

(assert (= (and b!1235803 res!823970) b!1235805))

(assert (= (and b!1235805 res!823967) b!1235807))

(assert (= (and b!1235807 res!823968) b!1235802))

(assert (= (and b!1235802 res!823973) b!1235800))

(assert (= (and b!1235800 c!120779) b!1235799))

(assert (= (and b!1235800 (not c!120779)) b!1235808))

(assert (= (and b!1235800 res!823969) b!1235804))

(declare-fun m!1139707 () Bool)

(assert (=> b!1235804 m!1139707))

(declare-fun m!1139709 () Bool)

(assert (=> b!1235800 m!1139709))

(assert (=> b!1235800 m!1139709))

(declare-fun m!1139711 () Bool)

(assert (=> b!1235800 m!1139711))

(declare-fun m!1139713 () Bool)

(assert (=> b!1235805 m!1139713))

(declare-fun m!1139715 () Bool)

(assert (=> b!1235801 m!1139715))

(declare-fun m!1139717 () Bool)

(assert (=> b!1235803 m!1139717))

(declare-fun m!1139719 () Bool)

(assert (=> start!102864 m!1139719))

(declare-fun m!1139721 () Bool)

(assert (=> b!1235806 m!1139721))

(declare-fun m!1139723 () Bool)

(assert (=> b!1235807 m!1139723))

(declare-fun m!1139725 () Bool)

(assert (=> b!1235799 m!1139725))

(assert (=> b!1235799 m!1139707))

(assert (=> b!1235799 m!1139709))

(declare-fun m!1139727 () Bool)

(assert (=> b!1235799 m!1139727))

(declare-fun m!1139729 () Bool)

(assert (=> b!1235799 m!1139729))

(declare-fun m!1139731 () Bool)

(assert (=> b!1235799 m!1139731))

(declare-fun m!1139733 () Bool)

(assert (=> b!1235799 m!1139733))

(push 1)

(assert (not b!1235803))

(assert (not b!1235799))

(assert (not b!1235805))

(assert (not b!1235806))

(assert (not b!1235801))

(assert (not b!1235804))


; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102874 () Bool)

(assert start!102874)

(declare-fun b!1235954 () Bool)

(declare-fun res!824091 () Bool)

(declare-fun e!700684 () Bool)

(assert (=> b!1235954 (=> (not res!824091) (not e!700684))))

(declare-datatypes ((array!79660 0))(
  ( (array!79661 (arr!38434 (Array (_ BitVec 32) (_ BitVec 64))) (size!38971 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79660)

(declare-datatypes ((List!27385 0))(
  ( (Nil!27382) (Cons!27381 (h!28590 (_ BitVec 64)) (t!40855 List!27385)) )
))
(declare-fun acc!846 () List!27385)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79660 (_ BitVec 32) List!27385) Bool)

(assert (=> b!1235954 (= res!824091 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846))))

(declare-fun b!1235955 () Bool)

(declare-fun res!824098 () Bool)

(declare-fun e!700683 () Bool)

(assert (=> b!1235955 (=> (not res!824098) (not e!700683))))

(assert (=> b!1235955 (= res!824098 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1235956 () Bool)

(declare-datatypes ((Unit!40934 0))(
  ( (Unit!40935) )
))
(declare-fun e!700681 () Unit!40934)

(declare-fun lt!560576 () Unit!40934)

(assert (=> b!1235956 (= e!700681 lt!560576)))

(declare-fun lt!560577 () List!27385)

(assert (=> b!1235956 (= lt!560577 (Cons!27381 (select (arr!38434 a!3835) from!3213) acc!846))))

(declare-fun lt!560581 () Unit!40934)

(declare-fun lemmaListSubSeqRefl!0 (List!27385) Unit!40934)

(assert (=> b!1235956 (= lt!560581 (lemmaListSubSeqRefl!0 lt!560577))))

(declare-fun subseq!555 (List!27385 List!27385) Bool)

(assert (=> b!1235956 (subseq!555 lt!560577 lt!560577)))

(declare-fun lt!560578 () Unit!40934)

(declare-fun subseqTail!48 (List!27385 List!27385) Unit!40934)

(assert (=> b!1235956 (= lt!560578 (subseqTail!48 lt!560577 lt!560577))))

(assert (=> b!1235956 (subseq!555 acc!846 lt!560577)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79660 List!27385 List!27385 (_ BitVec 32)) Unit!40934)

(assert (=> b!1235956 (= lt!560576 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!560577 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(assert (=> b!1235956 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(declare-fun b!1235957 () Bool)

(declare-fun res!824095 () Bool)

(assert (=> b!1235957 (=> (not res!824095) (not e!700683))))

(declare-fun k0!2925 () (_ BitVec 64))

(declare-fun contains!7300 (List!27385 (_ BitVec 64)) Bool)

(assert (=> b!1235957 (= res!824095 (contains!7300 acc!846 k0!2925))))

(declare-fun b!1235958 () Bool)

(declare-fun res!824092 () Bool)

(assert (=> b!1235958 (=> (not res!824092) (not e!700683))))

(assert (=> b!1235958 (= res!824092 (not (contains!7300 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!824093 () Bool)

(assert (=> start!102874 (=> (not res!824093) (not e!700683))))

(assert (=> start!102874 (= res!824093 (and (bvslt (size!38971 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38971 a!3835))))))

(assert (=> start!102874 e!700683))

(declare-fun array_inv!29210 (array!79660) Bool)

(assert (=> start!102874 (array_inv!29210 a!3835)))

(assert (=> start!102874 true))

(declare-fun b!1235959 () Bool)

(assert (=> b!1235959 (= e!700684 (not true))))

(declare-fun arrayContainsKey!0 (array!79660 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1235959 (not (arrayContainsKey!0 a!3835 k0!2925 (bvadd #b00000000000000000000000000000001 from!3213)))))

(declare-fun lt!560580 () Unit!40934)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!79660 (_ BitVec 32) (_ BitVec 64) List!27385) Unit!40934)

(assert (=> b!1235959 (= lt!560580 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) k0!2925 acc!846))))

(declare-fun b!1235960 () Bool)

(declare-fun res!824097 () Bool)

(assert (=> b!1235960 (=> (not res!824097) (not e!700683))))

(declare-fun noDuplicate!1907 (List!27385) Bool)

(assert (=> b!1235960 (= res!824097 (noDuplicate!1907 acc!846))))

(declare-fun b!1235961 () Bool)

(declare-fun Unit!40936 () Unit!40934)

(assert (=> b!1235961 (= e!700681 Unit!40936)))

(declare-fun b!1235962 () Bool)

(declare-fun res!824099 () Bool)

(assert (=> b!1235962 (=> (not res!824099) (not e!700683))))

(assert (=> b!1235962 (= res!824099 (not (= from!3213 (bvsub (size!38971 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1235963 () Bool)

(declare-fun res!824094 () Bool)

(assert (=> b!1235963 (=> (not res!824094) (not e!700683))))

(assert (=> b!1235963 (= res!824094 (not (contains!7300 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235964 () Bool)

(assert (=> b!1235964 (= e!700683 e!700684)))

(declare-fun res!824096 () Bool)

(assert (=> b!1235964 (=> (not res!824096) (not e!700684))))

(assert (=> b!1235964 (= res!824096 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3213) (size!38971 a!3835))))))

(declare-fun lt!560579 () Unit!40934)

(assert (=> b!1235964 (= lt!560579 e!700681)))

(declare-fun c!120794 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1235964 (= c!120794 (validKeyInArray!0 (select (arr!38434 a!3835) from!3213)))))

(assert (= (and start!102874 res!824093) b!1235960))

(assert (= (and b!1235960 res!824097) b!1235963))

(assert (= (and b!1235963 res!824094) b!1235958))

(assert (= (and b!1235958 res!824092) b!1235955))

(assert (= (and b!1235955 res!824098) b!1235957))

(assert (= (and b!1235957 res!824095) b!1235962))

(assert (= (and b!1235962 res!824099) b!1235964))

(assert (= (and b!1235964 c!120794) b!1235956))

(assert (= (and b!1235964 (not c!120794)) b!1235961))

(assert (= (and b!1235964 res!824096) b!1235954))

(assert (= (and b!1235954 res!824091) b!1235959))

(declare-fun m!1139851 () Bool)

(assert (=> b!1235955 m!1139851))

(declare-fun m!1139853 () Bool)

(assert (=> b!1235958 m!1139853))

(declare-fun m!1139855 () Bool)

(assert (=> b!1235964 m!1139855))

(assert (=> b!1235964 m!1139855))

(declare-fun m!1139857 () Bool)

(assert (=> b!1235964 m!1139857))

(declare-fun m!1139859 () Bool)

(assert (=> b!1235954 m!1139859))

(declare-fun m!1139861 () Bool)

(assert (=> start!102874 m!1139861))

(declare-fun m!1139863 () Bool)

(assert (=> b!1235957 m!1139863))

(declare-fun m!1139865 () Bool)

(assert (=> b!1235960 m!1139865))

(declare-fun m!1139867 () Bool)

(assert (=> b!1235959 m!1139867))

(declare-fun m!1139869 () Bool)

(assert (=> b!1235959 m!1139869))

(declare-fun m!1139871 () Bool)

(assert (=> b!1235956 m!1139871))

(declare-fun m!1139873 () Bool)

(assert (=> b!1235956 m!1139873))

(declare-fun m!1139875 () Bool)

(assert (=> b!1235956 m!1139875))

(declare-fun m!1139877 () Bool)

(assert (=> b!1235956 m!1139877))

(assert (=> b!1235956 m!1139859))

(declare-fun m!1139879 () Bool)

(assert (=> b!1235956 m!1139879))

(assert (=> b!1235956 m!1139855))

(declare-fun m!1139881 () Bool)

(assert (=> b!1235963 m!1139881))

(check-sat (not b!1235954) (not b!1235959) (not b!1235963) (not b!1235958) (not b!1235957) (not b!1235964) (not b!1235960) (not b!1235956) (not start!102874) (not b!1235955))
(check-sat)

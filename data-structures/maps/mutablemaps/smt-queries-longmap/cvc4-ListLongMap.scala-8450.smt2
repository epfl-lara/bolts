; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102876 () Bool)

(assert start!102876)

(declare-fun b!1235987 () Bool)

(declare-fun e!700696 () Bool)

(assert (=> b!1235987 (= e!700696 (not true))))

(declare-datatypes ((array!79662 0))(
  ( (array!79663 (arr!38435 (Array (_ BitVec 32) (_ BitVec 64))) (size!38972 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79662)

(declare-fun k!2925 () (_ BitVec 64))

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!79662 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1235987 (not (arrayContainsKey!0 a!3835 k!2925 (bvadd #b00000000000000000000000000000001 from!3213)))))

(declare-datatypes ((Unit!40937 0))(
  ( (Unit!40938) )
))
(declare-fun lt!560597 () Unit!40937)

(declare-datatypes ((List!27386 0))(
  ( (Nil!27383) (Cons!27382 (h!28591 (_ BitVec 64)) (t!40856 List!27386)) )
))
(declare-fun acc!846 () List!27386)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!79662 (_ BitVec 32) (_ BitVec 64) List!27386) Unit!40937)

(assert (=> b!1235987 (= lt!560597 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) k!2925 acc!846))))

(declare-fun b!1235988 () Bool)

(declare-fun res!824119 () Bool)

(declare-fun e!700695 () Bool)

(assert (=> b!1235988 (=> (not res!824119) (not e!700695))))

(declare-fun contains!7301 (List!27386 (_ BitVec 64)) Bool)

(assert (=> b!1235988 (= res!824119 (not (contains!7301 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235989 () Bool)

(declare-fun res!824124 () Bool)

(assert (=> b!1235989 (=> (not res!824124) (not e!700695))))

(assert (=> b!1235989 (= res!824124 (contains!7301 acc!846 k!2925))))

(declare-fun b!1235990 () Bool)

(declare-fun res!824118 () Bool)

(assert (=> b!1235990 (=> (not res!824118) (not e!700695))))

(assert (=> b!1235990 (= res!824118 (not (contains!7301 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235991 () Bool)

(declare-fun res!824121 () Bool)

(assert (=> b!1235991 (=> (not res!824121) (not e!700696))))

(declare-fun arrayNoDuplicates!0 (array!79662 (_ BitVec 32) List!27386) Bool)

(assert (=> b!1235991 (= res!824121 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846))))

(declare-fun b!1235992 () Bool)

(declare-fun res!824126 () Bool)

(assert (=> b!1235992 (=> (not res!824126) (not e!700695))))

(assert (=> b!1235992 (= res!824126 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun res!824123 () Bool)

(assert (=> start!102876 (=> (not res!824123) (not e!700695))))

(assert (=> start!102876 (= res!824123 (and (bvslt (size!38972 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38972 a!3835))))))

(assert (=> start!102876 e!700695))

(declare-fun array_inv!29211 (array!79662) Bool)

(assert (=> start!102876 (array_inv!29211 a!3835)))

(assert (=> start!102876 true))

(declare-fun b!1235993 () Bool)

(declare-fun res!824120 () Bool)

(assert (=> b!1235993 (=> (not res!824120) (not e!700695))))

(assert (=> b!1235993 (= res!824120 (not (= from!3213 (bvsub (size!38972 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1235994 () Bool)

(assert (=> b!1235994 (= e!700695 e!700696)))

(declare-fun res!824125 () Bool)

(assert (=> b!1235994 (=> (not res!824125) (not e!700696))))

(assert (=> b!1235994 (= res!824125 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3213) (size!38972 a!3835))))))

(declare-fun lt!560596 () Unit!40937)

(declare-fun e!700693 () Unit!40937)

(assert (=> b!1235994 (= lt!560596 e!700693)))

(declare-fun c!120797 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1235994 (= c!120797 (validKeyInArray!0 (select (arr!38435 a!3835) from!3213)))))

(declare-fun b!1235995 () Bool)

(declare-fun Unit!40939 () Unit!40937)

(assert (=> b!1235995 (= e!700693 Unit!40939)))

(declare-fun b!1235996 () Bool)

(declare-fun lt!560598 () Unit!40937)

(assert (=> b!1235996 (= e!700693 lt!560598)))

(declare-fun lt!560599 () List!27386)

(assert (=> b!1235996 (= lt!560599 (Cons!27382 (select (arr!38435 a!3835) from!3213) acc!846))))

(declare-fun lt!560595 () Unit!40937)

(declare-fun lemmaListSubSeqRefl!0 (List!27386) Unit!40937)

(assert (=> b!1235996 (= lt!560595 (lemmaListSubSeqRefl!0 lt!560599))))

(declare-fun subseq!556 (List!27386 List!27386) Bool)

(assert (=> b!1235996 (subseq!556 lt!560599 lt!560599)))

(declare-fun lt!560594 () Unit!40937)

(declare-fun subseqTail!49 (List!27386 List!27386) Unit!40937)

(assert (=> b!1235996 (= lt!560594 (subseqTail!49 lt!560599 lt!560599))))

(assert (=> b!1235996 (subseq!556 acc!846 lt!560599)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79662 List!27386 List!27386 (_ BitVec 32)) Unit!40937)

(assert (=> b!1235996 (= lt!560598 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!560599 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(assert (=> b!1235996 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(declare-fun b!1235997 () Bool)

(declare-fun res!824122 () Bool)

(assert (=> b!1235997 (=> (not res!824122) (not e!700695))))

(declare-fun noDuplicate!1908 (List!27386) Bool)

(assert (=> b!1235997 (= res!824122 (noDuplicate!1908 acc!846))))

(assert (= (and start!102876 res!824123) b!1235997))

(assert (= (and b!1235997 res!824122) b!1235990))

(assert (= (and b!1235990 res!824118) b!1235988))

(assert (= (and b!1235988 res!824119) b!1235992))

(assert (= (and b!1235992 res!824126) b!1235989))

(assert (= (and b!1235989 res!824124) b!1235993))

(assert (= (and b!1235993 res!824120) b!1235994))

(assert (= (and b!1235994 c!120797) b!1235996))

(assert (= (and b!1235994 (not c!120797)) b!1235995))

(assert (= (and b!1235994 res!824125) b!1235991))

(assert (= (and b!1235991 res!824121) b!1235987))

(declare-fun m!1139883 () Bool)

(assert (=> b!1235996 m!1139883))

(declare-fun m!1139885 () Bool)

(assert (=> b!1235996 m!1139885))

(declare-fun m!1139887 () Bool)

(assert (=> b!1235996 m!1139887))

(declare-fun m!1139889 () Bool)

(assert (=> b!1235996 m!1139889))

(declare-fun m!1139891 () Bool)

(assert (=> b!1235996 m!1139891))

(declare-fun m!1139893 () Bool)

(assert (=> b!1235996 m!1139893))

(declare-fun m!1139895 () Bool)

(assert (=> b!1235996 m!1139895))

(declare-fun m!1139897 () Bool)

(assert (=> b!1235997 m!1139897))

(declare-fun m!1139899 () Bool)

(assert (=> b!1235990 m!1139899))

(declare-fun m!1139901 () Bool)

(assert (=> start!102876 m!1139901))

(declare-fun m!1139903 () Bool)

(assert (=> b!1235987 m!1139903))

(declare-fun m!1139905 () Bool)

(assert (=> b!1235987 m!1139905))

(declare-fun m!1139907 () Bool)

(assert (=> b!1235988 m!1139907))

(declare-fun m!1139909 () Bool)

(assert (=> b!1235992 m!1139909))

(assert (=> b!1235991 m!1139889))

(declare-fun m!1139911 () Bool)

(assert (=> b!1235989 m!1139911))

(assert (=> b!1235994 m!1139891))

(assert (=> b!1235994 m!1139891))

(declare-fun m!1139913 () Bool)

(assert (=> b!1235994 m!1139913))

(push 1)

(assert (not b!1235990))

(assert (not b!1235997))

(assert (not start!102876))

(assert (not b!1235996))

(assert (not b!1235992))

(assert (not b!1235994))

(assert (not b!1235991))

(assert (not b!1235989))

(assert (not b!1235987))

(assert (not b!1235988))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


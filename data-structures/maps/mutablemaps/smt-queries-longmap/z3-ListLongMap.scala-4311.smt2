; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59912 () Bool)

(assert start!59912)

(declare-fun b!662813 () Bool)

(declare-fun res!430946 () Bool)

(declare-fun e!380407 () Bool)

(assert (=> b!662813 (=> res!430946 e!380407)))

(declare-datatypes ((List!12740 0))(
  ( (Nil!12737) (Cons!12736 (h!13781 (_ BitVec 64)) (t!18976 List!12740)) )
))
(declare-fun lt!309117 () List!12740)

(declare-fun contains!3283 (List!12740 (_ BitVec 64)) Bool)

(assert (=> b!662813 (= res!430946 (contains!3283 lt!309117 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!662814 () Bool)

(declare-fun res!430947 () Bool)

(declare-fun e!380403 () Bool)

(assert (=> b!662814 (=> (not res!430947) (not e!380403))))

(declare-fun e!380400 () Bool)

(assert (=> b!662814 (= res!430947 e!380400)))

(declare-fun res!430935 () Bool)

(assert (=> b!662814 (=> res!430935 e!380400)))

(declare-fun e!380404 () Bool)

(assert (=> b!662814 (= res!430935 e!380404)))

(declare-fun res!430940 () Bool)

(assert (=> b!662814 (=> (not res!430940) (not e!380404))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!662814 (= res!430940 (bvsgt from!3004 i!1382))))

(declare-fun b!662815 () Bool)

(declare-fun res!430933 () Bool)

(assert (=> b!662815 (=> (not res!430933) (not e!380403))))

(declare-datatypes ((array!38915 0))(
  ( (array!38916 (arr!18646 (Array (_ BitVec 32) (_ BitVec 64))) (size!19010 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38915)

(assert (=> b!662815 (= res!430933 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19010 a!3626))))))

(declare-fun b!662816 () Bool)

(declare-fun res!430934 () Bool)

(assert (=> b!662816 (=> (not res!430934) (not e!380403))))

(declare-fun acc!681 () List!12740)

(assert (=> b!662816 (= res!430934 (not (contains!3283 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!662817 () Bool)

(declare-datatypes ((Unit!23030 0))(
  ( (Unit!23031) )
))
(declare-fun e!380402 () Unit!23030)

(declare-fun Unit!23032 () Unit!23030)

(assert (=> b!662817 (= e!380402 Unit!23032)))

(declare-fun lt!309113 () Unit!23030)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38915 (_ BitVec 64) (_ BitVec 32)) Unit!23030)

(assert (=> b!662817 (= lt!309113 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!662817 false))

(declare-fun b!662818 () Bool)

(declare-fun Unit!23033 () Unit!23030)

(assert (=> b!662818 (= e!380402 Unit!23033)))

(declare-fun b!662819 () Bool)

(assert (=> b!662819 (= e!380407 true)))

(declare-fun lt!309116 () Bool)

(declare-fun arrayNoDuplicates!0 (array!38915 (_ BitVec 32) List!12740) Bool)

(assert (=> b!662819 (= lt!309116 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!309117))))

(declare-fun lt!309112 () Unit!23030)

(declare-fun noDuplicateSubseq!21 (List!12740 List!12740) Unit!23030)

(assert (=> b!662819 (= lt!309112 (noDuplicateSubseq!21 acc!681 lt!309117))))

(declare-fun b!662820 () Bool)

(declare-fun e!380405 () Bool)

(assert (=> b!662820 (= e!380405 e!380407)))

(declare-fun res!430938 () Bool)

(assert (=> b!662820 (=> res!430938 e!380407)))

(assert (=> b!662820 (= res!430938 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!152 (List!12740 (_ BitVec 64)) List!12740)

(assert (=> b!662820 (= lt!309117 ($colon$colon!152 acc!681 (select (arr!18646 a!3626) from!3004)))))

(declare-fun subseq!21 (List!12740 List!12740) Bool)

(assert (=> b!662820 (subseq!21 acc!681 acc!681)))

(declare-fun lt!309115 () Unit!23030)

(declare-fun lemmaListSubSeqRefl!0 (List!12740) Unit!23030)

(assert (=> b!662820 (= lt!309115 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun b!662821 () Bool)

(declare-fun res!430952 () Bool)

(assert (=> b!662821 (=> (not res!430952) (not e!380403))))

(assert (=> b!662821 (= res!430952 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!662822 () Bool)

(assert (=> b!662822 (= e!380403 (not e!380405))))

(declare-fun res!430951 () Bool)

(assert (=> b!662822 (=> res!430951 e!380405)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!662822 (= res!430951 (not (validKeyInArray!0 (select (arr!18646 a!3626) from!3004))))))

(declare-fun lt!309114 () Unit!23030)

(assert (=> b!662822 (= lt!309114 e!380402)))

(declare-fun c!76307 () Bool)

(declare-fun arrayContainsKey!0 (array!38915 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!662822 (= c!76307 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!662822 (arrayContainsKey!0 (array!38916 (store (arr!18646 a!3626) i!1382 k0!2843) (size!19010 a!3626)) k0!2843 from!3004)))

(declare-fun b!662823 () Bool)

(declare-fun res!430939 () Bool)

(assert (=> b!662823 (=> (not res!430939) (not e!380403))))

(assert (=> b!662823 (= res!430939 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12737))))

(declare-fun b!662824 () Bool)

(declare-fun res!430937 () Bool)

(assert (=> b!662824 (=> (not res!430937) (not e!380403))))

(assert (=> b!662824 (= res!430937 (not (contains!3283 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!662825 () Bool)

(declare-fun res!430950 () Bool)

(assert (=> b!662825 (=> (not res!430950) (not e!380403))))

(declare-fun noDuplicate!530 (List!12740) Bool)

(assert (=> b!662825 (= res!430950 (noDuplicate!530 acc!681))))

(declare-fun b!662826 () Bool)

(assert (=> b!662826 (= e!380404 (contains!3283 acc!681 k0!2843))))

(declare-fun b!662827 () Bool)

(declare-fun res!430943 () Bool)

(assert (=> b!662827 (=> res!430943 e!380407)))

(assert (=> b!662827 (= res!430943 (not (subseq!21 acc!681 lt!309117)))))

(declare-fun b!662828 () Bool)

(declare-fun res!430945 () Bool)

(assert (=> b!662828 (=> (not res!430945) (not e!380403))))

(assert (=> b!662828 (= res!430945 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19010 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!662829 () Bool)

(declare-fun e!380401 () Bool)

(assert (=> b!662829 (= e!380401 (not (contains!3283 acc!681 k0!2843)))))

(declare-fun b!662830 () Bool)

(declare-fun res!430949 () Bool)

(assert (=> b!662830 (=> (not res!430949) (not e!380403))))

(assert (=> b!662830 (= res!430949 (validKeyInArray!0 k0!2843))))

(declare-fun b!662831 () Bool)

(declare-fun res!430944 () Bool)

(assert (=> b!662831 (=> res!430944 e!380407)))

(assert (=> b!662831 (= res!430944 (contains!3283 lt!309117 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!662832 () Bool)

(declare-fun res!430936 () Bool)

(assert (=> b!662832 (=> (not res!430936) (not e!380403))))

(assert (=> b!662832 (= res!430936 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun res!430942 () Bool)

(assert (=> start!59912 (=> (not res!430942) (not e!380403))))

(assert (=> start!59912 (= res!430942 (and (bvslt (size!19010 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19010 a!3626))))))

(assert (=> start!59912 e!380403))

(assert (=> start!59912 true))

(declare-fun array_inv!14420 (array!38915) Bool)

(assert (=> start!59912 (array_inv!14420 a!3626)))

(declare-fun b!662833 () Bool)

(assert (=> b!662833 (= e!380400 e!380401)))

(declare-fun res!430948 () Bool)

(assert (=> b!662833 (=> (not res!430948) (not e!380401))))

(assert (=> b!662833 (= res!430948 (bvsle from!3004 i!1382))))

(declare-fun b!662834 () Bool)

(declare-fun res!430941 () Bool)

(assert (=> b!662834 (=> res!430941 e!380407)))

(assert (=> b!662834 (= res!430941 (not (noDuplicate!530 lt!309117)))))

(assert (= (and start!59912 res!430942) b!662825))

(assert (= (and b!662825 res!430950) b!662816))

(assert (= (and b!662816 res!430934) b!662824))

(assert (= (and b!662824 res!430937) b!662814))

(assert (= (and b!662814 res!430940) b!662826))

(assert (= (and b!662814 (not res!430935)) b!662833))

(assert (= (and b!662833 res!430948) b!662829))

(assert (= (and b!662814 res!430947) b!662823))

(assert (= (and b!662823 res!430939) b!662821))

(assert (= (and b!662821 res!430952) b!662815))

(assert (= (and b!662815 res!430933) b!662830))

(assert (= (and b!662830 res!430949) b!662832))

(assert (= (and b!662832 res!430936) b!662828))

(assert (= (and b!662828 res!430945) b!662822))

(assert (= (and b!662822 c!76307) b!662817))

(assert (= (and b!662822 (not c!76307)) b!662818))

(assert (= (and b!662822 (not res!430951)) b!662820))

(assert (= (and b!662820 (not res!430938)) b!662834))

(assert (= (and b!662834 (not res!430941)) b!662813))

(assert (= (and b!662813 (not res!430946)) b!662831))

(assert (= (and b!662831 (not res!430944)) b!662827))

(assert (= (and b!662827 (not res!430943)) b!662819))

(declare-fun m!634563 () Bool)

(assert (=> b!662832 m!634563))

(declare-fun m!634565 () Bool)

(assert (=> b!662819 m!634565))

(declare-fun m!634567 () Bool)

(assert (=> b!662819 m!634567))

(declare-fun m!634569 () Bool)

(assert (=> b!662830 m!634569))

(declare-fun m!634571 () Bool)

(assert (=> b!662813 m!634571))

(declare-fun m!634573 () Bool)

(assert (=> b!662827 m!634573))

(declare-fun m!634575 () Bool)

(assert (=> b!662820 m!634575))

(assert (=> b!662820 m!634575))

(declare-fun m!634577 () Bool)

(assert (=> b!662820 m!634577))

(declare-fun m!634579 () Bool)

(assert (=> b!662820 m!634579))

(declare-fun m!634581 () Bool)

(assert (=> b!662820 m!634581))

(declare-fun m!634583 () Bool)

(assert (=> b!662831 m!634583))

(declare-fun m!634585 () Bool)

(assert (=> b!662826 m!634585))

(assert (=> b!662822 m!634575))

(declare-fun m!634587 () Bool)

(assert (=> b!662822 m!634587))

(declare-fun m!634589 () Bool)

(assert (=> b!662822 m!634589))

(assert (=> b!662822 m!634575))

(declare-fun m!634591 () Bool)

(assert (=> b!662822 m!634591))

(declare-fun m!634593 () Bool)

(assert (=> b!662822 m!634593))

(declare-fun m!634595 () Bool)

(assert (=> b!662834 m!634595))

(declare-fun m!634597 () Bool)

(assert (=> b!662825 m!634597))

(declare-fun m!634599 () Bool)

(assert (=> b!662823 m!634599))

(declare-fun m!634601 () Bool)

(assert (=> b!662824 m!634601))

(declare-fun m!634603 () Bool)

(assert (=> start!59912 m!634603))

(declare-fun m!634605 () Bool)

(assert (=> b!662821 m!634605))

(declare-fun m!634607 () Bool)

(assert (=> b!662817 m!634607))

(declare-fun m!634609 () Bool)

(assert (=> b!662816 m!634609))

(assert (=> b!662829 m!634585))

(check-sat (not b!662832) (not b!662816) (not b!662829) (not b!662822) (not b!662827) (not b!662831) (not b!662830) (not b!662826) (not b!662825) (not b!662813) (not b!662817) (not b!662819) (not b!662820) (not b!662823) (not b!662824) (not b!662834) (not b!662821) (not start!59912))
(check-sat)

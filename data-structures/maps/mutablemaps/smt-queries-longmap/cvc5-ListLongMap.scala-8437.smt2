; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102794 () Bool)

(assert start!102794)

(declare-fun b!1234645 () Bool)

(declare-fun res!822921 () Bool)

(declare-fun e!700253 () Bool)

(assert (=> b!1234645 (=> (not res!822921) (not e!700253))))

(declare-fun from!3213 () (_ BitVec 32))

(declare-datatypes ((array!79580 0))(
  ( (array!79581 (arr!38394 (Array (_ BitVec 32) (_ BitVec 64))) (size!38931 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79580)

(assert (=> b!1234645 (= res!822921 (not (= from!3213 (bvsub (size!38931 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1234646 () Bool)

(declare-fun res!822924 () Bool)

(assert (=> b!1234646 (=> (not res!822924) (not e!700253))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1234646 (= res!822924 (validKeyInArray!0 (select (arr!38394 a!3835) from!3213)))))

(declare-fun b!1234647 () Bool)

(declare-fun res!822926 () Bool)

(declare-fun e!700254 () Bool)

(assert (=> b!1234647 (=> res!822926 e!700254)))

(declare-datatypes ((List!27345 0))(
  ( (Nil!27342) (Cons!27341 (h!28550 (_ BitVec 64)) (t!40815 List!27345)) )
))
(declare-fun lt!559909 () List!27345)

(declare-fun contains!7260 (List!27345 (_ BitVec 64)) Bool)

(assert (=> b!1234647 (= res!822926 (contains!7260 lt!559909 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1234648 () Bool)

(assert (=> b!1234648 (= e!700254 true)))

(declare-fun lt!559908 () Bool)

(declare-fun arrayNoDuplicates!0 (array!79580 (_ BitVec 32) List!27345) Bool)

(assert (=> b!1234648 (= lt!559908 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) lt!559909))))

(declare-datatypes ((Unit!40832 0))(
  ( (Unit!40833) )
))
(declare-fun lt!559910 () Unit!40832)

(declare-fun acc!846 () List!27345)

(declare-fun noDuplicateSubseq!62 (List!27345 List!27345) Unit!40832)

(assert (=> b!1234648 (= lt!559910 (noDuplicateSubseq!62 acc!846 lt!559909))))

(declare-fun b!1234649 () Bool)

(declare-fun res!822929 () Bool)

(assert (=> b!1234649 (=> (not res!822929) (not e!700253))))

(assert (=> b!1234649 (= res!822929 (not (contains!7260 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1234650 () Bool)

(declare-fun res!822923 () Bool)

(assert (=> b!1234650 (=> (not res!822923) (not e!700253))))

(assert (=> b!1234650 (= res!822923 (not (contains!7260 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1234651 () Bool)

(assert (=> b!1234651 (= e!700253 (not e!700254))))

(declare-fun res!822919 () Bool)

(assert (=> b!1234651 (=> res!822919 e!700254)))

(assert (=> b!1234651 (= res!822919 (bvslt (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000))))

(declare-fun subseq!515 (List!27345 List!27345) Bool)

(assert (=> b!1234651 (subseq!515 acc!846 lt!559909)))

(declare-fun lt!559912 () Unit!40832)

(declare-fun subseqTail!8 (List!27345 List!27345) Unit!40832)

(assert (=> b!1234651 (= lt!559912 (subseqTail!8 lt!559909 lt!559909))))

(assert (=> b!1234651 (subseq!515 lt!559909 lt!559909)))

(declare-fun lt!559911 () Unit!40832)

(declare-fun lemmaListSubSeqRefl!0 (List!27345) Unit!40832)

(assert (=> b!1234651 (= lt!559911 (lemmaListSubSeqRefl!0 lt!559909))))

(assert (=> b!1234651 (= lt!559909 (Cons!27341 (select (arr!38394 a!3835) from!3213) acc!846))))

(declare-fun b!1234652 () Bool)

(declare-fun res!822927 () Bool)

(assert (=> b!1234652 (=> res!822927 e!700254)))

(assert (=> b!1234652 (= res!822927 (contains!7260 lt!559909 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1234653 () Bool)

(declare-fun res!822918 () Bool)

(assert (=> b!1234653 (=> (not res!822918) (not e!700253))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1234653 (= res!822918 (contains!7260 acc!846 k!2925))))

(declare-fun b!1234654 () Bool)

(declare-fun res!822925 () Bool)

(assert (=> b!1234654 (=> (not res!822925) (not e!700253))))

(declare-fun noDuplicate!1867 (List!27345) Bool)

(assert (=> b!1234654 (= res!822925 (noDuplicate!1867 acc!846))))

(declare-fun res!822922 () Bool)

(assert (=> start!102794 (=> (not res!822922) (not e!700253))))

(assert (=> start!102794 (= res!822922 (and (bvslt (size!38931 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38931 a!3835))))))

(assert (=> start!102794 e!700253))

(declare-fun array_inv!29170 (array!79580) Bool)

(assert (=> start!102794 (array_inv!29170 a!3835)))

(assert (=> start!102794 true))

(declare-fun b!1234655 () Bool)

(declare-fun res!822920 () Bool)

(assert (=> b!1234655 (=> (not res!822920) (not e!700253))))

(assert (=> b!1234655 (= res!822920 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1234656 () Bool)

(declare-fun res!822928 () Bool)

(assert (=> b!1234656 (=> res!822928 e!700254)))

(assert (=> b!1234656 (= res!822928 (not (noDuplicate!1867 lt!559909)))))

(assert (= (and start!102794 res!822922) b!1234654))

(assert (= (and b!1234654 res!822925) b!1234649))

(assert (= (and b!1234649 res!822929) b!1234650))

(assert (= (and b!1234650 res!822923) b!1234655))

(assert (= (and b!1234655 res!822920) b!1234653))

(assert (= (and b!1234653 res!822918) b!1234645))

(assert (= (and b!1234645 res!822921) b!1234646))

(assert (= (and b!1234646 res!822924) b!1234651))

(assert (= (and b!1234651 (not res!822919)) b!1234656))

(assert (= (and b!1234656 (not res!822928)) b!1234652))

(assert (= (and b!1234652 (not res!822927)) b!1234647))

(assert (= (and b!1234647 (not res!822926)) b!1234648))

(declare-fun m!1138619 () Bool)

(assert (=> b!1234649 m!1138619))

(declare-fun m!1138621 () Bool)

(assert (=> b!1234653 m!1138621))

(declare-fun m!1138623 () Bool)

(assert (=> b!1234656 m!1138623))

(declare-fun m!1138625 () Bool)

(assert (=> b!1234647 m!1138625))

(declare-fun m!1138627 () Bool)

(assert (=> b!1234650 m!1138627))

(declare-fun m!1138629 () Bool)

(assert (=> b!1234652 m!1138629))

(declare-fun m!1138631 () Bool)

(assert (=> b!1234648 m!1138631))

(declare-fun m!1138633 () Bool)

(assert (=> b!1234648 m!1138633))

(declare-fun m!1138635 () Bool)

(assert (=> start!102794 m!1138635))

(declare-fun m!1138637 () Bool)

(assert (=> b!1234651 m!1138637))

(declare-fun m!1138639 () Bool)

(assert (=> b!1234651 m!1138639))

(declare-fun m!1138641 () Bool)

(assert (=> b!1234651 m!1138641))

(declare-fun m!1138643 () Bool)

(assert (=> b!1234651 m!1138643))

(declare-fun m!1138645 () Bool)

(assert (=> b!1234651 m!1138645))

(declare-fun m!1138647 () Bool)

(assert (=> b!1234655 m!1138647))

(declare-fun m!1138649 () Bool)

(assert (=> b!1234654 m!1138649))

(assert (=> b!1234646 m!1138643))

(assert (=> b!1234646 m!1138643))

(declare-fun m!1138651 () Bool)

(assert (=> b!1234646 m!1138651))

(push 1)

(assert (not b!1234654))

(assert (not b!1234655))

(assert (not b!1234653))

(assert (not b!1234649))

(assert (not b!1234652))

(assert (not b!1234656))

(assert (not b!1234648))

(assert (not b!1234651))

(assert (not b!1234646))

(assert (not b!1234650))

(assert (not b!1234647))

(assert (not start!102794))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


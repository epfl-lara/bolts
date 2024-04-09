; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102670 () Bool)

(assert start!102670)

(declare-fun res!821928 () Bool)

(declare-fun e!699855 () Bool)

(assert (=> start!102670 (=> (not res!821928) (not e!699855))))

(declare-datatypes ((array!79501 0))(
  ( (array!79502 (arr!38356 (Array (_ BitVec 32) (_ BitVec 64))) (size!38893 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79501)

(assert (=> start!102670 (= res!821928 (bvslt (size!38893 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102670 e!699855))

(declare-fun array_inv!29132 (array!79501) Bool)

(assert (=> start!102670 (array_inv!29132 a!3806)))

(assert (=> start!102670 true))

(declare-fun b!1233633 () Bool)

(declare-fun res!821924 () Bool)

(assert (=> b!1233633 (=> (not res!821924) (not e!699855))))

(declare-datatypes ((List!27307 0))(
  ( (Nil!27304) (Cons!27303 (h!28512 (_ BitVec 64)) (t!40777 List!27307)) )
))
(declare-fun acc!823 () List!27307)

(declare-fun noDuplicate!1829 (List!27307) Bool)

(assert (=> b!1233633 (= res!821924 (noDuplicate!1829 acc!823))))

(declare-fun b!1233634 () Bool)

(declare-fun res!821927 () Bool)

(assert (=> b!1233634 (=> (not res!821927) (not e!699855))))

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79501 (_ BitVec 32) List!27307) Bool)

(assert (=> b!1233634 (= res!821927 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1233635 () Bool)

(declare-fun res!821925 () Bool)

(assert (=> b!1233635 (=> (not res!821925) (not e!699855))))

(declare-fun k0!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79501 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1233635 (= res!821925 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1233636 () Bool)

(declare-fun e!699854 () Bool)

(assert (=> b!1233636 (= e!699854 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27303 (select (arr!38356 a!3806) from!3184) Nil!27304)))))

(declare-fun b!1233637 () Bool)

(declare-fun res!821926 () Bool)

(assert (=> b!1233637 (=> (not res!821926) (not e!699855))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1233637 (= res!821926 (validKeyInArray!0 (select (arr!38356 a!3806) from!3184)))))

(declare-fun b!1233638 () Bool)

(declare-fun res!821929 () Bool)

(assert (=> b!1233638 (=> (not res!821929) (not e!699855))))

(declare-fun contains!7222 (List!27307 (_ BitVec 64)) Bool)

(assert (=> b!1233638 (= res!821929 (not (contains!7222 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1233639 () Bool)

(declare-fun res!821932 () Bool)

(assert (=> b!1233639 (=> (not res!821932) (not e!699855))))

(assert (=> b!1233639 (= res!821932 (not (contains!7222 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1233640 () Bool)

(assert (=> b!1233640 (= e!699855 (not true))))

(assert (=> b!1233640 (not (arrayContainsKey!0 a!3806 (select (arr!38356 a!3806) from!3184) (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-datatypes ((Unit!40792 0))(
  ( (Unit!40793) )
))
(declare-fun lt!559668 () Unit!40792)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!79501 (_ BitVec 32) (_ BitVec 64) List!27307) Unit!40792)

(assert (=> b!1233640 (= lt!559668 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (select (arr!38356 a!3806) from!3184) (Cons!27303 (select (arr!38356 a!3806) from!3184) Nil!27304)))))

(assert (=> b!1233640 e!699854))

(declare-fun res!821931 () Bool)

(assert (=> b!1233640 (=> (not res!821931) (not e!699854))))

(assert (=> b!1233640 (= res!821931 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27304))))

(declare-fun lt!559669 () Unit!40792)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79501 List!27307 List!27307 (_ BitVec 32)) Unit!40792)

(assert (=> b!1233640 (= lt!559669 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27304 from!3184))))

(assert (=> b!1233640 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27303 (select (arr!38356 a!3806) from!3184) acc!823))))

(declare-fun b!1233641 () Bool)

(declare-fun res!821930 () Bool)

(assert (=> b!1233641 (=> (not res!821930) (not e!699855))))

(assert (=> b!1233641 (= res!821930 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38893 a!3806)) (bvslt from!3184 (size!38893 a!3806))))))

(declare-fun b!1233642 () Bool)

(declare-fun res!821933 () Bool)

(assert (=> b!1233642 (=> (not res!821933) (not e!699855))))

(assert (=> b!1233642 (= res!821933 (validKeyInArray!0 k0!2913))))

(assert (= (and start!102670 res!821928) b!1233642))

(assert (= (and b!1233642 res!821933) b!1233641))

(assert (= (and b!1233641 res!821930) b!1233633))

(assert (= (and b!1233633 res!821924) b!1233639))

(assert (= (and b!1233639 res!821932) b!1233638))

(assert (= (and b!1233638 res!821929) b!1233635))

(assert (= (and b!1233635 res!821925) b!1233634))

(assert (= (and b!1233634 res!821927) b!1233637))

(assert (= (and b!1233637 res!821926) b!1233640))

(assert (= (and b!1233640 res!821931) b!1233636))

(declare-fun m!1137743 () Bool)

(assert (=> b!1233639 m!1137743))

(declare-fun m!1137745 () Bool)

(assert (=> start!102670 m!1137745))

(declare-fun m!1137747 () Bool)

(assert (=> b!1233636 m!1137747))

(declare-fun m!1137749 () Bool)

(assert (=> b!1233636 m!1137749))

(assert (=> b!1233637 m!1137747))

(assert (=> b!1233637 m!1137747))

(declare-fun m!1137751 () Bool)

(assert (=> b!1233637 m!1137751))

(declare-fun m!1137753 () Bool)

(assert (=> b!1233633 m!1137753))

(declare-fun m!1137755 () Bool)

(assert (=> b!1233634 m!1137755))

(declare-fun m!1137757 () Bool)

(assert (=> b!1233635 m!1137757))

(declare-fun m!1137759 () Bool)

(assert (=> b!1233638 m!1137759))

(declare-fun m!1137761 () Bool)

(assert (=> b!1233642 m!1137761))

(declare-fun m!1137763 () Bool)

(assert (=> b!1233640 m!1137763))

(declare-fun m!1137765 () Bool)

(assert (=> b!1233640 m!1137765))

(assert (=> b!1233640 m!1137747))

(declare-fun m!1137767 () Bool)

(assert (=> b!1233640 m!1137767))

(assert (=> b!1233640 m!1137747))

(declare-fun m!1137769 () Bool)

(assert (=> b!1233640 m!1137769))

(assert (=> b!1233640 m!1137747))

(declare-fun m!1137771 () Bool)

(assert (=> b!1233640 m!1137771))

(check-sat (not b!1233636) (not b!1233637) (not b!1233633) (not start!102670) (not b!1233642) (not b!1233638) (not b!1233634) (not b!1233635) (not b!1233639) (not b!1233640))
(check-sat)

; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102860 () Bool)

(assert start!102860)

(declare-fun b!1235739 () Bool)

(declare-fun res!823920 () Bool)

(declare-fun e!700600 () Bool)

(assert (=> b!1235739 (=> (not res!823920) (not e!700600))))

(declare-datatypes ((array!79646 0))(
  ( (array!79647 (arr!38427 (Array (_ BitVec 32) (_ BitVec 64))) (size!38964 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79646)

(declare-datatypes ((List!27378 0))(
  ( (Nil!27375) (Cons!27374 (h!28583 (_ BitVec 64)) (t!40848 List!27378)) )
))
(declare-fun acc!846 () List!27378)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79646 (_ BitVec 32) List!27378) Bool)

(assert (=> b!1235739 (= res!823920 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1235740 () Bool)

(declare-fun res!823921 () Bool)

(assert (=> b!1235740 (=> (not res!823921) (not e!700600))))

(declare-fun contains!7293 (List!27378 (_ BitVec 64)) Bool)

(assert (=> b!1235740 (= res!823921 (not (contains!7293 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235741 () Bool)

(declare-fun e!700598 () Bool)

(assert (=> b!1235741 (= e!700600 e!700598)))

(declare-fun res!823923 () Bool)

(assert (=> b!1235741 (=> (not res!823923) (not e!700598))))

(assert (=> b!1235741 (= res!823923 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3213) (size!38964 a!3835))))))

(declare-datatypes ((Unit!40913 0))(
  ( (Unit!40914) )
))
(declare-fun lt!560450 () Unit!40913)

(declare-fun e!700599 () Unit!40913)

(assert (=> b!1235741 (= lt!560450 e!700599)))

(declare-fun c!120773 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1235741 (= c!120773 (validKeyInArray!0 (select (arr!38427 a!3835) from!3213)))))

(declare-fun b!1235742 () Bool)

(assert (=> b!1235742 (= e!700598 false)))

(declare-fun lt!560455 () Bool)

(assert (=> b!1235742 (= lt!560455 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846))))

(declare-fun res!823924 () Bool)

(assert (=> start!102860 (=> (not res!823924) (not e!700600))))

(assert (=> start!102860 (= res!823924 (and (bvslt (size!38964 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38964 a!3835))))))

(assert (=> start!102860 e!700600))

(declare-fun array_inv!29203 (array!79646) Bool)

(assert (=> start!102860 (array_inv!29203 a!3835)))

(assert (=> start!102860 true))

(declare-fun b!1235743 () Bool)

(declare-fun res!823925 () Bool)

(assert (=> b!1235743 (=> (not res!823925) (not e!700600))))

(assert (=> b!1235743 (= res!823925 (not (= from!3213 (bvsub (size!38964 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1235744 () Bool)

(declare-fun Unit!40915 () Unit!40913)

(assert (=> b!1235744 (= e!700599 Unit!40915)))

(declare-fun b!1235745 () Bool)

(declare-fun res!823919 () Bool)

(assert (=> b!1235745 (=> (not res!823919) (not e!700600))))

(assert (=> b!1235745 (= res!823919 (not (contains!7293 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235746 () Bool)

(declare-fun res!823922 () Bool)

(assert (=> b!1235746 (=> (not res!823922) (not e!700600))))

(declare-fun noDuplicate!1900 (List!27378) Bool)

(assert (=> b!1235746 (= res!823922 (noDuplicate!1900 acc!846))))

(declare-fun b!1235747 () Bool)

(declare-fun res!823918 () Bool)

(assert (=> b!1235747 (=> (not res!823918) (not e!700600))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1235747 (= res!823918 (contains!7293 acc!846 k!2925))))

(declare-fun b!1235748 () Bool)

(declare-fun lt!560451 () Unit!40913)

(assert (=> b!1235748 (= e!700599 lt!560451)))

(declare-fun lt!560454 () List!27378)

(assert (=> b!1235748 (= lt!560454 (Cons!27374 (select (arr!38427 a!3835) from!3213) acc!846))))

(declare-fun lt!560452 () Unit!40913)

(declare-fun lemmaListSubSeqRefl!0 (List!27378) Unit!40913)

(assert (=> b!1235748 (= lt!560452 (lemmaListSubSeqRefl!0 lt!560454))))

(declare-fun subseq!548 (List!27378 List!27378) Bool)

(assert (=> b!1235748 (subseq!548 lt!560454 lt!560454)))

(declare-fun lt!560453 () Unit!40913)

(declare-fun subseqTail!41 (List!27378 List!27378) Unit!40913)

(assert (=> b!1235748 (= lt!560453 (subseqTail!41 lt!560454 lt!560454))))

(assert (=> b!1235748 (subseq!548 acc!846 lt!560454)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79646 List!27378 List!27378 (_ BitVec 32)) Unit!40913)

(assert (=> b!1235748 (= lt!560451 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!560454 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(assert (=> b!1235748 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(assert (= (and start!102860 res!823924) b!1235746))

(assert (= (and b!1235746 res!823922) b!1235740))

(assert (= (and b!1235740 res!823921) b!1235745))

(assert (= (and b!1235745 res!823919) b!1235739))

(assert (= (and b!1235739 res!823920) b!1235747))

(assert (= (and b!1235747 res!823918) b!1235743))

(assert (= (and b!1235743 res!823925) b!1235741))

(assert (= (and b!1235741 c!120773) b!1235748))

(assert (= (and b!1235741 (not c!120773)) b!1235744))

(assert (= (and b!1235741 res!823923) b!1235742))

(declare-fun m!1139651 () Bool)

(assert (=> b!1235740 m!1139651))

(declare-fun m!1139653 () Bool)

(assert (=> b!1235746 m!1139653))

(declare-fun m!1139655 () Bool)

(assert (=> b!1235748 m!1139655))

(declare-fun m!1139657 () Bool)

(assert (=> b!1235748 m!1139657))

(declare-fun m!1139659 () Bool)

(assert (=> b!1235748 m!1139659))

(declare-fun m!1139661 () Bool)

(assert (=> b!1235748 m!1139661))

(declare-fun m!1139663 () Bool)

(assert (=> b!1235748 m!1139663))

(declare-fun m!1139665 () Bool)

(assert (=> b!1235748 m!1139665))

(declare-fun m!1139667 () Bool)

(assert (=> b!1235748 m!1139667))

(declare-fun m!1139669 () Bool)

(assert (=> b!1235747 m!1139669))

(declare-fun m!1139671 () Bool)

(assert (=> b!1235745 m!1139671))

(declare-fun m!1139673 () Bool)

(assert (=> start!102860 m!1139673))

(declare-fun m!1139675 () Bool)

(assert (=> b!1235739 m!1139675))

(assert (=> b!1235742 m!1139665))

(assert (=> b!1235741 m!1139661))

(assert (=> b!1235741 m!1139661))

(declare-fun m!1139677 () Bool)

(assert (=> b!1235741 m!1139677))

(push 1)


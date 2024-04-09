; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102802 () Bool)

(assert start!102802)

(declare-fun b!1234789 () Bool)

(declare-fun res!823067 () Bool)

(declare-fun e!700290 () Bool)

(assert (=> b!1234789 (=> (not res!823067) (not e!700290))))

(declare-datatypes ((List!27349 0))(
  ( (Nil!27346) (Cons!27345 (h!28554 (_ BitVec 64)) (t!40819 List!27349)) )
))
(declare-fun acc!846 () List!27349)

(declare-fun k0!2925 () (_ BitVec 64))

(declare-fun contains!7264 (List!27349 (_ BitVec 64)) Bool)

(assert (=> b!1234789 (= res!823067 (contains!7264 acc!846 k0!2925))))

(declare-fun b!1234790 () Bool)

(declare-fun res!823064 () Bool)

(assert (=> b!1234790 (=> (not res!823064) (not e!700290))))

(declare-datatypes ((array!79588 0))(
  ( (array!79589 (arr!38398 (Array (_ BitVec 32) (_ BitVec 64))) (size!38935 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79588)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1234790 (= res!823064 (validKeyInArray!0 (select (arr!38398 a!3835) from!3213)))))

(declare-fun b!1234791 () Bool)

(declare-fun res!823073 () Bool)

(assert (=> b!1234791 (=> (not res!823073) (not e!700290))))

(assert (=> b!1234791 (= res!823073 (not (= from!3213 (bvsub (size!38935 a!3835) #b00000000000000000000000000000001))))))

(declare-fun res!823070 () Bool)

(assert (=> start!102802 (=> (not res!823070) (not e!700290))))

(assert (=> start!102802 (= res!823070 (and (bvslt (size!38935 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38935 a!3835))))))

(assert (=> start!102802 e!700290))

(declare-fun array_inv!29174 (array!79588) Bool)

(assert (=> start!102802 (array_inv!29174 a!3835)))

(assert (=> start!102802 true))

(declare-fun b!1234792 () Bool)

(declare-fun res!823068 () Bool)

(assert (=> b!1234792 (=> (not res!823068) (not e!700290))))

(declare-fun arrayNoDuplicates!0 (array!79588 (_ BitVec 32) List!27349) Bool)

(assert (=> b!1234792 (= res!823068 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1234793 () Bool)

(declare-fun res!823071 () Bool)

(declare-fun e!700289 () Bool)

(assert (=> b!1234793 (=> res!823071 e!700289)))

(declare-fun lt!559971 () List!27349)

(declare-fun noDuplicate!1871 (List!27349) Bool)

(assert (=> b!1234793 (= res!823071 (not (noDuplicate!1871 lt!559971)))))

(declare-fun b!1234794 () Bool)

(declare-fun res!823062 () Bool)

(assert (=> b!1234794 (=> res!823062 e!700289)))

(assert (=> b!1234794 (= res!823062 (contains!7264 lt!559971 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1234795 () Bool)

(declare-fun res!823063 () Bool)

(assert (=> b!1234795 (=> (not res!823063) (not e!700290))))

(assert (=> b!1234795 (= res!823063 (noDuplicate!1871 acc!846))))

(declare-fun b!1234796 () Bool)

(assert (=> b!1234796 (= e!700290 (not e!700289))))

(declare-fun res!823065 () Bool)

(assert (=> b!1234796 (=> res!823065 e!700289)))

(assert (=> b!1234796 (= res!823065 (bvslt (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000))))

(declare-fun subseq!519 (List!27349 List!27349) Bool)

(assert (=> b!1234796 (subseq!519 acc!846 lt!559971)))

(declare-datatypes ((Unit!40840 0))(
  ( (Unit!40841) )
))
(declare-fun lt!559968 () Unit!40840)

(declare-fun subseqTail!12 (List!27349 List!27349) Unit!40840)

(assert (=> b!1234796 (= lt!559968 (subseqTail!12 lt!559971 lt!559971))))

(assert (=> b!1234796 (subseq!519 lt!559971 lt!559971)))

(declare-fun lt!559970 () Unit!40840)

(declare-fun lemmaListSubSeqRefl!0 (List!27349) Unit!40840)

(assert (=> b!1234796 (= lt!559970 (lemmaListSubSeqRefl!0 lt!559971))))

(assert (=> b!1234796 (= lt!559971 (Cons!27345 (select (arr!38398 a!3835) from!3213) acc!846))))

(declare-fun b!1234797 () Bool)

(declare-fun res!823066 () Bool)

(assert (=> b!1234797 (=> (not res!823066) (not e!700290))))

(assert (=> b!1234797 (= res!823066 (not (contains!7264 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1234798 () Bool)

(declare-fun res!823072 () Bool)

(assert (=> b!1234798 (=> res!823072 e!700289)))

(assert (=> b!1234798 (= res!823072 (contains!7264 lt!559971 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1234799 () Bool)

(assert (=> b!1234799 (= e!700289 true)))

(declare-fun lt!559972 () Bool)

(assert (=> b!1234799 (= lt!559972 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) lt!559971))))

(declare-fun lt!559969 () Unit!40840)

(declare-fun noDuplicateSubseq!66 (List!27349 List!27349) Unit!40840)

(assert (=> b!1234799 (= lt!559969 (noDuplicateSubseq!66 acc!846 lt!559971))))

(declare-fun b!1234800 () Bool)

(declare-fun res!823069 () Bool)

(assert (=> b!1234800 (=> (not res!823069) (not e!700290))))

(assert (=> b!1234800 (= res!823069 (not (contains!7264 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!102802 res!823070) b!1234795))

(assert (= (and b!1234795 res!823063) b!1234797))

(assert (= (and b!1234797 res!823066) b!1234800))

(assert (= (and b!1234800 res!823069) b!1234792))

(assert (= (and b!1234792 res!823068) b!1234789))

(assert (= (and b!1234789 res!823067) b!1234791))

(assert (= (and b!1234791 res!823073) b!1234790))

(assert (= (and b!1234790 res!823064) b!1234796))

(assert (= (and b!1234796 (not res!823065)) b!1234793))

(assert (= (and b!1234793 (not res!823071)) b!1234794))

(assert (= (and b!1234794 (not res!823062)) b!1234798))

(assert (= (and b!1234798 (not res!823072)) b!1234799))

(declare-fun m!1138755 () Bool)

(assert (=> b!1234793 m!1138755))

(declare-fun m!1138757 () Bool)

(assert (=> start!102802 m!1138757))

(declare-fun m!1138759 () Bool)

(assert (=> b!1234800 m!1138759))

(declare-fun m!1138761 () Bool)

(assert (=> b!1234794 m!1138761))

(declare-fun m!1138763 () Bool)

(assert (=> b!1234796 m!1138763))

(declare-fun m!1138765 () Bool)

(assert (=> b!1234796 m!1138765))

(declare-fun m!1138767 () Bool)

(assert (=> b!1234796 m!1138767))

(declare-fun m!1138769 () Bool)

(assert (=> b!1234796 m!1138769))

(declare-fun m!1138771 () Bool)

(assert (=> b!1234796 m!1138771))

(declare-fun m!1138773 () Bool)

(assert (=> b!1234797 m!1138773))

(declare-fun m!1138775 () Bool)

(assert (=> b!1234789 m!1138775))

(declare-fun m!1138777 () Bool)

(assert (=> b!1234792 m!1138777))

(declare-fun m!1138779 () Bool)

(assert (=> b!1234798 m!1138779))

(assert (=> b!1234790 m!1138767))

(assert (=> b!1234790 m!1138767))

(declare-fun m!1138781 () Bool)

(assert (=> b!1234790 m!1138781))

(declare-fun m!1138783 () Bool)

(assert (=> b!1234799 m!1138783))

(declare-fun m!1138785 () Bool)

(assert (=> b!1234799 m!1138785))

(declare-fun m!1138787 () Bool)

(assert (=> b!1234795 m!1138787))

(check-sat (not b!1234798) (not b!1234789) (not b!1234797) (not start!102802) (not b!1234792) (not b!1234795) (not b!1234799) (not b!1234796) (not b!1234793) (not b!1234794) (not b!1234790) (not b!1234800))
(check-sat)

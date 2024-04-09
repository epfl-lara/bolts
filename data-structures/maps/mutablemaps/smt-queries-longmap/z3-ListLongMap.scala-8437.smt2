; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102796 () Bool)

(assert start!102796)

(declare-fun b!1234681 () Bool)

(declare-fun res!822955 () Bool)

(declare-fun e!700264 () Bool)

(assert (=> b!1234681 (=> (not res!822955) (not e!700264))))

(declare-fun from!3213 () (_ BitVec 32))

(declare-datatypes ((array!79582 0))(
  ( (array!79583 (arr!38395 (Array (_ BitVec 32) (_ BitVec 64))) (size!38932 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79582)

(assert (=> b!1234681 (= res!822955 (not (= from!3213 (bvsub (size!38932 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1234682 () Bool)

(declare-fun res!822961 () Bool)

(assert (=> b!1234682 (=> (not res!822961) (not e!700264))))

(declare-datatypes ((List!27346 0))(
  ( (Nil!27343) (Cons!27342 (h!28551 (_ BitVec 64)) (t!40816 List!27346)) )
))
(declare-fun acc!846 () List!27346)

(declare-fun contains!7261 (List!27346 (_ BitVec 64)) Bool)

(assert (=> b!1234682 (= res!822961 (not (contains!7261 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1234683 () Bool)

(declare-fun res!822954 () Bool)

(declare-fun e!700263 () Bool)

(assert (=> b!1234683 (=> res!822954 e!700263)))

(declare-fun lt!559926 () List!27346)

(declare-fun noDuplicate!1868 (List!27346) Bool)

(assert (=> b!1234683 (= res!822954 (not (noDuplicate!1868 lt!559926)))))

(declare-fun res!822965 () Bool)

(assert (=> start!102796 (=> (not res!822965) (not e!700264))))

(assert (=> start!102796 (= res!822965 (and (bvslt (size!38932 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38932 a!3835))))))

(assert (=> start!102796 e!700264))

(declare-fun array_inv!29171 (array!79582) Bool)

(assert (=> start!102796 (array_inv!29171 a!3835)))

(assert (=> start!102796 true))

(declare-fun b!1234684 () Bool)

(declare-fun res!822962 () Bool)

(assert (=> b!1234684 (=> res!822962 e!700263)))

(assert (=> b!1234684 (= res!822962 (contains!7261 lt!559926 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1234685 () Bool)

(declare-fun res!822963 () Bool)

(assert (=> b!1234685 (=> (not res!822963) (not e!700264))))

(declare-fun arrayNoDuplicates!0 (array!79582 (_ BitVec 32) List!27346) Bool)

(assert (=> b!1234685 (= res!822963 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1234686 () Bool)

(declare-fun res!822957 () Bool)

(assert (=> b!1234686 (=> (not res!822957) (not e!700264))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1234686 (= res!822957 (validKeyInArray!0 (select (arr!38395 a!3835) from!3213)))))

(declare-fun b!1234687 () Bool)

(declare-fun res!822958 () Bool)

(assert (=> b!1234687 (=> res!822958 e!700263)))

(assert (=> b!1234687 (= res!822958 (contains!7261 lt!559926 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1234688 () Bool)

(assert (=> b!1234688 (= e!700264 (not e!700263))))

(declare-fun res!822960 () Bool)

(assert (=> b!1234688 (=> res!822960 e!700263)))

(assert (=> b!1234688 (= res!822960 (bvslt (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000))))

(declare-fun subseq!516 (List!27346 List!27346) Bool)

(assert (=> b!1234688 (subseq!516 acc!846 lt!559926)))

(declare-datatypes ((Unit!40834 0))(
  ( (Unit!40835) )
))
(declare-fun lt!559927 () Unit!40834)

(declare-fun subseqTail!9 (List!27346 List!27346) Unit!40834)

(assert (=> b!1234688 (= lt!559927 (subseqTail!9 lt!559926 lt!559926))))

(assert (=> b!1234688 (subseq!516 lt!559926 lt!559926)))

(declare-fun lt!559923 () Unit!40834)

(declare-fun lemmaListSubSeqRefl!0 (List!27346) Unit!40834)

(assert (=> b!1234688 (= lt!559923 (lemmaListSubSeqRefl!0 lt!559926))))

(assert (=> b!1234688 (= lt!559926 (Cons!27342 (select (arr!38395 a!3835) from!3213) acc!846))))

(declare-fun b!1234689 () Bool)

(declare-fun res!822956 () Bool)

(assert (=> b!1234689 (=> (not res!822956) (not e!700264))))

(assert (=> b!1234689 (= res!822956 (not (contains!7261 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1234690 () Bool)

(declare-fun res!822964 () Bool)

(assert (=> b!1234690 (=> (not res!822964) (not e!700264))))

(declare-fun k0!2925 () (_ BitVec 64))

(assert (=> b!1234690 (= res!822964 (contains!7261 acc!846 k0!2925))))

(declare-fun b!1234691 () Bool)

(assert (=> b!1234691 (= e!700263 true)))

(declare-fun lt!559924 () Bool)

(assert (=> b!1234691 (= lt!559924 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) lt!559926))))

(declare-fun lt!559925 () Unit!40834)

(declare-fun noDuplicateSubseq!63 (List!27346 List!27346) Unit!40834)

(assert (=> b!1234691 (= lt!559925 (noDuplicateSubseq!63 acc!846 lt!559926))))

(declare-fun b!1234692 () Bool)

(declare-fun res!822959 () Bool)

(assert (=> b!1234692 (=> (not res!822959) (not e!700264))))

(assert (=> b!1234692 (= res!822959 (noDuplicate!1868 acc!846))))

(assert (= (and start!102796 res!822965) b!1234692))

(assert (= (and b!1234692 res!822959) b!1234682))

(assert (= (and b!1234682 res!822961) b!1234689))

(assert (= (and b!1234689 res!822956) b!1234685))

(assert (= (and b!1234685 res!822963) b!1234690))

(assert (= (and b!1234690 res!822964) b!1234681))

(assert (= (and b!1234681 res!822955) b!1234686))

(assert (= (and b!1234686 res!822957) b!1234688))

(assert (= (and b!1234688 (not res!822960)) b!1234683))

(assert (= (and b!1234683 (not res!822954)) b!1234684))

(assert (= (and b!1234684 (not res!822962)) b!1234687))

(assert (= (and b!1234687 (not res!822958)) b!1234691))

(declare-fun m!1138653 () Bool)

(assert (=> b!1234687 m!1138653))

(declare-fun m!1138655 () Bool)

(assert (=> b!1234688 m!1138655))

(declare-fun m!1138657 () Bool)

(assert (=> b!1234688 m!1138657))

(declare-fun m!1138659 () Bool)

(assert (=> b!1234688 m!1138659))

(declare-fun m!1138661 () Bool)

(assert (=> b!1234688 m!1138661))

(declare-fun m!1138663 () Bool)

(assert (=> b!1234688 m!1138663))

(declare-fun m!1138665 () Bool)

(assert (=> b!1234682 m!1138665))

(declare-fun m!1138667 () Bool)

(assert (=> b!1234692 m!1138667))

(declare-fun m!1138669 () Bool)

(assert (=> b!1234691 m!1138669))

(declare-fun m!1138671 () Bool)

(assert (=> b!1234691 m!1138671))

(declare-fun m!1138673 () Bool)

(assert (=> b!1234689 m!1138673))

(declare-fun m!1138675 () Bool)

(assert (=> start!102796 m!1138675))

(assert (=> b!1234686 m!1138663))

(assert (=> b!1234686 m!1138663))

(declare-fun m!1138677 () Bool)

(assert (=> b!1234686 m!1138677))

(declare-fun m!1138679 () Bool)

(assert (=> b!1234690 m!1138679))

(declare-fun m!1138681 () Bool)

(assert (=> b!1234685 m!1138681))

(declare-fun m!1138683 () Bool)

(assert (=> b!1234683 m!1138683))

(declare-fun m!1138685 () Bool)

(assert (=> b!1234684 m!1138685))

(check-sat (not b!1234685) (not b!1234687) (not b!1234684) (not b!1234690) (not b!1234682) (not start!102796) (not b!1234689) (not b!1234691) (not b!1234683) (not b!1234688) (not b!1234692) (not b!1234686))
(check-sat)

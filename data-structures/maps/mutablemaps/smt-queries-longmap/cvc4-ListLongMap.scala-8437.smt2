; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102798 () Bool)

(assert start!102798)

(declare-fun b!1234717 () Bool)

(declare-fun e!700272 () Bool)

(declare-fun e!700271 () Bool)

(assert (=> b!1234717 (= e!700272 (not e!700271))))

(declare-fun res!822995 () Bool)

(assert (=> b!1234717 (=> res!822995 e!700271)))

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> b!1234717 (= res!822995 (bvslt (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000))))

(declare-datatypes ((List!27347 0))(
  ( (Nil!27344) (Cons!27343 (h!28552 (_ BitVec 64)) (t!40817 List!27347)) )
))
(declare-fun acc!846 () List!27347)

(declare-fun lt!559942 () List!27347)

(declare-fun subseq!517 (List!27347 List!27347) Bool)

(assert (=> b!1234717 (subseq!517 acc!846 lt!559942)))

(declare-datatypes ((Unit!40836 0))(
  ( (Unit!40837) )
))
(declare-fun lt!559941 () Unit!40836)

(declare-fun subseqTail!10 (List!27347 List!27347) Unit!40836)

(assert (=> b!1234717 (= lt!559941 (subseqTail!10 lt!559942 lt!559942))))

(assert (=> b!1234717 (subseq!517 lt!559942 lt!559942)))

(declare-fun lt!559940 () Unit!40836)

(declare-fun lemmaListSubSeqRefl!0 (List!27347) Unit!40836)

(assert (=> b!1234717 (= lt!559940 (lemmaListSubSeqRefl!0 lt!559942))))

(declare-datatypes ((array!79584 0))(
  ( (array!79585 (arr!38396 (Array (_ BitVec 32) (_ BitVec 64))) (size!38933 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79584)

(assert (=> b!1234717 (= lt!559942 (Cons!27343 (select (arr!38396 a!3835) from!3213) acc!846))))

(declare-fun b!1234718 () Bool)

(declare-fun res!823001 () Bool)

(assert (=> b!1234718 (=> (not res!823001) (not e!700272))))

(assert (=> b!1234718 (= res!823001 (not (= from!3213 (bvsub (size!38933 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1234719 () Bool)

(declare-fun res!822994 () Bool)

(assert (=> b!1234719 (=> (not res!822994) (not e!700272))))

(declare-fun arrayNoDuplicates!0 (array!79584 (_ BitVec 32) List!27347) Bool)

(assert (=> b!1234719 (= res!822994 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1234720 () Bool)

(declare-fun res!822990 () Bool)

(assert (=> b!1234720 (=> res!822990 e!700271)))

(declare-fun contains!7262 (List!27347 (_ BitVec 64)) Bool)

(assert (=> b!1234720 (= res!822990 (contains!7262 lt!559942 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1234721 () Bool)

(declare-fun res!822997 () Bool)

(assert (=> b!1234721 (=> (not res!822997) (not e!700272))))

(assert (=> b!1234721 (= res!822997 (not (contains!7262 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1234722 () Bool)

(assert (=> b!1234722 (= e!700271 true)))

(declare-fun lt!559939 () Bool)

(assert (=> b!1234722 (= lt!559939 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) lt!559942))))

(declare-fun lt!559938 () Unit!40836)

(declare-fun noDuplicateSubseq!64 (List!27347 List!27347) Unit!40836)

(assert (=> b!1234722 (= lt!559938 (noDuplicateSubseq!64 acc!846 lt!559942))))

(declare-fun b!1234723 () Bool)

(declare-fun res!822999 () Bool)

(assert (=> b!1234723 (=> (not res!822999) (not e!700272))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1234723 (= res!822999 (contains!7262 acc!846 k!2925))))

(declare-fun b!1234724 () Bool)

(declare-fun res!822996 () Bool)

(assert (=> b!1234724 (=> res!822996 e!700271)))

(assert (=> b!1234724 (= res!822996 (contains!7262 lt!559942 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1234725 () Bool)

(declare-fun res!823000 () Bool)

(assert (=> b!1234725 (=> (not res!823000) (not e!700272))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1234725 (= res!823000 (validKeyInArray!0 (select (arr!38396 a!3835) from!3213)))))

(declare-fun b!1234726 () Bool)

(declare-fun res!822998 () Bool)

(assert (=> b!1234726 (=> res!822998 e!700271)))

(declare-fun noDuplicate!1869 (List!27347) Bool)

(assert (=> b!1234726 (= res!822998 (not (noDuplicate!1869 lt!559942)))))

(declare-fun res!822991 () Bool)

(assert (=> start!102798 (=> (not res!822991) (not e!700272))))

(assert (=> start!102798 (= res!822991 (and (bvslt (size!38933 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38933 a!3835))))))

(assert (=> start!102798 e!700272))

(declare-fun array_inv!29172 (array!79584) Bool)

(assert (=> start!102798 (array_inv!29172 a!3835)))

(assert (=> start!102798 true))

(declare-fun b!1234727 () Bool)

(declare-fun res!822992 () Bool)

(assert (=> b!1234727 (=> (not res!822992) (not e!700272))))

(assert (=> b!1234727 (= res!822992 (noDuplicate!1869 acc!846))))

(declare-fun b!1234728 () Bool)

(declare-fun res!822993 () Bool)

(assert (=> b!1234728 (=> (not res!822993) (not e!700272))))

(assert (=> b!1234728 (= res!822993 (not (contains!7262 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!102798 res!822991) b!1234727))

(assert (= (and b!1234727 res!822992) b!1234721))

(assert (= (and b!1234721 res!822997) b!1234728))

(assert (= (and b!1234728 res!822993) b!1234719))

(assert (= (and b!1234719 res!822994) b!1234723))

(assert (= (and b!1234723 res!822999) b!1234718))

(assert (= (and b!1234718 res!823001) b!1234725))

(assert (= (and b!1234725 res!823000) b!1234717))

(assert (= (and b!1234717 (not res!822995)) b!1234726))

(assert (= (and b!1234726 (not res!822998)) b!1234720))

(assert (= (and b!1234720 (not res!822990)) b!1234724))

(assert (= (and b!1234724 (not res!822996)) b!1234722))

(declare-fun m!1138687 () Bool)

(assert (=> b!1234726 m!1138687))

(declare-fun m!1138689 () Bool)

(assert (=> b!1234717 m!1138689))

(declare-fun m!1138691 () Bool)

(assert (=> b!1234717 m!1138691))

(declare-fun m!1138693 () Bool)

(assert (=> b!1234717 m!1138693))

(declare-fun m!1138695 () Bool)

(assert (=> b!1234717 m!1138695))

(declare-fun m!1138697 () Bool)

(assert (=> b!1234717 m!1138697))

(declare-fun m!1138699 () Bool)

(assert (=> start!102798 m!1138699))

(declare-fun m!1138701 () Bool)

(assert (=> b!1234722 m!1138701))

(declare-fun m!1138703 () Bool)

(assert (=> b!1234722 m!1138703))

(declare-fun m!1138705 () Bool)

(assert (=> b!1234719 m!1138705))

(declare-fun m!1138707 () Bool)

(assert (=> b!1234727 m!1138707))

(declare-fun m!1138709 () Bool)

(assert (=> b!1234723 m!1138709))

(declare-fun m!1138711 () Bool)

(assert (=> b!1234720 m!1138711))

(declare-fun m!1138713 () Bool)

(assert (=> b!1234728 m!1138713))

(declare-fun m!1138715 () Bool)

(assert (=> b!1234724 m!1138715))

(declare-fun m!1138717 () Bool)

(assert (=> b!1234721 m!1138717))

(assert (=> b!1234725 m!1138693))

(assert (=> b!1234725 m!1138693))

(declare-fun m!1138719 () Bool)

(assert (=> b!1234725 m!1138719))

(push 1)

(assert (not b!1234723))

(assert (not b!1234717))

(assert (not b!1234727))

(assert (not b!1234724))

(assert (not b!1234722))

(assert (not b!1234720))

(assert (not b!1234725))

(assert (not b!1234726))

(assert (not start!102798))

(assert (not b!1234728))

(assert (not b!1234721))

(assert (not b!1234719))

(check-sat)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102786 () Bool)

(assert start!102786)

(declare-fun b!1234501 () Bool)

(declare-fun res!822785 () Bool)

(declare-fun e!700218 () Bool)

(assert (=> b!1234501 (=> (not res!822785) (not e!700218))))

(declare-datatypes ((List!27341 0))(
  ( (Nil!27338) (Cons!27337 (h!28546 (_ BitVec 64)) (t!40811 List!27341)) )
))
(declare-fun acc!846 () List!27341)

(declare-fun noDuplicate!1863 (List!27341) Bool)

(assert (=> b!1234501 (= res!822785 (noDuplicate!1863 acc!846))))

(declare-fun b!1234502 () Bool)

(declare-fun res!822783 () Bool)

(declare-fun e!700217 () Bool)

(assert (=> b!1234502 (=> res!822783 e!700217)))

(declare-fun lt!559848 () List!27341)

(declare-fun contains!7256 (List!27341 (_ BitVec 64)) Bool)

(assert (=> b!1234502 (= res!822783 (contains!7256 lt!559848 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1234503 () Bool)

(assert (=> b!1234503 (= e!700218 (not e!700217))))

(declare-fun res!822780 () Bool)

(assert (=> b!1234503 (=> res!822780 e!700217)))

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> b!1234503 (= res!822780 (bvslt (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000))))

(declare-fun subseq!511 (List!27341 List!27341) Bool)

(assert (=> b!1234503 (subseq!511 acc!846 lt!559848)))

(declare-datatypes ((Unit!40824 0))(
  ( (Unit!40825) )
))
(declare-fun lt!559849 () Unit!40824)

(declare-fun subseqTail!4 (List!27341 List!27341) Unit!40824)

(assert (=> b!1234503 (= lt!559849 (subseqTail!4 lt!559848 lt!559848))))

(assert (=> b!1234503 (subseq!511 lt!559848 lt!559848)))

(declare-fun lt!559852 () Unit!40824)

(declare-fun lemmaListSubSeqRefl!0 (List!27341) Unit!40824)

(assert (=> b!1234503 (= lt!559852 (lemmaListSubSeqRefl!0 lt!559848))))

(declare-datatypes ((array!79572 0))(
  ( (array!79573 (arr!38390 (Array (_ BitVec 32) (_ BitVec 64))) (size!38927 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79572)

(assert (=> b!1234503 (= lt!559848 (Cons!27337 (select (arr!38390 a!3835) from!3213) acc!846))))

(declare-fun b!1234504 () Bool)

(declare-fun res!822776 () Bool)

(assert (=> b!1234504 (=> (not res!822776) (not e!700218))))

(assert (=> b!1234504 (= res!822776 (not (contains!7256 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1234505 () Bool)

(declare-fun res!822779 () Bool)

(assert (=> b!1234505 (=> (not res!822779) (not e!700218))))

(assert (=> b!1234505 (= res!822779 (not (= from!3213 (bvsub (size!38927 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1234507 () Bool)

(declare-fun res!822774 () Bool)

(assert (=> b!1234507 (=> res!822774 e!700217)))

(assert (=> b!1234507 (= res!822774 (not (noDuplicate!1863 lt!559848)))))

(declare-fun b!1234508 () Bool)

(declare-fun res!822781 () Bool)

(assert (=> b!1234508 (=> res!822781 e!700217)))

(assert (=> b!1234508 (= res!822781 (contains!7256 lt!559848 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1234509 () Bool)

(assert (=> b!1234509 (= e!700217 true)))

(declare-fun lt!559850 () Bool)

(declare-fun arrayNoDuplicates!0 (array!79572 (_ BitVec 32) List!27341) Bool)

(assert (=> b!1234509 (= lt!559850 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) lt!559848))))

(declare-fun lt!559851 () Unit!40824)

(declare-fun noDuplicateSubseq!58 (List!27341 List!27341) Unit!40824)

(assert (=> b!1234509 (= lt!559851 (noDuplicateSubseq!58 acc!846 lt!559848))))

(declare-fun b!1234510 () Bool)

(declare-fun res!822782 () Bool)

(assert (=> b!1234510 (=> (not res!822782) (not e!700218))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1234510 (= res!822782 (validKeyInArray!0 (select (arr!38390 a!3835) from!3213)))))

(declare-fun b!1234511 () Bool)

(declare-fun res!822775 () Bool)

(assert (=> b!1234511 (=> (not res!822775) (not e!700218))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1234511 (= res!822775 (contains!7256 acc!846 k!2925))))

(declare-fun b!1234512 () Bool)

(declare-fun res!822778 () Bool)

(assert (=> b!1234512 (=> (not res!822778) (not e!700218))))

(assert (=> b!1234512 (= res!822778 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1234506 () Bool)

(declare-fun res!822784 () Bool)

(assert (=> b!1234506 (=> (not res!822784) (not e!700218))))

(assert (=> b!1234506 (= res!822784 (not (contains!7256 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!822777 () Bool)

(assert (=> start!102786 (=> (not res!822777) (not e!700218))))

(assert (=> start!102786 (= res!822777 (and (bvslt (size!38927 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38927 a!3835))))))

(assert (=> start!102786 e!700218))

(declare-fun array_inv!29166 (array!79572) Bool)

(assert (=> start!102786 (array_inv!29166 a!3835)))

(assert (=> start!102786 true))

(assert (= (and start!102786 res!822777) b!1234501))

(assert (= (and b!1234501 res!822785) b!1234504))

(assert (= (and b!1234504 res!822776) b!1234506))

(assert (= (and b!1234506 res!822784) b!1234512))

(assert (= (and b!1234512 res!822778) b!1234511))

(assert (= (and b!1234511 res!822775) b!1234505))

(assert (= (and b!1234505 res!822779) b!1234510))

(assert (= (and b!1234510 res!822782) b!1234503))

(assert (= (and b!1234503 (not res!822780)) b!1234507))

(assert (= (and b!1234507 (not res!822774)) b!1234508))

(assert (= (and b!1234508 (not res!822781)) b!1234502))

(assert (= (and b!1234502 (not res!822783)) b!1234509))

(declare-fun m!1138483 () Bool)

(assert (=> start!102786 m!1138483))

(declare-fun m!1138485 () Bool)

(assert (=> b!1234509 m!1138485))

(declare-fun m!1138487 () Bool)

(assert (=> b!1234509 m!1138487))

(declare-fun m!1138489 () Bool)

(assert (=> b!1234504 m!1138489))

(declare-fun m!1138491 () Bool)

(assert (=> b!1234503 m!1138491))

(declare-fun m!1138493 () Bool)

(assert (=> b!1234503 m!1138493))

(declare-fun m!1138495 () Bool)

(assert (=> b!1234503 m!1138495))

(declare-fun m!1138497 () Bool)

(assert (=> b!1234503 m!1138497))

(declare-fun m!1138499 () Bool)

(assert (=> b!1234503 m!1138499))

(declare-fun m!1138501 () Bool)

(assert (=> b!1234512 m!1138501))

(declare-fun m!1138503 () Bool)

(assert (=> b!1234511 m!1138503))

(declare-fun m!1138505 () Bool)

(assert (=> b!1234508 m!1138505))

(declare-fun m!1138507 () Bool)

(assert (=> b!1234507 m!1138507))

(declare-fun m!1138509 () Bool)

(assert (=> b!1234502 m!1138509))

(assert (=> b!1234510 m!1138495))

(assert (=> b!1234510 m!1138495))

(declare-fun m!1138511 () Bool)

(assert (=> b!1234510 m!1138511))

(declare-fun m!1138513 () Bool)

(assert (=> b!1234506 m!1138513))

(declare-fun m!1138515 () Bool)

(assert (=> b!1234501 m!1138515))

(push 1)

(assert (not b!1234509))

(assert (not b!1234510))

(assert (not b!1234502))

(assert (not b!1234507))

(assert (not b!1234511))

(assert (not b!1234512))

(assert (not start!102786))

(assert (not b!1234501))

(assert (not b!1234506))

(assert (not b!1234504))

(assert (not b!1234503))

(assert (not b!1234508))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


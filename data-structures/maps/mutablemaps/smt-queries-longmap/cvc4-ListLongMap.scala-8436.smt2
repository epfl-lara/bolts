; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102792 () Bool)

(assert start!102792)

(declare-fun b!1234609 () Bool)

(declare-fun res!822882 () Bool)

(declare-fun e!700246 () Bool)

(assert (=> b!1234609 (=> (not res!822882) (not e!700246))))

(declare-fun from!3213 () (_ BitVec 32))

(declare-datatypes ((array!79578 0))(
  ( (array!79579 (arr!38393 (Array (_ BitVec 32) (_ BitVec 64))) (size!38930 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79578)

(assert (=> b!1234609 (= res!822882 (not (= from!3213 (bvsub (size!38930 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1234610 () Bool)

(declare-fun res!822887 () Bool)

(assert (=> b!1234610 (=> (not res!822887) (not e!700246))))

(declare-datatypes ((List!27344 0))(
  ( (Nil!27341) (Cons!27340 (h!28549 (_ BitVec 64)) (t!40814 List!27344)) )
))
(declare-fun acc!846 () List!27344)

(declare-fun noDuplicate!1866 (List!27344) Bool)

(assert (=> b!1234610 (= res!822887 (noDuplicate!1866 acc!846))))

(declare-fun b!1234611 () Bool)

(declare-fun res!822883 () Bool)

(declare-fun e!700244 () Bool)

(assert (=> b!1234611 (=> res!822883 e!700244)))

(declare-fun lt!559893 () List!27344)

(declare-fun contains!7259 (List!27344 (_ BitVec 64)) Bool)

(assert (=> b!1234611 (= res!822883 (contains!7259 lt!559893 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1234612 () Bool)

(declare-fun res!822893 () Bool)

(assert (=> b!1234612 (=> (not res!822893) (not e!700246))))

(assert (=> b!1234612 (= res!822893 (not (contains!7259 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1234613 () Bool)

(assert (=> b!1234613 (= e!700244 true)))

(declare-fun lt!559896 () Bool)

(declare-fun arrayNoDuplicates!0 (array!79578 (_ BitVec 32) List!27344) Bool)

(assert (=> b!1234613 (= lt!559896 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) lt!559893))))

(declare-datatypes ((Unit!40830 0))(
  ( (Unit!40831) )
))
(declare-fun lt!559894 () Unit!40830)

(declare-fun noDuplicateSubseq!61 (List!27344 List!27344) Unit!40830)

(assert (=> b!1234613 (= lt!559894 (noDuplicateSubseq!61 acc!846 lt!559893))))

(declare-fun b!1234614 () Bool)

(declare-fun res!822890 () Bool)

(assert (=> b!1234614 (=> res!822890 e!700244)))

(assert (=> b!1234614 (= res!822890 (not (noDuplicate!1866 lt!559893)))))

(declare-fun b!1234616 () Bool)

(declare-fun res!822885 () Bool)

(assert (=> b!1234616 (=> res!822885 e!700244)))

(assert (=> b!1234616 (= res!822885 (contains!7259 lt!559893 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1234617 () Bool)

(assert (=> b!1234617 (= e!700246 (not e!700244))))

(declare-fun res!822888 () Bool)

(assert (=> b!1234617 (=> res!822888 e!700244)))

(assert (=> b!1234617 (= res!822888 (bvslt (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000))))

(declare-fun subseq!514 (List!27344 List!27344) Bool)

(assert (=> b!1234617 (subseq!514 acc!846 lt!559893)))

(declare-fun lt!559897 () Unit!40830)

(declare-fun subseqTail!7 (List!27344 List!27344) Unit!40830)

(assert (=> b!1234617 (= lt!559897 (subseqTail!7 lt!559893 lt!559893))))

(assert (=> b!1234617 (subseq!514 lt!559893 lt!559893)))

(declare-fun lt!559895 () Unit!40830)

(declare-fun lemmaListSubSeqRefl!0 (List!27344) Unit!40830)

(assert (=> b!1234617 (= lt!559895 (lemmaListSubSeqRefl!0 lt!559893))))

(assert (=> b!1234617 (= lt!559893 (Cons!27340 (select (arr!38393 a!3835) from!3213) acc!846))))

(declare-fun b!1234618 () Bool)

(declare-fun res!822892 () Bool)

(assert (=> b!1234618 (=> (not res!822892) (not e!700246))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1234618 (= res!822892 (contains!7259 acc!846 k!2925))))

(declare-fun res!822886 () Bool)

(assert (=> start!102792 (=> (not res!822886) (not e!700246))))

(assert (=> start!102792 (= res!822886 (and (bvslt (size!38930 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38930 a!3835))))))

(assert (=> start!102792 e!700246))

(declare-fun array_inv!29169 (array!79578) Bool)

(assert (=> start!102792 (array_inv!29169 a!3835)))

(assert (=> start!102792 true))

(declare-fun b!1234615 () Bool)

(declare-fun res!822884 () Bool)

(assert (=> b!1234615 (=> (not res!822884) (not e!700246))))

(assert (=> b!1234615 (= res!822884 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1234619 () Bool)

(declare-fun res!822889 () Bool)

(assert (=> b!1234619 (=> (not res!822889) (not e!700246))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1234619 (= res!822889 (validKeyInArray!0 (select (arr!38393 a!3835) from!3213)))))

(declare-fun b!1234620 () Bool)

(declare-fun res!822891 () Bool)

(assert (=> b!1234620 (=> (not res!822891) (not e!700246))))

(assert (=> b!1234620 (= res!822891 (not (contains!7259 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!102792 res!822886) b!1234610))

(assert (= (and b!1234610 res!822887) b!1234612))

(assert (= (and b!1234612 res!822893) b!1234620))

(assert (= (and b!1234620 res!822891) b!1234615))

(assert (= (and b!1234615 res!822884) b!1234618))

(assert (= (and b!1234618 res!822892) b!1234609))

(assert (= (and b!1234609 res!822882) b!1234619))

(assert (= (and b!1234619 res!822889) b!1234617))

(assert (= (and b!1234617 (not res!822888)) b!1234614))

(assert (= (and b!1234614 (not res!822890)) b!1234611))

(assert (= (and b!1234611 (not res!822883)) b!1234616))

(assert (= (and b!1234616 (not res!822885)) b!1234613))

(declare-fun m!1138585 () Bool)

(assert (=> b!1234616 m!1138585))

(declare-fun m!1138587 () Bool)

(assert (=> start!102792 m!1138587))

(declare-fun m!1138589 () Bool)

(assert (=> b!1234615 m!1138589))

(declare-fun m!1138591 () Bool)

(assert (=> b!1234611 m!1138591))

(declare-fun m!1138593 () Bool)

(assert (=> b!1234614 m!1138593))

(declare-fun m!1138595 () Bool)

(assert (=> b!1234619 m!1138595))

(assert (=> b!1234619 m!1138595))

(declare-fun m!1138597 () Bool)

(assert (=> b!1234619 m!1138597))

(declare-fun m!1138599 () Bool)

(assert (=> b!1234613 m!1138599))

(declare-fun m!1138601 () Bool)

(assert (=> b!1234613 m!1138601))

(declare-fun m!1138603 () Bool)

(assert (=> b!1234620 m!1138603))

(declare-fun m!1138605 () Bool)

(assert (=> b!1234617 m!1138605))

(declare-fun m!1138607 () Bool)

(assert (=> b!1234617 m!1138607))

(assert (=> b!1234617 m!1138595))

(declare-fun m!1138609 () Bool)

(assert (=> b!1234617 m!1138609))

(declare-fun m!1138611 () Bool)

(assert (=> b!1234617 m!1138611))

(declare-fun m!1138613 () Bool)

(assert (=> b!1234610 m!1138613))

(declare-fun m!1138615 () Bool)

(assert (=> b!1234612 m!1138615))

(declare-fun m!1138617 () Bool)

(assert (=> b!1234618 m!1138617))

(push 1)

(assert (not b!1234614))

(assert (not b!1234615))

(assert (not b!1234616))

(assert (not b!1234619))

(assert (not b!1234612))

(assert (not b!1234620))

(assert (not b!1234618))

(assert (not b!1234617))

(assert (not b!1234613))

(assert (not b!1234610))

(assert (not start!102792))

(assert (not b!1234611))

(check-sat)

(pop 1)

(push 1)

(check-sat)


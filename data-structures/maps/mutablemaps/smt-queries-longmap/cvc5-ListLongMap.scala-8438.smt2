; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102800 () Bool)

(assert start!102800)

(declare-fun b!1234753 () Bool)

(declare-fun res!823035 () Bool)

(declare-fun e!700282 () Bool)

(assert (=> b!1234753 (=> res!823035 e!700282)))

(declare-datatypes ((List!27348 0))(
  ( (Nil!27345) (Cons!27344 (h!28553 (_ BitVec 64)) (t!40818 List!27348)) )
))
(declare-fun lt!559953 () List!27348)

(declare-fun contains!7263 (List!27348 (_ BitVec 64)) Bool)

(assert (=> b!1234753 (= res!823035 (contains!7263 lt!559953 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1234754 () Bool)

(declare-fun res!823031 () Bool)

(assert (=> b!1234754 (=> res!823031 e!700282)))

(declare-fun noDuplicate!1870 (List!27348) Bool)

(assert (=> b!1234754 (= res!823031 (not (noDuplicate!1870 lt!559953)))))

(declare-fun b!1234755 () Bool)

(declare-fun res!823028 () Bool)

(assert (=> b!1234755 (=> res!823028 e!700282)))

(assert (=> b!1234755 (= res!823028 (contains!7263 lt!559953 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1234756 () Bool)

(declare-fun res!823030 () Bool)

(declare-fun e!700280 () Bool)

(assert (=> b!1234756 (=> (not res!823030) (not e!700280))))

(declare-fun acc!846 () List!27348)

(assert (=> b!1234756 (= res!823030 (noDuplicate!1870 acc!846))))

(declare-fun b!1234757 () Bool)

(declare-fun res!823032 () Bool)

(assert (=> b!1234757 (=> (not res!823032) (not e!700280))))

(declare-fun from!3213 () (_ BitVec 32))

(declare-datatypes ((array!79586 0))(
  ( (array!79587 (arr!38397 (Array (_ BitVec 32) (_ BitVec 64))) (size!38934 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79586)

(assert (=> b!1234757 (= res!823032 (not (= from!3213 (bvsub (size!38934 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1234758 () Bool)

(declare-fun res!823027 () Bool)

(assert (=> b!1234758 (=> (not res!823027) (not e!700280))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1234758 (= res!823027 (validKeyInArray!0 (select (arr!38397 a!3835) from!3213)))))

(declare-fun b!1234759 () Bool)

(declare-fun res!823033 () Bool)

(assert (=> b!1234759 (=> (not res!823033) (not e!700280))))

(declare-fun arrayNoDuplicates!0 (array!79586 (_ BitVec 32) List!27348) Bool)

(assert (=> b!1234759 (= res!823033 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1234760 () Bool)

(declare-fun res!823037 () Bool)

(assert (=> b!1234760 (=> (not res!823037) (not e!700280))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1234760 (= res!823037 (contains!7263 acc!846 k!2925))))

(declare-fun res!823026 () Bool)

(assert (=> start!102800 (=> (not res!823026) (not e!700280))))

(assert (=> start!102800 (= res!823026 (and (bvslt (size!38934 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38934 a!3835))))))

(assert (=> start!102800 e!700280))

(declare-fun array_inv!29173 (array!79586) Bool)

(assert (=> start!102800 (array_inv!29173 a!3835)))

(assert (=> start!102800 true))

(declare-fun b!1234761 () Bool)

(declare-fun res!823034 () Bool)

(assert (=> b!1234761 (=> (not res!823034) (not e!700280))))

(assert (=> b!1234761 (= res!823034 (not (contains!7263 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1234762 () Bool)

(assert (=> b!1234762 (= e!700280 (not e!700282))))

(declare-fun res!823029 () Bool)

(assert (=> b!1234762 (=> res!823029 e!700282)))

(assert (=> b!1234762 (= res!823029 (bvslt (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000))))

(declare-fun subseq!518 (List!27348 List!27348) Bool)

(assert (=> b!1234762 (subseq!518 acc!846 lt!559953)))

(declare-datatypes ((Unit!40838 0))(
  ( (Unit!40839) )
))
(declare-fun lt!559957 () Unit!40838)

(declare-fun subseqTail!11 (List!27348 List!27348) Unit!40838)

(assert (=> b!1234762 (= lt!559957 (subseqTail!11 lt!559953 lt!559953))))

(assert (=> b!1234762 (subseq!518 lt!559953 lt!559953)))

(declare-fun lt!559954 () Unit!40838)

(declare-fun lemmaListSubSeqRefl!0 (List!27348) Unit!40838)

(assert (=> b!1234762 (= lt!559954 (lemmaListSubSeqRefl!0 lt!559953))))

(assert (=> b!1234762 (= lt!559953 (Cons!27344 (select (arr!38397 a!3835) from!3213) acc!846))))

(declare-fun b!1234763 () Bool)

(declare-fun res!823036 () Bool)

(assert (=> b!1234763 (=> (not res!823036) (not e!700280))))

(assert (=> b!1234763 (= res!823036 (not (contains!7263 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1234764 () Bool)

(assert (=> b!1234764 (= e!700282 true)))

(declare-fun lt!559955 () Bool)

(assert (=> b!1234764 (= lt!559955 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) lt!559953))))

(declare-fun lt!559956 () Unit!40838)

(declare-fun noDuplicateSubseq!65 (List!27348 List!27348) Unit!40838)

(assert (=> b!1234764 (= lt!559956 (noDuplicateSubseq!65 acc!846 lt!559953))))

(assert (= (and start!102800 res!823026) b!1234756))

(assert (= (and b!1234756 res!823030) b!1234763))

(assert (= (and b!1234763 res!823036) b!1234761))

(assert (= (and b!1234761 res!823034) b!1234759))

(assert (= (and b!1234759 res!823033) b!1234760))

(assert (= (and b!1234760 res!823037) b!1234757))

(assert (= (and b!1234757 res!823032) b!1234758))

(assert (= (and b!1234758 res!823027) b!1234762))

(assert (= (and b!1234762 (not res!823029)) b!1234754))

(assert (= (and b!1234754 (not res!823031)) b!1234755))

(assert (= (and b!1234755 (not res!823028)) b!1234753))

(assert (= (and b!1234753 (not res!823035)) b!1234764))

(declare-fun m!1138721 () Bool)

(assert (=> b!1234760 m!1138721))

(declare-fun m!1138723 () Bool)

(assert (=> b!1234756 m!1138723))

(declare-fun m!1138725 () Bool)

(assert (=> b!1234758 m!1138725))

(assert (=> b!1234758 m!1138725))

(declare-fun m!1138727 () Bool)

(assert (=> b!1234758 m!1138727))

(declare-fun m!1138729 () Bool)

(assert (=> b!1234761 m!1138729))

(declare-fun m!1138731 () Bool)

(assert (=> b!1234755 m!1138731))

(declare-fun m!1138733 () Bool)

(assert (=> b!1234763 m!1138733))

(declare-fun m!1138735 () Bool)

(assert (=> b!1234762 m!1138735))

(declare-fun m!1138737 () Bool)

(assert (=> b!1234762 m!1138737))

(assert (=> b!1234762 m!1138725))

(declare-fun m!1138739 () Bool)

(assert (=> b!1234762 m!1138739))

(declare-fun m!1138741 () Bool)

(assert (=> b!1234762 m!1138741))

(declare-fun m!1138743 () Bool)

(assert (=> b!1234759 m!1138743))

(declare-fun m!1138745 () Bool)

(assert (=> start!102800 m!1138745))

(declare-fun m!1138747 () Bool)

(assert (=> b!1234754 m!1138747))

(declare-fun m!1138749 () Bool)

(assert (=> b!1234753 m!1138749))

(declare-fun m!1138751 () Bool)

(assert (=> b!1234764 m!1138751))

(declare-fun m!1138753 () Bool)

(assert (=> b!1234764 m!1138753))

(push 1)

(assert (not b!1234758))

(assert (not start!102800))

(assert (not b!1234754))

(assert (not b!1234760))

(assert (not b!1234764))

(assert (not b!1234761))

(assert (not b!1234755))

(assert (not b!1234763))

(assert (not b!1234762))

(assert (not b!1234759))

(assert (not b!1234753))

(assert (not b!1234756))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


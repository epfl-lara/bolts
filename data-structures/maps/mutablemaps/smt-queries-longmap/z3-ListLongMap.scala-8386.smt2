; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102030 () Bool)

(assert start!102030)

(declare-fun b!1227990 () Bool)

(declare-fun res!816731 () Bool)

(declare-fun e!697124 () Bool)

(assert (=> b!1227990 (=> (not res!816731) (not e!697124))))

(declare-datatypes ((List!27193 0))(
  ( (Nil!27190) (Cons!27189 (h!28398 (_ BitVec 64)) (t!40663 List!27193)) )
))
(declare-fun acc!823 () List!27193)

(declare-fun contains!7108 (List!27193 (_ BitVec 64)) Bool)

(assert (=> b!1227990 (= res!816731 (not (contains!7108 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1227991 () Bool)

(declare-fun res!816720 () Bool)

(assert (=> b!1227991 (=> (not res!816720) (not e!697124))))

(declare-fun k0!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1227991 (= res!816720 (validKeyInArray!0 k0!2913))))

(declare-fun b!1227992 () Bool)

(declare-fun res!816723 () Bool)

(declare-fun e!697126 () Bool)

(assert (=> b!1227992 (=> res!816723 e!697126)))

(assert (=> b!1227992 (= res!816723 (contains!7108 Nil!27190 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1227993 () Bool)

(declare-fun res!816726 () Bool)

(assert (=> b!1227993 (=> (not res!816726) (not e!697124))))

(declare-datatypes ((array!79246 0))(
  ( (array!79247 (arr!38242 (Array (_ BitVec 32) (_ BitVec 64))) (size!38779 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79246)

(declare-fun from!3184 () (_ BitVec 32))

(assert (=> b!1227993 (= res!816726 (validKeyInArray!0 (select (arr!38242 a!3806) from!3184)))))

(declare-fun b!1227994 () Bool)

(declare-fun res!816725 () Bool)

(assert (=> b!1227994 (=> res!816725 e!697126)))

(assert (=> b!1227994 (= res!816725 (contains!7108 Nil!27190 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1227995 () Bool)

(declare-fun res!816730 () Bool)

(assert (=> b!1227995 (=> (not res!816730) (not e!697124))))

(declare-fun arrayNoDuplicates!0 (array!79246 (_ BitVec 32) List!27193) Bool)

(assert (=> b!1227995 (= res!816730 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1227996 () Bool)

(assert (=> b!1227996 (= e!697126 true)))

(declare-datatypes ((Unit!40624 0))(
  ( (Unit!40625) )
))
(declare-fun lt!558902 () Unit!40624)

(declare-fun noDuplicateSubseq!48 (List!27193 List!27193) Unit!40624)

(assert (=> b!1227996 (= lt!558902 (noDuplicateSubseq!48 Nil!27190 acc!823))))

(declare-fun b!1227997 () Bool)

(declare-fun res!816719 () Bool)

(assert (=> b!1227997 (=> res!816719 e!697126)))

(declare-fun subseq!495 (List!27193 List!27193) Bool)

(assert (=> b!1227997 (= res!816719 (not (subseq!495 Nil!27190 acc!823)))))

(declare-fun res!816729 () Bool)

(assert (=> start!102030 (=> (not res!816729) (not e!697124))))

(assert (=> start!102030 (= res!816729 (bvslt (size!38779 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102030 e!697124))

(declare-fun array_inv!29018 (array!79246) Bool)

(assert (=> start!102030 (array_inv!29018 a!3806)))

(assert (=> start!102030 true))

(declare-fun b!1227998 () Bool)

(assert (=> b!1227998 (= e!697124 (not e!697126))))

(declare-fun res!816727 () Bool)

(assert (=> b!1227998 (=> res!816727 e!697126)))

(assert (=> b!1227998 (= res!816727 (bvsgt from!3184 (size!38779 a!3806)))))

(assert (=> b!1227998 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27189 (select (arr!38242 a!3806) from!3184) acc!823))))

(declare-fun b!1227999 () Bool)

(declare-fun res!816724 () Bool)

(assert (=> b!1227999 (=> (not res!816724) (not e!697124))))

(assert (=> b!1227999 (= res!816724 (not (contains!7108 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1228000 () Bool)

(declare-fun res!816722 () Bool)

(assert (=> b!1228000 (=> (not res!816722) (not e!697124))))

(declare-fun noDuplicate!1715 (List!27193) Bool)

(assert (=> b!1228000 (= res!816722 (noDuplicate!1715 acc!823))))

(declare-fun b!1228001 () Bool)

(declare-fun res!816721 () Bool)

(assert (=> b!1228001 (=> (not res!816721) (not e!697124))))

(assert (=> b!1228001 (= res!816721 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38779 a!3806)) (bvslt from!3184 (size!38779 a!3806))))))

(declare-fun b!1228002 () Bool)

(declare-fun res!816728 () Bool)

(assert (=> b!1228002 (=> (not res!816728) (not e!697124))))

(declare-fun arrayContainsKey!0 (array!79246 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1228002 (= res!816728 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(assert (= (and start!102030 res!816729) b!1227991))

(assert (= (and b!1227991 res!816720) b!1228001))

(assert (= (and b!1228001 res!816721) b!1228000))

(assert (= (and b!1228000 res!816722) b!1227990))

(assert (= (and b!1227990 res!816731) b!1227999))

(assert (= (and b!1227999 res!816724) b!1228002))

(assert (= (and b!1228002 res!816728) b!1227995))

(assert (= (and b!1227995 res!816730) b!1227993))

(assert (= (and b!1227993 res!816726) b!1227998))

(assert (= (and b!1227998 (not res!816727)) b!1227992))

(assert (= (and b!1227992 (not res!816723)) b!1227994))

(assert (= (and b!1227994 (not res!816725)) b!1227997))

(assert (= (and b!1227997 (not res!816719)) b!1227996))

(declare-fun m!1132641 () Bool)

(assert (=> start!102030 m!1132641))

(declare-fun m!1132643 () Bool)

(assert (=> b!1227992 m!1132643))

(declare-fun m!1132645 () Bool)

(assert (=> b!1227998 m!1132645))

(declare-fun m!1132647 () Bool)

(assert (=> b!1227998 m!1132647))

(declare-fun m!1132649 () Bool)

(assert (=> b!1227994 m!1132649))

(declare-fun m!1132651 () Bool)

(assert (=> b!1227991 m!1132651))

(declare-fun m!1132653 () Bool)

(assert (=> b!1227999 m!1132653))

(declare-fun m!1132655 () Bool)

(assert (=> b!1227990 m!1132655))

(declare-fun m!1132657 () Bool)

(assert (=> b!1227995 m!1132657))

(declare-fun m!1132659 () Bool)

(assert (=> b!1228000 m!1132659))

(declare-fun m!1132661 () Bool)

(assert (=> b!1227997 m!1132661))

(declare-fun m!1132663 () Bool)

(assert (=> b!1228002 m!1132663))

(assert (=> b!1227993 m!1132645))

(assert (=> b!1227993 m!1132645))

(declare-fun m!1132665 () Bool)

(assert (=> b!1227993 m!1132665))

(declare-fun m!1132667 () Bool)

(assert (=> b!1227996 m!1132667))

(check-sat (not b!1227996) (not b!1227990) (not b!1228000) (not b!1227994) (not b!1227998) (not b!1227995) (not b!1227997) (not b!1228002) (not b!1227992) (not b!1227993) (not start!102030) (not b!1227991) (not b!1227999))
(check-sat)

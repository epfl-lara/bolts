; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102018 () Bool)

(assert start!102018)

(declare-fun b!1227756 () Bool)

(declare-fun res!816488 () Bool)

(declare-fun e!697070 () Bool)

(assert (=> b!1227756 (=> (not res!816488) (not e!697070))))

(declare-fun k0!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1227756 (= res!816488 (validKeyInArray!0 k0!2913))))

(declare-fun b!1227758 () Bool)

(declare-fun res!816494 () Bool)

(declare-fun e!697071 () Bool)

(assert (=> b!1227758 (=> res!816494 e!697071)))

(declare-datatypes ((List!27187 0))(
  ( (Nil!27184) (Cons!27183 (h!28392 (_ BitVec 64)) (t!40657 List!27187)) )
))
(declare-fun contains!7102 (List!27187 (_ BitVec 64)) Bool)

(assert (=> b!1227758 (= res!816494 (contains!7102 Nil!27184 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1227759 () Bool)

(declare-fun res!816495 () Bool)

(assert (=> b!1227759 (=> (not res!816495) (not e!697070))))

(declare-datatypes ((array!79234 0))(
  ( (array!79235 (arr!38236 (Array (_ BitVec 32) (_ BitVec 64))) (size!38773 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79234)

(declare-fun from!3184 () (_ BitVec 32))

(assert (=> b!1227759 (= res!816495 (validKeyInArray!0 (select (arr!38236 a!3806) from!3184)))))

(declare-fun b!1227760 () Bool)

(declare-fun res!816485 () Bool)

(assert (=> b!1227760 (=> (not res!816485) (not e!697070))))

(assert (=> b!1227760 (= res!816485 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38773 a!3806)) (bvslt from!3184 (size!38773 a!3806))))))

(declare-fun b!1227761 () Bool)

(declare-fun res!816497 () Bool)

(assert (=> b!1227761 (=> (not res!816497) (not e!697070))))

(declare-fun arrayContainsKey!0 (array!79234 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1227761 (= res!816497 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1227762 () Bool)

(declare-fun res!816492 () Bool)

(assert (=> b!1227762 (=> res!816492 e!697071)))

(assert (=> b!1227762 (= res!816492 (contains!7102 Nil!27184 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1227763 () Bool)

(declare-fun res!816490 () Bool)

(assert (=> b!1227763 (=> (not res!816490) (not e!697070))))

(declare-fun acc!823 () List!27187)

(declare-fun arrayNoDuplicates!0 (array!79234 (_ BitVec 32) List!27187) Bool)

(assert (=> b!1227763 (= res!816490 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1227764 () Bool)

(assert (=> b!1227764 (= e!697071 true)))

(declare-datatypes ((Unit!40612 0))(
  ( (Unit!40613) )
))
(declare-fun lt!558884 () Unit!40612)

(declare-fun noDuplicateSubseq!42 (List!27187 List!27187) Unit!40612)

(assert (=> b!1227764 (= lt!558884 (noDuplicateSubseq!42 Nil!27184 acc!823))))

(declare-fun res!816496 () Bool)

(assert (=> start!102018 (=> (not res!816496) (not e!697070))))

(assert (=> start!102018 (= res!816496 (bvslt (size!38773 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102018 e!697070))

(declare-fun array_inv!29012 (array!79234) Bool)

(assert (=> start!102018 (array_inv!29012 a!3806)))

(assert (=> start!102018 true))

(declare-fun b!1227757 () Bool)

(declare-fun res!816489 () Bool)

(assert (=> b!1227757 (=> (not res!816489) (not e!697070))))

(declare-fun noDuplicate!1709 (List!27187) Bool)

(assert (=> b!1227757 (= res!816489 (noDuplicate!1709 acc!823))))

(declare-fun b!1227765 () Bool)

(declare-fun res!816487 () Bool)

(assert (=> b!1227765 (=> (not res!816487) (not e!697070))))

(assert (=> b!1227765 (= res!816487 (not (contains!7102 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1227766 () Bool)

(assert (=> b!1227766 (= e!697070 (not e!697071))))

(declare-fun res!816491 () Bool)

(assert (=> b!1227766 (=> res!816491 e!697071)))

(assert (=> b!1227766 (= res!816491 (bvsgt from!3184 (size!38773 a!3806)))))

(assert (=> b!1227766 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27183 (select (arr!38236 a!3806) from!3184) acc!823))))

(declare-fun b!1227767 () Bool)

(declare-fun res!816486 () Bool)

(assert (=> b!1227767 (=> (not res!816486) (not e!697070))))

(assert (=> b!1227767 (= res!816486 (not (contains!7102 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1227768 () Bool)

(declare-fun res!816493 () Bool)

(assert (=> b!1227768 (=> res!816493 e!697071)))

(declare-fun subseq!489 (List!27187 List!27187) Bool)

(assert (=> b!1227768 (= res!816493 (not (subseq!489 Nil!27184 acc!823)))))

(assert (= (and start!102018 res!816496) b!1227756))

(assert (= (and b!1227756 res!816488) b!1227760))

(assert (= (and b!1227760 res!816485) b!1227757))

(assert (= (and b!1227757 res!816489) b!1227767))

(assert (= (and b!1227767 res!816486) b!1227765))

(assert (= (and b!1227765 res!816487) b!1227761))

(assert (= (and b!1227761 res!816497) b!1227763))

(assert (= (and b!1227763 res!816490) b!1227759))

(assert (= (and b!1227759 res!816495) b!1227766))

(assert (= (and b!1227766 (not res!816491)) b!1227758))

(assert (= (and b!1227758 (not res!816494)) b!1227762))

(assert (= (and b!1227762 (not res!816492)) b!1227768))

(assert (= (and b!1227768 (not res!816493)) b!1227764))

(declare-fun m!1132473 () Bool)

(assert (=> b!1227761 m!1132473))

(declare-fun m!1132475 () Bool)

(assert (=> b!1227756 m!1132475))

(declare-fun m!1132477 () Bool)

(assert (=> b!1227758 m!1132477))

(declare-fun m!1132479 () Bool)

(assert (=> b!1227768 m!1132479))

(declare-fun m!1132481 () Bool)

(assert (=> b!1227757 m!1132481))

(declare-fun m!1132483 () Bool)

(assert (=> b!1227763 m!1132483))

(declare-fun m!1132485 () Bool)

(assert (=> b!1227762 m!1132485))

(declare-fun m!1132487 () Bool)

(assert (=> start!102018 m!1132487))

(declare-fun m!1132489 () Bool)

(assert (=> b!1227765 m!1132489))

(declare-fun m!1132491 () Bool)

(assert (=> b!1227764 m!1132491))

(declare-fun m!1132493 () Bool)

(assert (=> b!1227766 m!1132493))

(declare-fun m!1132495 () Bool)

(assert (=> b!1227766 m!1132495))

(declare-fun m!1132497 () Bool)

(assert (=> b!1227767 m!1132497))

(assert (=> b!1227759 m!1132493))

(assert (=> b!1227759 m!1132493))

(declare-fun m!1132499 () Bool)

(assert (=> b!1227759 m!1132499))

(check-sat (not b!1227766) (not b!1227762) (not b!1227758) (not b!1227761) (not b!1227764) (not b!1227759) (not b!1227768) (not b!1227757) (not b!1227767) (not b!1227763) (not b!1227765) (not start!102018) (not b!1227756))
(check-sat)

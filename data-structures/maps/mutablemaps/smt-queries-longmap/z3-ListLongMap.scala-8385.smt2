; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102024 () Bool)

(assert start!102024)

(declare-fun b!1227873 () Bool)

(declare-fun res!816602 () Bool)

(declare-fun e!697097 () Bool)

(assert (=> b!1227873 (=> (not res!816602) (not e!697097))))

(declare-datatypes ((array!79240 0))(
  ( (array!79241 (arr!38239 (Array (_ BitVec 32) (_ BitVec 64))) (size!38776 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79240)

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1227873 (= res!816602 (validKeyInArray!0 (select (arr!38239 a!3806) from!3184)))))

(declare-fun b!1227874 () Bool)

(declare-fun res!816606 () Bool)

(assert (=> b!1227874 (=> (not res!816606) (not e!697097))))

(declare-fun k0!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79240 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1227874 (= res!816606 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1227875 () Bool)

(declare-fun res!816611 () Bool)

(assert (=> b!1227875 (=> (not res!816611) (not e!697097))))

(declare-datatypes ((List!27190 0))(
  ( (Nil!27187) (Cons!27186 (h!28395 (_ BitVec 64)) (t!40660 List!27190)) )
))
(declare-fun acc!823 () List!27190)

(declare-fun noDuplicate!1712 (List!27190) Bool)

(assert (=> b!1227875 (= res!816611 (noDuplicate!1712 acc!823))))

(declare-fun b!1227876 () Bool)

(declare-fun res!816613 () Bool)

(assert (=> b!1227876 (=> (not res!816613) (not e!697097))))

(assert (=> b!1227876 (= res!816613 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38776 a!3806)) (bvslt from!3184 (size!38776 a!3806))))))

(declare-fun b!1227877 () Bool)

(declare-fun res!816603 () Bool)

(declare-fun e!697099 () Bool)

(assert (=> b!1227877 (=> res!816603 e!697099)))

(declare-fun contains!7105 (List!27190 (_ BitVec 64)) Bool)

(assert (=> b!1227877 (= res!816603 (contains!7105 Nil!27187 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!816610 () Bool)

(assert (=> start!102024 (=> (not res!816610) (not e!697097))))

(assert (=> start!102024 (= res!816610 (bvslt (size!38776 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102024 e!697097))

(declare-fun array_inv!29015 (array!79240) Bool)

(assert (=> start!102024 (array_inv!29015 a!3806)))

(assert (=> start!102024 true))

(declare-fun b!1227878 () Bool)

(declare-fun res!816607 () Bool)

(assert (=> b!1227878 (=> (not res!816607) (not e!697097))))

(assert (=> b!1227878 (= res!816607 (not (contains!7105 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1227879 () Bool)

(assert (=> b!1227879 (= e!697097 (not e!697099))))

(declare-fun res!816609 () Bool)

(assert (=> b!1227879 (=> res!816609 e!697099)))

(assert (=> b!1227879 (= res!816609 (bvsgt from!3184 (size!38776 a!3806)))))

(declare-fun arrayNoDuplicates!0 (array!79240 (_ BitVec 32) List!27190) Bool)

(assert (=> b!1227879 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27186 (select (arr!38239 a!3806) from!3184) acc!823))))

(declare-fun b!1227880 () Bool)

(declare-fun res!816614 () Bool)

(assert (=> b!1227880 (=> res!816614 e!697099)))

(assert (=> b!1227880 (= res!816614 (contains!7105 Nil!27187 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1227881 () Bool)

(declare-fun res!816612 () Bool)

(assert (=> b!1227881 (=> (not res!816612) (not e!697097))))

(assert (=> b!1227881 (= res!816612 (validKeyInArray!0 k0!2913))))

(declare-fun b!1227882 () Bool)

(declare-fun res!816604 () Bool)

(assert (=> b!1227882 (=> (not res!816604) (not e!697097))))

(assert (=> b!1227882 (= res!816604 (not (contains!7105 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1227883 () Bool)

(declare-fun res!816605 () Bool)

(assert (=> b!1227883 (=> res!816605 e!697099)))

(declare-fun subseq!492 (List!27190 List!27190) Bool)

(assert (=> b!1227883 (= res!816605 (not (subseq!492 Nil!27187 acc!823)))))

(declare-fun b!1227884 () Bool)

(declare-fun res!816608 () Bool)

(assert (=> b!1227884 (=> (not res!816608) (not e!697097))))

(assert (=> b!1227884 (= res!816608 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1227885 () Bool)

(assert (=> b!1227885 (= e!697099 true)))

(declare-datatypes ((Unit!40618 0))(
  ( (Unit!40619) )
))
(declare-fun lt!558893 () Unit!40618)

(declare-fun noDuplicateSubseq!45 (List!27190 List!27190) Unit!40618)

(assert (=> b!1227885 (= lt!558893 (noDuplicateSubseq!45 Nil!27187 acc!823))))

(assert (= (and start!102024 res!816610) b!1227881))

(assert (= (and b!1227881 res!816612) b!1227876))

(assert (= (and b!1227876 res!816613) b!1227875))

(assert (= (and b!1227875 res!816611) b!1227882))

(assert (= (and b!1227882 res!816604) b!1227878))

(assert (= (and b!1227878 res!816607) b!1227874))

(assert (= (and b!1227874 res!816606) b!1227884))

(assert (= (and b!1227884 res!816608) b!1227873))

(assert (= (and b!1227873 res!816602) b!1227879))

(assert (= (and b!1227879 (not res!816609)) b!1227880))

(assert (= (and b!1227880 (not res!816614)) b!1227877))

(assert (= (and b!1227877 (not res!816603)) b!1227883))

(assert (= (and b!1227883 (not res!816605)) b!1227885))

(declare-fun m!1132557 () Bool)

(assert (=> b!1227873 m!1132557))

(assert (=> b!1227873 m!1132557))

(declare-fun m!1132559 () Bool)

(assert (=> b!1227873 m!1132559))

(declare-fun m!1132561 () Bool)

(assert (=> b!1227875 m!1132561))

(declare-fun m!1132563 () Bool)

(assert (=> b!1227884 m!1132563))

(declare-fun m!1132565 () Bool)

(assert (=> start!102024 m!1132565))

(declare-fun m!1132567 () Bool)

(assert (=> b!1227877 m!1132567))

(declare-fun m!1132569 () Bool)

(assert (=> b!1227874 m!1132569))

(declare-fun m!1132571 () Bool)

(assert (=> b!1227883 m!1132571))

(declare-fun m!1132573 () Bool)

(assert (=> b!1227878 m!1132573))

(declare-fun m!1132575 () Bool)

(assert (=> b!1227885 m!1132575))

(declare-fun m!1132577 () Bool)

(assert (=> b!1227882 m!1132577))

(declare-fun m!1132579 () Bool)

(assert (=> b!1227881 m!1132579))

(declare-fun m!1132581 () Bool)

(assert (=> b!1227880 m!1132581))

(assert (=> b!1227879 m!1132557))

(declare-fun m!1132583 () Bool)

(assert (=> b!1227879 m!1132583))

(check-sat (not b!1227874) (not b!1227878) (not b!1227883) (not b!1227884) (not b!1227879) (not b!1227882) (not b!1227885) (not b!1227873) (not b!1227881) (not b!1227877) (not b!1227875) (not start!102024) (not b!1227880))
(check-sat)

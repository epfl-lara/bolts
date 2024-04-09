; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102408 () Bool)

(assert start!102408)

(declare-fun b!1231533 () Bool)

(declare-fun res!820061 () Bool)

(declare-fun e!698690 () Bool)

(assert (=> b!1231533 (=> res!820061 e!698690)))

(declare-datatypes ((List!27271 0))(
  ( (Nil!27268) (Cons!27267 (h!28476 (_ BitVec 64)) (t!40741 List!27271)) )
))
(declare-fun acc!823 () List!27271)

(declare-fun subseq!504 (List!27271 List!27271) Bool)

(assert (=> b!1231533 (= res!820061 (not (subseq!504 Nil!27268 acc!823)))))

(declare-fun b!1231534 () Bool)

(declare-fun res!820058 () Bool)

(declare-fun e!698692 () Bool)

(assert (=> b!1231534 (=> (not res!820058) (not e!698692))))

(declare-fun k0!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1231534 (= res!820058 (validKeyInArray!0 k0!2913))))

(declare-fun b!1231535 () Bool)

(declare-fun res!820053 () Bool)

(assert (=> b!1231535 (=> res!820053 e!698690)))

(declare-fun contains!7186 (List!27271 (_ BitVec 64)) Bool)

(assert (=> b!1231535 (= res!820053 (contains!7186 Nil!27268 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1231536 () Bool)

(assert (=> b!1231536 (= e!698690 true)))

(declare-datatypes ((Unit!40720 0))(
  ( (Unit!40721) )
))
(declare-fun lt!559370 () Unit!40720)

(declare-fun noDuplicateSubseq!54 (List!27271 List!27271) Unit!40720)

(assert (=> b!1231536 (= lt!559370 (noDuplicateSubseq!54 Nil!27268 acc!823))))

(declare-fun b!1231537 () Bool)

(declare-fun res!820062 () Bool)

(assert (=> b!1231537 (=> (not res!820062) (not e!698692))))

(declare-fun noDuplicate!1793 (List!27271) Bool)

(assert (=> b!1231537 (= res!820062 (noDuplicate!1793 acc!823))))

(declare-fun b!1231538 () Bool)

(declare-fun res!820055 () Bool)

(assert (=> b!1231538 (=> (not res!820055) (not e!698692))))

(declare-datatypes ((array!79417 0))(
  ( (array!79418 (arr!38320 (Array (_ BitVec 32) (_ BitVec 64))) (size!38857 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79417)

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79417 (_ BitVec 32) List!27271) Bool)

(assert (=> b!1231538 (= res!820055 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1231539 () Bool)

(declare-fun res!820054 () Bool)

(assert (=> b!1231539 (=> (not res!820054) (not e!698692))))

(assert (=> b!1231539 (= res!820054 (validKeyInArray!0 (select (arr!38320 a!3806) from!3184)))))

(declare-fun b!1231540 () Bool)

(declare-fun res!820057 () Bool)

(assert (=> b!1231540 (=> (not res!820057) (not e!698692))))

(declare-fun arrayContainsKey!0 (array!79417 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1231540 (= res!820057 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun res!820056 () Bool)

(assert (=> start!102408 (=> (not res!820056) (not e!698692))))

(assert (=> start!102408 (= res!820056 (bvslt (size!38857 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102408 e!698692))

(declare-fun array_inv!29096 (array!79417) Bool)

(assert (=> start!102408 (array_inv!29096 a!3806)))

(assert (=> start!102408 true))

(declare-fun b!1231541 () Bool)

(declare-fun res!820063 () Bool)

(assert (=> b!1231541 (=> (not res!820063) (not e!698692))))

(assert (=> b!1231541 (= res!820063 (not (contains!7186 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1231542 () Bool)

(declare-fun res!820052 () Bool)

(assert (=> b!1231542 (=> (not res!820052) (not e!698692))))

(assert (=> b!1231542 (= res!820052 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38857 a!3806)) (bvslt from!3184 (size!38857 a!3806))))))

(declare-fun b!1231543 () Bool)

(declare-fun res!820059 () Bool)

(assert (=> b!1231543 (=> (not res!820059) (not e!698692))))

(assert (=> b!1231543 (= res!820059 (not (contains!7186 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1231544 () Bool)

(declare-fun res!820060 () Bool)

(assert (=> b!1231544 (=> res!820060 e!698690)))

(assert (=> b!1231544 (= res!820060 (contains!7186 Nil!27268 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1231545 () Bool)

(assert (=> b!1231545 (= e!698692 (not e!698690))))

(declare-fun res!820064 () Bool)

(assert (=> b!1231545 (=> res!820064 e!698690)))

(assert (=> b!1231545 (= res!820064 (bvsgt from!3184 (size!38857 a!3806)))))

(assert (=> b!1231545 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27267 (select (arr!38320 a!3806) from!3184) acc!823))))

(assert (= (and start!102408 res!820056) b!1231534))

(assert (= (and b!1231534 res!820058) b!1231542))

(assert (= (and b!1231542 res!820052) b!1231537))

(assert (= (and b!1231537 res!820062) b!1231541))

(assert (= (and b!1231541 res!820063) b!1231543))

(assert (= (and b!1231543 res!820059) b!1231540))

(assert (= (and b!1231540 res!820057) b!1231538))

(assert (= (and b!1231538 res!820055) b!1231539))

(assert (= (and b!1231539 res!820054) b!1231545))

(assert (= (and b!1231545 (not res!820064)) b!1231535))

(assert (= (and b!1231535 (not res!820053)) b!1231544))

(assert (= (and b!1231544 (not res!820060)) b!1231533))

(assert (= (and b!1231533 (not res!820061)) b!1231536))

(declare-fun m!1135719 () Bool)

(assert (=> b!1231535 m!1135719))

(declare-fun m!1135721 () Bool)

(assert (=> b!1231540 m!1135721))

(declare-fun m!1135723 () Bool)

(assert (=> b!1231541 m!1135723))

(declare-fun m!1135725 () Bool)

(assert (=> b!1231539 m!1135725))

(assert (=> b!1231539 m!1135725))

(declare-fun m!1135727 () Bool)

(assert (=> b!1231539 m!1135727))

(declare-fun m!1135729 () Bool)

(assert (=> b!1231544 m!1135729))

(declare-fun m!1135731 () Bool)

(assert (=> b!1231538 m!1135731))

(declare-fun m!1135733 () Bool)

(assert (=> b!1231537 m!1135733))

(declare-fun m!1135735 () Bool)

(assert (=> b!1231534 m!1135735))

(assert (=> b!1231545 m!1135725))

(declare-fun m!1135737 () Bool)

(assert (=> b!1231545 m!1135737))

(declare-fun m!1135739 () Bool)

(assert (=> b!1231536 m!1135739))

(declare-fun m!1135741 () Bool)

(assert (=> b!1231533 m!1135741))

(declare-fun m!1135743 () Bool)

(assert (=> b!1231543 m!1135743))

(declare-fun m!1135745 () Bool)

(assert (=> start!102408 m!1135745))

(check-sat (not b!1231534) (not start!102408) (not b!1231535) (not b!1231538) (not b!1231545) (not b!1231536) (not b!1231537) (not b!1231544) (not b!1231541) (not b!1231539) (not b!1231540) (not b!1231543) (not b!1231533))
(check-sat)

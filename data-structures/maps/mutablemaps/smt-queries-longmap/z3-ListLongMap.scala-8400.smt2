; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102222 () Bool)

(assert start!102222)

(declare-fun b!1230099 () Bool)

(declare-fun res!818697 () Bool)

(declare-fun e!698046 () Bool)

(assert (=> b!1230099 (=> (not res!818697) (not e!698046))))

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((array!79336 0))(
  ( (array!79337 (arr!38284 (Array (_ BitVec 32) (_ BitVec 64))) (size!38821 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79336)

(assert (=> b!1230099 (= res!818697 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38821 a!3806)) (bvslt from!3184 (size!38821 a!3806))))))

(declare-fun b!1230100 () Bool)

(assert (=> b!1230100 (= e!698046 (not true))))

(declare-fun arrayContainsKey!0 (array!79336 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1230100 (not (arrayContainsKey!0 a!3806 (select (arr!38284 a!3806) from!3184) (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-datatypes ((Unit!40708 0))(
  ( (Unit!40709) )
))
(declare-fun lt!559273 () Unit!40708)

(declare-datatypes ((List!27235 0))(
  ( (Nil!27232) (Cons!27231 (h!28440 (_ BitVec 64)) (t!40705 List!27235)) )
))
(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!79336 (_ BitVec 32) (_ BitVec 64) List!27235) Unit!40708)

(assert (=> b!1230100 (= lt!559273 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (select (arr!38284 a!3806) from!3184) (Cons!27231 (select (arr!38284 a!3806) from!3184) Nil!27232)))))

(declare-fun e!698045 () Bool)

(assert (=> b!1230100 e!698045))

(declare-fun res!818698 () Bool)

(assert (=> b!1230100 (=> (not res!818698) (not e!698045))))

(declare-fun arrayNoDuplicates!0 (array!79336 (_ BitVec 32) List!27235) Bool)

(assert (=> b!1230100 (= res!818698 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27232))))

(declare-fun acc!823 () List!27235)

(declare-fun lt!559274 () Unit!40708)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79336 List!27235 List!27235 (_ BitVec 32)) Unit!40708)

(assert (=> b!1230100 (= lt!559274 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27232 from!3184))))

(assert (=> b!1230100 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27231 (select (arr!38284 a!3806) from!3184) acc!823))))

(declare-fun b!1230101 () Bool)

(declare-fun res!818694 () Bool)

(assert (=> b!1230101 (=> (not res!818694) (not e!698046))))

(declare-fun contains!7150 (List!27235 (_ BitVec 64)) Bool)

(assert (=> b!1230101 (= res!818694 (not (contains!7150 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1230102 () Bool)

(declare-fun res!818691 () Bool)

(assert (=> b!1230102 (=> (not res!818691) (not e!698046))))

(assert (=> b!1230102 (= res!818691 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1230103 () Bool)

(declare-fun res!818696 () Bool)

(assert (=> b!1230103 (=> (not res!818696) (not e!698046))))

(declare-fun k0!2913 () (_ BitVec 64))

(assert (=> b!1230103 (= res!818696 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun res!818699 () Bool)

(assert (=> start!102222 (=> (not res!818699) (not e!698046))))

(assert (=> start!102222 (= res!818699 (bvslt (size!38821 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102222 e!698046))

(declare-fun array_inv!29060 (array!79336) Bool)

(assert (=> start!102222 (array_inv!29060 a!3806)))

(assert (=> start!102222 true))

(declare-fun b!1230104 () Bool)

(declare-fun res!818690 () Bool)

(assert (=> b!1230104 (=> (not res!818690) (not e!698046))))

(declare-fun noDuplicate!1757 (List!27235) Bool)

(assert (=> b!1230104 (= res!818690 (noDuplicate!1757 acc!823))))

(declare-fun b!1230105 () Bool)

(declare-fun res!818695 () Bool)

(assert (=> b!1230105 (=> (not res!818695) (not e!698046))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1230105 (= res!818695 (validKeyInArray!0 k0!2913))))

(declare-fun b!1230106 () Bool)

(declare-fun res!818693 () Bool)

(assert (=> b!1230106 (=> (not res!818693) (not e!698046))))

(assert (=> b!1230106 (= res!818693 (validKeyInArray!0 (select (arr!38284 a!3806) from!3184)))))

(declare-fun b!1230107 () Bool)

(assert (=> b!1230107 (= e!698045 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27231 (select (arr!38284 a!3806) from!3184) Nil!27232)))))

(declare-fun b!1230108 () Bool)

(declare-fun res!818692 () Bool)

(assert (=> b!1230108 (=> (not res!818692) (not e!698046))))

(assert (=> b!1230108 (= res!818692 (not (contains!7150 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!102222 res!818699) b!1230105))

(assert (= (and b!1230105 res!818695) b!1230099))

(assert (= (and b!1230099 res!818697) b!1230104))

(assert (= (and b!1230104 res!818690) b!1230101))

(assert (= (and b!1230101 res!818694) b!1230108))

(assert (= (and b!1230108 res!818692) b!1230103))

(assert (= (and b!1230103 res!818696) b!1230102))

(assert (= (and b!1230102 res!818691) b!1230106))

(assert (= (and b!1230106 res!818693) b!1230100))

(assert (= (and b!1230100 res!818698) b!1230107))

(declare-fun m!1134623 () Bool)

(assert (=> b!1230107 m!1134623))

(declare-fun m!1134625 () Bool)

(assert (=> b!1230107 m!1134625))

(assert (=> b!1230106 m!1134623))

(assert (=> b!1230106 m!1134623))

(declare-fun m!1134627 () Bool)

(assert (=> b!1230106 m!1134627))

(declare-fun m!1134629 () Bool)

(assert (=> b!1230100 m!1134629))

(declare-fun m!1134631 () Bool)

(assert (=> b!1230100 m!1134631))

(assert (=> b!1230100 m!1134623))

(declare-fun m!1134633 () Bool)

(assert (=> b!1230100 m!1134633))

(assert (=> b!1230100 m!1134623))

(declare-fun m!1134635 () Bool)

(assert (=> b!1230100 m!1134635))

(assert (=> b!1230100 m!1134623))

(declare-fun m!1134637 () Bool)

(assert (=> b!1230100 m!1134637))

(declare-fun m!1134639 () Bool)

(assert (=> b!1230104 m!1134639))

(declare-fun m!1134641 () Bool)

(assert (=> b!1230105 m!1134641))

(declare-fun m!1134643 () Bool)

(assert (=> b!1230108 m!1134643))

(declare-fun m!1134645 () Bool)

(assert (=> b!1230102 m!1134645))

(declare-fun m!1134647 () Bool)

(assert (=> b!1230103 m!1134647))

(declare-fun m!1134649 () Bool)

(assert (=> start!102222 m!1134649))

(declare-fun m!1134651 () Bool)

(assert (=> b!1230101 m!1134651))

(check-sat (not b!1230102) (not b!1230104) (not b!1230103) (not b!1230108) (not b!1230106) (not b!1230107) (not b!1230105) (not b!1230100) (not start!102222) (not b!1230101))
(check-sat)

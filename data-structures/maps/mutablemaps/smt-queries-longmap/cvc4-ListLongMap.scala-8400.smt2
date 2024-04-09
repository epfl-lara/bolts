; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102224 () Bool)

(assert start!102224)

(declare-fun res!818726 () Bool)

(declare-fun e!698055 () Bool)

(assert (=> start!102224 (=> (not res!818726) (not e!698055))))

(declare-datatypes ((array!79338 0))(
  ( (array!79339 (arr!38285 (Array (_ BitVec 32) (_ BitVec 64))) (size!38822 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79338)

(assert (=> start!102224 (= res!818726 (bvslt (size!38822 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102224 e!698055))

(declare-fun array_inv!29061 (array!79338) Bool)

(assert (=> start!102224 (array_inv!29061 a!3806)))

(assert (=> start!102224 true))

(declare-fun b!1230129 () Bool)

(declare-fun res!818729 () Bool)

(assert (=> b!1230129 (=> (not res!818729) (not e!698055))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1230129 (= res!818729 (validKeyInArray!0 k!2913))))

(declare-fun b!1230130 () Bool)

(declare-fun res!818723 () Bool)

(assert (=> b!1230130 (=> (not res!818723) (not e!698055))))

(declare-datatypes ((List!27236 0))(
  ( (Nil!27233) (Cons!27232 (h!28441 (_ BitVec 64)) (t!40706 List!27236)) )
))
(declare-fun acc!823 () List!27236)

(declare-fun contains!7151 (List!27236 (_ BitVec 64)) Bool)

(assert (=> b!1230130 (= res!818723 (not (contains!7151 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1230131 () Bool)

(declare-fun res!818727 () Bool)

(assert (=> b!1230131 (=> (not res!818727) (not e!698055))))

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79338 (_ BitVec 32) List!27236) Bool)

(assert (=> b!1230131 (= res!818727 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1230132 () Bool)

(declare-fun res!818725 () Bool)

(assert (=> b!1230132 (=> (not res!818725) (not e!698055))))

(declare-fun arrayContainsKey!0 (array!79338 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1230132 (= res!818725 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1230133 () Bool)

(assert (=> b!1230133 (= e!698055 (not true))))

(assert (=> b!1230133 (not (arrayContainsKey!0 a!3806 (select (arr!38285 a!3806) from!3184) (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-datatypes ((Unit!40710 0))(
  ( (Unit!40711) )
))
(declare-fun lt!559279 () Unit!40710)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!79338 (_ BitVec 32) (_ BitVec 64) List!27236) Unit!40710)

(assert (=> b!1230133 (= lt!559279 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (select (arr!38285 a!3806) from!3184) (Cons!27232 (select (arr!38285 a!3806) from!3184) Nil!27233)))))

(declare-fun e!698054 () Bool)

(assert (=> b!1230133 e!698054))

(declare-fun res!818728 () Bool)

(assert (=> b!1230133 (=> (not res!818728) (not e!698054))))

(assert (=> b!1230133 (= res!818728 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27233))))

(declare-fun lt!559280 () Unit!40710)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79338 List!27236 List!27236 (_ BitVec 32)) Unit!40710)

(assert (=> b!1230133 (= lt!559280 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27233 from!3184))))

(assert (=> b!1230133 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27232 (select (arr!38285 a!3806) from!3184) acc!823))))

(declare-fun b!1230134 () Bool)

(declare-fun res!818721 () Bool)

(assert (=> b!1230134 (=> (not res!818721) (not e!698055))))

(declare-fun noDuplicate!1758 (List!27236) Bool)

(assert (=> b!1230134 (= res!818721 (noDuplicate!1758 acc!823))))

(declare-fun b!1230135 () Bool)

(declare-fun res!818720 () Bool)

(assert (=> b!1230135 (=> (not res!818720) (not e!698055))))

(assert (=> b!1230135 (= res!818720 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38822 a!3806)) (bvslt from!3184 (size!38822 a!3806))))))

(declare-fun b!1230136 () Bool)

(declare-fun res!818724 () Bool)

(assert (=> b!1230136 (=> (not res!818724) (not e!698055))))

(assert (=> b!1230136 (= res!818724 (validKeyInArray!0 (select (arr!38285 a!3806) from!3184)))))

(declare-fun b!1230137 () Bool)

(assert (=> b!1230137 (= e!698054 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27232 (select (arr!38285 a!3806) from!3184) Nil!27233)))))

(declare-fun b!1230138 () Bool)

(declare-fun res!818722 () Bool)

(assert (=> b!1230138 (=> (not res!818722) (not e!698055))))

(assert (=> b!1230138 (= res!818722 (not (contains!7151 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!102224 res!818726) b!1230129))

(assert (= (and b!1230129 res!818729) b!1230135))

(assert (= (and b!1230135 res!818720) b!1230134))

(assert (= (and b!1230134 res!818721) b!1230138))

(assert (= (and b!1230138 res!818722) b!1230130))

(assert (= (and b!1230130 res!818723) b!1230132))

(assert (= (and b!1230132 res!818725) b!1230131))

(assert (= (and b!1230131 res!818727) b!1230136))

(assert (= (and b!1230136 res!818724) b!1230133))

(assert (= (and b!1230133 res!818728) b!1230137))

(declare-fun m!1134653 () Bool)

(assert (=> b!1230136 m!1134653))

(assert (=> b!1230136 m!1134653))

(declare-fun m!1134655 () Bool)

(assert (=> b!1230136 m!1134655))

(declare-fun m!1134657 () Bool)

(assert (=> b!1230130 m!1134657))

(declare-fun m!1134659 () Bool)

(assert (=> b!1230131 m!1134659))

(declare-fun m!1134661 () Bool)

(assert (=> b!1230134 m!1134661))

(declare-fun m!1134663 () Bool)

(assert (=> b!1230129 m!1134663))

(declare-fun m!1134665 () Bool)

(assert (=> b!1230138 m!1134665))

(declare-fun m!1134667 () Bool)

(assert (=> b!1230132 m!1134667))

(declare-fun m!1134669 () Bool)

(assert (=> b!1230133 m!1134669))

(declare-fun m!1134671 () Bool)

(assert (=> b!1230133 m!1134671))

(assert (=> b!1230133 m!1134653))

(declare-fun m!1134673 () Bool)

(assert (=> b!1230133 m!1134673))

(assert (=> b!1230133 m!1134653))

(declare-fun m!1134675 () Bool)

(assert (=> b!1230133 m!1134675))

(assert (=> b!1230133 m!1134653))

(declare-fun m!1134677 () Bool)

(assert (=> b!1230133 m!1134677))

(assert (=> b!1230137 m!1134653))

(declare-fun m!1134679 () Bool)

(assert (=> b!1230137 m!1134679))

(declare-fun m!1134681 () Bool)

(assert (=> start!102224 m!1134681))

(push 1)

(assert (not b!1230130))

(assert (not b!1230129))

(assert (not b!1230132))

(assert (not b!1230133))

(assert (not b!1230137))

(assert (not b!1230136))

(assert (not start!102224))

(assert (not b!1230131))

(assert (not b!1230134))

(assert (not b!1230138))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118656 () Bool)

(assert start!118656)

(declare-fun b!1386656 () Bool)

(declare-fun e!785515 () Bool)

(assert (=> b!1386656 (= e!785515 false)))

(declare-datatypes ((Unit!46285 0))(
  ( (Unit!46286) )
))
(declare-fun lt!609504 () Unit!46285)

(declare-fun e!785514 () Unit!46285)

(assert (=> b!1386656 (= lt!609504 e!785514)))

(declare-fun c!128822 () Bool)

(declare-fun e!785516 () Bool)

(assert (=> b!1386656 (= c!128822 e!785516)))

(declare-fun res!927899 () Bool)

(assert (=> b!1386656 (=> (not res!927899) (not e!785516))))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1386656 (= res!927899 (not (= startIndex!16 i!1065)))))

(declare-fun res!927901 () Bool)

(assert (=> start!118656 (=> (not res!927901) (not e!785515))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118656 (= res!927901 (validMask!0 mask!2987))))

(assert (=> start!118656 e!785515))

(assert (=> start!118656 true))

(declare-datatypes ((array!94850 0))(
  ( (array!94851 (arr!45797 (Array (_ BitVec 32) (_ BitVec 64))) (size!46348 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94850)

(declare-fun array_inv!34742 (array!94850) Bool)

(assert (=> start!118656 (array_inv!34742 a!2938)))

(declare-fun b!1386657 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1386657 (= e!785516 (validKeyInArray!0 (select (arr!45797 a!2938) startIndex!16)))))

(declare-fun b!1386658 () Bool)

(declare-fun Unit!46287 () Unit!46285)

(assert (=> b!1386658 (= e!785514 Unit!46287)))

(declare-fun b!1386659 () Bool)

(declare-fun lt!609505 () Unit!46285)

(assert (=> b!1386659 (= e!785514 lt!609505)))

(declare-fun lt!609503 () Unit!46285)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94850 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46285)

(assert (=> b!1386659 (= lt!609503 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10162 0))(
  ( (MissingZero!10162 (index!43018 (_ BitVec 32))) (Found!10162 (index!43019 (_ BitVec 32))) (Intermediate!10162 (undefined!10974 Bool) (index!43020 (_ BitVec 32)) (x!124638 (_ BitVec 32))) (Undefined!10162) (MissingVacant!10162 (index!43021 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94850 (_ BitVec 32)) SeekEntryResult!10162)

(assert (=> b!1386659 (= (seekEntryOrOpen!0 (select (arr!45797 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45797 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94851 (store (arr!45797 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46348 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94850 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46285)

(assert (=> b!1386659 (= lt!609505 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94850 (_ BitVec 32)) Bool)

(assert (=> b!1386659 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1386660 () Bool)

(declare-fun res!927900 () Bool)

(assert (=> b!1386660 (=> (not res!927900) (not e!785515))))

(assert (=> b!1386660 (= res!927900 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1386661 () Bool)

(declare-fun res!927903 () Bool)

(assert (=> b!1386661 (=> (not res!927903) (not e!785515))))

(declare-datatypes ((List!32505 0))(
  ( (Nil!32502) (Cons!32501 (h!33710 (_ BitVec 64)) (t!47206 List!32505)) )
))
(declare-fun arrayNoDuplicates!0 (array!94850 (_ BitVec 32) List!32505) Bool)

(assert (=> b!1386661 (= res!927903 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32502))))

(declare-fun b!1386662 () Bool)

(declare-fun res!927902 () Bool)

(assert (=> b!1386662 (=> (not res!927902) (not e!785515))))

(assert (=> b!1386662 (= res!927902 (validKeyInArray!0 (select (arr!45797 a!2938) i!1065)))))

(declare-fun b!1386663 () Bool)

(declare-fun res!927898 () Bool)

(assert (=> b!1386663 (=> (not res!927898) (not e!785515))))

(assert (=> b!1386663 (= res!927898 (and (not (= (select (arr!45797 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45797 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1386664 () Bool)

(declare-fun res!927897 () Bool)

(assert (=> b!1386664 (=> (not res!927897) (not e!785515))))

(assert (=> b!1386664 (= res!927897 (and (= (size!46348 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46348 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46348 a!2938))))))

(assert (= (and start!118656 res!927901) b!1386664))

(assert (= (and b!1386664 res!927897) b!1386662))

(assert (= (and b!1386662 res!927902) b!1386661))

(assert (= (and b!1386661 res!927903) b!1386660))

(assert (= (and b!1386660 res!927900) b!1386663))

(assert (= (and b!1386663 res!927898) b!1386656))

(assert (= (and b!1386656 res!927899) b!1386657))

(assert (= (and b!1386656 c!128822) b!1386659))

(assert (= (and b!1386656 (not c!128822)) b!1386658))

(declare-fun m!1272113 () Bool)

(assert (=> b!1386663 m!1272113))

(declare-fun m!1272115 () Bool)

(assert (=> b!1386657 m!1272115))

(assert (=> b!1386657 m!1272115))

(declare-fun m!1272117 () Bool)

(assert (=> b!1386657 m!1272117))

(declare-fun m!1272119 () Bool)

(assert (=> b!1386661 m!1272119))

(declare-fun m!1272121 () Bool)

(assert (=> b!1386659 m!1272121))

(declare-fun m!1272123 () Bool)

(assert (=> b!1386659 m!1272123))

(assert (=> b!1386659 m!1272123))

(declare-fun m!1272125 () Bool)

(assert (=> b!1386659 m!1272125))

(declare-fun m!1272127 () Bool)

(assert (=> b!1386659 m!1272127))

(declare-fun m!1272129 () Bool)

(assert (=> b!1386659 m!1272129))

(assert (=> b!1386659 m!1272115))

(declare-fun m!1272131 () Bool)

(assert (=> b!1386659 m!1272131))

(assert (=> b!1386659 m!1272115))

(declare-fun m!1272133 () Bool)

(assert (=> b!1386659 m!1272133))

(declare-fun m!1272135 () Bool)

(assert (=> start!118656 m!1272135))

(declare-fun m!1272137 () Bool)

(assert (=> start!118656 m!1272137))

(assert (=> b!1386662 m!1272113))

(assert (=> b!1386662 m!1272113))

(declare-fun m!1272139 () Bool)

(assert (=> b!1386662 m!1272139))

(declare-fun m!1272141 () Bool)

(assert (=> b!1386660 m!1272141))

(check-sat (not b!1386660) (not b!1386662) (not start!118656) (not b!1386659) (not b!1386661) (not b!1386657))

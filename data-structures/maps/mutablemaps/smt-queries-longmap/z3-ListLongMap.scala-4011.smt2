; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54548 () Bool)

(assert start!54548)

(declare-fun b!595765 () Bool)

(declare-fun res!381773 () Bool)

(declare-fun e!340394 () Bool)

(assert (=> b!595765 (=> res!381773 e!340394)))

(declare-datatypes ((List!11840 0))(
  ( (Nil!11837) (Cons!11836 (h!12881 (_ BitVec 64)) (t!18076 List!11840)) )
))
(declare-fun contains!2944 (List!11840 (_ BitVec 64)) Bool)

(assert (=> b!595765 (= res!381773 (contains!2944 Nil!11837 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!595766 () Bool)

(assert (=> b!595766 (= e!340394 true)))

(declare-fun lt!270608 () Bool)

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!595766 (= lt!270608 (contains!2944 Nil!11837 k0!1786))))

(declare-fun b!595767 () Bool)

(declare-fun e!340387 () Bool)

(declare-fun e!340392 () Bool)

(assert (=> b!595767 (= e!340387 e!340392)))

(declare-fun res!381775 () Bool)

(assert (=> b!595767 (=> res!381775 e!340392)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!270603 () (_ BitVec 64))

(declare-fun lt!270612 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36971 0))(
  ( (array!36972 (arr!17746 (Array (_ BitVec 32) (_ BitVec 64))) (size!18110 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36971)

(assert (=> b!595767 (= res!381775 (or (not (= (select (arr!17746 a!2986) j!136) lt!270603)) (not (= (select (arr!17746 a!2986) j!136) lt!270612)) (bvsge j!136 index!984)))))

(declare-fun e!340389 () Bool)

(assert (=> b!595767 e!340389))

(declare-fun res!381771 () Bool)

(assert (=> b!595767 (=> (not res!381771) (not e!340389))))

(assert (=> b!595767 (= res!381771 (= lt!270612 (select (arr!17746 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!595767 (= lt!270612 (select (store (arr!17746 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!595768 () Bool)

(declare-fun res!381780 () Bool)

(assert (=> b!595768 (=> res!381780 e!340394)))

(assert (=> b!595768 (= res!381780 (contains!2944 Nil!11837 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!595769 () Bool)

(declare-fun e!340390 () Bool)

(declare-datatypes ((SeekEntryResult!6193 0))(
  ( (MissingZero!6193 (index!27019 (_ BitVec 32))) (Found!6193 (index!27020 (_ BitVec 32))) (Intermediate!6193 (undefined!7005 Bool) (index!27021 (_ BitVec 32)) (x!55846 (_ BitVec 32))) (Undefined!6193) (MissingVacant!6193 (index!27022 (_ BitVec 32))) )
))
(declare-fun lt!270604 () SeekEntryResult!6193)

(declare-fun lt!270609 () SeekEntryResult!6193)

(assert (=> b!595769 (= e!340390 (= lt!270604 lt!270609))))

(declare-fun b!595770 () Bool)

(declare-fun res!381784 () Bool)

(declare-fun e!340399 () Bool)

(assert (=> b!595770 (=> (not res!381784) (not e!340399))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!595770 (= res!381784 (validKeyInArray!0 k0!1786))))

(declare-fun b!595771 () Bool)

(declare-datatypes ((Unit!18716 0))(
  ( (Unit!18717) )
))
(declare-fun e!340393 () Unit!18716)

(declare-fun Unit!18718 () Unit!18716)

(assert (=> b!595771 (= e!340393 Unit!18718)))

(declare-fun b!595772 () Bool)

(declare-fun e!340397 () Bool)

(assert (=> b!595772 (= e!340389 e!340397)))

(declare-fun res!381782 () Bool)

(assert (=> b!595772 (=> res!381782 e!340397)))

(assert (=> b!595772 (= res!381782 (or (not (= (select (arr!17746 a!2986) j!136) lt!270603)) (not (= (select (arr!17746 a!2986) j!136) lt!270612)) (bvsge j!136 index!984)))))

(declare-fun b!595773 () Bool)

(declare-fun res!381781 () Bool)

(assert (=> b!595773 (=> (not res!381781) (not e!340399))))

(assert (=> b!595773 (= res!381781 (validKeyInArray!0 (select (arr!17746 a!2986) j!136)))))

(declare-fun b!595774 () Bool)

(assert (=> b!595774 (= e!340392 e!340394)))

(declare-fun res!381788 () Bool)

(assert (=> b!595774 (=> res!381788 e!340394)))

(assert (=> b!595774 (= res!381788 (or (bvsge (size!18110 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18110 a!2986))))))

(declare-fun lt!270606 () array!36971)

(declare-fun arrayContainsKey!0 (array!36971 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!595774 (arrayContainsKey!0 lt!270606 (select (arr!17746 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!270611 () Unit!18716)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36971 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18716)

(assert (=> b!595774 (= lt!270611 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!270606 (select (arr!17746 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!595775 () Bool)

(declare-fun res!381778 () Bool)

(assert (=> b!595775 (=> (not res!381778) (not e!340399))))

(declare-fun mask!3053 () (_ BitVec 32))

(assert (=> b!595775 (= res!381778 (and (= (size!18110 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18110 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18110 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!595776 () Bool)

(declare-fun e!340388 () Bool)

(declare-fun e!340395 () Bool)

(assert (=> b!595776 (= e!340388 e!340395)))

(declare-fun res!381774 () Bool)

(assert (=> b!595776 (=> (not res!381774) (not e!340395))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!595776 (= res!381774 (and (= lt!270604 (Found!6193 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17746 a!2986) index!984) (select (arr!17746 a!2986) j!136))) (not (= (select (arr!17746 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36971 (_ BitVec 32)) SeekEntryResult!6193)

(assert (=> b!595776 (= lt!270604 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17746 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!595777 () Bool)

(declare-fun Unit!18719 () Unit!18716)

(assert (=> b!595777 (= e!340393 Unit!18719)))

(assert (=> b!595777 false))

(declare-fun b!595778 () Bool)

(declare-fun res!381777 () Bool)

(assert (=> b!595778 (=> (not res!381777) (not e!340399))))

(assert (=> b!595778 (= res!381777 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!595779 () Bool)

(declare-fun e!340398 () Bool)

(assert (=> b!595779 (= e!340398 (arrayContainsKey!0 lt!270606 (select (arr!17746 a!2986) j!136) index!984))))

(declare-fun b!595780 () Bool)

(declare-fun res!381785 () Bool)

(declare-fun e!340391 () Bool)

(assert (=> b!595780 (=> (not res!381785) (not e!340391))))

(assert (=> b!595780 (= res!381785 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17746 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!595781 () Bool)

(assert (=> b!595781 (= e!340397 e!340398)))

(declare-fun res!381791 () Bool)

(assert (=> b!595781 (=> (not res!381791) (not e!340398))))

(assert (=> b!595781 (= res!381791 (arrayContainsKey!0 lt!270606 (select (arr!17746 a!2986) j!136) j!136))))

(declare-fun b!595782 () Bool)

(declare-fun res!381772 () Bool)

(assert (=> b!595782 (=> (not res!381772) (not e!340391))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36971 (_ BitVec 32)) Bool)

(assert (=> b!595782 (= res!381772 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!595783 () Bool)

(declare-fun res!381783 () Bool)

(assert (=> b!595783 (=> res!381783 e!340394)))

(declare-fun noDuplicate!260 (List!11840) Bool)

(assert (=> b!595783 (= res!381783 (not (noDuplicate!260 Nil!11837)))))

(declare-fun res!381787 () Bool)

(assert (=> start!54548 (=> (not res!381787) (not e!340399))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54548 (= res!381787 (validMask!0 mask!3053))))

(assert (=> start!54548 e!340399))

(assert (=> start!54548 true))

(declare-fun array_inv!13520 (array!36971) Bool)

(assert (=> start!54548 (array_inv!13520 a!2986)))

(declare-fun b!595784 () Bool)

(declare-fun res!381779 () Bool)

(assert (=> b!595784 (=> (not res!381779) (not e!340391))))

(declare-fun arrayNoDuplicates!0 (array!36971 (_ BitVec 32) List!11840) Bool)

(assert (=> b!595784 (= res!381779 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11837))))

(declare-fun b!595785 () Bool)

(assert (=> b!595785 (= e!340395 (not e!340387))))

(declare-fun res!381776 () Bool)

(assert (=> b!595785 (=> res!381776 e!340387)))

(declare-fun lt!270602 () SeekEntryResult!6193)

(assert (=> b!595785 (= res!381776 (not (= lt!270602 (Found!6193 index!984))))))

(declare-fun lt!270607 () Unit!18716)

(assert (=> b!595785 (= lt!270607 e!340393)))

(declare-fun c!67364 () Bool)

(assert (=> b!595785 (= c!67364 (= lt!270602 Undefined!6193))))

(assert (=> b!595785 (= lt!270602 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!270603 lt!270606 mask!3053))))

(assert (=> b!595785 e!340390))

(declare-fun res!381786 () Bool)

(assert (=> b!595785 (=> (not res!381786) (not e!340390))))

(declare-fun lt!270605 () (_ BitVec 32))

(assert (=> b!595785 (= res!381786 (= lt!270609 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270605 vacantSpotIndex!68 lt!270603 lt!270606 mask!3053)))))

(assert (=> b!595785 (= lt!270609 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270605 vacantSpotIndex!68 (select (arr!17746 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!595785 (= lt!270603 (select (store (arr!17746 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!270601 () Unit!18716)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36971 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18716)

(assert (=> b!595785 (= lt!270601 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!270605 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!595785 (= lt!270605 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!595786 () Bool)

(assert (=> b!595786 (= e!340399 e!340391)))

(declare-fun res!381789 () Bool)

(assert (=> b!595786 (=> (not res!381789) (not e!340391))))

(declare-fun lt!270610 () SeekEntryResult!6193)

(assert (=> b!595786 (= res!381789 (or (= lt!270610 (MissingZero!6193 i!1108)) (= lt!270610 (MissingVacant!6193 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36971 (_ BitVec 32)) SeekEntryResult!6193)

(assert (=> b!595786 (= lt!270610 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!595787 () Bool)

(assert (=> b!595787 (= e!340391 e!340388)))

(declare-fun res!381790 () Bool)

(assert (=> b!595787 (=> (not res!381790) (not e!340388))))

(assert (=> b!595787 (= res!381790 (= (select (store (arr!17746 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!595787 (= lt!270606 (array!36972 (store (arr!17746 a!2986) i!1108 k0!1786) (size!18110 a!2986)))))

(assert (= (and start!54548 res!381787) b!595775))

(assert (= (and b!595775 res!381778) b!595773))

(assert (= (and b!595773 res!381781) b!595770))

(assert (= (and b!595770 res!381784) b!595778))

(assert (= (and b!595778 res!381777) b!595786))

(assert (= (and b!595786 res!381789) b!595782))

(assert (= (and b!595782 res!381772) b!595784))

(assert (= (and b!595784 res!381779) b!595780))

(assert (= (and b!595780 res!381785) b!595787))

(assert (= (and b!595787 res!381790) b!595776))

(assert (= (and b!595776 res!381774) b!595785))

(assert (= (and b!595785 res!381786) b!595769))

(assert (= (and b!595785 c!67364) b!595777))

(assert (= (and b!595785 (not c!67364)) b!595771))

(assert (= (and b!595785 (not res!381776)) b!595767))

(assert (= (and b!595767 res!381771) b!595772))

(assert (= (and b!595772 (not res!381782)) b!595781))

(assert (= (and b!595781 res!381791) b!595779))

(assert (= (and b!595767 (not res!381775)) b!595774))

(assert (= (and b!595774 (not res!381788)) b!595783))

(assert (= (and b!595783 (not res!381783)) b!595765))

(assert (= (and b!595765 (not res!381773)) b!595768))

(assert (= (and b!595768 (not res!381780)) b!595766))

(declare-fun m!573379 () Bool)

(assert (=> b!595784 m!573379))

(declare-fun m!573381 () Bool)

(assert (=> b!595765 m!573381))

(declare-fun m!573383 () Bool)

(assert (=> b!595772 m!573383))

(declare-fun m!573385 () Bool)

(assert (=> b!595770 m!573385))

(assert (=> b!595773 m!573383))

(assert (=> b!595773 m!573383))

(declare-fun m!573387 () Bool)

(assert (=> b!595773 m!573387))

(assert (=> b!595767 m!573383))

(declare-fun m!573389 () Bool)

(assert (=> b!595767 m!573389))

(declare-fun m!573391 () Bool)

(assert (=> b!595767 m!573391))

(assert (=> b!595787 m!573389))

(declare-fun m!573393 () Bool)

(assert (=> b!595787 m!573393))

(declare-fun m!573395 () Bool)

(assert (=> b!595785 m!573395))

(declare-fun m!573397 () Bool)

(assert (=> b!595785 m!573397))

(assert (=> b!595785 m!573383))

(declare-fun m!573399 () Bool)

(assert (=> b!595785 m!573399))

(assert (=> b!595785 m!573383))

(assert (=> b!595785 m!573389))

(declare-fun m!573401 () Bool)

(assert (=> b!595785 m!573401))

(declare-fun m!573403 () Bool)

(assert (=> b!595785 m!573403))

(declare-fun m!573405 () Bool)

(assert (=> b!595785 m!573405))

(declare-fun m!573407 () Bool)

(assert (=> b!595782 m!573407))

(declare-fun m!573409 () Bool)

(assert (=> b!595780 m!573409))

(declare-fun m!573411 () Bool)

(assert (=> b!595766 m!573411))

(assert (=> b!595774 m!573383))

(assert (=> b!595774 m!573383))

(declare-fun m!573413 () Bool)

(assert (=> b!595774 m!573413))

(assert (=> b!595774 m!573383))

(declare-fun m!573415 () Bool)

(assert (=> b!595774 m!573415))

(assert (=> b!595779 m!573383))

(assert (=> b!595779 m!573383))

(declare-fun m!573417 () Bool)

(assert (=> b!595779 m!573417))

(declare-fun m!573419 () Bool)

(assert (=> b!595786 m!573419))

(declare-fun m!573421 () Bool)

(assert (=> b!595783 m!573421))

(declare-fun m!573423 () Bool)

(assert (=> b!595776 m!573423))

(assert (=> b!595776 m!573383))

(assert (=> b!595776 m!573383))

(declare-fun m!573425 () Bool)

(assert (=> b!595776 m!573425))

(declare-fun m!573427 () Bool)

(assert (=> b!595778 m!573427))

(declare-fun m!573429 () Bool)

(assert (=> b!595768 m!573429))

(declare-fun m!573431 () Bool)

(assert (=> start!54548 m!573431))

(declare-fun m!573433 () Bool)

(assert (=> start!54548 m!573433))

(assert (=> b!595781 m!573383))

(assert (=> b!595781 m!573383))

(declare-fun m!573435 () Bool)

(assert (=> b!595781 m!573435))

(check-sat (not b!595776) (not start!54548) (not b!595786) (not b!595782) (not b!595765) (not b!595773) (not b!595766) (not b!595785) (not b!595784) (not b!595768) (not b!595783) (not b!595770) (not b!595774) (not b!595778) (not b!595779) (not b!595781))
(check-sat)

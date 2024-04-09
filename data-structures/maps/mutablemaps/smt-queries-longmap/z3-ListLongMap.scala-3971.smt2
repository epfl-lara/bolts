; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53916 () Bool)

(assert start!53916)

(declare-fun b!587848 () Bool)

(declare-fun res!375638 () Bool)

(declare-fun e!335734 () Bool)

(assert (=> b!587848 (=> (not res!375638) (not e!335734))))

(declare-datatypes ((array!36714 0))(
  ( (array!36715 (arr!17626 (Array (_ BitVec 32) (_ BitVec 64))) (size!17990 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36714)

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36714 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!587848 (= res!375638 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!587849 () Bool)

(declare-fun res!375640 () Bool)

(declare-fun e!335735 () Bool)

(assert (=> b!587849 (=> (not res!375640) (not e!335735))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36714 (_ BitVec 32)) Bool)

(assert (=> b!587849 (= res!375640 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!587850 () Bool)

(declare-fun e!335736 () Bool)

(declare-datatypes ((SeekEntryResult!6073 0))(
  ( (MissingZero!6073 (index!26522 (_ BitVec 32))) (Found!6073 (index!26523 (_ BitVec 32))) (Intermediate!6073 (undefined!6885 Bool) (index!26524 (_ BitVec 32)) (x!55354 (_ BitVec 32))) (Undefined!6073) (MissingVacant!6073 (index!26525 (_ BitVec 32))) )
))
(declare-fun lt!266572 () SeekEntryResult!6073)

(declare-fun lt!266573 () SeekEntryResult!6073)

(assert (=> b!587850 (= e!335736 (= lt!266572 lt!266573))))

(declare-fun b!587852 () Bool)

(declare-fun e!335737 () Bool)

(assert (=> b!587852 (= e!335735 e!335737)))

(declare-fun res!375637 () Bool)

(assert (=> b!587852 (=> (not res!375637) (not e!335737))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!587852 (= res!375637 (and (= lt!266572 (Found!6073 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17626 a!2986) index!984) (select (arr!17626 a!2986) j!136))) (not (= (select (arr!17626 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36714 (_ BitVec 32)) SeekEntryResult!6073)

(assert (=> b!587852 (= lt!266572 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17626 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!587853 () Bool)

(declare-fun res!375639 () Bool)

(assert (=> b!587853 (=> (not res!375639) (not e!335734))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!587853 (= res!375639 (validKeyInArray!0 (select (arr!17626 a!2986) j!136)))))

(declare-fun b!587854 () Bool)

(assert (=> b!587854 (= e!335737 (not true))))

(assert (=> b!587854 e!335736))

(declare-fun res!375643 () Bool)

(assert (=> b!587854 (=> (not res!375643) (not e!335736))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun lt!266576 () (_ BitVec 32))

(assert (=> b!587854 (= res!375643 (= lt!266573 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266576 vacantSpotIndex!68 (select (store (arr!17626 a!2986) i!1108 k0!1786) j!136) (array!36715 (store (arr!17626 a!2986) i!1108 k0!1786) (size!17990 a!2986)) mask!3053)))))

(assert (=> b!587854 (= lt!266573 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266576 vacantSpotIndex!68 (select (arr!17626 a!2986) j!136) a!2986 mask!3053))))

(declare-datatypes ((Unit!18270 0))(
  ( (Unit!18271) )
))
(declare-fun lt!266575 () Unit!18270)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36714 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18270)

(assert (=> b!587854 (= lt!266575 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266576 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!587854 (= lt!266576 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!587855 () Bool)

(assert (=> b!587855 (= e!335734 e!335735)))

(declare-fun res!375644 () Bool)

(assert (=> b!587855 (=> (not res!375644) (not e!335735))))

(declare-fun lt!266574 () SeekEntryResult!6073)

(assert (=> b!587855 (= res!375644 (or (= lt!266574 (MissingZero!6073 i!1108)) (= lt!266574 (MissingVacant!6073 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36714 (_ BitVec 32)) SeekEntryResult!6073)

(assert (=> b!587855 (= lt!266574 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!587856 () Bool)

(declare-fun res!375641 () Bool)

(assert (=> b!587856 (=> (not res!375641) (not e!335735))))

(declare-datatypes ((List!11720 0))(
  ( (Nil!11717) (Cons!11716 (h!12761 (_ BitVec 64)) (t!17956 List!11720)) )
))
(declare-fun arrayNoDuplicates!0 (array!36714 (_ BitVec 32) List!11720) Bool)

(assert (=> b!587856 (= res!375641 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11717))))

(declare-fun b!587857 () Bool)

(declare-fun res!375636 () Bool)

(assert (=> b!587857 (=> (not res!375636) (not e!335734))))

(assert (=> b!587857 (= res!375636 (and (= (size!17990 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17990 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17990 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!587858 () Bool)

(declare-fun res!375634 () Bool)

(assert (=> b!587858 (=> (not res!375634) (not e!335735))))

(assert (=> b!587858 (= res!375634 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17626 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17626 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!375642 () Bool)

(assert (=> start!53916 (=> (not res!375642) (not e!335734))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53916 (= res!375642 (validMask!0 mask!3053))))

(assert (=> start!53916 e!335734))

(assert (=> start!53916 true))

(declare-fun array_inv!13400 (array!36714) Bool)

(assert (=> start!53916 (array_inv!13400 a!2986)))

(declare-fun b!587851 () Bool)

(declare-fun res!375635 () Bool)

(assert (=> b!587851 (=> (not res!375635) (not e!335734))))

(assert (=> b!587851 (= res!375635 (validKeyInArray!0 k0!1786))))

(assert (= (and start!53916 res!375642) b!587857))

(assert (= (and b!587857 res!375636) b!587853))

(assert (= (and b!587853 res!375639) b!587851))

(assert (= (and b!587851 res!375635) b!587848))

(assert (= (and b!587848 res!375638) b!587855))

(assert (= (and b!587855 res!375644) b!587849))

(assert (= (and b!587849 res!375640) b!587856))

(assert (= (and b!587856 res!375641) b!587858))

(assert (= (and b!587858 res!375634) b!587852))

(assert (= (and b!587852 res!375637) b!587854))

(assert (= (and b!587854 res!375643) b!587850))

(declare-fun m!566391 () Bool)

(assert (=> b!587851 m!566391))

(declare-fun m!566393 () Bool)

(assert (=> b!587855 m!566393))

(declare-fun m!566395 () Bool)

(assert (=> b!587852 m!566395))

(declare-fun m!566397 () Bool)

(assert (=> b!587852 m!566397))

(assert (=> b!587852 m!566397))

(declare-fun m!566399 () Bool)

(assert (=> b!587852 m!566399))

(declare-fun m!566401 () Bool)

(assert (=> start!53916 m!566401))

(declare-fun m!566403 () Bool)

(assert (=> start!53916 m!566403))

(declare-fun m!566405 () Bool)

(assert (=> b!587858 m!566405))

(declare-fun m!566407 () Bool)

(assert (=> b!587858 m!566407))

(declare-fun m!566409 () Bool)

(assert (=> b!587858 m!566409))

(declare-fun m!566411 () Bool)

(assert (=> b!587848 m!566411))

(declare-fun m!566413 () Bool)

(assert (=> b!587856 m!566413))

(assert (=> b!587853 m!566397))

(assert (=> b!587853 m!566397))

(declare-fun m!566415 () Bool)

(assert (=> b!587853 m!566415))

(assert (=> b!587854 m!566397))

(declare-fun m!566417 () Bool)

(assert (=> b!587854 m!566417))

(declare-fun m!566419 () Bool)

(assert (=> b!587854 m!566419))

(declare-fun m!566421 () Bool)

(assert (=> b!587854 m!566421))

(assert (=> b!587854 m!566397))

(assert (=> b!587854 m!566407))

(declare-fun m!566423 () Bool)

(assert (=> b!587854 m!566423))

(assert (=> b!587854 m!566421))

(declare-fun m!566425 () Bool)

(assert (=> b!587854 m!566425))

(declare-fun m!566427 () Bool)

(assert (=> b!587849 m!566427))

(check-sat (not b!587848) (not b!587849) (not b!587854) (not start!53916) (not b!587851) (not b!587852) (not b!587855) (not b!587853) (not b!587856))

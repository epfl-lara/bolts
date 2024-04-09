; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53742 () Bool)

(assert start!53742)

(declare-fun b!585715 () Bool)

(declare-fun e!335014 () Bool)

(assert (=> b!585715 (= e!335014 (not true))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun lt!265912 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((array!36597 0))(
  ( (array!36598 (arr!17569 (Array (_ BitVec 32) (_ BitVec 64))) (size!17933 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36597)

(declare-datatypes ((SeekEntryResult!6016 0))(
  ( (MissingZero!6016 (index!26291 (_ BitVec 32))) (Found!6016 (index!26292 (_ BitVec 32))) (Intermediate!6016 (undefined!6828 Bool) (index!26293 (_ BitVec 32)) (x!55136 (_ BitVec 32))) (Undefined!6016) (MissingVacant!6016 (index!26294 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36597 (_ BitVec 32)) SeekEntryResult!6016)

(assert (=> b!585715 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265912 vacantSpotIndex!68 (select (arr!17569 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265912 vacantSpotIndex!68 (select (store (arr!17569 a!2986) i!1108 k0!1786) j!136) (array!36598 (store (arr!17569 a!2986) i!1108 k0!1786) (size!17933 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18156 0))(
  ( (Unit!18157) )
))
(declare-fun lt!265911 () Unit!18156)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36597 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18156)

(assert (=> b!585715 (= lt!265911 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!265912 vacantSpotIndex!68 mask!3053))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!585715 (= lt!265912 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!585716 () Bool)

(declare-fun res!373691 () Bool)

(declare-fun e!335012 () Bool)

(assert (=> b!585716 (=> (not res!373691) (not e!335012))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!585716 (= res!373691 (validKeyInArray!0 (select (arr!17569 a!2986) j!136)))))

(declare-fun b!585717 () Bool)

(declare-fun res!373690 () Bool)

(assert (=> b!585717 (=> (not res!373690) (not e!335014))))

(assert (=> b!585717 (= res!373690 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17569 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17569 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!585718 () Bool)

(declare-fun res!373687 () Bool)

(assert (=> b!585718 (=> (not res!373687) (not e!335014))))

(assert (=> b!585718 (= res!373687 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17569 a!2986) index!984) (select (arr!17569 a!2986) j!136))) (not (= (select (arr!17569 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!585719 () Bool)

(assert (=> b!585719 (= e!335012 e!335014)))

(declare-fun res!373689 () Bool)

(assert (=> b!585719 (=> (not res!373689) (not e!335014))))

(declare-fun lt!265913 () SeekEntryResult!6016)

(assert (=> b!585719 (= res!373689 (or (= lt!265913 (MissingZero!6016 i!1108)) (= lt!265913 (MissingVacant!6016 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36597 (_ BitVec 32)) SeekEntryResult!6016)

(assert (=> b!585719 (= lt!265913 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!585720 () Bool)

(declare-fun res!373684 () Bool)

(assert (=> b!585720 (=> (not res!373684) (not e!335012))))

(declare-fun arrayContainsKey!0 (array!36597 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!585720 (= res!373684 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!585721 () Bool)

(declare-fun res!373686 () Bool)

(assert (=> b!585721 (=> (not res!373686) (not e!335014))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36597 (_ BitVec 32)) Bool)

(assert (=> b!585721 (= res!373686 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!585722 () Bool)

(declare-fun res!373683 () Bool)

(assert (=> b!585722 (=> (not res!373683) (not e!335014))))

(declare-datatypes ((List!11663 0))(
  ( (Nil!11660) (Cons!11659 (h!12704 (_ BitVec 64)) (t!17899 List!11663)) )
))
(declare-fun arrayNoDuplicates!0 (array!36597 (_ BitVec 32) List!11663) Bool)

(assert (=> b!585722 (= res!373683 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11660))))

(declare-fun b!585723 () Bool)

(declare-fun res!373682 () Bool)

(assert (=> b!585723 (=> (not res!373682) (not e!335012))))

(assert (=> b!585723 (= res!373682 (validKeyInArray!0 k0!1786))))

(declare-fun res!373681 () Bool)

(assert (=> start!53742 (=> (not res!373681) (not e!335012))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53742 (= res!373681 (validMask!0 mask!3053))))

(assert (=> start!53742 e!335012))

(assert (=> start!53742 true))

(declare-fun array_inv!13343 (array!36597) Bool)

(assert (=> start!53742 (array_inv!13343 a!2986)))

(declare-fun b!585724 () Bool)

(declare-fun res!373688 () Bool)

(assert (=> b!585724 (=> (not res!373688) (not e!335012))))

(assert (=> b!585724 (= res!373688 (and (= (size!17933 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17933 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17933 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!585725 () Bool)

(declare-fun res!373685 () Bool)

(assert (=> b!585725 (=> (not res!373685) (not e!335014))))

(assert (=> b!585725 (= res!373685 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17569 a!2986) j!136) a!2986 mask!3053) (Found!6016 j!136)))))

(assert (= (and start!53742 res!373681) b!585724))

(assert (= (and b!585724 res!373688) b!585716))

(assert (= (and b!585716 res!373691) b!585723))

(assert (= (and b!585723 res!373682) b!585720))

(assert (= (and b!585720 res!373684) b!585719))

(assert (= (and b!585719 res!373689) b!585721))

(assert (= (and b!585721 res!373686) b!585722))

(assert (= (and b!585722 res!373683) b!585717))

(assert (= (and b!585717 res!373690) b!585725))

(assert (= (and b!585725 res!373685) b!585718))

(assert (= (and b!585718 res!373687) b!585715))

(declare-fun m!564045 () Bool)

(assert (=> b!585718 m!564045))

(declare-fun m!564047 () Bool)

(assert (=> b!585718 m!564047))

(declare-fun m!564049 () Bool)

(assert (=> b!585719 m!564049))

(assert (=> b!585716 m!564047))

(assert (=> b!585716 m!564047))

(declare-fun m!564051 () Bool)

(assert (=> b!585716 m!564051))

(assert (=> b!585725 m!564047))

(assert (=> b!585725 m!564047))

(declare-fun m!564053 () Bool)

(assert (=> b!585725 m!564053))

(declare-fun m!564055 () Bool)

(assert (=> b!585717 m!564055))

(declare-fun m!564057 () Bool)

(assert (=> b!585717 m!564057))

(declare-fun m!564059 () Bool)

(assert (=> b!585717 m!564059))

(declare-fun m!564061 () Bool)

(assert (=> b!585723 m!564061))

(declare-fun m!564063 () Bool)

(assert (=> b!585722 m!564063))

(declare-fun m!564065 () Bool)

(assert (=> start!53742 m!564065))

(declare-fun m!564067 () Bool)

(assert (=> start!53742 m!564067))

(declare-fun m!564069 () Bool)

(assert (=> b!585721 m!564069))

(declare-fun m!564071 () Bool)

(assert (=> b!585715 m!564071))

(declare-fun m!564073 () Bool)

(assert (=> b!585715 m!564073))

(assert (=> b!585715 m!564047))

(declare-fun m!564075 () Bool)

(assert (=> b!585715 m!564075))

(assert (=> b!585715 m!564047))

(declare-fun m!564077 () Bool)

(assert (=> b!585715 m!564077))

(assert (=> b!585715 m!564073))

(declare-fun m!564079 () Bool)

(assert (=> b!585715 m!564079))

(assert (=> b!585715 m!564057))

(declare-fun m!564081 () Bool)

(assert (=> b!585720 m!564081))

(check-sat (not b!585716) (not b!585723) (not start!53742) (not b!585719) (not b!585720) (not b!585722) (not b!585721) (not b!585725) (not b!585715))
(check-sat)

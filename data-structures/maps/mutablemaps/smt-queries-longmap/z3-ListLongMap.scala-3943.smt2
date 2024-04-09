; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53688 () Bool)

(assert start!53688)

(declare-fun b!584775 () Bool)

(declare-fun e!334723 () Bool)

(declare-fun e!334720 () Bool)

(assert (=> b!584775 (= e!334723 e!334720)))

(declare-fun res!372741 () Bool)

(assert (=> b!584775 (=> (not res!372741) (not e!334720))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!265670 () (_ BitVec 32))

(assert (=> b!584775 (= res!372741 (and (bvsge lt!265670 #b00000000000000000000000000000000) (bvslt lt!265670 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!584775 (= lt!265670 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!584777 () Bool)

(declare-fun res!372743 () Bool)

(assert (=> b!584777 (=> (not res!372743) (not e!334723))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!36543 0))(
  ( (array!36544 (arr!17542 (Array (_ BitVec 32) (_ BitVec 64))) (size!17906 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36543)

(declare-datatypes ((SeekEntryResult!5989 0))(
  ( (MissingZero!5989 (index!26183 (_ BitVec 32))) (Found!5989 (index!26184 (_ BitVec 32))) (Intermediate!5989 (undefined!6801 Bool) (index!26185 (_ BitVec 32)) (x!55037 (_ BitVec 32))) (Undefined!5989) (MissingVacant!5989 (index!26186 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36543 (_ BitVec 32)) SeekEntryResult!5989)

(assert (=> b!584777 (= res!372743 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17542 a!2986) j!136) a!2986 mask!3053) (Found!5989 j!136)))))

(declare-fun b!584778 () Bool)

(declare-fun res!372750 () Bool)

(declare-fun e!334721 () Bool)

(assert (=> b!584778 (=> (not res!372750) (not e!334721))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!584778 (= res!372750 (validKeyInArray!0 (select (arr!17542 a!2986) j!136)))))

(declare-fun b!584779 () Bool)

(declare-fun res!372747 () Bool)

(assert (=> b!584779 (=> (not res!372747) (not e!334721))))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!584779 (= res!372747 (validKeyInArray!0 k0!1786))))

(declare-fun b!584780 () Bool)

(declare-fun res!372748 () Bool)

(assert (=> b!584780 (=> (not res!372748) (not e!334723))))

(assert (=> b!584780 (= res!372748 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17542 a!2986) index!984) (select (arr!17542 a!2986) j!136))) (not (= (select (arr!17542 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!584781 () Bool)

(assert (=> b!584781 (= e!334721 e!334723)))

(declare-fun res!372742 () Bool)

(assert (=> b!584781 (=> (not res!372742) (not e!334723))))

(declare-fun lt!265669 () SeekEntryResult!5989)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!584781 (= res!372742 (or (= lt!265669 (MissingZero!5989 i!1108)) (= lt!265669 (MissingVacant!5989 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36543 (_ BitVec 32)) SeekEntryResult!5989)

(assert (=> b!584781 (= lt!265669 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun res!372749 () Bool)

(assert (=> start!53688 (=> (not res!372749) (not e!334721))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53688 (= res!372749 (validMask!0 mask!3053))))

(assert (=> start!53688 e!334721))

(assert (=> start!53688 true))

(declare-fun array_inv!13316 (array!36543) Bool)

(assert (=> start!53688 (array_inv!13316 a!2986)))

(declare-fun b!584776 () Bool)

(assert (=> b!584776 (= e!334720 false)))

(declare-fun lt!265668 () SeekEntryResult!5989)

(assert (=> b!584776 (= lt!265668 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265670 vacantSpotIndex!68 (select (arr!17542 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!584782 () Bool)

(declare-fun res!372744 () Bool)

(assert (=> b!584782 (=> (not res!372744) (not e!334723))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36543 (_ BitVec 32)) Bool)

(assert (=> b!584782 (= res!372744 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!584783 () Bool)

(declare-fun res!372746 () Bool)

(assert (=> b!584783 (=> (not res!372746) (not e!334723))))

(assert (=> b!584783 (= res!372746 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17542 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17542 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!584784 () Bool)

(declare-fun res!372745 () Bool)

(assert (=> b!584784 (=> (not res!372745) (not e!334721))))

(declare-fun arrayContainsKey!0 (array!36543 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!584784 (= res!372745 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!584785 () Bool)

(declare-fun res!372751 () Bool)

(assert (=> b!584785 (=> (not res!372751) (not e!334723))))

(declare-datatypes ((List!11636 0))(
  ( (Nil!11633) (Cons!11632 (h!12677 (_ BitVec 64)) (t!17872 List!11636)) )
))
(declare-fun arrayNoDuplicates!0 (array!36543 (_ BitVec 32) List!11636) Bool)

(assert (=> b!584785 (= res!372751 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11633))))

(declare-fun b!584786 () Bool)

(declare-fun res!372752 () Bool)

(assert (=> b!584786 (=> (not res!372752) (not e!334721))))

(assert (=> b!584786 (= res!372752 (and (= (size!17906 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17906 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17906 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!53688 res!372749) b!584786))

(assert (= (and b!584786 res!372752) b!584778))

(assert (= (and b!584778 res!372750) b!584779))

(assert (= (and b!584779 res!372747) b!584784))

(assert (= (and b!584784 res!372745) b!584781))

(assert (= (and b!584781 res!372742) b!584782))

(assert (= (and b!584782 res!372744) b!584785))

(assert (= (and b!584785 res!372751) b!584783))

(assert (= (and b!584783 res!372746) b!584777))

(assert (= (and b!584777 res!372743) b!584780))

(assert (= (and b!584780 res!372748) b!584775))

(assert (= (and b!584775 res!372741) b!584776))

(declare-fun m!563121 () Bool)

(assert (=> b!584784 m!563121))

(declare-fun m!563123 () Bool)

(assert (=> b!584782 m!563123))

(declare-fun m!563125 () Bool)

(assert (=> b!584779 m!563125))

(declare-fun m!563127 () Bool)

(assert (=> b!584785 m!563127))

(declare-fun m!563129 () Bool)

(assert (=> b!584783 m!563129))

(declare-fun m!563131 () Bool)

(assert (=> b!584783 m!563131))

(declare-fun m!563133 () Bool)

(assert (=> b!584783 m!563133))

(declare-fun m!563135 () Bool)

(assert (=> start!53688 m!563135))

(declare-fun m!563137 () Bool)

(assert (=> start!53688 m!563137))

(declare-fun m!563139 () Bool)

(assert (=> b!584781 m!563139))

(declare-fun m!563141 () Bool)

(assert (=> b!584777 m!563141))

(assert (=> b!584777 m!563141))

(declare-fun m!563143 () Bool)

(assert (=> b!584777 m!563143))

(assert (=> b!584776 m!563141))

(assert (=> b!584776 m!563141))

(declare-fun m!563145 () Bool)

(assert (=> b!584776 m!563145))

(declare-fun m!563147 () Bool)

(assert (=> b!584775 m!563147))

(assert (=> b!584778 m!563141))

(assert (=> b!584778 m!563141))

(declare-fun m!563149 () Bool)

(assert (=> b!584778 m!563149))

(declare-fun m!563151 () Bool)

(assert (=> b!584780 m!563151))

(assert (=> b!584780 m!563141))

(check-sat (not b!584785) (not b!584775) (not b!584777) (not b!584776) (not start!53688) (not b!584778) (not b!584782) (not b!584781) (not b!584779) (not b!584784))
(check-sat)

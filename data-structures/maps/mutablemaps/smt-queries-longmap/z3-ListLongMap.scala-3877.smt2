; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53292 () Bool)

(assert start!53292)

(declare-fun b!579018 () Bool)

(declare-fun res!366992 () Bool)

(declare-fun e!332818 () Bool)

(assert (=> b!579018 (=> (not res!366992) (not e!332818))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!579018 (= res!366992 (validKeyInArray!0 k0!1786))))

(declare-fun b!579019 () Bool)

(declare-fun res!366991 () Bool)

(assert (=> b!579019 (=> (not res!366991) (not e!332818))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36147 0))(
  ( (array!36148 (arr!17344 (Array (_ BitVec 32) (_ BitVec 64))) (size!17708 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36147)

(assert (=> b!579019 (= res!366991 (and (= (size!17708 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17708 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17708 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!579020 () Bool)

(declare-fun res!366990 () Bool)

(declare-fun e!332817 () Bool)

(assert (=> b!579020 (=> (not res!366990) (not e!332817))))

(declare-datatypes ((List!11438 0))(
  ( (Nil!11435) (Cons!11434 (h!12479 (_ BitVec 64)) (t!17674 List!11438)) )
))
(declare-fun arrayNoDuplicates!0 (array!36147 (_ BitVec 32) List!11438) Bool)

(assert (=> b!579020 (= res!366990 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11435))))

(declare-fun b!579021 () Bool)

(declare-fun res!366985 () Bool)

(assert (=> b!579021 (=> (not res!366985) (not e!332818))))

(declare-fun arrayContainsKey!0 (array!36147 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!579021 (= res!366985 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun res!366987 () Bool)

(assert (=> start!53292 (=> (not res!366987) (not e!332818))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53292 (= res!366987 (validMask!0 mask!3053))))

(assert (=> start!53292 e!332818))

(assert (=> start!53292 true))

(declare-fun array_inv!13118 (array!36147) Bool)

(assert (=> start!53292 (array_inv!13118 a!2986)))

(declare-fun b!579022 () Bool)

(declare-fun res!366984 () Bool)

(assert (=> b!579022 (=> (not res!366984) (not e!332817))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36147 (_ BitVec 32)) Bool)

(assert (=> b!579022 (= res!366984 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!579023 () Bool)

(assert (=> b!579023 (= e!332817 false)))

(declare-datatypes ((SeekEntryResult!5791 0))(
  ( (MissingZero!5791 (index!25391 (_ BitVec 32))) (Found!5791 (index!25392 (_ BitVec 32))) (Intermediate!5791 (undefined!6603 Bool) (index!25393 (_ BitVec 32)) (x!54311 (_ BitVec 32))) (Undefined!5791) (MissingVacant!5791 (index!25394 (_ BitVec 32))) )
))
(declare-fun lt!264395 () SeekEntryResult!5791)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36147 (_ BitVec 32)) SeekEntryResult!5791)

(assert (=> b!579023 (= lt!264395 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17344 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!579024 () Bool)

(assert (=> b!579024 (= e!332818 e!332817)))

(declare-fun res!366986 () Bool)

(assert (=> b!579024 (=> (not res!366986) (not e!332817))))

(declare-fun lt!264394 () SeekEntryResult!5791)

(assert (=> b!579024 (= res!366986 (or (= lt!264394 (MissingZero!5791 i!1108)) (= lt!264394 (MissingVacant!5791 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36147 (_ BitVec 32)) SeekEntryResult!5791)

(assert (=> b!579024 (= lt!264394 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!579025 () Bool)

(declare-fun res!366989 () Bool)

(assert (=> b!579025 (=> (not res!366989) (not e!332817))))

(assert (=> b!579025 (= res!366989 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17344 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17344 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!579026 () Bool)

(declare-fun res!366988 () Bool)

(assert (=> b!579026 (=> (not res!366988) (not e!332818))))

(assert (=> b!579026 (= res!366988 (validKeyInArray!0 (select (arr!17344 a!2986) j!136)))))

(assert (= (and start!53292 res!366987) b!579019))

(assert (= (and b!579019 res!366991) b!579026))

(assert (= (and b!579026 res!366988) b!579018))

(assert (= (and b!579018 res!366992) b!579021))

(assert (= (and b!579021 res!366985) b!579024))

(assert (= (and b!579024 res!366986) b!579022))

(assert (= (and b!579022 res!366984) b!579020))

(assert (= (and b!579020 res!366990) b!579025))

(assert (= (and b!579025 res!366989) b!579023))

(declare-fun m!557697 () Bool)

(assert (=> b!579024 m!557697))

(declare-fun m!557699 () Bool)

(assert (=> b!579021 m!557699))

(declare-fun m!557701 () Bool)

(assert (=> b!579025 m!557701))

(declare-fun m!557703 () Bool)

(assert (=> b!579025 m!557703))

(declare-fun m!557705 () Bool)

(assert (=> b!579025 m!557705))

(declare-fun m!557707 () Bool)

(assert (=> b!579022 m!557707))

(declare-fun m!557709 () Bool)

(assert (=> b!579023 m!557709))

(assert (=> b!579023 m!557709))

(declare-fun m!557711 () Bool)

(assert (=> b!579023 m!557711))

(declare-fun m!557713 () Bool)

(assert (=> b!579020 m!557713))

(assert (=> b!579026 m!557709))

(assert (=> b!579026 m!557709))

(declare-fun m!557715 () Bool)

(assert (=> b!579026 m!557715))

(declare-fun m!557717 () Bool)

(assert (=> b!579018 m!557717))

(declare-fun m!557719 () Bool)

(assert (=> start!53292 m!557719))

(declare-fun m!557721 () Bool)

(assert (=> start!53292 m!557721))

(check-sat (not b!579026) (not b!579018) (not b!579023) (not b!579021) (not b!579020) (not start!53292) (not b!579024) (not b!579022))
(check-sat)

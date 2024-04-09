; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53658 () Bool)

(assert start!53658)

(declare-fun b!584235 () Bool)

(declare-fun e!334543 () Bool)

(declare-fun e!334540 () Bool)

(assert (=> b!584235 (= e!334543 e!334540)))

(declare-fun res!372205 () Bool)

(assert (=> b!584235 (=> (not res!372205) (not e!334540))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!265534 () (_ BitVec 32))

(assert (=> b!584235 (= res!372205 (and (bvsge lt!265534 #b00000000000000000000000000000000) (bvslt lt!265534 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!584235 (= lt!265534 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!584236 () Bool)

(declare-fun res!372211 () Bool)

(assert (=> b!584236 (=> (not res!372211) (not e!334543))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!36513 0))(
  ( (array!36514 (arr!17527 (Array (_ BitVec 32) (_ BitVec 64))) (size!17891 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36513)

(assert (=> b!584236 (= res!372211 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17527 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17527 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!584237 () Bool)

(declare-fun res!372202 () Bool)

(declare-fun e!334541 () Bool)

(assert (=> b!584237 (=> (not res!372202) (not e!334541))))

(declare-fun arrayContainsKey!0 (array!36513 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!584237 (= res!372202 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!584238 () Bool)

(declare-fun res!372203 () Bool)

(assert (=> b!584238 (=> (not res!372203) (not e!334541))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!584238 (= res!372203 (and (= (size!17891 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17891 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17891 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!584239 () Bool)

(declare-fun res!372206 () Bool)

(assert (=> b!584239 (=> (not res!372206) (not e!334543))))

(declare-datatypes ((List!11621 0))(
  ( (Nil!11618) (Cons!11617 (h!12662 (_ BitVec 64)) (t!17857 List!11621)) )
))
(declare-fun arrayNoDuplicates!0 (array!36513 (_ BitVec 32) List!11621) Bool)

(assert (=> b!584239 (= res!372206 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11618))))

(declare-fun b!584240 () Bool)

(declare-fun res!372204 () Bool)

(assert (=> b!584240 (=> (not res!372204) (not e!334543))))

(declare-datatypes ((SeekEntryResult!5974 0))(
  ( (MissingZero!5974 (index!26123 (_ BitVec 32))) (Found!5974 (index!26124 (_ BitVec 32))) (Intermediate!5974 (undefined!6786 Bool) (index!26125 (_ BitVec 32)) (x!54982 (_ BitVec 32))) (Undefined!5974) (MissingVacant!5974 (index!26126 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36513 (_ BitVec 32)) SeekEntryResult!5974)

(assert (=> b!584240 (= res!372204 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17527 a!2986) j!136) a!2986 mask!3053) (Found!5974 j!136)))))

(declare-fun b!584241 () Bool)

(declare-fun res!372212 () Bool)

(assert (=> b!584241 (=> (not res!372212) (not e!334541))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!584241 (= res!372212 (validKeyInArray!0 (select (arr!17527 a!2986) j!136)))))

(declare-fun b!584242 () Bool)

(assert (=> b!584242 (= e!334540 false)))

(declare-fun lt!265535 () SeekEntryResult!5974)

(assert (=> b!584242 (= lt!265535 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265534 vacantSpotIndex!68 (select (arr!17527 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!372209 () Bool)

(assert (=> start!53658 (=> (not res!372209) (not e!334541))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53658 (= res!372209 (validMask!0 mask!3053))))

(assert (=> start!53658 e!334541))

(assert (=> start!53658 true))

(declare-fun array_inv!13301 (array!36513) Bool)

(assert (=> start!53658 (array_inv!13301 a!2986)))

(declare-fun b!584243 () Bool)

(declare-fun res!372210 () Bool)

(assert (=> b!584243 (=> (not res!372210) (not e!334543))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36513 (_ BitVec 32)) Bool)

(assert (=> b!584243 (= res!372210 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!584244 () Bool)

(assert (=> b!584244 (= e!334541 e!334543)))

(declare-fun res!372207 () Bool)

(assert (=> b!584244 (=> (not res!372207) (not e!334543))))

(declare-fun lt!265533 () SeekEntryResult!5974)

(assert (=> b!584244 (= res!372207 (or (= lt!265533 (MissingZero!5974 i!1108)) (= lt!265533 (MissingVacant!5974 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36513 (_ BitVec 32)) SeekEntryResult!5974)

(assert (=> b!584244 (= lt!265533 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!584245 () Bool)

(declare-fun res!372208 () Bool)

(assert (=> b!584245 (=> (not res!372208) (not e!334543))))

(assert (=> b!584245 (= res!372208 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17527 a!2986) index!984) (select (arr!17527 a!2986) j!136))) (not (= (select (arr!17527 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!584246 () Bool)

(declare-fun res!372201 () Bool)

(assert (=> b!584246 (=> (not res!372201) (not e!334541))))

(assert (=> b!584246 (= res!372201 (validKeyInArray!0 k0!1786))))

(assert (= (and start!53658 res!372209) b!584238))

(assert (= (and b!584238 res!372203) b!584241))

(assert (= (and b!584241 res!372212) b!584246))

(assert (= (and b!584246 res!372201) b!584237))

(assert (= (and b!584237 res!372202) b!584244))

(assert (= (and b!584244 res!372207) b!584243))

(assert (= (and b!584243 res!372210) b!584239))

(assert (= (and b!584239 res!372206) b!584236))

(assert (= (and b!584236 res!372211) b!584240))

(assert (= (and b!584240 res!372204) b!584245))

(assert (= (and b!584245 res!372208) b!584235))

(assert (= (and b!584235 res!372205) b!584242))

(declare-fun m!562641 () Bool)

(assert (=> b!584236 m!562641))

(declare-fun m!562643 () Bool)

(assert (=> b!584236 m!562643))

(declare-fun m!562645 () Bool)

(assert (=> b!584236 m!562645))

(declare-fun m!562647 () Bool)

(assert (=> b!584245 m!562647))

(declare-fun m!562649 () Bool)

(assert (=> b!584245 m!562649))

(assert (=> b!584241 m!562649))

(assert (=> b!584241 m!562649))

(declare-fun m!562651 () Bool)

(assert (=> b!584241 m!562651))

(assert (=> b!584242 m!562649))

(assert (=> b!584242 m!562649))

(declare-fun m!562653 () Bool)

(assert (=> b!584242 m!562653))

(declare-fun m!562655 () Bool)

(assert (=> b!584235 m!562655))

(assert (=> b!584240 m!562649))

(assert (=> b!584240 m!562649))

(declare-fun m!562657 () Bool)

(assert (=> b!584240 m!562657))

(declare-fun m!562659 () Bool)

(assert (=> b!584237 m!562659))

(declare-fun m!562661 () Bool)

(assert (=> b!584244 m!562661))

(declare-fun m!562663 () Bool)

(assert (=> b!584239 m!562663))

(declare-fun m!562665 () Bool)

(assert (=> b!584243 m!562665))

(declare-fun m!562667 () Bool)

(assert (=> b!584246 m!562667))

(declare-fun m!562669 () Bool)

(assert (=> start!53658 m!562669))

(declare-fun m!562671 () Bool)

(assert (=> start!53658 m!562671))

(check-sat (not b!584242) (not b!584239) (not b!584246) (not b!584240) (not b!584243) (not b!584241) (not b!584237) (not b!584244) (not b!584235) (not start!53658))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53760 () Bool)

(assert start!53760)

(declare-fun b!586012 () Bool)

(declare-fun res!373986 () Bool)

(declare-fun e!335094 () Bool)

(assert (=> b!586012 (=> (not res!373986) (not e!335094))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36615 0))(
  ( (array!36616 (arr!17578 (Array (_ BitVec 32) (_ BitVec 64))) (size!17942 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36615)

(assert (=> b!586012 (= res!373986 (and (= (size!17942 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17942 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17942 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!586013 () Bool)

(declare-fun res!373982 () Bool)

(declare-fun e!335093 () Bool)

(assert (=> b!586013 (=> (not res!373982) (not e!335093))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6025 0))(
  ( (MissingZero!6025 (index!26327 (_ BitVec 32))) (Found!6025 (index!26328 (_ BitVec 32))) (Intermediate!6025 (undefined!6837 Bool) (index!26329 (_ BitVec 32)) (x!55169 (_ BitVec 32))) (Undefined!6025) (MissingVacant!6025 (index!26330 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36615 (_ BitVec 32)) SeekEntryResult!6025)

(assert (=> b!586013 (= res!373982 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17578 a!2986) j!136) a!2986 mask!3053) (Found!6025 j!136)))))

(declare-fun b!586014 () Bool)

(declare-fun res!373979 () Bool)

(assert (=> b!586014 (=> (not res!373979) (not e!335093))))

(assert (=> b!586014 (= res!373979 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17578 a!2986) index!984) (select (arr!17578 a!2986) j!136))) (not (= (select (arr!17578 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!586015 () Bool)

(declare-fun res!373983 () Bool)

(assert (=> b!586015 (=> (not res!373983) (not e!335093))))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!586015 (= res!373983 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17578 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17578 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!586016 () Bool)

(declare-fun res!373978 () Bool)

(assert (=> b!586016 (=> (not res!373978) (not e!335094))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!586016 (= res!373978 (validKeyInArray!0 (select (arr!17578 a!2986) j!136)))))

(declare-fun b!586017 () Bool)

(declare-fun res!373981 () Bool)

(assert (=> b!586017 (=> (not res!373981) (not e!335093))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36615 (_ BitVec 32)) Bool)

(assert (=> b!586017 (= res!373981 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!373984 () Bool)

(assert (=> start!53760 (=> (not res!373984) (not e!335094))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53760 (= res!373984 (validMask!0 mask!3053))))

(assert (=> start!53760 e!335094))

(assert (=> start!53760 true))

(declare-fun array_inv!13352 (array!36615) Bool)

(assert (=> start!53760 (array_inv!13352 a!2986)))

(declare-fun b!586018 () Bool)

(assert (=> b!586018 (= e!335094 e!335093)))

(declare-fun res!373985 () Bool)

(assert (=> b!586018 (=> (not res!373985) (not e!335093))))

(declare-fun lt!265994 () SeekEntryResult!6025)

(assert (=> b!586018 (= res!373985 (or (= lt!265994 (MissingZero!6025 i!1108)) (= lt!265994 (MissingVacant!6025 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36615 (_ BitVec 32)) SeekEntryResult!6025)

(assert (=> b!586018 (= lt!265994 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!586019 () Bool)

(declare-fun res!373987 () Bool)

(assert (=> b!586019 (=> (not res!373987) (not e!335093))))

(declare-datatypes ((List!11672 0))(
  ( (Nil!11669) (Cons!11668 (h!12713 (_ BitVec 64)) (t!17908 List!11672)) )
))
(declare-fun arrayNoDuplicates!0 (array!36615 (_ BitVec 32) List!11672) Bool)

(assert (=> b!586019 (= res!373987 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11669))))

(declare-fun b!586020 () Bool)

(declare-fun res!373980 () Bool)

(assert (=> b!586020 (=> (not res!373980) (not e!335094))))

(assert (=> b!586020 (= res!373980 (validKeyInArray!0 k0!1786))))

(declare-fun b!586021 () Bool)

(assert (=> b!586021 (= e!335093 (not true))))

(declare-fun lt!265992 () (_ BitVec 32))

(assert (=> b!586021 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265992 vacantSpotIndex!68 (select (arr!17578 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265992 vacantSpotIndex!68 (select (store (arr!17578 a!2986) i!1108 k0!1786) j!136) (array!36616 (store (arr!17578 a!2986) i!1108 k0!1786) (size!17942 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18174 0))(
  ( (Unit!18175) )
))
(declare-fun lt!265993 () Unit!18174)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36615 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18174)

(assert (=> b!586021 (= lt!265993 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!265992 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!586021 (= lt!265992 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!586022 () Bool)

(declare-fun res!373988 () Bool)

(assert (=> b!586022 (=> (not res!373988) (not e!335094))))

(declare-fun arrayContainsKey!0 (array!36615 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!586022 (= res!373988 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!53760 res!373984) b!586012))

(assert (= (and b!586012 res!373986) b!586016))

(assert (= (and b!586016 res!373978) b!586020))

(assert (= (and b!586020 res!373980) b!586022))

(assert (= (and b!586022 res!373988) b!586018))

(assert (= (and b!586018 res!373985) b!586017))

(assert (= (and b!586017 res!373981) b!586019))

(assert (= (and b!586019 res!373987) b!586015))

(assert (= (and b!586015 res!373983) b!586013))

(assert (= (and b!586013 res!373982) b!586014))

(assert (= (and b!586014 res!373979) b!586021))

(declare-fun m!564387 () Bool)

(assert (=> b!586014 m!564387))

(declare-fun m!564389 () Bool)

(assert (=> b!586014 m!564389))

(declare-fun m!564391 () Bool)

(assert (=> b!586019 m!564391))

(declare-fun m!564393 () Bool)

(assert (=> b!586018 m!564393))

(declare-fun m!564395 () Bool)

(assert (=> b!586022 m!564395))

(declare-fun m!564397 () Bool)

(assert (=> b!586021 m!564397))

(declare-fun m!564399 () Bool)

(assert (=> b!586021 m!564399))

(assert (=> b!586021 m!564399))

(declare-fun m!564401 () Bool)

(assert (=> b!586021 m!564401))

(assert (=> b!586021 m!564389))

(declare-fun m!564403 () Bool)

(assert (=> b!586021 m!564403))

(assert (=> b!586021 m!564389))

(declare-fun m!564405 () Bool)

(assert (=> b!586021 m!564405))

(declare-fun m!564407 () Bool)

(assert (=> b!586021 m!564407))

(declare-fun m!564409 () Bool)

(assert (=> b!586017 m!564409))

(declare-fun m!564411 () Bool)

(assert (=> start!53760 m!564411))

(declare-fun m!564413 () Bool)

(assert (=> start!53760 m!564413))

(assert (=> b!586013 m!564389))

(assert (=> b!586013 m!564389))

(declare-fun m!564415 () Bool)

(assert (=> b!586013 m!564415))

(declare-fun m!564417 () Bool)

(assert (=> b!586020 m!564417))

(declare-fun m!564419 () Bool)

(assert (=> b!586015 m!564419))

(assert (=> b!586015 m!564403))

(declare-fun m!564421 () Bool)

(assert (=> b!586015 m!564421))

(assert (=> b!586016 m!564389))

(assert (=> b!586016 m!564389))

(declare-fun m!564423 () Bool)

(assert (=> b!586016 m!564423))

(check-sat (not b!586016) (not b!586018) (not b!586021) (not b!586022) (not b!586017) (not b!586019) (not b!586013) (not start!53760) (not b!586020))
(check-sat)

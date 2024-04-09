; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53642 () Bool)

(assert start!53642)

(declare-fun b!583947 () Bool)

(declare-fun e!334447 () Bool)

(declare-fun e!334445 () Bool)

(assert (=> b!583947 (= e!334447 e!334445)))

(declare-fun res!371921 () Bool)

(assert (=> b!583947 (=> (not res!371921) (not e!334445))))

(declare-datatypes ((SeekEntryResult!5966 0))(
  ( (MissingZero!5966 (index!26091 (_ BitVec 32))) (Found!5966 (index!26092 (_ BitVec 32))) (Intermediate!5966 (undefined!6778 Bool) (index!26093 (_ BitVec 32)) (x!54950 (_ BitVec 32))) (Undefined!5966) (MissingVacant!5966 (index!26094 (_ BitVec 32))) )
))
(declare-fun lt!265462 () SeekEntryResult!5966)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!583947 (= res!371921 (or (= lt!265462 (MissingZero!5966 i!1108)) (= lt!265462 (MissingVacant!5966 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!36497 0))(
  ( (array!36498 (arr!17519 (Array (_ BitVec 32) (_ BitVec 64))) (size!17883 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36497)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36497 (_ BitVec 32)) SeekEntryResult!5966)

(assert (=> b!583947 (= lt!265462 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!371914 () Bool)

(assert (=> start!53642 (=> (not res!371914) (not e!334447))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53642 (= res!371914 (validMask!0 mask!3053))))

(assert (=> start!53642 e!334447))

(assert (=> start!53642 true))

(declare-fun array_inv!13293 (array!36497) Bool)

(assert (=> start!53642 (array_inv!13293 a!2986)))

(declare-fun b!583948 () Bool)

(declare-fun res!371919 () Bool)

(assert (=> b!583948 (=> (not res!371919) (not e!334445))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!583948 (= res!371919 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17519 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17519 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!583949 () Bool)

(declare-fun res!371915 () Bool)

(assert (=> b!583949 (=> (not res!371915) (not e!334445))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36497 (_ BitVec 32)) Bool)

(assert (=> b!583949 (= res!371915 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!583950 () Bool)

(declare-fun res!371918 () Bool)

(assert (=> b!583950 (=> (not res!371918) (not e!334447))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!583950 (= res!371918 (validKeyInArray!0 (select (arr!17519 a!2986) j!136)))))

(declare-fun b!583951 () Bool)

(declare-fun res!371923 () Bool)

(assert (=> b!583951 (=> (not res!371923) (not e!334445))))

(declare-datatypes ((List!11613 0))(
  ( (Nil!11610) (Cons!11609 (h!12654 (_ BitVec 64)) (t!17849 List!11613)) )
))
(declare-fun arrayNoDuplicates!0 (array!36497 (_ BitVec 32) List!11613) Bool)

(assert (=> b!583951 (= res!371923 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11610))))

(declare-fun b!583952 () Bool)

(declare-fun res!371922 () Bool)

(assert (=> b!583952 (=> (not res!371922) (not e!334445))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36497 (_ BitVec 32)) SeekEntryResult!5966)

(assert (=> b!583952 (= res!371922 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17519 a!2986) j!136) a!2986 mask!3053) (Found!5966 j!136)))))

(declare-fun b!583953 () Bool)

(declare-fun e!334446 () Bool)

(assert (=> b!583953 (= e!334445 e!334446)))

(declare-fun res!371916 () Bool)

(assert (=> b!583953 (=> (not res!371916) (not e!334446))))

(declare-fun lt!265461 () (_ BitVec 32))

(assert (=> b!583953 (= res!371916 (and (bvsge lt!265461 #b00000000000000000000000000000000) (bvslt lt!265461 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!583953 (= lt!265461 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!583954 () Bool)

(declare-fun res!371917 () Bool)

(assert (=> b!583954 (=> (not res!371917) (not e!334447))))

(declare-fun arrayContainsKey!0 (array!36497 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!583954 (= res!371917 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!583955 () Bool)

(declare-fun res!371920 () Bool)

(assert (=> b!583955 (=> (not res!371920) (not e!334447))))

(assert (=> b!583955 (= res!371920 (and (= (size!17883 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17883 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17883 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!583956 () Bool)

(declare-fun res!371924 () Bool)

(assert (=> b!583956 (=> (not res!371924) (not e!334447))))

(assert (=> b!583956 (= res!371924 (validKeyInArray!0 k!1786))))

(declare-fun b!583957 () Bool)

(assert (=> b!583957 (= e!334446 false)))

(declare-fun lt!265463 () SeekEntryResult!5966)

(assert (=> b!583957 (= lt!265463 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265461 vacantSpotIndex!68 (select (arr!17519 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!583958 () Bool)

(declare-fun res!371913 () Bool)

(assert (=> b!583958 (=> (not res!371913) (not e!334445))))

(assert (=> b!583958 (= res!371913 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17519 a!2986) index!984) (select (arr!17519 a!2986) j!136))) (not (= (select (arr!17519 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (= (and start!53642 res!371914) b!583955))

(assert (= (and b!583955 res!371920) b!583950))

(assert (= (and b!583950 res!371918) b!583956))

(assert (= (and b!583956 res!371924) b!583954))

(assert (= (and b!583954 res!371917) b!583947))

(assert (= (and b!583947 res!371921) b!583949))

(assert (= (and b!583949 res!371915) b!583951))

(assert (= (and b!583951 res!371923) b!583948))

(assert (= (and b!583948 res!371919) b!583952))

(assert (= (and b!583952 res!371922) b!583958))

(assert (= (and b!583958 res!371913) b!583953))

(assert (= (and b!583953 res!371916) b!583957))

(declare-fun m!562385 () Bool)

(assert (=> b!583954 m!562385))

(declare-fun m!562387 () Bool)

(assert (=> start!53642 m!562387))

(declare-fun m!562389 () Bool)

(assert (=> start!53642 m!562389))

(declare-fun m!562391 () Bool)

(assert (=> b!583948 m!562391))

(declare-fun m!562393 () Bool)

(assert (=> b!583948 m!562393))

(declare-fun m!562395 () Bool)

(assert (=> b!583948 m!562395))

(declare-fun m!562397 () Bool)

(assert (=> b!583947 m!562397))

(declare-fun m!562399 () Bool)

(assert (=> b!583949 m!562399))

(declare-fun m!562401 () Bool)

(assert (=> b!583950 m!562401))

(assert (=> b!583950 m!562401))

(declare-fun m!562403 () Bool)

(assert (=> b!583950 m!562403))

(declare-fun m!562405 () Bool)

(assert (=> b!583951 m!562405))

(declare-fun m!562407 () Bool)

(assert (=> b!583953 m!562407))

(assert (=> b!583952 m!562401))

(assert (=> b!583952 m!562401))

(declare-fun m!562409 () Bool)

(assert (=> b!583952 m!562409))

(declare-fun m!562411 () Bool)

(assert (=> b!583956 m!562411))

(declare-fun m!562413 () Bool)

(assert (=> b!583958 m!562413))

(assert (=> b!583958 m!562401))

(assert (=> b!583957 m!562401))

(assert (=> b!583957 m!562401))

(declare-fun m!562415 () Bool)

(assert (=> b!583957 m!562415))

(push 1)

(assert (not b!583951))

(assert (not b!583947))

(assert (not b!583949))

(assert (not b!583956))

(assert (not b!583953))

(assert (not start!53642))

(assert (not b!583954))

(assert (not b!583957))

(assert (not b!583950))

(assert (not b!583952))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


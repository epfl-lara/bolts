; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53644 () Bool)

(assert start!53644)

(declare-fun b!583983 () Bool)

(declare-fun res!371956 () Bool)

(declare-fun e!334458 () Bool)

(assert (=> b!583983 (=> (not res!371956) (not e!334458))))

(declare-datatypes ((array!36499 0))(
  ( (array!36500 (arr!17520 (Array (_ BitVec 32) (_ BitVec 64))) (size!17884 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36499)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36499 (_ BitVec 32)) Bool)

(assert (=> b!583983 (= res!371956 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!371950 () Bool)

(declare-fun e!334457 () Bool)

(assert (=> start!53644 (=> (not res!371950) (not e!334457))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53644 (= res!371950 (validMask!0 mask!3053))))

(assert (=> start!53644 e!334457))

(assert (=> start!53644 true))

(declare-fun array_inv!13294 (array!36499) Bool)

(assert (=> start!53644 (array_inv!13294 a!2986)))

(declare-fun b!583984 () Bool)

(declare-fun res!371959 () Bool)

(assert (=> b!583984 (=> (not res!371959) (not e!334458))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5967 0))(
  ( (MissingZero!5967 (index!26095 (_ BitVec 32))) (Found!5967 (index!26096 (_ BitVec 32))) (Intermediate!5967 (undefined!6779 Bool) (index!26097 (_ BitVec 32)) (x!54959 (_ BitVec 32))) (Undefined!5967) (MissingVacant!5967 (index!26098 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36499 (_ BitVec 32)) SeekEntryResult!5967)

(assert (=> b!583984 (= res!371959 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17520 a!2986) j!136) a!2986 mask!3053) (Found!5967 j!136)))))

(declare-fun b!583985 () Bool)

(declare-fun res!371952 () Bool)

(assert (=> b!583985 (=> (not res!371952) (not e!334457))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!583985 (= res!371952 (validKeyInArray!0 (select (arr!17520 a!2986) j!136)))))

(declare-fun b!583986 () Bool)

(declare-fun res!371957 () Bool)

(assert (=> b!583986 (=> (not res!371957) (not e!334457))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36499 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!583986 (= res!371957 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!583987 () Bool)

(declare-fun e!334459 () Bool)

(assert (=> b!583987 (= e!334458 e!334459)))

(declare-fun res!371955 () Bool)

(assert (=> b!583987 (=> (not res!371955) (not e!334459))))

(declare-fun lt!265470 () (_ BitVec 32))

(assert (=> b!583987 (= res!371955 (and (bvsge lt!265470 #b00000000000000000000000000000000) (bvslt lt!265470 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!583987 (= lt!265470 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!583988 () Bool)

(declare-fun res!371951 () Bool)

(assert (=> b!583988 (=> (not res!371951) (not e!334458))))

(declare-datatypes ((List!11614 0))(
  ( (Nil!11611) (Cons!11610 (h!12655 (_ BitVec 64)) (t!17850 List!11614)) )
))
(declare-fun arrayNoDuplicates!0 (array!36499 (_ BitVec 32) List!11614) Bool)

(assert (=> b!583988 (= res!371951 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11611))))

(declare-fun b!583989 () Bool)

(assert (=> b!583989 (= e!334459 false)))

(declare-fun lt!265472 () SeekEntryResult!5967)

(assert (=> b!583989 (= lt!265472 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265470 vacantSpotIndex!68 (select (arr!17520 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!583990 () Bool)

(declare-fun res!371958 () Bool)

(assert (=> b!583990 (=> (not res!371958) (not e!334458))))

(assert (=> b!583990 (= res!371958 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17520 a!2986) index!984) (select (arr!17520 a!2986) j!136))) (not (= (select (arr!17520 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!583991 () Bool)

(assert (=> b!583991 (= e!334457 e!334458)))

(declare-fun res!371953 () Bool)

(assert (=> b!583991 (=> (not res!371953) (not e!334458))))

(declare-fun lt!265471 () SeekEntryResult!5967)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!583991 (= res!371953 (or (= lt!265471 (MissingZero!5967 i!1108)) (= lt!265471 (MissingVacant!5967 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36499 (_ BitVec 32)) SeekEntryResult!5967)

(assert (=> b!583991 (= lt!265471 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!583992 () Bool)

(declare-fun res!371949 () Bool)

(assert (=> b!583992 (=> (not res!371949) (not e!334458))))

(assert (=> b!583992 (= res!371949 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17520 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17520 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!583993 () Bool)

(declare-fun res!371954 () Bool)

(assert (=> b!583993 (=> (not res!371954) (not e!334457))))

(assert (=> b!583993 (= res!371954 (and (= (size!17884 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17884 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17884 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!583994 () Bool)

(declare-fun res!371960 () Bool)

(assert (=> b!583994 (=> (not res!371960) (not e!334457))))

(assert (=> b!583994 (= res!371960 (validKeyInArray!0 k!1786))))

(assert (= (and start!53644 res!371950) b!583993))

(assert (= (and b!583993 res!371954) b!583985))

(assert (= (and b!583985 res!371952) b!583994))

(assert (= (and b!583994 res!371960) b!583986))

(assert (= (and b!583986 res!371957) b!583991))

(assert (= (and b!583991 res!371953) b!583983))

(assert (= (and b!583983 res!371956) b!583988))

(assert (= (and b!583988 res!371951) b!583992))

(assert (= (and b!583992 res!371949) b!583984))

(assert (= (and b!583984 res!371959) b!583990))

(assert (= (and b!583990 res!371958) b!583987))

(assert (= (and b!583987 res!371955) b!583989))

(declare-fun m!562417 () Bool)

(assert (=> b!583984 m!562417))

(assert (=> b!583984 m!562417))

(declare-fun m!562419 () Bool)

(assert (=> b!583984 m!562419))

(declare-fun m!562421 () Bool)

(assert (=> b!583991 m!562421))

(declare-fun m!562423 () Bool)

(assert (=> b!583986 m!562423))

(declare-fun m!562425 () Bool)

(assert (=> b!583983 m!562425))

(declare-fun m!562427 () Bool)

(assert (=> b!583992 m!562427))

(declare-fun m!562429 () Bool)

(assert (=> b!583992 m!562429))

(declare-fun m!562431 () Bool)

(assert (=> b!583992 m!562431))

(assert (=> b!583989 m!562417))

(assert (=> b!583989 m!562417))

(declare-fun m!562433 () Bool)

(assert (=> b!583989 m!562433))

(declare-fun m!562435 () Bool)

(assert (=> b!583988 m!562435))

(declare-fun m!562437 () Bool)

(assert (=> b!583994 m!562437))

(declare-fun m!562439 () Bool)

(assert (=> start!53644 m!562439))

(declare-fun m!562441 () Bool)

(assert (=> start!53644 m!562441))

(assert (=> b!583985 m!562417))

(assert (=> b!583985 m!562417))

(declare-fun m!562443 () Bool)

(assert (=> b!583985 m!562443))

(declare-fun m!562445 () Bool)

(assert (=> b!583987 m!562445))

(declare-fun m!562447 () Bool)

(assert (=> b!583990 m!562447))

(assert (=> b!583990 m!562417))

(push 1)


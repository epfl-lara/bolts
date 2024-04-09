; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53648 () Bool)

(assert start!53648)

(declare-fun b!584055 () Bool)

(declare-fun e!334483 () Bool)

(declare-fun e!334482 () Bool)

(assert (=> b!584055 (= e!334483 e!334482)))

(declare-fun res!372021 () Bool)

(assert (=> b!584055 (=> (not res!372021) (not e!334482))))

(declare-datatypes ((SeekEntryResult!5969 0))(
  ( (MissingZero!5969 (index!26103 (_ BitVec 32))) (Found!5969 (index!26104 (_ BitVec 32))) (Intermediate!5969 (undefined!6781 Bool) (index!26105 (_ BitVec 32)) (x!54961 (_ BitVec 32))) (Undefined!5969) (MissingVacant!5969 (index!26106 (_ BitVec 32))) )
))
(declare-fun lt!265488 () SeekEntryResult!5969)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!584055 (= res!372021 (or (= lt!265488 (MissingZero!5969 i!1108)) (= lt!265488 (MissingVacant!5969 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!36503 0))(
  ( (array!36504 (arr!17522 (Array (_ BitVec 32) (_ BitVec 64))) (size!17886 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36503)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36503 (_ BitVec 32)) SeekEntryResult!5969)

(assert (=> b!584055 (= lt!265488 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!372031 () Bool)

(assert (=> start!53648 (=> (not res!372031) (not e!334483))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53648 (= res!372031 (validMask!0 mask!3053))))

(assert (=> start!53648 e!334483))

(assert (=> start!53648 true))

(declare-fun array_inv!13296 (array!36503) Bool)

(assert (=> start!53648 (array_inv!13296 a!2986)))

(declare-fun b!584056 () Bool)

(declare-fun res!372024 () Bool)

(assert (=> b!584056 (=> (not res!372024) (not e!334482))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36503 (_ BitVec 32)) SeekEntryResult!5969)

(assert (=> b!584056 (= res!372024 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17522 a!2986) j!136) a!2986 mask!3053) (Found!5969 j!136)))))

(declare-fun b!584057 () Bool)

(declare-fun res!372025 () Bool)

(assert (=> b!584057 (=> (not res!372025) (not e!334483))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!584057 (= res!372025 (validKeyInArray!0 (select (arr!17522 a!2986) j!136)))))

(declare-fun b!584058 () Bool)

(declare-fun res!372032 () Bool)

(assert (=> b!584058 (=> (not res!372032) (not e!334482))))

(declare-datatypes ((List!11616 0))(
  ( (Nil!11613) (Cons!11612 (h!12657 (_ BitVec 64)) (t!17852 List!11616)) )
))
(declare-fun arrayNoDuplicates!0 (array!36503 (_ BitVec 32) List!11616) Bool)

(assert (=> b!584058 (= res!372032 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11613))))

(declare-fun b!584059 () Bool)

(declare-fun res!372030 () Bool)

(assert (=> b!584059 (=> (not res!372030) (not e!334482))))

(assert (=> b!584059 (= res!372030 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17522 a!2986) index!984) (select (arr!17522 a!2986) j!136))) (not (= (select (arr!17522 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!584060 () Bool)

(declare-fun e!334481 () Bool)

(assert (=> b!584060 (= e!334481 false)))

(declare-fun lt!265490 () (_ BitVec 32))

(declare-fun lt!265489 () SeekEntryResult!5969)

(assert (=> b!584060 (= lt!265489 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265490 vacantSpotIndex!68 (select (arr!17522 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!584061 () Bool)

(declare-fun res!372022 () Bool)

(assert (=> b!584061 (=> (not res!372022) (not e!334483))))

(assert (=> b!584061 (= res!372022 (and (= (size!17886 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17886 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17886 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!584062 () Bool)

(declare-fun res!372028 () Bool)

(assert (=> b!584062 (=> (not res!372028) (not e!334482))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36503 (_ BitVec 32)) Bool)

(assert (=> b!584062 (= res!372028 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!584063 () Bool)

(declare-fun res!372026 () Bool)

(assert (=> b!584063 (=> (not res!372026) (not e!334482))))

(assert (=> b!584063 (= res!372026 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17522 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17522 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!584064 () Bool)

(declare-fun res!372029 () Bool)

(assert (=> b!584064 (=> (not res!372029) (not e!334483))))

(assert (=> b!584064 (= res!372029 (validKeyInArray!0 k!1786))))

(declare-fun b!584065 () Bool)

(declare-fun res!372023 () Bool)

(assert (=> b!584065 (=> (not res!372023) (not e!334483))))

(declare-fun arrayContainsKey!0 (array!36503 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!584065 (= res!372023 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!584066 () Bool)

(assert (=> b!584066 (= e!334482 e!334481)))

(declare-fun res!372027 () Bool)

(assert (=> b!584066 (=> (not res!372027) (not e!334481))))

(assert (=> b!584066 (= res!372027 (and (bvsge lt!265490 #b00000000000000000000000000000000) (bvslt lt!265490 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!584066 (= lt!265490 (nextIndex!0 index!984 x!910 mask!3053))))

(assert (= (and start!53648 res!372031) b!584061))

(assert (= (and b!584061 res!372022) b!584057))

(assert (= (and b!584057 res!372025) b!584064))

(assert (= (and b!584064 res!372029) b!584065))

(assert (= (and b!584065 res!372023) b!584055))

(assert (= (and b!584055 res!372021) b!584062))

(assert (= (and b!584062 res!372028) b!584058))

(assert (= (and b!584058 res!372032) b!584063))

(assert (= (and b!584063 res!372026) b!584056))

(assert (= (and b!584056 res!372024) b!584059))

(assert (= (and b!584059 res!372030) b!584066))

(assert (= (and b!584066 res!372027) b!584060))

(declare-fun m!562481 () Bool)

(assert (=> b!584062 m!562481))

(declare-fun m!562483 () Bool)

(assert (=> b!584066 m!562483))

(declare-fun m!562485 () Bool)

(assert (=> b!584058 m!562485))

(declare-fun m!562487 () Bool)

(assert (=> start!53648 m!562487))

(declare-fun m!562489 () Bool)

(assert (=> start!53648 m!562489))

(declare-fun m!562491 () Bool)

(assert (=> b!584056 m!562491))

(assert (=> b!584056 m!562491))

(declare-fun m!562493 () Bool)

(assert (=> b!584056 m!562493))

(declare-fun m!562495 () Bool)

(assert (=> b!584059 m!562495))

(assert (=> b!584059 m!562491))

(assert (=> b!584057 m!562491))

(assert (=> b!584057 m!562491))

(declare-fun m!562497 () Bool)

(assert (=> b!584057 m!562497))

(declare-fun m!562499 () Bool)

(assert (=> b!584064 m!562499))

(declare-fun m!562501 () Bool)

(assert (=> b!584065 m!562501))

(declare-fun m!562503 () Bool)

(assert (=> b!584063 m!562503))

(declare-fun m!562505 () Bool)

(assert (=> b!584063 m!562505))

(declare-fun m!562507 () Bool)

(assert (=> b!584063 m!562507))

(declare-fun m!562509 () Bool)

(assert (=> b!584055 m!562509))

(assert (=> b!584060 m!562491))

(assert (=> b!584060 m!562491))

(declare-fun m!562511 () Bool)

(assert (=> b!584060 m!562511))

(push 1)

(assert (not b!584058))

(assert (not start!53648))

(assert (not b!584060))

(assert (not b!584055))


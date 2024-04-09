; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53610 () Bool)

(assert start!53610)

(declare-fun b!583371 () Bool)

(declare-fun res!371344 () Bool)

(declare-fun e!334252 () Bool)

(assert (=> b!583371 (=> (not res!371344) (not e!334252))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36465 0))(
  ( (array!36466 (arr!17503 (Array (_ BitVec 32) (_ BitVec 64))) (size!17867 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36465)

(assert (=> b!583371 (= res!371344 (and (= (size!17867 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17867 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17867 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!583372 () Bool)

(declare-fun res!371339 () Bool)

(declare-fun e!334254 () Bool)

(assert (=> b!583372 (=> (not res!371339) (not e!334254))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!583372 (= res!371339 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17503 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17503 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!583373 () Bool)

(declare-fun res!371340 () Bool)

(assert (=> b!583373 (=> (not res!371340) (not e!334254))))

(declare-datatypes ((List!11597 0))(
  ( (Nil!11594) (Cons!11593 (h!12638 (_ BitVec 64)) (t!17833 List!11597)) )
))
(declare-fun arrayNoDuplicates!0 (array!36465 (_ BitVec 32) List!11597) Bool)

(assert (=> b!583373 (= res!371340 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11594))))

(declare-fun b!583374 () Bool)

(declare-fun res!371345 () Bool)

(assert (=> b!583374 (=> (not res!371345) (not e!334254))))

(assert (=> b!583374 (= res!371345 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17503 a!2986) index!984) (select (arr!17503 a!2986) j!136))) (not (= (select (arr!17503 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun res!371341 () Bool)

(assert (=> start!53610 (=> (not res!371341) (not e!334252))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53610 (= res!371341 (validMask!0 mask!3053))))

(assert (=> start!53610 e!334252))

(assert (=> start!53610 true))

(declare-fun array_inv!13277 (array!36465) Bool)

(assert (=> start!53610 (array_inv!13277 a!2986)))

(declare-fun b!583375 () Bool)

(declare-fun e!334255 () Bool)

(assert (=> b!583375 (= e!334255 false)))

(declare-datatypes ((SeekEntryResult!5950 0))(
  ( (MissingZero!5950 (index!26027 (_ BitVec 32))) (Found!5950 (index!26028 (_ BitVec 32))) (Intermediate!5950 (undefined!6762 Bool) (index!26029 (_ BitVec 32)) (x!54894 (_ BitVec 32))) (Undefined!5950) (MissingVacant!5950 (index!26030 (_ BitVec 32))) )
))
(declare-fun lt!265317 () SeekEntryResult!5950)

(declare-fun lt!265319 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36465 (_ BitVec 32)) SeekEntryResult!5950)

(assert (=> b!583375 (= lt!265317 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265319 vacantSpotIndex!68 (select (arr!17503 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!583376 () Bool)

(declare-fun res!371342 () Bool)

(assert (=> b!583376 (=> (not res!371342) (not e!334254))))

(assert (=> b!583376 (= res!371342 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17503 a!2986) j!136) a!2986 mask!3053) (Found!5950 j!136)))))

(declare-fun b!583377 () Bool)

(declare-fun res!371338 () Bool)

(assert (=> b!583377 (=> (not res!371338) (not e!334252))))

(declare-fun arrayContainsKey!0 (array!36465 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!583377 (= res!371338 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!583378 () Bool)

(declare-fun res!371347 () Bool)

(assert (=> b!583378 (=> (not res!371347) (not e!334252))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!583378 (= res!371347 (validKeyInArray!0 (select (arr!17503 a!2986) j!136)))))

(declare-fun b!583379 () Bool)

(assert (=> b!583379 (= e!334252 e!334254)))

(declare-fun res!371346 () Bool)

(assert (=> b!583379 (=> (not res!371346) (not e!334254))))

(declare-fun lt!265318 () SeekEntryResult!5950)

(assert (=> b!583379 (= res!371346 (or (= lt!265318 (MissingZero!5950 i!1108)) (= lt!265318 (MissingVacant!5950 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36465 (_ BitVec 32)) SeekEntryResult!5950)

(assert (=> b!583379 (= lt!265318 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!583380 () Bool)

(declare-fun res!371337 () Bool)

(assert (=> b!583380 (=> (not res!371337) (not e!334254))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36465 (_ BitVec 32)) Bool)

(assert (=> b!583380 (= res!371337 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!583381 () Bool)

(declare-fun res!371343 () Bool)

(assert (=> b!583381 (=> (not res!371343) (not e!334252))))

(assert (=> b!583381 (= res!371343 (validKeyInArray!0 k0!1786))))

(declare-fun b!583382 () Bool)

(assert (=> b!583382 (= e!334254 e!334255)))

(declare-fun res!371348 () Bool)

(assert (=> b!583382 (=> (not res!371348) (not e!334255))))

(assert (=> b!583382 (= res!371348 (and (bvsge lt!265319 #b00000000000000000000000000000000) (bvslt lt!265319 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!583382 (= lt!265319 (nextIndex!0 index!984 x!910 mask!3053))))

(assert (= (and start!53610 res!371341) b!583371))

(assert (= (and b!583371 res!371344) b!583378))

(assert (= (and b!583378 res!371347) b!583381))

(assert (= (and b!583381 res!371343) b!583377))

(assert (= (and b!583377 res!371338) b!583379))

(assert (= (and b!583379 res!371346) b!583380))

(assert (= (and b!583380 res!371337) b!583373))

(assert (= (and b!583373 res!371340) b!583372))

(assert (= (and b!583372 res!371339) b!583376))

(assert (= (and b!583376 res!371342) b!583374))

(assert (= (and b!583374 res!371345) b!583382))

(assert (= (and b!583382 res!371348) b!583375))

(declare-fun m!561873 () Bool)

(assert (=> b!583379 m!561873))

(declare-fun m!561875 () Bool)

(assert (=> b!583375 m!561875))

(assert (=> b!583375 m!561875))

(declare-fun m!561877 () Bool)

(assert (=> b!583375 m!561877))

(declare-fun m!561879 () Bool)

(assert (=> b!583380 m!561879))

(assert (=> b!583378 m!561875))

(assert (=> b!583378 m!561875))

(declare-fun m!561881 () Bool)

(assert (=> b!583378 m!561881))

(declare-fun m!561883 () Bool)

(assert (=> b!583382 m!561883))

(declare-fun m!561885 () Bool)

(assert (=> b!583374 m!561885))

(assert (=> b!583374 m!561875))

(declare-fun m!561887 () Bool)

(assert (=> start!53610 m!561887))

(declare-fun m!561889 () Bool)

(assert (=> start!53610 m!561889))

(declare-fun m!561891 () Bool)

(assert (=> b!583372 m!561891))

(declare-fun m!561893 () Bool)

(assert (=> b!583372 m!561893))

(declare-fun m!561895 () Bool)

(assert (=> b!583372 m!561895))

(declare-fun m!561897 () Bool)

(assert (=> b!583377 m!561897))

(declare-fun m!561899 () Bool)

(assert (=> b!583373 m!561899))

(declare-fun m!561901 () Bool)

(assert (=> b!583381 m!561901))

(assert (=> b!583376 m!561875))

(assert (=> b!583376 m!561875))

(declare-fun m!561903 () Bool)

(assert (=> b!583376 m!561903))

(check-sat (not b!583382) (not b!583376) (not b!583378) (not b!583381) (not start!53610) (not b!583375) (not b!583377) (not b!583379) (not b!583380) (not b!583373))
(check-sat)

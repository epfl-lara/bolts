; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53608 () Bool)

(assert start!53608)

(declare-fun b!583335 () Bool)

(declare-fun e!334243 () Bool)

(declare-fun e!334241 () Bool)

(assert (=> b!583335 (= e!334243 e!334241)))

(declare-fun res!371302 () Bool)

(assert (=> b!583335 (=> (not res!371302) (not e!334241))))

(declare-datatypes ((SeekEntryResult!5949 0))(
  ( (MissingZero!5949 (index!26023 (_ BitVec 32))) (Found!5949 (index!26024 (_ BitVec 32))) (Intermediate!5949 (undefined!6761 Bool) (index!26025 (_ BitVec 32)) (x!54893 (_ BitVec 32))) (Undefined!5949) (MissingVacant!5949 (index!26026 (_ BitVec 32))) )
))
(declare-fun lt!265308 () SeekEntryResult!5949)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!583335 (= res!371302 (or (= lt!265308 (MissingZero!5949 i!1108)) (= lt!265308 (MissingVacant!5949 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!36463 0))(
  ( (array!36464 (arr!17502 (Array (_ BitVec 32) (_ BitVec 64))) (size!17866 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36463)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36463 (_ BitVec 32)) SeekEntryResult!5949)

(assert (=> b!583335 (= lt!265308 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!371310 () Bool)

(assert (=> start!53608 (=> (not res!371310) (not e!334243))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53608 (= res!371310 (validMask!0 mask!3053))))

(assert (=> start!53608 e!334243))

(assert (=> start!53608 true))

(declare-fun array_inv!13276 (array!36463) Bool)

(assert (=> start!53608 (array_inv!13276 a!2986)))

(declare-fun b!583336 () Bool)

(declare-fun res!371305 () Bool)

(assert (=> b!583336 (=> (not res!371305) (not e!334241))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!583336 (= res!371305 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17502 a!2986) index!984) (select (arr!17502 a!2986) j!136))) (not (= (select (arr!17502 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!583337 () Bool)

(declare-fun res!371303 () Bool)

(assert (=> b!583337 (=> (not res!371303) (not e!334243))))

(declare-fun arrayContainsKey!0 (array!36463 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!583337 (= res!371303 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!583338 () Bool)

(declare-fun res!371306 () Bool)

(assert (=> b!583338 (=> (not res!371306) (not e!334243))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!583338 (= res!371306 (validKeyInArray!0 k!1786))))

(declare-fun b!583339 () Bool)

(declare-fun res!371311 () Bool)

(assert (=> b!583339 (=> (not res!371311) (not e!334243))))

(assert (=> b!583339 (= res!371311 (validKeyInArray!0 (select (arr!17502 a!2986) j!136)))))

(declare-fun b!583340 () Bool)

(declare-fun e!334240 () Bool)

(assert (=> b!583340 (= e!334241 e!334240)))

(declare-fun res!371304 () Bool)

(assert (=> b!583340 (=> (not res!371304) (not e!334240))))

(declare-fun lt!265309 () (_ BitVec 32))

(assert (=> b!583340 (= res!371304 (and (bvsge lt!265309 #b00000000000000000000000000000000) (bvslt lt!265309 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!583340 (= lt!265309 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!583341 () Bool)

(declare-fun res!371307 () Bool)

(assert (=> b!583341 (=> (not res!371307) (not e!334243))))

(assert (=> b!583341 (= res!371307 (and (= (size!17866 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17866 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17866 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!583342 () Bool)

(assert (=> b!583342 (= e!334240 false)))

(declare-fun lt!265310 () SeekEntryResult!5949)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36463 (_ BitVec 32)) SeekEntryResult!5949)

(assert (=> b!583342 (= lt!265310 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265309 vacantSpotIndex!68 (select (arr!17502 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!583343 () Bool)

(declare-fun res!371312 () Bool)

(assert (=> b!583343 (=> (not res!371312) (not e!334241))))

(assert (=> b!583343 (= res!371312 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17502 a!2986) j!136) a!2986 mask!3053) (Found!5949 j!136)))))

(declare-fun b!583344 () Bool)

(declare-fun res!371309 () Bool)

(assert (=> b!583344 (=> (not res!371309) (not e!334241))))

(declare-datatypes ((List!11596 0))(
  ( (Nil!11593) (Cons!11592 (h!12637 (_ BitVec 64)) (t!17832 List!11596)) )
))
(declare-fun arrayNoDuplicates!0 (array!36463 (_ BitVec 32) List!11596) Bool)

(assert (=> b!583344 (= res!371309 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11593))))

(declare-fun b!583345 () Bool)

(declare-fun res!371308 () Bool)

(assert (=> b!583345 (=> (not res!371308) (not e!334241))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36463 (_ BitVec 32)) Bool)

(assert (=> b!583345 (= res!371308 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!583346 () Bool)

(declare-fun res!371301 () Bool)

(assert (=> b!583346 (=> (not res!371301) (not e!334241))))

(assert (=> b!583346 (= res!371301 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17502 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17502 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!53608 res!371310) b!583341))

(assert (= (and b!583341 res!371307) b!583339))

(assert (= (and b!583339 res!371311) b!583338))

(assert (= (and b!583338 res!371306) b!583337))

(assert (= (and b!583337 res!371303) b!583335))

(assert (= (and b!583335 res!371302) b!583345))

(assert (= (and b!583345 res!371308) b!583344))

(assert (= (and b!583344 res!371309) b!583346))

(assert (= (and b!583346 res!371301) b!583343))

(assert (= (and b!583343 res!371312) b!583336))

(assert (= (and b!583336 res!371305) b!583340))

(assert (= (and b!583340 res!371304) b!583342))

(declare-fun m!561841 () Bool)

(assert (=> b!583346 m!561841))

(declare-fun m!561843 () Bool)

(assert (=> b!583346 m!561843))

(declare-fun m!561845 () Bool)

(assert (=> b!583346 m!561845))

(declare-fun m!561847 () Bool)

(assert (=> b!583337 m!561847))

(declare-fun m!561849 () Bool)

(assert (=> b!583338 m!561849))

(declare-fun m!561851 () Bool)

(assert (=> b!583339 m!561851))

(assert (=> b!583339 m!561851))

(declare-fun m!561853 () Bool)

(assert (=> b!583339 m!561853))

(declare-fun m!561855 () Bool)

(assert (=> b!583335 m!561855))

(declare-fun m!561857 () Bool)

(assert (=> b!583336 m!561857))

(assert (=> b!583336 m!561851))

(declare-fun m!561859 () Bool)

(assert (=> b!583345 m!561859))

(declare-fun m!561861 () Bool)

(assert (=> b!583340 m!561861))

(assert (=> b!583343 m!561851))

(assert (=> b!583343 m!561851))

(declare-fun m!561863 () Bool)

(assert (=> b!583343 m!561863))

(declare-fun m!561865 () Bool)

(assert (=> b!583344 m!561865))

(assert (=> b!583342 m!561851))

(assert (=> b!583342 m!561851))

(declare-fun m!561867 () Bool)

(assert (=> b!583342 m!561867))

(declare-fun m!561869 () Bool)

(assert (=> start!53608 m!561869))

(declare-fun m!561871 () Bool)

(assert (=> start!53608 m!561871))

(push 1)


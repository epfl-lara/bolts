; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53616 () Bool)

(assert start!53616)

(declare-fun b!583479 () Bool)

(declare-fun e!334288 () Bool)

(declare-fun e!334289 () Bool)

(assert (=> b!583479 (= e!334288 e!334289)))

(declare-fun res!371454 () Bool)

(assert (=> b!583479 (=> (not res!371454) (not e!334289))))

(declare-datatypes ((SeekEntryResult!5953 0))(
  ( (MissingZero!5953 (index!26039 (_ BitVec 32))) (Found!5953 (index!26040 (_ BitVec 32))) (Intermediate!5953 (undefined!6765 Bool) (index!26041 (_ BitVec 32)) (x!54905 (_ BitVec 32))) (Undefined!5953) (MissingVacant!5953 (index!26042 (_ BitVec 32))) )
))
(declare-fun lt!265344 () SeekEntryResult!5953)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!583479 (= res!371454 (or (= lt!265344 (MissingZero!5953 i!1108)) (= lt!265344 (MissingVacant!5953 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-datatypes ((array!36471 0))(
  ( (array!36472 (arr!17506 (Array (_ BitVec 32) (_ BitVec 64))) (size!17870 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36471)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36471 (_ BitVec 32)) SeekEntryResult!5953)

(assert (=> b!583479 (= lt!265344 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!583480 () Bool)

(declare-fun res!371450 () Bool)

(assert (=> b!583480 (=> (not res!371450) (not e!334288))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!583480 (= res!371450 (validKeyInArray!0 (select (arr!17506 a!2986) j!136)))))

(declare-fun b!583481 () Bool)

(declare-fun res!371445 () Bool)

(assert (=> b!583481 (=> (not res!371445) (not e!334289))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36471 (_ BitVec 32)) Bool)

(assert (=> b!583481 (= res!371445 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!583482 () Bool)

(declare-fun res!371447 () Bool)

(assert (=> b!583482 (=> (not res!371447) (not e!334288))))

(assert (=> b!583482 (= res!371447 (validKeyInArray!0 k0!1786))))

(declare-fun b!583483 () Bool)

(declare-fun res!371448 () Bool)

(assert (=> b!583483 (=> (not res!371448) (not e!334289))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!583483 (= res!371448 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17506 a!2986) index!984) (select (arr!17506 a!2986) j!136))) (not (= (select (arr!17506 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!583484 () Bool)

(declare-fun res!371451 () Bool)

(assert (=> b!583484 (=> (not res!371451) (not e!334288))))

(declare-fun arrayContainsKey!0 (array!36471 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!583484 (= res!371451 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!583485 () Bool)

(declare-fun res!371453 () Bool)

(assert (=> b!583485 (=> (not res!371453) (not e!334289))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!583485 (= res!371453 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17506 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17506 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!583486 () Bool)

(declare-fun res!371452 () Bool)

(assert (=> b!583486 (=> (not res!371452) (not e!334288))))

(assert (=> b!583486 (= res!371452 (and (= (size!17870 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17870 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17870 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!371456 () Bool)

(assert (=> start!53616 (=> (not res!371456) (not e!334288))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53616 (= res!371456 (validMask!0 mask!3053))))

(assert (=> start!53616 e!334288))

(assert (=> start!53616 true))

(declare-fun array_inv!13280 (array!36471) Bool)

(assert (=> start!53616 (array_inv!13280 a!2986)))

(declare-fun b!583487 () Bool)

(declare-fun res!371449 () Bool)

(assert (=> b!583487 (=> (not res!371449) (not e!334289))))

(declare-datatypes ((List!11600 0))(
  ( (Nil!11597) (Cons!11596 (h!12641 (_ BitVec 64)) (t!17836 List!11600)) )
))
(declare-fun arrayNoDuplicates!0 (array!36471 (_ BitVec 32) List!11600) Bool)

(assert (=> b!583487 (= res!371449 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11597))))

(declare-fun b!583488 () Bool)

(declare-fun res!371455 () Bool)

(assert (=> b!583488 (=> (not res!371455) (not e!334289))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36471 (_ BitVec 32)) SeekEntryResult!5953)

(assert (=> b!583488 (= res!371455 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17506 a!2986) j!136) a!2986 mask!3053) (Found!5953 j!136)))))

(declare-fun b!583489 () Bool)

(declare-fun e!334290 () Bool)

(assert (=> b!583489 (= e!334290 false)))

(declare-fun lt!265345 () SeekEntryResult!5953)

(declare-fun lt!265346 () (_ BitVec 32))

(assert (=> b!583489 (= lt!265345 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265346 vacantSpotIndex!68 (select (arr!17506 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!583490 () Bool)

(assert (=> b!583490 (= e!334289 e!334290)))

(declare-fun res!371446 () Bool)

(assert (=> b!583490 (=> (not res!371446) (not e!334290))))

(assert (=> b!583490 (= res!371446 (and (bvsge lt!265346 #b00000000000000000000000000000000) (bvslt lt!265346 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!583490 (= lt!265346 (nextIndex!0 index!984 x!910 mask!3053))))

(assert (= (and start!53616 res!371456) b!583486))

(assert (= (and b!583486 res!371452) b!583480))

(assert (= (and b!583480 res!371450) b!583482))

(assert (= (and b!583482 res!371447) b!583484))

(assert (= (and b!583484 res!371451) b!583479))

(assert (= (and b!583479 res!371454) b!583481))

(assert (= (and b!583481 res!371445) b!583487))

(assert (= (and b!583487 res!371449) b!583485))

(assert (= (and b!583485 res!371453) b!583488))

(assert (= (and b!583488 res!371455) b!583483))

(assert (= (and b!583483 res!371448) b!583490))

(assert (= (and b!583490 res!371446) b!583489))

(declare-fun m!561969 () Bool)

(assert (=> b!583488 m!561969))

(assert (=> b!583488 m!561969))

(declare-fun m!561971 () Bool)

(assert (=> b!583488 m!561971))

(assert (=> b!583480 m!561969))

(assert (=> b!583480 m!561969))

(declare-fun m!561973 () Bool)

(assert (=> b!583480 m!561973))

(declare-fun m!561975 () Bool)

(assert (=> b!583482 m!561975))

(declare-fun m!561977 () Bool)

(assert (=> b!583481 m!561977))

(assert (=> b!583489 m!561969))

(assert (=> b!583489 m!561969))

(declare-fun m!561979 () Bool)

(assert (=> b!583489 m!561979))

(declare-fun m!561981 () Bool)

(assert (=> b!583485 m!561981))

(declare-fun m!561983 () Bool)

(assert (=> b!583485 m!561983))

(declare-fun m!561985 () Bool)

(assert (=> b!583485 m!561985))

(declare-fun m!561987 () Bool)

(assert (=> b!583487 m!561987))

(declare-fun m!561989 () Bool)

(assert (=> b!583490 m!561989))

(declare-fun m!561991 () Bool)

(assert (=> start!53616 m!561991))

(declare-fun m!561993 () Bool)

(assert (=> start!53616 m!561993))

(declare-fun m!561995 () Bool)

(assert (=> b!583484 m!561995))

(declare-fun m!561997 () Bool)

(assert (=> b!583479 m!561997))

(declare-fun m!561999 () Bool)

(assert (=> b!583483 m!561999))

(assert (=> b!583483 m!561969))

(check-sat (not b!583484) (not b!583489) (not b!583482) (not b!583490) (not b!583488) (not start!53616) (not b!583480) (not b!583487) (not b!583481) (not b!583479))
(check-sat)

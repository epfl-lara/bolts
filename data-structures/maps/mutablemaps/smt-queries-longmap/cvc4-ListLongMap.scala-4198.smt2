; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57358 () Bool)

(assert start!57358)

(declare-fun b!634414 () Bool)

(declare-fun e!362802 () Bool)

(declare-fun e!362811 () Bool)

(assert (=> b!634414 (= e!362802 (not e!362811))))

(declare-fun res!410441 () Bool)

(assert (=> b!634414 (=> res!410441 e!362811)))

(declare-datatypes ((SeekEntryResult!6755 0))(
  ( (MissingZero!6755 (index!29321 (_ BitVec 32))) (Found!6755 (index!29322 (_ BitVec 32))) (Intermediate!6755 (undefined!7567 Bool) (index!29323 (_ BitVec 32)) (x!58090 (_ BitVec 32))) (Undefined!6755) (MissingVacant!6755 (index!29324 (_ BitVec 32))) )
))
(declare-fun lt!293322 () SeekEntryResult!6755)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!634414 (= res!410441 (not (= lt!293322 (Found!6755 index!984))))))

(declare-datatypes ((Unit!21378 0))(
  ( (Unit!21379) )
))
(declare-fun lt!293320 () Unit!21378)

(declare-fun e!362806 () Unit!21378)

(assert (=> b!634414 (= lt!293320 e!362806)))

(declare-fun c!72353 () Bool)

(assert (=> b!634414 (= c!72353 (= lt!293322 Undefined!6755))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((array!38167 0))(
  ( (array!38168 (arr!18308 (Array (_ BitVec 32) (_ BitVec 64))) (size!18672 (_ BitVec 32))) )
))
(declare-fun lt!293325 () array!38167)

(declare-fun lt!293326 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38167 (_ BitVec 32)) SeekEntryResult!6755)

(assert (=> b!634414 (= lt!293322 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!293326 lt!293325 mask!3053))))

(declare-fun e!362807 () Bool)

(assert (=> b!634414 e!362807))

(declare-fun res!410443 () Bool)

(assert (=> b!634414 (=> (not res!410443) (not e!362807))))

(declare-fun lt!293327 () SeekEntryResult!6755)

(declare-fun lt!293319 () (_ BitVec 32))

(assert (=> b!634414 (= res!410443 (= lt!293327 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293319 vacantSpotIndex!68 lt!293326 lt!293325 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun a!2986 () array!38167)

(assert (=> b!634414 (= lt!293327 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293319 vacantSpotIndex!68 (select (arr!18308 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!634414 (= lt!293326 (select (store (arr!18308 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!293324 () Unit!21378)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38167 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21378)

(assert (=> b!634414 (= lt!293324 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!293319 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!634414 (= lt!293319 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!634415 () Bool)

(declare-fun res!410446 () Bool)

(declare-fun e!362808 () Bool)

(assert (=> b!634415 (=> (not res!410446) (not e!362808))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38167 (_ BitVec 32)) Bool)

(assert (=> b!634415 (= res!410446 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!634416 () Bool)

(declare-fun e!362805 () Bool)

(assert (=> b!634416 (= e!362805 e!362802)))

(declare-fun res!410444 () Bool)

(assert (=> b!634416 (=> (not res!410444) (not e!362802))))

(declare-fun lt!293323 () SeekEntryResult!6755)

(assert (=> b!634416 (= res!410444 (and (= lt!293323 (Found!6755 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18308 a!2986) index!984) (select (arr!18308 a!2986) j!136))) (not (= (select (arr!18308 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!634416 (= lt!293323 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18308 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!634417 () Bool)

(declare-fun res!410453 () Bool)

(declare-fun e!362803 () Bool)

(assert (=> b!634417 (=> (not res!410453) (not e!362803))))

(assert (=> b!634417 (= res!410453 (and (= (size!18672 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18672 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18672 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!634418 () Bool)

(declare-fun Unit!21380 () Unit!21378)

(assert (=> b!634418 (= e!362806 Unit!21380)))

(declare-fun b!634419 () Bool)

(declare-fun res!410455 () Bool)

(assert (=> b!634419 (=> (not res!410455) (not e!362803))))

(declare-fun arrayContainsKey!0 (array!38167 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!634419 (= res!410455 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!634420 () Bool)

(declare-fun res!410451 () Bool)

(assert (=> b!634420 (=> (not res!410451) (not e!362808))))

(assert (=> b!634420 (= res!410451 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18308 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!362810 () Bool)

(declare-fun b!634421 () Bool)

(assert (=> b!634421 (= e!362810 (arrayContainsKey!0 lt!293325 (select (arr!18308 a!2986) j!136) index!984))))

(declare-fun b!634422 () Bool)

(declare-fun e!362809 () Bool)

(declare-fun e!362812 () Bool)

(assert (=> b!634422 (= e!362809 e!362812)))

(declare-fun res!410452 () Bool)

(assert (=> b!634422 (=> res!410452 e!362812)))

(declare-fun lt!293328 () (_ BitVec 64))

(assert (=> b!634422 (= res!410452 (or (not (= (select (arr!18308 a!2986) j!136) lt!293326)) (not (= (select (arr!18308 a!2986) j!136) lt!293328)) (bvsge j!136 index!984)))))

(declare-fun b!634423 () Bool)

(declare-fun res!410445 () Bool)

(assert (=> b!634423 (=> (not res!410445) (not e!362803))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!634423 (= res!410445 (validKeyInArray!0 k!1786))))

(declare-fun b!634424 () Bool)

(assert (=> b!634424 (= e!362811 true)))

(assert (=> b!634424 e!362809))

(declare-fun res!410454 () Bool)

(assert (=> b!634424 (=> (not res!410454) (not e!362809))))

(assert (=> b!634424 (= res!410454 (= lt!293328 (select (arr!18308 a!2986) j!136)))))

(assert (=> b!634424 (= lt!293328 (select (store (arr!18308 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!634425 () Bool)

(declare-fun res!410442 () Bool)

(assert (=> b!634425 (=> (not res!410442) (not e!362803))))

(assert (=> b!634425 (= res!410442 (validKeyInArray!0 (select (arr!18308 a!2986) j!136)))))

(declare-fun b!634426 () Bool)

(declare-fun res!410449 () Bool)

(assert (=> b!634426 (=> (not res!410449) (not e!362808))))

(declare-datatypes ((List!12402 0))(
  ( (Nil!12399) (Cons!12398 (h!13443 (_ BitVec 64)) (t!18638 List!12402)) )
))
(declare-fun arrayNoDuplicates!0 (array!38167 (_ BitVec 32) List!12402) Bool)

(assert (=> b!634426 (= res!410449 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12399))))

(declare-fun b!634427 () Bool)

(assert (=> b!634427 (= e!362812 e!362810)))

(declare-fun res!410456 () Bool)

(assert (=> b!634427 (=> (not res!410456) (not e!362810))))

(assert (=> b!634427 (= res!410456 (arrayContainsKey!0 lt!293325 (select (arr!18308 a!2986) j!136) j!136))))

(declare-fun b!634428 () Bool)

(assert (=> b!634428 (= e!362807 (= lt!293323 lt!293327))))

(declare-fun b!634413 () Bool)

(assert (=> b!634413 (= e!362803 e!362808)))

(declare-fun res!410447 () Bool)

(assert (=> b!634413 (=> (not res!410447) (not e!362808))))

(declare-fun lt!293321 () SeekEntryResult!6755)

(assert (=> b!634413 (= res!410447 (or (= lt!293321 (MissingZero!6755 i!1108)) (= lt!293321 (MissingVacant!6755 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38167 (_ BitVec 32)) SeekEntryResult!6755)

(assert (=> b!634413 (= lt!293321 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!410450 () Bool)

(assert (=> start!57358 (=> (not res!410450) (not e!362803))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57358 (= res!410450 (validMask!0 mask!3053))))

(assert (=> start!57358 e!362803))

(assert (=> start!57358 true))

(declare-fun array_inv!14082 (array!38167) Bool)

(assert (=> start!57358 (array_inv!14082 a!2986)))

(declare-fun b!634429 () Bool)

(assert (=> b!634429 (= e!362808 e!362805)))

(declare-fun res!410448 () Bool)

(assert (=> b!634429 (=> (not res!410448) (not e!362805))))

(assert (=> b!634429 (= res!410448 (= (select (store (arr!18308 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!634429 (= lt!293325 (array!38168 (store (arr!18308 a!2986) i!1108 k!1786) (size!18672 a!2986)))))

(declare-fun b!634430 () Bool)

(declare-fun Unit!21381 () Unit!21378)

(assert (=> b!634430 (= e!362806 Unit!21381)))

(assert (=> b!634430 false))

(assert (= (and start!57358 res!410450) b!634417))

(assert (= (and b!634417 res!410453) b!634425))

(assert (= (and b!634425 res!410442) b!634423))

(assert (= (and b!634423 res!410445) b!634419))

(assert (= (and b!634419 res!410455) b!634413))

(assert (= (and b!634413 res!410447) b!634415))

(assert (= (and b!634415 res!410446) b!634426))

(assert (= (and b!634426 res!410449) b!634420))

(assert (= (and b!634420 res!410451) b!634429))

(assert (= (and b!634429 res!410448) b!634416))

(assert (= (and b!634416 res!410444) b!634414))

(assert (= (and b!634414 res!410443) b!634428))

(assert (= (and b!634414 c!72353) b!634430))

(assert (= (and b!634414 (not c!72353)) b!634418))

(assert (= (and b!634414 (not res!410441)) b!634424))

(assert (= (and b!634424 res!410454) b!634422))

(assert (= (and b!634422 (not res!410452)) b!634427))

(assert (= (and b!634427 res!410456) b!634421))

(declare-fun m!608951 () Bool)

(assert (=> b!634429 m!608951))

(declare-fun m!608953 () Bool)

(assert (=> b!634429 m!608953))

(declare-fun m!608955 () Bool)

(assert (=> b!634419 m!608955))

(declare-fun m!608957 () Bool)

(assert (=> b!634427 m!608957))

(assert (=> b!634427 m!608957))

(declare-fun m!608959 () Bool)

(assert (=> b!634427 m!608959))

(declare-fun m!608961 () Bool)

(assert (=> b!634420 m!608961))

(declare-fun m!608963 () Bool)

(assert (=> start!57358 m!608963))

(declare-fun m!608965 () Bool)

(assert (=> start!57358 m!608965))

(assert (=> b!634422 m!608957))

(assert (=> b!634425 m!608957))

(assert (=> b!634425 m!608957))

(declare-fun m!608967 () Bool)

(assert (=> b!634425 m!608967))

(declare-fun m!608969 () Bool)

(assert (=> b!634423 m!608969))

(declare-fun m!608971 () Bool)

(assert (=> b!634415 m!608971))

(assert (=> b!634424 m!608957))

(assert (=> b!634424 m!608951))

(declare-fun m!608973 () Bool)

(assert (=> b!634424 m!608973))

(declare-fun m!608975 () Bool)

(assert (=> b!634414 m!608975))

(declare-fun m!608977 () Bool)

(assert (=> b!634414 m!608977))

(assert (=> b!634414 m!608957))

(assert (=> b!634414 m!608951))

(assert (=> b!634414 m!608957))

(declare-fun m!608979 () Bool)

(assert (=> b!634414 m!608979))

(declare-fun m!608981 () Bool)

(assert (=> b!634414 m!608981))

(declare-fun m!608983 () Bool)

(assert (=> b!634414 m!608983))

(declare-fun m!608985 () Bool)

(assert (=> b!634414 m!608985))

(declare-fun m!608987 () Bool)

(assert (=> b!634416 m!608987))

(assert (=> b!634416 m!608957))

(assert (=> b!634416 m!608957))

(declare-fun m!608989 () Bool)

(assert (=> b!634416 m!608989))

(declare-fun m!608991 () Bool)

(assert (=> b!634426 m!608991))

(assert (=> b!634421 m!608957))

(assert (=> b!634421 m!608957))

(declare-fun m!608993 () Bool)

(assert (=> b!634421 m!608993))

(declare-fun m!608995 () Bool)

(assert (=> b!634413 m!608995))

(push 1)


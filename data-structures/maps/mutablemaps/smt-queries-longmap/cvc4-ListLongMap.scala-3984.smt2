; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53996 () Bool)

(assert start!53996)

(declare-fun b!589398 () Bool)

(declare-datatypes ((Unit!18396 0))(
  ( (Unit!18397) )
))
(declare-fun e!336492 () Unit!18396)

(declare-fun Unit!18398 () Unit!18396)

(assert (=> b!589398 (= e!336492 Unit!18398)))

(declare-fun b!589399 () Bool)

(declare-fun res!377048 () Bool)

(declare-fun e!336498 () Bool)

(assert (=> b!589399 (=> (not res!377048) (not e!336498))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!589399 (= res!377048 (validKeyInArray!0 k!1786))))

(declare-fun b!589400 () Bool)

(declare-fun e!336494 () Bool)

(assert (=> b!589400 (= e!336498 e!336494)))

(declare-fun res!377052 () Bool)

(assert (=> b!589400 (=> (not res!377052) (not e!336494))))

(declare-datatypes ((SeekEntryResult!6113 0))(
  ( (MissingZero!6113 (index!26682 (_ BitVec 32))) (Found!6113 (index!26683 (_ BitVec 32))) (Intermediate!6113 (undefined!6925 Bool) (index!26684 (_ BitVec 32)) (x!55498 (_ BitVec 32))) (Undefined!6113) (MissingVacant!6113 (index!26685 (_ BitVec 32))) )
))
(declare-fun lt!267390 () SeekEntryResult!6113)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!589400 (= res!377052 (or (= lt!267390 (MissingZero!6113 i!1108)) (= lt!267390 (MissingVacant!6113 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-datatypes ((array!36794 0))(
  ( (array!36795 (arr!17666 (Array (_ BitVec 32) (_ BitVec 64))) (size!18030 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36794)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36794 (_ BitVec 32)) SeekEntryResult!6113)

(assert (=> b!589400 (= lt!267390 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!589401 () Bool)

(declare-fun res!377046 () Bool)

(assert (=> b!589401 (=> (not res!377046) (not e!336494))))

(declare-datatypes ((List!11760 0))(
  ( (Nil!11757) (Cons!11756 (h!12801 (_ BitVec 64)) (t!17996 List!11760)) )
))
(declare-fun arrayNoDuplicates!0 (array!36794 (_ BitVec 32) List!11760) Bool)

(assert (=> b!589401 (= res!377046 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11757))))

(declare-fun b!589402 () Bool)

(declare-fun Unit!18399 () Unit!18396)

(assert (=> b!589402 (= e!336492 Unit!18399)))

(assert (=> b!589402 false))

(declare-fun b!589403 () Bool)

(declare-fun res!377043 () Bool)

(assert (=> b!589403 (=> (not res!377043) (not e!336494))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36794 (_ BitVec 32)) Bool)

(assert (=> b!589403 (= res!377043 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!589404 () Bool)

(declare-fun e!336495 () Bool)

(assert (=> b!589404 (= e!336494 e!336495)))

(declare-fun res!377042 () Bool)

(assert (=> b!589404 (=> (not res!377042) (not e!336495))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!589404 (= res!377042 (= (select (store (arr!17666 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!267386 () array!36794)

(assert (=> b!589404 (= lt!267386 (array!36795 (store (arr!17666 a!2986) i!1108 k!1786) (size!18030 a!2986)))))

(declare-fun b!589405 () Bool)

(declare-fun e!336496 () Bool)

(declare-fun e!336499 () Bool)

(assert (=> b!589405 (= e!336496 (not e!336499))))

(declare-fun res!377045 () Bool)

(assert (=> b!589405 (=> res!377045 e!336499)))

(assert (=> b!589405 (= res!377045 (bvslt mask!3053 #b00000000000000000000000000000000))))

(declare-fun lt!267392 () Unit!18396)

(assert (=> b!589405 (= lt!267392 e!336492)))

(declare-fun c!66545 () Bool)

(declare-fun lt!267387 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36794 (_ BitVec 32)) SeekEntryResult!6113)

(assert (=> b!589405 (= c!66545 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!267387 lt!267386 mask!3053) Undefined!6113))))

(declare-fun e!336493 () Bool)

(assert (=> b!589405 e!336493))

(declare-fun res!377051 () Bool)

(assert (=> b!589405 (=> (not res!377051) (not e!336493))))

(declare-fun lt!267391 () (_ BitVec 32))

(declare-fun lt!267385 () SeekEntryResult!6113)

(assert (=> b!589405 (= res!377051 (= lt!267385 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267391 vacantSpotIndex!68 lt!267387 lt!267386 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!589405 (= lt!267385 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267391 vacantSpotIndex!68 (select (arr!17666 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!589405 (= lt!267387 (select (store (arr!17666 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!267388 () Unit!18396)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36794 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18396)

(assert (=> b!589405 (= lt!267388 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!267391 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!589405 (= lt!267391 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!589406 () Bool)

(assert (=> b!589406 (= e!336499 (validKeyInArray!0 lt!267387))))

(declare-fun res!377053 () Bool)

(assert (=> start!53996 (=> (not res!377053) (not e!336498))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53996 (= res!377053 (validMask!0 mask!3053))))

(assert (=> start!53996 e!336498))

(assert (=> start!53996 true))

(declare-fun array_inv!13440 (array!36794) Bool)

(assert (=> start!53996 (array_inv!13440 a!2986)))

(declare-fun b!589407 () Bool)

(declare-fun res!377054 () Bool)

(assert (=> b!589407 (=> (not res!377054) (not e!336494))))

(assert (=> b!589407 (= res!377054 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17666 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!589408 () Bool)

(declare-fun lt!267389 () SeekEntryResult!6113)

(assert (=> b!589408 (= e!336493 (= lt!267389 lt!267385))))

(declare-fun b!589409 () Bool)

(declare-fun res!377044 () Bool)

(assert (=> b!589409 (=> (not res!377044) (not e!336498))))

(assert (=> b!589409 (= res!377044 (validKeyInArray!0 (select (arr!17666 a!2986) j!136)))))

(declare-fun b!589410 () Bool)

(declare-fun res!377049 () Bool)

(assert (=> b!589410 (=> (not res!377049) (not e!336498))))

(declare-fun arrayContainsKey!0 (array!36794 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!589410 (= res!377049 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!589411 () Bool)

(assert (=> b!589411 (= e!336495 e!336496)))

(declare-fun res!377050 () Bool)

(assert (=> b!589411 (=> (not res!377050) (not e!336496))))

(assert (=> b!589411 (= res!377050 (and (= lt!267389 (Found!6113 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17666 a!2986) index!984) (select (arr!17666 a!2986) j!136))) (not (= (select (arr!17666 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!589411 (= lt!267389 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17666 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!589412 () Bool)

(declare-fun res!377047 () Bool)

(assert (=> b!589412 (=> (not res!377047) (not e!336498))))

(assert (=> b!589412 (= res!377047 (and (= (size!18030 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18030 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18030 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!53996 res!377053) b!589412))

(assert (= (and b!589412 res!377047) b!589409))

(assert (= (and b!589409 res!377044) b!589399))

(assert (= (and b!589399 res!377048) b!589410))

(assert (= (and b!589410 res!377049) b!589400))

(assert (= (and b!589400 res!377052) b!589403))

(assert (= (and b!589403 res!377043) b!589401))

(assert (= (and b!589401 res!377046) b!589407))

(assert (= (and b!589407 res!377054) b!589404))

(assert (= (and b!589404 res!377042) b!589411))

(assert (= (and b!589411 res!377050) b!589405))

(assert (= (and b!589405 res!377051) b!589408))

(assert (= (and b!589405 c!66545) b!589402))

(assert (= (and b!589405 (not c!66545)) b!589398))

(assert (= (and b!589405 (not res!377045)) b!589406))

(declare-fun m!567967 () Bool)

(assert (=> b!589410 m!567967))

(declare-fun m!567969 () Bool)

(assert (=> b!589411 m!567969))

(declare-fun m!567971 () Bool)

(assert (=> b!589411 m!567971))

(assert (=> b!589411 m!567971))

(declare-fun m!567973 () Bool)

(assert (=> b!589411 m!567973))

(declare-fun m!567975 () Bool)

(assert (=> b!589401 m!567975))

(declare-fun m!567977 () Bool)

(assert (=> b!589403 m!567977))

(declare-fun m!567979 () Bool)

(assert (=> b!589399 m!567979))

(declare-fun m!567981 () Bool)

(assert (=> start!53996 m!567981))

(declare-fun m!567983 () Bool)

(assert (=> start!53996 m!567983))

(declare-fun m!567985 () Bool)

(assert (=> b!589407 m!567985))

(declare-fun m!567987 () Bool)

(assert (=> b!589404 m!567987))

(declare-fun m!567989 () Bool)

(assert (=> b!589404 m!567989))

(assert (=> b!589409 m!567971))

(assert (=> b!589409 m!567971))

(declare-fun m!567991 () Bool)

(assert (=> b!589409 m!567991))

(declare-fun m!567993 () Bool)

(assert (=> b!589400 m!567993))

(declare-fun m!567995 () Bool)

(assert (=> b!589406 m!567995))

(declare-fun m!567997 () Bool)

(assert (=> b!589405 m!567997))

(declare-fun m!567999 () Bool)

(assert (=> b!589405 m!567999))

(assert (=> b!589405 m!567971))

(assert (=> b!589405 m!567987))

(declare-fun m!568001 () Bool)

(assert (=> b!589405 m!568001))

(declare-fun m!568003 () Bool)

(assert (=> b!589405 m!568003))

(declare-fun m!568005 () Bool)

(assert (=> b!589405 m!568005))

(assert (=> b!589405 m!567971))

(declare-fun m!568007 () Bool)

(assert (=> b!589405 m!568007))

(push 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57360 () Bool)

(assert start!57360)

(declare-fun b!634469 () Bool)

(declare-fun res!410501 () Bool)

(declare-fun e!362839 () Bool)

(assert (=> b!634469 (=> (not res!410501) (not e!362839))))

(declare-datatypes ((array!38169 0))(
  ( (array!38170 (arr!18309 (Array (_ BitVec 32) (_ BitVec 64))) (size!18673 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38169)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!634469 (= res!410501 (validKeyInArray!0 (select (arr!18309 a!2986) j!136)))))

(declare-fun res!410507 () Bool)

(assert (=> start!57360 (=> (not res!410507) (not e!362839))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57360 (= res!410507 (validMask!0 mask!3053))))

(assert (=> start!57360 e!362839))

(assert (=> start!57360 true))

(declare-fun array_inv!14083 (array!38169) Bool)

(assert (=> start!57360 (array_inv!14083 a!2986)))

(declare-fun b!634470 () Bool)

(declare-fun res!410495 () Bool)

(declare-fun e!362846 () Bool)

(assert (=> b!634470 (=> (not res!410495) (not e!362846))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38169 (_ BitVec 32)) Bool)

(assert (=> b!634470 (= res!410495 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!634471 () Bool)

(declare-fun e!362842 () Bool)

(declare-fun lt!293354 () array!38169)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!38169 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!634471 (= e!362842 (arrayContainsKey!0 lt!293354 (select (arr!18309 a!2986) j!136) index!984))))

(declare-fun b!634472 () Bool)

(assert (=> b!634472 (= e!362839 e!362846)))

(declare-fun res!410496 () Bool)

(assert (=> b!634472 (=> (not res!410496) (not e!362846))))

(declare-datatypes ((SeekEntryResult!6756 0))(
  ( (MissingZero!6756 (index!29325 (_ BitVec 32))) (Found!6756 (index!29326 (_ BitVec 32))) (Intermediate!6756 (undefined!7568 Bool) (index!29327 (_ BitVec 32)) (x!58099 (_ BitVec 32))) (Undefined!6756) (MissingVacant!6756 (index!29328 (_ BitVec 32))) )
))
(declare-fun lt!293360 () SeekEntryResult!6756)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!634472 (= res!410496 (or (= lt!293360 (MissingZero!6756 i!1108)) (= lt!293360 (MissingVacant!6756 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38169 (_ BitVec 32)) SeekEntryResult!6756)

(assert (=> b!634472 (= lt!293360 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!634473 () Bool)

(declare-fun e!362845 () Bool)

(declare-fun lt!293359 () SeekEntryResult!6756)

(declare-fun lt!293357 () SeekEntryResult!6756)

(assert (=> b!634473 (= e!362845 (= lt!293359 lt!293357))))

(declare-fun b!634474 () Bool)

(declare-fun e!362838 () Bool)

(assert (=> b!634474 (= e!362838 e!362842)))

(declare-fun res!410498 () Bool)

(assert (=> b!634474 (=> (not res!410498) (not e!362842))))

(assert (=> b!634474 (= res!410498 (arrayContainsKey!0 lt!293354 (select (arr!18309 a!2986) j!136) j!136))))

(declare-fun b!634475 () Bool)

(declare-datatypes ((Unit!21382 0))(
  ( (Unit!21383) )
))
(declare-fun e!362847 () Unit!21382)

(declare-fun Unit!21384 () Unit!21382)

(assert (=> b!634475 (= e!362847 Unit!21384)))

(declare-fun b!634476 () Bool)

(declare-fun e!362843 () Bool)

(assert (=> b!634476 (= e!362843 e!362838)))

(declare-fun res!410492 () Bool)

(assert (=> b!634476 (=> res!410492 e!362838)))

(declare-fun lt!293353 () (_ BitVec 64))

(declare-fun lt!293351 () (_ BitVec 64))

(assert (=> b!634476 (= res!410492 (or (not (= (select (arr!18309 a!2986) j!136) lt!293351)) (not (= (select (arr!18309 a!2986) j!136) lt!293353)) (bvsge j!136 index!984)))))

(declare-fun b!634477 () Bool)

(declare-fun res!410493 () Bool)

(assert (=> b!634477 (=> (not res!410493) (not e!362846))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!634477 (= res!410493 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18309 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!634478 () Bool)

(declare-fun e!362848 () Bool)

(declare-fun e!362844 () Bool)

(assert (=> b!634478 (= e!362848 e!362844)))

(declare-fun res!410503 () Bool)

(assert (=> b!634478 (=> (not res!410503) (not e!362844))))

(assert (=> b!634478 (= res!410503 (and (= lt!293359 (Found!6756 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18309 a!2986) index!984) (select (arr!18309 a!2986) j!136))) (not (= (select (arr!18309 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38169 (_ BitVec 32)) SeekEntryResult!6756)

(assert (=> b!634478 (= lt!293359 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18309 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!634479 () Bool)

(declare-fun res!410504 () Bool)

(assert (=> b!634479 (=> (not res!410504) (not e!362839))))

(assert (=> b!634479 (= res!410504 (and (= (size!18673 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18673 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18673 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!634480 () Bool)

(declare-fun Unit!21385 () Unit!21382)

(assert (=> b!634480 (= e!362847 Unit!21385)))

(assert (=> b!634480 false))

(declare-fun b!634481 () Bool)

(declare-fun res!410500 () Bool)

(assert (=> b!634481 (=> (not res!410500) (not e!362839))))

(assert (=> b!634481 (= res!410500 (validKeyInArray!0 k!1786))))

(declare-fun b!634482 () Bool)

(declare-fun e!362840 () Bool)

(assert (=> b!634482 (= e!362844 (not e!362840))))

(declare-fun res!410502 () Bool)

(assert (=> b!634482 (=> res!410502 e!362840)))

(declare-fun lt!293356 () SeekEntryResult!6756)

(assert (=> b!634482 (= res!410502 (not (= lt!293356 (Found!6756 index!984))))))

(declare-fun lt!293361 () Unit!21382)

(assert (=> b!634482 (= lt!293361 e!362847)))

(declare-fun c!72356 () Bool)

(assert (=> b!634482 (= c!72356 (= lt!293356 Undefined!6756))))

(assert (=> b!634482 (= lt!293356 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!293351 lt!293354 mask!3053))))

(assert (=> b!634482 e!362845))

(declare-fun res!410491 () Bool)

(assert (=> b!634482 (=> (not res!410491) (not e!362845))))

(declare-fun lt!293352 () (_ BitVec 32))

(assert (=> b!634482 (= res!410491 (= lt!293357 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293352 vacantSpotIndex!68 lt!293351 lt!293354 mask!3053)))))

(assert (=> b!634482 (= lt!293357 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293352 vacantSpotIndex!68 (select (arr!18309 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!634482 (= lt!293351 (select (store (arr!18309 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!293355 () Unit!21382)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38169 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21382)

(assert (=> b!634482 (= lt!293355 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!293352 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!634482 (= lt!293352 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!634483 () Bool)

(declare-fun res!410499 () Bool)

(assert (=> b!634483 (=> (not res!410499) (not e!362846))))

(declare-datatypes ((List!12403 0))(
  ( (Nil!12400) (Cons!12399 (h!13444 (_ BitVec 64)) (t!18639 List!12403)) )
))
(declare-fun arrayNoDuplicates!0 (array!38169 (_ BitVec 32) List!12403) Bool)

(assert (=> b!634483 (= res!410499 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12400))))

(declare-fun b!634484 () Bool)

(declare-fun res!410505 () Bool)

(assert (=> b!634484 (=> (not res!410505) (not e!362839))))

(assert (=> b!634484 (= res!410505 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!634485 () Bool)

(declare-fun e!362837 () Bool)

(assert (=> b!634485 (= e!362840 e!362837)))

(declare-fun res!410494 () Bool)

(assert (=> b!634485 (=> res!410494 e!362837)))

(assert (=> b!634485 (= res!410494 (or (not (= (select (arr!18309 a!2986) j!136) lt!293351)) (not (= (select (arr!18309 a!2986) j!136) lt!293353)) (bvsge j!136 index!984)))))

(assert (=> b!634485 e!362843))

(declare-fun res!410497 () Bool)

(assert (=> b!634485 (=> (not res!410497) (not e!362843))))

(assert (=> b!634485 (= res!410497 (= lt!293353 (select (arr!18309 a!2986) j!136)))))

(assert (=> b!634485 (= lt!293353 (select (store (arr!18309 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!634486 () Bool)

(assert (=> b!634486 (= e!362846 e!362848)))

(declare-fun res!410506 () Bool)

(assert (=> b!634486 (=> (not res!410506) (not e!362848))))

(assert (=> b!634486 (= res!410506 (= (select (store (arr!18309 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!634486 (= lt!293354 (array!38170 (store (arr!18309 a!2986) i!1108 k!1786) (size!18673 a!2986)))))

(declare-fun b!634487 () Bool)

(assert (=> b!634487 (= e!362837 true)))

(assert (=> b!634487 (arrayContainsKey!0 lt!293354 (select (arr!18309 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!293358 () Unit!21382)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38169 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21382)

(assert (=> b!634487 (= lt!293358 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!293354 (select (arr!18309 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (= (and start!57360 res!410507) b!634479))

(assert (= (and b!634479 res!410504) b!634469))

(assert (= (and b!634469 res!410501) b!634481))

(assert (= (and b!634481 res!410500) b!634484))

(assert (= (and b!634484 res!410505) b!634472))

(assert (= (and b!634472 res!410496) b!634470))

(assert (= (and b!634470 res!410495) b!634483))

(assert (= (and b!634483 res!410499) b!634477))

(assert (= (and b!634477 res!410493) b!634486))

(assert (= (and b!634486 res!410506) b!634478))

(assert (= (and b!634478 res!410503) b!634482))

(assert (= (and b!634482 res!410491) b!634473))

(assert (= (and b!634482 c!72356) b!634480))

(assert (= (and b!634482 (not c!72356)) b!634475))

(assert (= (and b!634482 (not res!410502)) b!634485))

(assert (= (and b!634485 res!410497) b!634476))

(assert (= (and b!634476 (not res!410492)) b!634474))

(assert (= (and b!634474 res!410498) b!634471))

(assert (= (and b!634485 (not res!410494)) b!634487))

(declare-fun m!608997 () Bool)

(assert (=> b!634470 m!608997))

(declare-fun m!608999 () Bool)

(assert (=> b!634474 m!608999))

(assert (=> b!634474 m!608999))

(declare-fun m!609001 () Bool)

(assert (=> b!634474 m!609001))

(assert (=> b!634485 m!608999))

(declare-fun m!609003 () Bool)

(assert (=> b!634485 m!609003))

(declare-fun m!609005 () Bool)

(assert (=> b!634485 m!609005))

(assert (=> b!634486 m!609003))

(declare-fun m!609007 () Bool)

(assert (=> b!634486 m!609007))

(declare-fun m!609009 () Bool)

(assert (=> b!634484 m!609009))

(declare-fun m!609011 () Bool)

(assert (=> b!634483 m!609011))

(declare-fun m!609013 () Bool)

(assert (=> b!634477 m!609013))

(assert (=> b!634471 m!608999))

(assert (=> b!634471 m!608999))

(declare-fun m!609015 () Bool)

(assert (=> b!634471 m!609015))

(declare-fun m!609017 () Bool)

(assert (=> start!57360 m!609017))

(declare-fun m!609019 () Bool)

(assert (=> start!57360 m!609019))

(declare-fun m!609021 () Bool)

(assert (=> b!634481 m!609021))

(assert (=> b!634487 m!608999))

(assert (=> b!634487 m!608999))

(declare-fun m!609023 () Bool)

(assert (=> b!634487 m!609023))

(assert (=> b!634487 m!608999))

(declare-fun m!609025 () Bool)

(assert (=> b!634487 m!609025))

(declare-fun m!609027 () Bool)

(assert (=> b!634478 m!609027))

(assert (=> b!634478 m!608999))

(assert (=> b!634478 m!608999))

(declare-fun m!609029 () Bool)

(assert (=> b!634478 m!609029))

(declare-fun m!609031 () Bool)

(assert (=> b!634472 m!609031))

(declare-fun m!609033 () Bool)

(assert (=> b!634482 m!609033))

(declare-fun m!609035 () Bool)

(assert (=> b!634482 m!609035))

(assert (=> b!634482 m!608999))

(declare-fun m!609037 () Bool)

(assert (=> b!634482 m!609037))

(declare-fun m!609039 () Bool)

(assert (=> b!634482 m!609039))

(declare-fun m!609041 () Bool)

(assert (=> b!634482 m!609041))

(assert (=> b!634482 m!608999))

(declare-fun m!609043 () Bool)

(assert (=> b!634482 m!609043))

(assert (=> b!634482 m!609003))

(assert (=> b!634469 m!608999))

(assert (=> b!634469 m!608999))

(declare-fun m!609045 () Bool)

(assert (=> b!634469 m!609045))

(assert (=> b!634476 m!608999))

(push 1)


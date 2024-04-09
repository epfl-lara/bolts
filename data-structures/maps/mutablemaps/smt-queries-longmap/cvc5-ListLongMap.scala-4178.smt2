; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56994 () Bool)

(assert start!56994)

(declare-fun b!630379 () Bool)

(declare-datatypes ((Unit!21130 0))(
  ( (Unit!21131) )
))
(declare-fun e!360467 () Unit!21130)

(declare-fun Unit!21132 () Unit!21130)

(assert (=> b!630379 (= e!360467 Unit!21132)))

(assert (=> b!630379 false))

(declare-fun b!630380 () Bool)

(declare-fun res!407573 () Bool)

(declare-fun e!360469 () Bool)

(assert (=> b!630380 (=> (not res!407573) (not e!360469))))

(declare-datatypes ((array!38031 0))(
  ( (array!38032 (arr!18246 (Array (_ BitVec 32) (_ BitVec 64))) (size!18610 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38031)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!38031 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!630380 (= res!407573 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!630381 () Bool)

(declare-fun res!407581 () Bool)

(declare-fun e!360471 () Bool)

(assert (=> b!630381 (=> (not res!407581) (not e!360471))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!630381 (= res!407581 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18246 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!630382 () Bool)

(declare-fun Unit!21133 () Unit!21130)

(assert (=> b!630382 (= e!360467 Unit!21133)))

(declare-fun b!630383 () Bool)

(assert (=> b!630383 (= e!360469 e!360471)))

(declare-fun res!407579 () Bool)

(assert (=> b!630383 (=> (not res!407579) (not e!360471))))

(declare-datatypes ((SeekEntryResult!6693 0))(
  ( (MissingZero!6693 (index!29061 (_ BitVec 32))) (Found!6693 (index!29062 (_ BitVec 32))) (Intermediate!6693 (undefined!7505 Bool) (index!29063 (_ BitVec 32)) (x!57832 (_ BitVec 32))) (Undefined!6693) (MissingVacant!6693 (index!29064 (_ BitVec 32))) )
))
(declare-fun lt!291195 () SeekEntryResult!6693)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!630383 (= res!407579 (or (= lt!291195 (MissingZero!6693 i!1108)) (= lt!291195 (MissingVacant!6693 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38031 (_ BitVec 32)) SeekEntryResult!6693)

(assert (=> b!630383 (= lt!291195 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!630384 () Bool)

(declare-fun res!407576 () Bool)

(assert (=> b!630384 (=> (not res!407576) (not e!360469))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!630384 (= res!407576 (and (= (size!18610 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18610 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18610 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!407582 () Bool)

(assert (=> start!56994 (=> (not res!407582) (not e!360469))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56994 (= res!407582 (validMask!0 mask!3053))))

(assert (=> start!56994 e!360469))

(assert (=> start!56994 true))

(declare-fun array_inv!14020 (array!38031) Bool)

(assert (=> start!56994 (array_inv!14020 a!2986)))

(declare-fun b!630385 () Bool)

(declare-fun res!407571 () Bool)

(assert (=> b!630385 (=> (not res!407571) (not e!360471))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38031 (_ BitVec 32)) Bool)

(assert (=> b!630385 (= res!407571 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!630386 () Bool)

(declare-fun e!360470 () Bool)

(assert (=> b!630386 (= e!360470 (not true))))

(declare-fun lt!291201 () Unit!21130)

(assert (=> b!630386 (= lt!291201 e!360467)))

(declare-fun lt!291200 () array!38031)

(declare-fun c!71771 () Bool)

(declare-fun lt!291199 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38031 (_ BitVec 32)) SeekEntryResult!6693)

(assert (=> b!630386 (= c!71771 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!291199 lt!291200 mask!3053) Undefined!6693))))

(declare-fun e!360472 () Bool)

(assert (=> b!630386 e!360472))

(declare-fun res!407580 () Bool)

(assert (=> b!630386 (=> (not res!407580) (not e!360472))))

(declare-fun lt!291196 () SeekEntryResult!6693)

(declare-fun lt!291194 () (_ BitVec 32))

(assert (=> b!630386 (= res!407580 (= lt!291196 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291194 vacantSpotIndex!68 lt!291199 lt!291200 mask!3053)))))

(assert (=> b!630386 (= lt!291196 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291194 vacantSpotIndex!68 (select (arr!18246 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!630386 (= lt!291199 (select (store (arr!18246 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!291198 () Unit!21130)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38031 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21130)

(assert (=> b!630386 (= lt!291198 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!291194 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!630386 (= lt!291194 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!630387 () Bool)

(declare-fun lt!291197 () SeekEntryResult!6693)

(assert (=> b!630387 (= e!360472 (= lt!291197 lt!291196))))

(declare-fun b!630388 () Bool)

(declare-fun e!360468 () Bool)

(assert (=> b!630388 (= e!360471 e!360468)))

(declare-fun res!407578 () Bool)

(assert (=> b!630388 (=> (not res!407578) (not e!360468))))

(assert (=> b!630388 (= res!407578 (= (select (store (arr!18246 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!630388 (= lt!291200 (array!38032 (store (arr!18246 a!2986) i!1108 k!1786) (size!18610 a!2986)))))

(declare-fun b!630389 () Bool)

(declare-fun res!407577 () Bool)

(assert (=> b!630389 (=> (not res!407577) (not e!360469))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!630389 (= res!407577 (validKeyInArray!0 (select (arr!18246 a!2986) j!136)))))

(declare-fun b!630390 () Bool)

(assert (=> b!630390 (= e!360468 e!360470)))

(declare-fun res!407575 () Bool)

(assert (=> b!630390 (=> (not res!407575) (not e!360470))))

(assert (=> b!630390 (= res!407575 (and (= lt!291197 (Found!6693 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18246 a!2986) index!984) (select (arr!18246 a!2986) j!136))) (not (= (select (arr!18246 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!630390 (= lt!291197 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18246 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!630391 () Bool)

(declare-fun res!407572 () Bool)

(assert (=> b!630391 (=> (not res!407572) (not e!360471))))

(declare-datatypes ((List!12340 0))(
  ( (Nil!12337) (Cons!12336 (h!13381 (_ BitVec 64)) (t!18576 List!12340)) )
))
(declare-fun arrayNoDuplicates!0 (array!38031 (_ BitVec 32) List!12340) Bool)

(assert (=> b!630391 (= res!407572 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12337))))

(declare-fun b!630392 () Bool)

(declare-fun res!407574 () Bool)

(assert (=> b!630392 (=> (not res!407574) (not e!360469))))

(assert (=> b!630392 (= res!407574 (validKeyInArray!0 k!1786))))

(assert (= (and start!56994 res!407582) b!630384))

(assert (= (and b!630384 res!407576) b!630389))

(assert (= (and b!630389 res!407577) b!630392))

(assert (= (and b!630392 res!407574) b!630380))

(assert (= (and b!630380 res!407573) b!630383))

(assert (= (and b!630383 res!407579) b!630385))

(assert (= (and b!630385 res!407571) b!630391))

(assert (= (and b!630391 res!407572) b!630381))

(assert (= (and b!630381 res!407581) b!630388))

(assert (= (and b!630388 res!407578) b!630390))

(assert (= (and b!630390 res!407575) b!630386))

(assert (= (and b!630386 res!407580) b!630387))

(assert (= (and b!630386 c!71771) b!630379))

(assert (= (and b!630386 (not c!71771)) b!630382))

(declare-fun m!605409 () Bool)

(assert (=> b!630392 m!605409))

(declare-fun m!605411 () Bool)

(assert (=> start!56994 m!605411))

(declare-fun m!605413 () Bool)

(assert (=> start!56994 m!605413))

(declare-fun m!605415 () Bool)

(assert (=> b!630391 m!605415))

(declare-fun m!605417 () Bool)

(assert (=> b!630380 m!605417))

(declare-fun m!605419 () Bool)

(assert (=> b!630389 m!605419))

(assert (=> b!630389 m!605419))

(declare-fun m!605421 () Bool)

(assert (=> b!630389 m!605421))

(declare-fun m!605423 () Bool)

(assert (=> b!630390 m!605423))

(assert (=> b!630390 m!605419))

(assert (=> b!630390 m!605419))

(declare-fun m!605425 () Bool)

(assert (=> b!630390 m!605425))

(declare-fun m!605427 () Bool)

(assert (=> b!630383 m!605427))

(declare-fun m!605429 () Bool)

(assert (=> b!630388 m!605429))

(declare-fun m!605431 () Bool)

(assert (=> b!630388 m!605431))

(declare-fun m!605433 () Bool)

(assert (=> b!630386 m!605433))

(declare-fun m!605435 () Bool)

(assert (=> b!630386 m!605435))

(assert (=> b!630386 m!605419))

(assert (=> b!630386 m!605429))

(declare-fun m!605437 () Bool)

(assert (=> b!630386 m!605437))

(assert (=> b!630386 m!605419))

(declare-fun m!605439 () Bool)

(assert (=> b!630386 m!605439))

(declare-fun m!605441 () Bool)

(assert (=> b!630386 m!605441))

(declare-fun m!605443 () Bool)

(assert (=> b!630386 m!605443))

(declare-fun m!605445 () Bool)

(assert (=> b!630385 m!605445))

(declare-fun m!605447 () Bool)

(assert (=> b!630381 m!605447))

(push 1)


; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!57362 () Bool)

(assert start!57362)

(declare-fun b!634526 () Bool)

(declare-fun res!410543 () Bool)

(declare-fun e!362873 () Bool)

(assert (=> b!634526 (=> (not res!410543) (not e!362873))))

(declare-datatypes ((array!38171 0))(
  ( (array!38172 (arr!18310 (Array (_ BitVec 32) (_ BitVec 64))) (size!18674 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38171)

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!38171 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!634526 (= res!410543 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!634527 () Bool)

(declare-fun e!362874 () Bool)

(declare-fun e!362883 () Bool)

(assert (=> b!634527 (= e!362874 e!362883)))

(declare-fun res!410542 () Bool)

(assert (=> b!634527 (=> (not res!410542) (not e!362883))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!293394 () array!38171)

(assert (=> b!634527 (= res!410542 (arrayContainsKey!0 lt!293394 (select (arr!18310 a!2986) j!136) j!136))))

(declare-fun b!634528 () Bool)

(declare-fun e!362875 () Bool)

(declare-fun e!362879 () Bool)

(assert (=> b!634528 (= e!362875 e!362879)))

(declare-fun res!410557 () Bool)

(assert (=> b!634528 (=> res!410557 e!362879)))

(declare-fun lt!293384 () (_ BitVec 64))

(declare-fun lt!293393 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!634528 (= res!410557 (or (not (= (select (arr!18310 a!2986) j!136) lt!293384)) (not (= (select (arr!18310 a!2986) j!136) lt!293393)) (bvsge j!136 index!984)))))

(declare-fun e!362884 () Bool)

(assert (=> b!634528 e!362884))

(declare-fun res!410544 () Bool)

(assert (=> b!634528 (=> (not res!410544) (not e!362884))))

(assert (=> b!634528 (= res!410544 (= lt!293393 (select (arr!18310 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!634528 (= lt!293393 (select (store (arr!18310 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!634530 () Bool)

(declare-datatypes ((Unit!21386 0))(
  ( (Unit!21387) )
))
(declare-fun e!362878 () Unit!21386)

(declare-fun Unit!21388 () Unit!21386)

(assert (=> b!634530 (= e!362878 Unit!21388)))

(assert (=> b!634530 false))

(declare-fun b!634531 () Bool)

(declare-fun e!362881 () Bool)

(declare-fun e!362882 () Bool)

(assert (=> b!634531 (= e!362881 e!362882)))

(declare-fun res!410545 () Bool)

(assert (=> b!634531 (=> (not res!410545) (not e!362882))))

(declare-datatypes ((SeekEntryResult!6757 0))(
  ( (MissingZero!6757 (index!29329 (_ BitVec 32))) (Found!6757 (index!29330 (_ BitVec 32))) (Intermediate!6757 (undefined!7569 Bool) (index!29331 (_ BitVec 32)) (x!58100 (_ BitVec 32))) (Undefined!6757) (MissingVacant!6757 (index!29332 (_ BitVec 32))) )
))
(declare-fun lt!293388 () SeekEntryResult!6757)

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!634531 (= res!410545 (and (= lt!293388 (Found!6757 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18310 a!2986) index!984) (select (arr!18310 a!2986) j!136))) (not (= (select (arr!18310 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38171 (_ BitVec 32)) SeekEntryResult!6757)

(assert (=> b!634531 (= lt!293388 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18310 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!634532 () Bool)

(assert (=> b!634532 (= e!362884 e!362874)))

(declare-fun res!410549 () Bool)

(assert (=> b!634532 (=> res!410549 e!362874)))

(assert (=> b!634532 (= res!410549 (or (not (= (select (arr!18310 a!2986) j!136) lt!293384)) (not (= (select (arr!18310 a!2986) j!136) lt!293393)) (bvsge j!136 index!984)))))

(declare-fun b!634533 () Bool)

(declare-fun res!410552 () Bool)

(declare-fun e!362876 () Bool)

(assert (=> b!634533 (=> (not res!410552) (not e!362876))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38171 (_ BitVec 32)) Bool)

(assert (=> b!634533 (= res!410552 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!634534 () Bool)

(declare-fun res!410548 () Bool)

(assert (=> b!634534 (=> (not res!410548) (not e!362876))))

(assert (=> b!634534 (= res!410548 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18310 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!634535 () Bool)

(assert (=> b!634535 (= e!362882 (not e!362875))))

(declare-fun res!410551 () Bool)

(assert (=> b!634535 (=> res!410551 e!362875)))

(declare-fun lt!293386 () SeekEntryResult!6757)

(assert (=> b!634535 (= res!410551 (not (= lt!293386 (Found!6757 index!984))))))

(declare-fun lt!293390 () Unit!21386)

(assert (=> b!634535 (= lt!293390 e!362878)))

(declare-fun c!72359 () Bool)

(assert (=> b!634535 (= c!72359 (= lt!293386 Undefined!6757))))

(assert (=> b!634535 (= lt!293386 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!293384 lt!293394 mask!3053))))

(declare-fun e!362880 () Bool)

(assert (=> b!634535 e!362880))

(declare-fun res!410554 () Bool)

(assert (=> b!634535 (=> (not res!410554) (not e!362880))))

(declare-fun lt!293391 () (_ BitVec 32))

(declare-fun lt!293385 () SeekEntryResult!6757)

(assert (=> b!634535 (= res!410554 (= lt!293385 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293391 vacantSpotIndex!68 lt!293384 lt!293394 mask!3053)))))

(assert (=> b!634535 (= lt!293385 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293391 vacantSpotIndex!68 (select (arr!18310 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!634535 (= lt!293384 (select (store (arr!18310 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!293387 () Unit!21386)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38171 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21386)

(assert (=> b!634535 (= lt!293387 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!293391 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!634535 (= lt!293391 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!634536 () Bool)

(assert (=> b!634536 (= e!362880 (= lt!293388 lt!293385))))

(declare-fun b!634537 () Bool)

(declare-fun res!410546 () Bool)

(assert (=> b!634537 (=> (not res!410546) (not e!362876))))

(declare-datatypes ((List!12404 0))(
  ( (Nil!12401) (Cons!12400 (h!13445 (_ BitVec 64)) (t!18640 List!12404)) )
))
(declare-fun arrayNoDuplicates!0 (array!38171 (_ BitVec 32) List!12404) Bool)

(assert (=> b!634537 (= res!410546 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12401))))

(declare-fun b!634538 () Bool)

(declare-fun res!410556 () Bool)

(assert (=> b!634538 (=> (not res!410556) (not e!362873))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!634538 (= res!410556 (validKeyInArray!0 (select (arr!18310 a!2986) j!136)))))

(declare-fun b!634539 () Bool)

(assert (=> b!634539 (= e!362876 e!362881)))

(declare-fun res!410555 () Bool)

(assert (=> b!634539 (=> (not res!410555) (not e!362881))))

(assert (=> b!634539 (= res!410555 (= (select (store (arr!18310 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!634539 (= lt!293394 (array!38172 (store (arr!18310 a!2986) i!1108 k0!1786) (size!18674 a!2986)))))

(declare-fun b!634540 () Bool)

(declare-fun res!410553 () Bool)

(assert (=> b!634540 (=> (not res!410553) (not e!362873))))

(assert (=> b!634540 (= res!410553 (and (= (size!18674 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18674 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18674 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!634541 () Bool)

(assert (=> b!634541 (= e!362879 true)))

(assert (=> b!634541 (arrayContainsKey!0 lt!293394 (select (arr!18310 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!293392 () Unit!21386)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38171 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21386)

(assert (=> b!634541 (= lt!293392 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!293394 (select (arr!18310 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!634542 () Bool)

(assert (=> b!634542 (= e!362883 (arrayContainsKey!0 lt!293394 (select (arr!18310 a!2986) j!136) index!984))))

(declare-fun b!634529 () Bool)

(declare-fun Unit!21389 () Unit!21386)

(assert (=> b!634529 (= e!362878 Unit!21389)))

(declare-fun res!410550 () Bool)

(assert (=> start!57362 (=> (not res!410550) (not e!362873))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57362 (= res!410550 (validMask!0 mask!3053))))

(assert (=> start!57362 e!362873))

(assert (=> start!57362 true))

(declare-fun array_inv!14084 (array!38171) Bool)

(assert (=> start!57362 (array_inv!14084 a!2986)))

(declare-fun b!634543 () Bool)

(assert (=> b!634543 (= e!362873 e!362876)))

(declare-fun res!410547 () Bool)

(assert (=> b!634543 (=> (not res!410547) (not e!362876))))

(declare-fun lt!293389 () SeekEntryResult!6757)

(assert (=> b!634543 (= res!410547 (or (= lt!293389 (MissingZero!6757 i!1108)) (= lt!293389 (MissingVacant!6757 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38171 (_ BitVec 32)) SeekEntryResult!6757)

(assert (=> b!634543 (= lt!293389 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!634544 () Bool)

(declare-fun res!410558 () Bool)

(assert (=> b!634544 (=> (not res!410558) (not e!362873))))

(assert (=> b!634544 (= res!410558 (validKeyInArray!0 k0!1786))))

(assert (= (and start!57362 res!410550) b!634540))

(assert (= (and b!634540 res!410553) b!634538))

(assert (= (and b!634538 res!410556) b!634544))

(assert (= (and b!634544 res!410558) b!634526))

(assert (= (and b!634526 res!410543) b!634543))

(assert (= (and b!634543 res!410547) b!634533))

(assert (= (and b!634533 res!410552) b!634537))

(assert (= (and b!634537 res!410546) b!634534))

(assert (= (and b!634534 res!410548) b!634539))

(assert (= (and b!634539 res!410555) b!634531))

(assert (= (and b!634531 res!410545) b!634535))

(assert (= (and b!634535 res!410554) b!634536))

(assert (= (and b!634535 c!72359) b!634530))

(assert (= (and b!634535 (not c!72359)) b!634529))

(assert (= (and b!634535 (not res!410551)) b!634528))

(assert (= (and b!634528 res!410544) b!634532))

(assert (= (and b!634532 (not res!410549)) b!634527))

(assert (= (and b!634527 res!410542) b!634542))

(assert (= (and b!634528 (not res!410557)) b!634541))

(declare-fun m!609047 () Bool)

(assert (=> b!634526 m!609047))

(declare-fun m!609049 () Bool)

(assert (=> b!634538 m!609049))

(assert (=> b!634538 m!609049))

(declare-fun m!609051 () Bool)

(assert (=> b!634538 m!609051))

(declare-fun m!609053 () Bool)

(assert (=> b!634531 m!609053))

(assert (=> b!634531 m!609049))

(assert (=> b!634531 m!609049))

(declare-fun m!609055 () Bool)

(assert (=> b!634531 m!609055))

(declare-fun m!609057 () Bool)

(assert (=> b!634533 m!609057))

(assert (=> b!634541 m!609049))

(assert (=> b!634541 m!609049))

(declare-fun m!609059 () Bool)

(assert (=> b!634541 m!609059))

(assert (=> b!634541 m!609049))

(declare-fun m!609061 () Bool)

(assert (=> b!634541 m!609061))

(assert (=> b!634527 m!609049))

(assert (=> b!634527 m!609049))

(declare-fun m!609063 () Bool)

(assert (=> b!634527 m!609063))

(declare-fun m!609065 () Bool)

(assert (=> b!634539 m!609065))

(declare-fun m!609067 () Bool)

(assert (=> b!634539 m!609067))

(declare-fun m!609069 () Bool)

(assert (=> b!634535 m!609069))

(declare-fun m!609071 () Bool)

(assert (=> b!634535 m!609071))

(declare-fun m!609073 () Bool)

(assert (=> b!634535 m!609073))

(assert (=> b!634535 m!609049))

(assert (=> b!634535 m!609065))

(assert (=> b!634535 m!609049))

(declare-fun m!609075 () Bool)

(assert (=> b!634535 m!609075))

(declare-fun m!609077 () Bool)

(assert (=> b!634535 m!609077))

(declare-fun m!609079 () Bool)

(assert (=> b!634535 m!609079))

(assert (=> b!634542 m!609049))

(assert (=> b!634542 m!609049))

(declare-fun m!609081 () Bool)

(assert (=> b!634542 m!609081))

(declare-fun m!609083 () Bool)

(assert (=> b!634537 m!609083))

(declare-fun m!609085 () Bool)

(assert (=> b!634544 m!609085))

(assert (=> b!634528 m!609049))

(assert (=> b!634528 m!609065))

(declare-fun m!609087 () Bool)

(assert (=> b!634528 m!609087))

(declare-fun m!609089 () Bool)

(assert (=> b!634534 m!609089))

(assert (=> b!634532 m!609049))

(declare-fun m!609091 () Bool)

(assert (=> start!57362 m!609091))

(declare-fun m!609093 () Bool)

(assert (=> start!57362 m!609093))

(declare-fun m!609095 () Bool)

(assert (=> b!634543 m!609095))

(check-sat (not b!634526) (not b!634533) (not b!634538) (not b!634527) (not b!634535) (not b!634543) (not b!634544) (not b!634542) (not start!57362) (not b!634541) (not b!634537) (not b!634531))
(check-sat)

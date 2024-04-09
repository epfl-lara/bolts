; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57100 () Bool)

(assert start!57100)

(declare-fun b!631623 () Bool)

(declare-fun res!408491 () Bool)

(declare-fun e!361128 () Bool)

(assert (=> b!631623 (=> (not res!408491) (not e!361128))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!631623 (= res!408491 (validKeyInArray!0 k!1786))))

(declare-fun b!631624 () Bool)

(declare-fun e!361129 () Bool)

(declare-fun e!361130 () Bool)

(assert (=> b!631624 (= e!361129 e!361130)))

(declare-fun res!408486 () Bool)

(assert (=> b!631624 (=> (not res!408486) (not e!361130))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!38080 0))(
  ( (array!38081 (arr!18269 (Array (_ BitVec 32) (_ BitVec 64))) (size!18633 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38080)

(assert (=> b!631624 (= res!408486 (= (select (store (arr!18269 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!291884 () array!38080)

(assert (=> b!631624 (= lt!291884 (array!38081 (store (arr!18269 a!2986) i!1108 k!1786) (size!18633 a!2986)))))

(declare-fun b!631625 () Bool)

(declare-fun res!408487 () Bool)

(assert (=> b!631625 (=> (not res!408487) (not e!361129))))

(declare-datatypes ((List!12363 0))(
  ( (Nil!12360) (Cons!12359 (h!13404 (_ BitVec 64)) (t!18599 List!12363)) )
))
(declare-fun arrayNoDuplicates!0 (array!38080 (_ BitVec 32) List!12363) Bool)

(assert (=> b!631625 (= res!408487 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12360))))

(declare-fun res!408480 () Bool)

(assert (=> start!57100 (=> (not res!408480) (not e!361128))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57100 (= res!408480 (validMask!0 mask!3053))))

(assert (=> start!57100 e!361128))

(assert (=> start!57100 true))

(declare-fun array_inv!14043 (array!38080) Bool)

(assert (=> start!57100 (array_inv!14043 a!2986)))

(declare-fun b!631626 () Bool)

(declare-fun res!408484 () Bool)

(assert (=> b!631626 (=> (not res!408484) (not e!361129))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38080 (_ BitVec 32)) Bool)

(assert (=> b!631626 (= res!408484 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!631627 () Bool)

(declare-fun e!361132 () Bool)

(declare-datatypes ((SeekEntryResult!6716 0))(
  ( (MissingZero!6716 (index!29156 (_ BitVec 32))) (Found!6716 (index!29157 (_ BitVec 32))) (Intermediate!6716 (undefined!7528 Bool) (index!29158 (_ BitVec 32)) (x!57920 (_ BitVec 32))) (Undefined!6716) (MissingVacant!6716 (index!29159 (_ BitVec 32))) )
))
(declare-fun lt!291883 () SeekEntryResult!6716)

(declare-fun lt!291881 () SeekEntryResult!6716)

(assert (=> b!631627 (= e!361132 (= lt!291883 lt!291881))))

(declare-fun b!631628 () Bool)

(assert (=> b!631628 (= e!361128 e!361129)))

(declare-fun res!408485 () Bool)

(assert (=> b!631628 (=> (not res!408485) (not e!361129))))

(declare-fun lt!291886 () SeekEntryResult!6716)

(assert (=> b!631628 (= res!408485 (or (= lt!291886 (MissingZero!6716 i!1108)) (= lt!291886 (MissingVacant!6716 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38080 (_ BitVec 32)) SeekEntryResult!6716)

(assert (=> b!631628 (= lt!291886 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!631629 () Bool)

(declare-fun e!361133 () Bool)

(assert (=> b!631629 (= e!361130 e!361133)))

(declare-fun res!408479 () Bool)

(assert (=> b!631629 (=> (not res!408479) (not e!361133))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!631629 (= res!408479 (and (= lt!291883 (Found!6716 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18269 a!2986) index!984) (select (arr!18269 a!2986) j!136))) (not (= (select (arr!18269 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38080 (_ BitVec 32)) SeekEntryResult!6716)

(assert (=> b!631629 (= lt!291883 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18269 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!631630 () Bool)

(declare-datatypes ((Unit!21222 0))(
  ( (Unit!21223) )
))
(declare-fun e!361134 () Unit!21222)

(declare-fun Unit!21224 () Unit!21222)

(assert (=> b!631630 (= e!361134 Unit!21224)))

(declare-fun b!631631 () Bool)

(declare-fun res!408490 () Bool)

(assert (=> b!631631 (=> (not res!408490) (not e!361129))))

(assert (=> b!631631 (= res!408490 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18269 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!631632 () Bool)

(declare-fun res!408483 () Bool)

(assert (=> b!631632 (=> (not res!408483) (not e!361128))))

(declare-fun arrayContainsKey!0 (array!38080 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!631632 (= res!408483 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!631633 () Bool)

(declare-fun Unit!21225 () Unit!21222)

(assert (=> b!631633 (= e!361134 Unit!21225)))

(assert (=> b!631633 false))

(declare-fun b!631634 () Bool)

(declare-fun e!361135 () Bool)

(assert (=> b!631634 (= e!361135 true)))

(assert (=> b!631634 (= (select (store (arr!18269 a!2986) i!1108 k!1786) index!984) (select (arr!18269 a!2986) j!136))))

(declare-fun b!631635 () Bool)

(declare-fun res!408481 () Bool)

(assert (=> b!631635 (=> (not res!408481) (not e!361128))))

(assert (=> b!631635 (= res!408481 (validKeyInArray!0 (select (arr!18269 a!2986) j!136)))))

(declare-fun b!631636 () Bool)

(declare-fun res!408489 () Bool)

(assert (=> b!631636 (=> (not res!408489) (not e!361128))))

(assert (=> b!631636 (= res!408489 (and (= (size!18633 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18633 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18633 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!631637 () Bool)

(assert (=> b!631637 (= e!361133 (not e!361135))))

(declare-fun res!408488 () Bool)

(assert (=> b!631637 (=> res!408488 e!361135)))

(declare-fun lt!291888 () SeekEntryResult!6716)

(assert (=> b!631637 (= res!408488 (not (= lt!291888 (Found!6716 index!984))))))

(declare-fun lt!291880 () Unit!21222)

(assert (=> b!631637 (= lt!291880 e!361134)))

(declare-fun c!71939 () Bool)

(assert (=> b!631637 (= c!71939 (= lt!291888 Undefined!6716))))

(declare-fun lt!291882 () (_ BitVec 64))

(assert (=> b!631637 (= lt!291888 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!291882 lt!291884 mask!3053))))

(assert (=> b!631637 e!361132))

(declare-fun res!408482 () Bool)

(assert (=> b!631637 (=> (not res!408482) (not e!361132))))

(declare-fun lt!291885 () (_ BitVec 32))

(assert (=> b!631637 (= res!408482 (= lt!291881 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291885 vacantSpotIndex!68 lt!291882 lt!291884 mask!3053)))))

(assert (=> b!631637 (= lt!291881 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291885 vacantSpotIndex!68 (select (arr!18269 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!631637 (= lt!291882 (select (store (arr!18269 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!291887 () Unit!21222)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38080 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21222)

(assert (=> b!631637 (= lt!291887 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!291885 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!631637 (= lt!291885 (nextIndex!0 index!984 x!910 mask!3053))))

(assert (= (and start!57100 res!408480) b!631636))

(assert (= (and b!631636 res!408489) b!631635))

(assert (= (and b!631635 res!408481) b!631623))

(assert (= (and b!631623 res!408491) b!631632))

(assert (= (and b!631632 res!408483) b!631628))

(assert (= (and b!631628 res!408485) b!631626))

(assert (= (and b!631626 res!408484) b!631625))

(assert (= (and b!631625 res!408487) b!631631))

(assert (= (and b!631631 res!408490) b!631624))

(assert (= (and b!631624 res!408486) b!631629))

(assert (= (and b!631629 res!408479) b!631637))

(assert (= (and b!631637 res!408482) b!631627))

(assert (= (and b!631637 c!71939) b!631633))

(assert (= (and b!631637 (not c!71939)) b!631630))

(assert (= (and b!631637 (not res!408488)) b!631634))

(declare-fun m!606549 () Bool)

(assert (=> b!631625 m!606549))

(declare-fun m!606551 () Bool)

(assert (=> b!631635 m!606551))

(assert (=> b!631635 m!606551))

(declare-fun m!606553 () Bool)

(assert (=> b!631635 m!606553))

(declare-fun m!606555 () Bool)

(assert (=> b!631623 m!606555))

(declare-fun m!606557 () Bool)

(assert (=> b!631629 m!606557))

(assert (=> b!631629 m!606551))

(assert (=> b!631629 m!606551))

(declare-fun m!606559 () Bool)

(assert (=> b!631629 m!606559))

(declare-fun m!606561 () Bool)

(assert (=> b!631624 m!606561))

(declare-fun m!606563 () Bool)

(assert (=> b!631624 m!606563))

(assert (=> b!631634 m!606561))

(declare-fun m!606565 () Bool)

(assert (=> b!631634 m!606565))

(assert (=> b!631634 m!606551))

(declare-fun m!606567 () Bool)

(assert (=> b!631628 m!606567))

(declare-fun m!606569 () Bool)

(assert (=> b!631637 m!606569))

(declare-fun m!606571 () Bool)

(assert (=> b!631637 m!606571))

(assert (=> b!631637 m!606551))

(assert (=> b!631637 m!606561))

(declare-fun m!606573 () Bool)

(assert (=> b!631637 m!606573))

(declare-fun m!606575 () Bool)

(assert (=> b!631637 m!606575))

(declare-fun m!606577 () Bool)

(assert (=> b!631637 m!606577))

(assert (=> b!631637 m!606551))

(declare-fun m!606579 () Bool)

(assert (=> b!631637 m!606579))

(declare-fun m!606581 () Bool)

(assert (=> start!57100 m!606581))

(declare-fun m!606583 () Bool)

(assert (=> start!57100 m!606583))

(declare-fun m!606585 () Bool)

(assert (=> b!631626 m!606585))

(declare-fun m!606587 () Bool)

(assert (=> b!631632 m!606587))

(declare-fun m!606589 () Bool)

(assert (=> b!631631 m!606589))

(push 1)


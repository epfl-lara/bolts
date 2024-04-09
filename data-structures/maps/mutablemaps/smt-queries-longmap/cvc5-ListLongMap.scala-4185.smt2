; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57096 () Bool)

(assert start!57096)

(declare-fun b!631533 () Bool)

(declare-datatypes ((Unit!21214 0))(
  ( (Unit!21215) )
))
(declare-fun e!361086 () Unit!21214)

(declare-fun Unit!21216 () Unit!21214)

(assert (=> b!631533 (= e!361086 Unit!21216)))

(declare-fun b!631534 () Bool)

(declare-fun e!361082 () Bool)

(declare-fun e!361087 () Bool)

(assert (=> b!631534 (= e!361082 (not e!361087))))

(declare-fun res!408411 () Bool)

(assert (=> b!631534 (=> res!408411 e!361087)))

(declare-datatypes ((SeekEntryResult!6714 0))(
  ( (MissingZero!6714 (index!29148 (_ BitVec 32))) (Found!6714 (index!29149 (_ BitVec 32))) (Intermediate!6714 (undefined!7526 Bool) (index!29150 (_ BitVec 32)) (x!57918 (_ BitVec 32))) (Undefined!6714) (MissingVacant!6714 (index!29151 (_ BitVec 32))) )
))
(declare-fun lt!291833 () SeekEntryResult!6714)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!631534 (= res!408411 (not (= lt!291833 (Found!6714 index!984))))))

(declare-fun lt!291827 () Unit!21214)

(assert (=> b!631534 (= lt!291827 e!361086)))

(declare-fun c!71933 () Bool)

(assert (=> b!631534 (= c!71933 (= lt!291833 Undefined!6714))))

(declare-datatypes ((array!38076 0))(
  ( (array!38077 (arr!18267 (Array (_ BitVec 32) (_ BitVec 64))) (size!18631 (_ BitVec 32))) )
))
(declare-fun lt!291832 () array!38076)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!291829 () (_ BitVec 64))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38076 (_ BitVec 32)) SeekEntryResult!6714)

(assert (=> b!631534 (= lt!291833 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!291829 lt!291832 mask!3053))))

(declare-fun e!361084 () Bool)

(assert (=> b!631534 e!361084))

(declare-fun res!408406 () Bool)

(assert (=> b!631534 (=> (not res!408406) (not e!361084))))

(declare-fun lt!291834 () SeekEntryResult!6714)

(declare-fun lt!291830 () (_ BitVec 32))

(assert (=> b!631534 (= res!408406 (= lt!291834 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291830 vacantSpotIndex!68 lt!291829 lt!291832 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun a!2986 () array!38076)

(assert (=> b!631534 (= lt!291834 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291830 vacantSpotIndex!68 (select (arr!18267 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!631534 (= lt!291829 (select (store (arr!18267 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!291826 () Unit!21214)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38076 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21214)

(assert (=> b!631534 (= lt!291826 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!291830 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!631534 (= lt!291830 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!631535 () Bool)

(assert (=> b!631535 (= e!361087 true)))

(assert (=> b!631535 (= (select (store (arr!18267 a!2986) i!1108 k!1786) index!984) (select (arr!18267 a!2986) j!136))))

(declare-fun b!631536 () Bool)

(declare-fun res!408404 () Bool)

(declare-fun e!361080 () Bool)

(assert (=> b!631536 (=> (not res!408404) (not e!361080))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!631536 (= res!408404 (validKeyInArray!0 k!1786))))

(declare-fun b!631537 () Bool)

(declare-fun res!408407 () Bool)

(assert (=> b!631537 (=> (not res!408407) (not e!361080))))

(assert (=> b!631537 (= res!408407 (validKeyInArray!0 (select (arr!18267 a!2986) j!136)))))

(declare-fun b!631538 () Bool)

(declare-fun e!361083 () Bool)

(declare-fun e!361081 () Bool)

(assert (=> b!631538 (= e!361083 e!361081)))

(declare-fun res!408413 () Bool)

(assert (=> b!631538 (=> (not res!408413) (not e!361081))))

(assert (=> b!631538 (= res!408413 (= (select (store (arr!18267 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!631538 (= lt!291832 (array!38077 (store (arr!18267 a!2986) i!1108 k!1786) (size!18631 a!2986)))))

(declare-fun b!631539 () Bool)

(assert (=> b!631539 (= e!361080 e!361083)))

(declare-fun res!408402 () Bool)

(assert (=> b!631539 (=> (not res!408402) (not e!361083))))

(declare-fun lt!291831 () SeekEntryResult!6714)

(assert (=> b!631539 (= res!408402 (or (= lt!291831 (MissingZero!6714 i!1108)) (= lt!291831 (MissingVacant!6714 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38076 (_ BitVec 32)) SeekEntryResult!6714)

(assert (=> b!631539 (= lt!291831 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!408403 () Bool)

(assert (=> start!57096 (=> (not res!408403) (not e!361080))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57096 (= res!408403 (validMask!0 mask!3053))))

(assert (=> start!57096 e!361080))

(assert (=> start!57096 true))

(declare-fun array_inv!14041 (array!38076) Bool)

(assert (=> start!57096 (array_inv!14041 a!2986)))

(declare-fun b!631540 () Bool)

(declare-fun res!408408 () Bool)

(assert (=> b!631540 (=> (not res!408408) (not e!361083))))

(assert (=> b!631540 (= res!408408 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18267 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!631541 () Bool)

(declare-fun res!408412 () Bool)

(assert (=> b!631541 (=> (not res!408412) (not e!361080))))

(declare-fun arrayContainsKey!0 (array!38076 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!631541 (= res!408412 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!631542 () Bool)

(declare-fun res!408401 () Bool)

(assert (=> b!631542 (=> (not res!408401) (not e!361080))))

(assert (=> b!631542 (= res!408401 (and (= (size!18631 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18631 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18631 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!631543 () Bool)

(declare-fun res!408409 () Bool)

(assert (=> b!631543 (=> (not res!408409) (not e!361083))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38076 (_ BitVec 32)) Bool)

(assert (=> b!631543 (= res!408409 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!631544 () Bool)

(declare-fun lt!291828 () SeekEntryResult!6714)

(assert (=> b!631544 (= e!361084 (= lt!291828 lt!291834))))

(declare-fun b!631545 () Bool)

(declare-fun res!408410 () Bool)

(assert (=> b!631545 (=> (not res!408410) (not e!361083))))

(declare-datatypes ((List!12361 0))(
  ( (Nil!12358) (Cons!12357 (h!13402 (_ BitVec 64)) (t!18597 List!12361)) )
))
(declare-fun arrayNoDuplicates!0 (array!38076 (_ BitVec 32) List!12361) Bool)

(assert (=> b!631545 (= res!408410 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12358))))

(declare-fun b!631546 () Bool)

(declare-fun Unit!21217 () Unit!21214)

(assert (=> b!631546 (= e!361086 Unit!21217)))

(assert (=> b!631546 false))

(declare-fun b!631547 () Bool)

(assert (=> b!631547 (= e!361081 e!361082)))

(declare-fun res!408405 () Bool)

(assert (=> b!631547 (=> (not res!408405) (not e!361082))))

(assert (=> b!631547 (= res!408405 (and (= lt!291828 (Found!6714 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18267 a!2986) index!984) (select (arr!18267 a!2986) j!136))) (not (= (select (arr!18267 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!631547 (= lt!291828 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18267 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!57096 res!408403) b!631542))

(assert (= (and b!631542 res!408401) b!631537))

(assert (= (and b!631537 res!408407) b!631536))

(assert (= (and b!631536 res!408404) b!631541))

(assert (= (and b!631541 res!408412) b!631539))

(assert (= (and b!631539 res!408402) b!631543))

(assert (= (and b!631543 res!408409) b!631545))

(assert (= (and b!631545 res!408410) b!631540))

(assert (= (and b!631540 res!408408) b!631538))

(assert (= (and b!631538 res!408413) b!631547))

(assert (= (and b!631547 res!408405) b!631534))

(assert (= (and b!631534 res!408406) b!631544))

(assert (= (and b!631534 c!71933) b!631546))

(assert (= (and b!631534 (not c!71933)) b!631533))

(assert (= (and b!631534 (not res!408411)) b!631535))

(declare-fun m!606465 () Bool)

(assert (=> start!57096 m!606465))

(declare-fun m!606467 () Bool)

(assert (=> start!57096 m!606467))

(declare-fun m!606469 () Bool)

(assert (=> b!631543 m!606469))

(declare-fun m!606471 () Bool)

(assert (=> b!631541 m!606471))

(declare-fun m!606473 () Bool)

(assert (=> b!631540 m!606473))

(declare-fun m!606475 () Bool)

(assert (=> b!631539 m!606475))

(declare-fun m!606477 () Bool)

(assert (=> b!631547 m!606477))

(declare-fun m!606479 () Bool)

(assert (=> b!631547 m!606479))

(assert (=> b!631547 m!606479))

(declare-fun m!606481 () Bool)

(assert (=> b!631547 m!606481))

(assert (=> b!631537 m!606479))

(assert (=> b!631537 m!606479))

(declare-fun m!606483 () Bool)

(assert (=> b!631537 m!606483))

(declare-fun m!606485 () Bool)

(assert (=> b!631534 m!606485))

(declare-fun m!606487 () Bool)

(assert (=> b!631534 m!606487))

(declare-fun m!606489 () Bool)

(assert (=> b!631534 m!606489))

(declare-fun m!606491 () Bool)

(assert (=> b!631534 m!606491))

(assert (=> b!631534 m!606479))

(assert (=> b!631534 m!606479))

(declare-fun m!606493 () Bool)

(assert (=> b!631534 m!606493))

(declare-fun m!606495 () Bool)

(assert (=> b!631534 m!606495))

(declare-fun m!606497 () Bool)

(assert (=> b!631534 m!606497))

(assert (=> b!631535 m!606489))

(declare-fun m!606499 () Bool)

(assert (=> b!631535 m!606499))

(assert (=> b!631535 m!606479))

(declare-fun m!606501 () Bool)

(assert (=> b!631545 m!606501))

(assert (=> b!631538 m!606489))

(declare-fun m!606503 () Bool)

(assert (=> b!631538 m!606503))

(declare-fun m!606505 () Bool)

(assert (=> b!631536 m!606505))

(push 1)


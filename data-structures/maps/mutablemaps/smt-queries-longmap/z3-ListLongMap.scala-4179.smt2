; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!57002 () Bool)

(assert start!57002)

(declare-fun b!630547 () Bool)

(declare-fun res!407715 () Bool)

(declare-fun e!360555 () Bool)

(assert (=> b!630547 (=> (not res!407715) (not e!360555))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38039 0))(
  ( (array!38040 (arr!18250 (Array (_ BitVec 32) (_ BitVec 64))) (size!18614 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38039)

(assert (=> b!630547 (= res!407715 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18250 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!630548 () Bool)

(declare-datatypes ((Unit!21146 0))(
  ( (Unit!21147) )
))
(declare-fun e!360553 () Unit!21146)

(declare-fun Unit!21148 () Unit!21146)

(assert (=> b!630548 (= e!360553 Unit!21148)))

(declare-fun b!630549 () Bool)

(declare-fun res!407719 () Bool)

(declare-fun e!360552 () Bool)

(assert (=> b!630549 (=> (not res!407719) (not e!360552))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!38039 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!630549 (= res!407719 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!630550 () Bool)

(declare-fun res!407718 () Bool)

(assert (=> b!630550 (=> (not res!407718) (not e!360555))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38039 (_ BitVec 32)) Bool)

(assert (=> b!630550 (= res!407718 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!630551 () Bool)

(declare-fun res!407721 () Bool)

(assert (=> b!630551 (=> (not res!407721) (not e!360555))))

(declare-datatypes ((List!12344 0))(
  ( (Nil!12341) (Cons!12340 (h!13385 (_ BitVec 64)) (t!18580 List!12344)) )
))
(declare-fun arrayNoDuplicates!0 (array!38039 (_ BitVec 32) List!12344) Bool)

(assert (=> b!630551 (= res!407721 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12341))))

(declare-fun b!630552 () Bool)

(declare-fun e!360551 () Bool)

(assert (=> b!630552 (= e!360555 e!360551)))

(declare-fun res!407723 () Bool)

(assert (=> b!630552 (=> (not res!407723) (not e!360551))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!630552 (= res!407723 (= (select (store (arr!18250 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!291295 () array!38039)

(assert (=> b!630552 (= lt!291295 (array!38040 (store (arr!18250 a!2986) i!1108 k0!1786) (size!18614 a!2986)))))

(declare-fun b!630553 () Bool)

(declare-fun e!360554 () Bool)

(assert (=> b!630553 (= e!360554 (not true))))

(declare-fun lt!291291 () Unit!21146)

(assert (=> b!630553 (= lt!291291 e!360553)))

(declare-fun c!71783 () Bool)

(declare-fun lt!291296 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!6697 0))(
  ( (MissingZero!6697 (index!29077 (_ BitVec 32))) (Found!6697 (index!29078 (_ BitVec 32))) (Intermediate!6697 (undefined!7509 Bool) (index!29079 (_ BitVec 32)) (x!57844 (_ BitVec 32))) (Undefined!6697) (MissingVacant!6697 (index!29080 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38039 (_ BitVec 32)) SeekEntryResult!6697)

(assert (=> b!630553 (= c!71783 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!291296 lt!291295 mask!3053) Undefined!6697))))

(declare-fun e!360550 () Bool)

(assert (=> b!630553 e!360550))

(declare-fun res!407725 () Bool)

(assert (=> b!630553 (=> (not res!407725) (not e!360550))))

(declare-fun lt!291293 () SeekEntryResult!6697)

(declare-fun lt!291292 () (_ BitVec 32))

(assert (=> b!630553 (= res!407725 (= lt!291293 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291292 vacantSpotIndex!68 lt!291296 lt!291295 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!630553 (= lt!291293 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291292 vacantSpotIndex!68 (select (arr!18250 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!630553 (= lt!291296 (select (store (arr!18250 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!291290 () Unit!21146)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38039 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21146)

(assert (=> b!630553 (= lt!291290 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!291292 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!630553 (= lt!291292 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!630554 () Bool)

(declare-fun lt!291294 () SeekEntryResult!6697)

(assert (=> b!630554 (= e!360550 (= lt!291294 lt!291293))))

(declare-fun b!630555 () Bool)

(declare-fun res!407722 () Bool)

(assert (=> b!630555 (=> (not res!407722) (not e!360552))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!630555 (= res!407722 (validKeyInArray!0 k0!1786))))

(declare-fun b!630556 () Bool)

(declare-fun Unit!21149 () Unit!21146)

(assert (=> b!630556 (= e!360553 Unit!21149)))

(assert (=> b!630556 false))

(declare-fun res!407724 () Bool)

(assert (=> start!57002 (=> (not res!407724) (not e!360552))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57002 (= res!407724 (validMask!0 mask!3053))))

(assert (=> start!57002 e!360552))

(assert (=> start!57002 true))

(declare-fun array_inv!14024 (array!38039) Bool)

(assert (=> start!57002 (array_inv!14024 a!2986)))

(declare-fun b!630557 () Bool)

(assert (=> b!630557 (= e!360551 e!360554)))

(declare-fun res!407716 () Bool)

(assert (=> b!630557 (=> (not res!407716) (not e!360554))))

(assert (=> b!630557 (= res!407716 (and (= lt!291294 (Found!6697 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18250 a!2986) index!984) (select (arr!18250 a!2986) j!136))) (not (= (select (arr!18250 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!630557 (= lt!291294 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18250 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!630558 () Bool)

(assert (=> b!630558 (= e!360552 e!360555)))

(declare-fun res!407726 () Bool)

(assert (=> b!630558 (=> (not res!407726) (not e!360555))))

(declare-fun lt!291297 () SeekEntryResult!6697)

(assert (=> b!630558 (= res!407726 (or (= lt!291297 (MissingZero!6697 i!1108)) (= lt!291297 (MissingVacant!6697 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38039 (_ BitVec 32)) SeekEntryResult!6697)

(assert (=> b!630558 (= lt!291297 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!630559 () Bool)

(declare-fun res!407720 () Bool)

(assert (=> b!630559 (=> (not res!407720) (not e!360552))))

(assert (=> b!630559 (= res!407720 (validKeyInArray!0 (select (arr!18250 a!2986) j!136)))))

(declare-fun b!630560 () Bool)

(declare-fun res!407717 () Bool)

(assert (=> b!630560 (=> (not res!407717) (not e!360552))))

(assert (=> b!630560 (= res!407717 (and (= (size!18614 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18614 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18614 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!57002 res!407724) b!630560))

(assert (= (and b!630560 res!407717) b!630559))

(assert (= (and b!630559 res!407720) b!630555))

(assert (= (and b!630555 res!407722) b!630549))

(assert (= (and b!630549 res!407719) b!630558))

(assert (= (and b!630558 res!407726) b!630550))

(assert (= (and b!630550 res!407718) b!630551))

(assert (= (and b!630551 res!407721) b!630547))

(assert (= (and b!630547 res!407715) b!630552))

(assert (= (and b!630552 res!407723) b!630557))

(assert (= (and b!630557 res!407716) b!630553))

(assert (= (and b!630553 res!407725) b!630554))

(assert (= (and b!630553 c!71783) b!630556))

(assert (= (and b!630553 (not c!71783)) b!630548))

(declare-fun m!605569 () Bool)

(assert (=> b!630558 m!605569))

(declare-fun m!605571 () Bool)

(assert (=> b!630553 m!605571))

(declare-fun m!605573 () Bool)

(assert (=> b!630553 m!605573))

(declare-fun m!605575 () Bool)

(assert (=> b!630553 m!605575))

(declare-fun m!605577 () Bool)

(assert (=> b!630553 m!605577))

(declare-fun m!605579 () Bool)

(assert (=> b!630553 m!605579))

(declare-fun m!605581 () Bool)

(assert (=> b!630553 m!605581))

(assert (=> b!630553 m!605577))

(declare-fun m!605583 () Bool)

(assert (=> b!630553 m!605583))

(declare-fun m!605585 () Bool)

(assert (=> b!630553 m!605585))

(declare-fun m!605587 () Bool)

(assert (=> b!630555 m!605587))

(declare-fun m!605589 () Bool)

(assert (=> start!57002 m!605589))

(declare-fun m!605591 () Bool)

(assert (=> start!57002 m!605591))

(assert (=> b!630552 m!605579))

(declare-fun m!605593 () Bool)

(assert (=> b!630552 m!605593))

(assert (=> b!630559 m!605577))

(assert (=> b!630559 m!605577))

(declare-fun m!605595 () Bool)

(assert (=> b!630559 m!605595))

(declare-fun m!605597 () Bool)

(assert (=> b!630549 m!605597))

(declare-fun m!605599 () Bool)

(assert (=> b!630557 m!605599))

(assert (=> b!630557 m!605577))

(assert (=> b!630557 m!605577))

(declare-fun m!605601 () Bool)

(assert (=> b!630557 m!605601))

(declare-fun m!605603 () Bool)

(assert (=> b!630550 m!605603))

(declare-fun m!605605 () Bool)

(assert (=> b!630551 m!605605))

(declare-fun m!605607 () Bool)

(assert (=> b!630547 m!605607))

(check-sat (not b!630555) (not b!630551) (not b!630559) (not b!630553) (not b!630557) (not b!630549) (not b!630550) (not start!57002) (not b!630558))
(check-sat)

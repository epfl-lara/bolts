; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53330 () Bool)

(assert start!53330)

(declare-fun b!579531 () Bool)

(declare-fun res!367497 () Bool)

(declare-fun e!332988 () Bool)

(assert (=> b!579531 (=> (not res!367497) (not e!332988))))

(declare-datatypes ((array!36185 0))(
  ( (array!36186 (arr!17363 (Array (_ BitVec 32) (_ BitVec 64))) (size!17727 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36185)

(declare-datatypes ((List!11457 0))(
  ( (Nil!11454) (Cons!11453 (h!12498 (_ BitVec 64)) (t!17693 List!11457)) )
))
(declare-fun arrayNoDuplicates!0 (array!36185 (_ BitVec 32) List!11457) Bool)

(assert (=> b!579531 (= res!367497 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11454))))

(declare-fun b!579532 () Bool)

(declare-fun res!367505 () Bool)

(declare-fun e!332989 () Bool)

(assert (=> b!579532 (=> (not res!367505) (not e!332989))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36185 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!579532 (= res!367505 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!579533 () Bool)

(assert (=> b!579533 (= e!332988 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5810 0))(
  ( (MissingZero!5810 (index!25467 (_ BitVec 32))) (Found!5810 (index!25468 (_ BitVec 32))) (Intermediate!5810 (undefined!6622 Bool) (index!25469 (_ BitVec 32)) (x!54378 (_ BitVec 32))) (Undefined!5810) (MissingVacant!5810 (index!25470 (_ BitVec 32))) )
))
(declare-fun lt!264508 () SeekEntryResult!5810)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36185 (_ BitVec 32)) SeekEntryResult!5810)

(assert (=> b!579533 (= lt!264508 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17363 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!367503 () Bool)

(assert (=> start!53330 (=> (not res!367503) (not e!332989))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53330 (= res!367503 (validMask!0 mask!3053))))

(assert (=> start!53330 e!332989))

(assert (=> start!53330 true))

(declare-fun array_inv!13137 (array!36185) Bool)

(assert (=> start!53330 (array_inv!13137 a!2986)))

(declare-fun b!579534 () Bool)

(declare-fun res!367498 () Bool)

(assert (=> b!579534 (=> (not res!367498) (not e!332989))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!579534 (= res!367498 (validKeyInArray!0 k!1786))))

(declare-fun b!579535 () Bool)

(declare-fun res!367501 () Bool)

(assert (=> b!579535 (=> (not res!367501) (not e!332988))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!579535 (= res!367501 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17363 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17363 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!579536 () Bool)

(declare-fun res!367502 () Bool)

(assert (=> b!579536 (=> (not res!367502) (not e!332988))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36185 (_ BitVec 32)) Bool)

(assert (=> b!579536 (= res!367502 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!579537 () Bool)

(assert (=> b!579537 (= e!332989 e!332988)))

(declare-fun res!367500 () Bool)

(assert (=> b!579537 (=> (not res!367500) (not e!332988))))

(declare-fun lt!264509 () SeekEntryResult!5810)

(assert (=> b!579537 (= res!367500 (or (= lt!264509 (MissingZero!5810 i!1108)) (= lt!264509 (MissingVacant!5810 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36185 (_ BitVec 32)) SeekEntryResult!5810)

(assert (=> b!579537 (= lt!264509 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!579538 () Bool)

(declare-fun res!367499 () Bool)

(assert (=> b!579538 (=> (not res!367499) (not e!332989))))

(assert (=> b!579538 (= res!367499 (and (= (size!17727 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17727 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17727 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!579539 () Bool)

(declare-fun res!367504 () Bool)

(assert (=> b!579539 (=> (not res!367504) (not e!332989))))

(assert (=> b!579539 (= res!367504 (validKeyInArray!0 (select (arr!17363 a!2986) j!136)))))

(assert (= (and start!53330 res!367503) b!579538))

(assert (= (and b!579538 res!367499) b!579539))

(assert (= (and b!579539 res!367504) b!579534))

(assert (= (and b!579534 res!367498) b!579532))

(assert (= (and b!579532 res!367505) b!579537))

(assert (= (and b!579537 res!367500) b!579536))

(assert (= (and b!579536 res!367502) b!579531))

(assert (= (and b!579531 res!367497) b!579535))

(assert (= (and b!579535 res!367501) b!579533))

(declare-fun m!558191 () Bool)

(assert (=> b!579531 m!558191))

(declare-fun m!558193 () Bool)

(assert (=> b!579534 m!558193))

(declare-fun m!558195 () Bool)

(assert (=> b!579537 m!558195))

(declare-fun m!558197 () Bool)

(assert (=> start!53330 m!558197))

(declare-fun m!558199 () Bool)

(assert (=> start!53330 m!558199))

(declare-fun m!558201 () Bool)

(assert (=> b!579532 m!558201))

(declare-fun m!558203 () Bool)

(assert (=> b!579535 m!558203))

(declare-fun m!558205 () Bool)

(assert (=> b!579535 m!558205))

(declare-fun m!558207 () Bool)

(assert (=> b!579535 m!558207))

(declare-fun m!558209 () Bool)

(assert (=> b!579539 m!558209))

(assert (=> b!579539 m!558209))

(declare-fun m!558211 () Bool)

(assert (=> b!579539 m!558211))

(declare-fun m!558213 () Bool)

(assert (=> b!579536 m!558213))

(assert (=> b!579533 m!558209))

(assert (=> b!579533 m!558209))

(declare-fun m!558215 () Bool)

(assert (=> b!579533 m!558215))

(push 1)

(assert (not b!579539))

(assert (not b!579537))


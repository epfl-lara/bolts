; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53320 () Bool)

(assert start!53320)

(declare-fun b!579396 () Bool)

(declare-fun e!332944 () Bool)

(assert (=> b!579396 (= e!332944 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5805 0))(
  ( (MissingZero!5805 (index!25447 (_ BitVec 32))) (Found!5805 (index!25448 (_ BitVec 32))) (Intermediate!5805 (undefined!6617 Bool) (index!25449 (_ BitVec 32)) (x!54365 (_ BitVec 32))) (Undefined!5805) (MissingVacant!5805 (index!25450 (_ BitVec 32))) )
))
(declare-fun lt!264478 () SeekEntryResult!5805)

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36175 0))(
  ( (array!36176 (arr!17358 (Array (_ BitVec 32) (_ BitVec 64))) (size!17722 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36175)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36175 (_ BitVec 32)) SeekEntryResult!5805)

(assert (=> b!579396 (= lt!264478 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17358 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!579397 () Bool)

(declare-fun res!367370 () Bool)

(declare-fun e!332943 () Bool)

(assert (=> b!579397 (=> (not res!367370) (not e!332943))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36175 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!579397 (= res!367370 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!579398 () Bool)

(declare-fun res!367362 () Bool)

(assert (=> b!579398 (=> (not res!367362) (not e!332944))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36175 (_ BitVec 32)) Bool)

(assert (=> b!579398 (= res!367362 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!579399 () Bool)

(assert (=> b!579399 (= e!332943 e!332944)))

(declare-fun res!367363 () Bool)

(assert (=> b!579399 (=> (not res!367363) (not e!332944))))

(declare-fun lt!264479 () SeekEntryResult!5805)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!579399 (= res!367363 (or (= lt!264479 (MissingZero!5805 i!1108)) (= lt!264479 (MissingVacant!5805 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36175 (_ BitVec 32)) SeekEntryResult!5805)

(assert (=> b!579399 (= lt!264479 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!579400 () Bool)

(declare-fun res!367369 () Bool)

(assert (=> b!579400 (=> (not res!367369) (not e!332943))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!579400 (= res!367369 (validKeyInArray!0 k!1786))))

(declare-fun b!579402 () Bool)

(declare-fun res!367368 () Bool)

(assert (=> b!579402 (=> (not res!367368) (not e!332943))))

(assert (=> b!579402 (= res!367368 (validKeyInArray!0 (select (arr!17358 a!2986) j!136)))))

(declare-fun b!579403 () Bool)

(declare-fun res!367365 () Bool)

(assert (=> b!579403 (=> (not res!367365) (not e!332943))))

(assert (=> b!579403 (= res!367365 (and (= (size!17722 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17722 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17722 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!579404 () Bool)

(declare-fun res!367366 () Bool)

(assert (=> b!579404 (=> (not res!367366) (not e!332944))))

(declare-datatypes ((List!11452 0))(
  ( (Nil!11449) (Cons!11448 (h!12493 (_ BitVec 64)) (t!17688 List!11452)) )
))
(declare-fun arrayNoDuplicates!0 (array!36175 (_ BitVec 32) List!11452) Bool)

(assert (=> b!579404 (= res!367366 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11449))))

(declare-fun b!579401 () Bool)

(declare-fun res!367367 () Bool)

(assert (=> b!579401 (=> (not res!367367) (not e!332944))))

(assert (=> b!579401 (= res!367367 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17358 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17358 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!367364 () Bool)

(assert (=> start!53320 (=> (not res!367364) (not e!332943))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53320 (= res!367364 (validMask!0 mask!3053))))

(assert (=> start!53320 e!332943))

(assert (=> start!53320 true))

(declare-fun array_inv!13132 (array!36175) Bool)

(assert (=> start!53320 (array_inv!13132 a!2986)))

(assert (= (and start!53320 res!367364) b!579403))

(assert (= (and b!579403 res!367365) b!579402))

(assert (= (and b!579402 res!367368) b!579400))

(assert (= (and b!579400 res!367369) b!579397))

(assert (= (and b!579397 res!367370) b!579399))

(assert (= (and b!579399 res!367363) b!579398))

(assert (= (and b!579398 res!367362) b!579404))

(assert (= (and b!579404 res!367366) b!579401))

(assert (= (and b!579401 res!367367) b!579396))

(declare-fun m!558061 () Bool)

(assert (=> b!579399 m!558061))

(declare-fun m!558063 () Bool)

(assert (=> b!579396 m!558063))

(assert (=> b!579396 m!558063))

(declare-fun m!558065 () Bool)

(assert (=> b!579396 m!558065))

(declare-fun m!558067 () Bool)

(assert (=> b!579398 m!558067))

(declare-fun m!558069 () Bool)

(assert (=> b!579401 m!558069))

(declare-fun m!558071 () Bool)

(assert (=> b!579401 m!558071))

(declare-fun m!558073 () Bool)

(assert (=> b!579401 m!558073))

(declare-fun m!558075 () Bool)

(assert (=> start!53320 m!558075))

(declare-fun m!558077 () Bool)

(assert (=> start!53320 m!558077))

(declare-fun m!558079 () Bool)

(assert (=> b!579400 m!558079))

(declare-fun m!558081 () Bool)

(assert (=> b!579397 m!558081))

(assert (=> b!579402 m!558063))

(assert (=> b!579402 m!558063))

(declare-fun m!558083 () Bool)

(assert (=> b!579402 m!558083))

(declare-fun m!558085 () Bool)

(assert (=> b!579404 m!558085))

(push 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53326 () Bool)

(assert start!53326)

(declare-fun b!579477 () Bool)

(declare-fun res!367444 () Bool)

(declare-fun e!332969 () Bool)

(assert (=> b!579477 (=> (not res!367444) (not e!332969))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36181 0))(
  ( (array!36182 (arr!17361 (Array (_ BitVec 32) (_ BitVec 64))) (size!17725 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36181)

(assert (=> b!579477 (= res!367444 (and (= (size!17725 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17725 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17725 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!579478 () Bool)

(declare-fun e!332970 () Bool)

(assert (=> b!579478 (= e!332970 false)))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5808 0))(
  ( (MissingZero!5808 (index!25459 (_ BitVec 32))) (Found!5808 (index!25460 (_ BitVec 32))) (Intermediate!5808 (undefined!6620 Bool) (index!25461 (_ BitVec 32)) (x!54376 (_ BitVec 32))) (Undefined!5808) (MissingVacant!5808 (index!25462 (_ BitVec 32))) )
))
(declare-fun lt!264497 () SeekEntryResult!5808)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36181 (_ BitVec 32)) SeekEntryResult!5808)

(assert (=> b!579478 (= lt!264497 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17361 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!579479 () Bool)

(assert (=> b!579479 (= e!332969 e!332970)))

(declare-fun res!367447 () Bool)

(assert (=> b!579479 (=> (not res!367447) (not e!332970))))

(declare-fun lt!264496 () SeekEntryResult!5808)

(assert (=> b!579479 (= res!367447 (or (= lt!264496 (MissingZero!5808 i!1108)) (= lt!264496 (MissingVacant!5808 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36181 (_ BitVec 32)) SeekEntryResult!5808)

(assert (=> b!579479 (= lt!264496 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!579480 () Bool)

(declare-fun res!367450 () Bool)

(assert (=> b!579480 (=> (not res!367450) (not e!332969))))

(declare-fun arrayContainsKey!0 (array!36181 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!579480 (= res!367450 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!579482 () Bool)

(declare-fun res!367451 () Bool)

(assert (=> b!579482 (=> (not res!367451) (not e!332970))))

(declare-datatypes ((List!11455 0))(
  ( (Nil!11452) (Cons!11451 (h!12496 (_ BitVec 64)) (t!17691 List!11455)) )
))
(declare-fun arrayNoDuplicates!0 (array!36181 (_ BitVec 32) List!11455) Bool)

(assert (=> b!579482 (= res!367451 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11452))))

(declare-fun b!579483 () Bool)

(declare-fun res!367448 () Bool)

(assert (=> b!579483 (=> (not res!367448) (not e!332969))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!579483 (= res!367448 (validKeyInArray!0 (select (arr!17361 a!2986) j!136)))))

(declare-fun b!579484 () Bool)

(declare-fun res!367446 () Bool)

(assert (=> b!579484 (=> (not res!367446) (not e!332969))))

(assert (=> b!579484 (= res!367446 (validKeyInArray!0 k!1786))))

(declare-fun b!579485 () Bool)

(declare-fun res!367445 () Bool)

(assert (=> b!579485 (=> (not res!367445) (not e!332970))))

(assert (=> b!579485 (= res!367445 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17361 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17361 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!367449 () Bool)

(assert (=> start!53326 (=> (not res!367449) (not e!332969))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53326 (= res!367449 (validMask!0 mask!3053))))

(assert (=> start!53326 e!332969))

(assert (=> start!53326 true))

(declare-fun array_inv!13135 (array!36181) Bool)

(assert (=> start!53326 (array_inv!13135 a!2986)))

(declare-fun b!579481 () Bool)

(declare-fun res!367443 () Bool)

(assert (=> b!579481 (=> (not res!367443) (not e!332970))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36181 (_ BitVec 32)) Bool)

(assert (=> b!579481 (= res!367443 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!53326 res!367449) b!579477))

(assert (= (and b!579477 res!367444) b!579483))

(assert (= (and b!579483 res!367448) b!579484))

(assert (= (and b!579484 res!367446) b!579480))

(assert (= (and b!579480 res!367450) b!579479))

(assert (= (and b!579479 res!367447) b!579481))

(assert (= (and b!579481 res!367443) b!579482))

(assert (= (and b!579482 res!367451) b!579485))

(assert (= (and b!579485 res!367445) b!579478))

(declare-fun m!558139 () Bool)

(assert (=> b!579479 m!558139))

(declare-fun m!558141 () Bool)

(assert (=> b!579481 m!558141))

(declare-fun m!558143 () Bool)

(assert (=> start!53326 m!558143))

(declare-fun m!558145 () Bool)

(assert (=> start!53326 m!558145))

(declare-fun m!558147 () Bool)

(assert (=> b!579485 m!558147))

(declare-fun m!558149 () Bool)

(assert (=> b!579485 m!558149))

(declare-fun m!558151 () Bool)

(assert (=> b!579485 m!558151))

(declare-fun m!558153 () Bool)

(assert (=> b!579478 m!558153))

(assert (=> b!579478 m!558153))

(declare-fun m!558155 () Bool)

(assert (=> b!579478 m!558155))

(declare-fun m!558157 () Bool)

(assert (=> b!579484 m!558157))

(assert (=> b!579483 m!558153))

(assert (=> b!579483 m!558153))

(declare-fun m!558159 () Bool)

(assert (=> b!579483 m!558159))

(declare-fun m!558161 () Bool)

(assert (=> b!579482 m!558161))

(declare-fun m!558163 () Bool)

(assert (=> b!579480 m!558163))

(push 1)


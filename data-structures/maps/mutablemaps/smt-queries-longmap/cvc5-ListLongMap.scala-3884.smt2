; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53332 () Bool)

(assert start!53332)

(declare-fun b!579558 () Bool)

(declare-fun e!332996 () Bool)

(assert (=> b!579558 (= e!332996 false)))

(declare-datatypes ((SeekEntryResult!5811 0))(
  ( (MissingZero!5811 (index!25471 (_ BitVec 32))) (Found!5811 (index!25472 (_ BitVec 32))) (Intermediate!5811 (undefined!6623 Bool) (index!25473 (_ BitVec 32)) (x!54387 (_ BitVec 32))) (Undefined!5811) (MissingVacant!5811 (index!25474 (_ BitVec 32))) )
))
(declare-fun lt!264514 () SeekEntryResult!5811)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36187 0))(
  ( (array!36188 (arr!17364 (Array (_ BitVec 32) (_ BitVec 64))) (size!17728 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36187)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36187 (_ BitVec 32)) SeekEntryResult!5811)

(assert (=> b!579558 (= lt!264514 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17364 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!579559 () Bool)

(declare-fun res!367532 () Bool)

(assert (=> b!579559 (=> (not res!367532) (not e!332996))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!579559 (= res!367532 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17364 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17364 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!579560 () Bool)

(declare-fun res!367529 () Bool)

(declare-fun e!332998 () Bool)

(assert (=> b!579560 (=> (not res!367529) (not e!332998))))

(assert (=> b!579560 (= res!367529 (and (= (size!17728 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17728 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17728 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!579561 () Bool)

(declare-fun res!367527 () Bool)

(assert (=> b!579561 (=> (not res!367527) (not e!332996))))

(declare-datatypes ((List!11458 0))(
  ( (Nil!11455) (Cons!11454 (h!12499 (_ BitVec 64)) (t!17694 List!11458)) )
))
(declare-fun arrayNoDuplicates!0 (array!36187 (_ BitVec 32) List!11458) Bool)

(assert (=> b!579561 (= res!367527 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11455))))

(declare-fun res!367528 () Bool)

(assert (=> start!53332 (=> (not res!367528) (not e!332998))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53332 (= res!367528 (validMask!0 mask!3053))))

(assert (=> start!53332 e!332998))

(assert (=> start!53332 true))

(declare-fun array_inv!13138 (array!36187) Bool)

(assert (=> start!53332 (array_inv!13138 a!2986)))

(declare-fun b!579562 () Bool)

(declare-fun res!367530 () Bool)

(assert (=> b!579562 (=> (not res!367530) (not e!332998))))

(declare-fun arrayContainsKey!0 (array!36187 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!579562 (= res!367530 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!579563 () Bool)

(declare-fun res!367525 () Bool)

(assert (=> b!579563 (=> (not res!367525) (not e!332998))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!579563 (= res!367525 (validKeyInArray!0 k!1786))))

(declare-fun b!579564 () Bool)

(declare-fun res!367526 () Bool)

(assert (=> b!579564 (=> (not res!367526) (not e!332996))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36187 (_ BitVec 32)) Bool)

(assert (=> b!579564 (= res!367526 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!579565 () Bool)

(declare-fun res!367531 () Bool)

(assert (=> b!579565 (=> (not res!367531) (not e!332998))))

(assert (=> b!579565 (= res!367531 (validKeyInArray!0 (select (arr!17364 a!2986) j!136)))))

(declare-fun b!579566 () Bool)

(assert (=> b!579566 (= e!332998 e!332996)))

(declare-fun res!367524 () Bool)

(assert (=> b!579566 (=> (not res!367524) (not e!332996))))

(declare-fun lt!264515 () SeekEntryResult!5811)

(assert (=> b!579566 (= res!367524 (or (= lt!264515 (MissingZero!5811 i!1108)) (= lt!264515 (MissingVacant!5811 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36187 (_ BitVec 32)) SeekEntryResult!5811)

(assert (=> b!579566 (= lt!264515 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!53332 res!367528) b!579560))

(assert (= (and b!579560 res!367529) b!579565))

(assert (= (and b!579565 res!367531) b!579563))

(assert (= (and b!579563 res!367525) b!579562))

(assert (= (and b!579562 res!367530) b!579566))

(assert (= (and b!579566 res!367524) b!579564))

(assert (= (and b!579564 res!367526) b!579561))

(assert (= (and b!579561 res!367527) b!579559))

(assert (= (and b!579559 res!367532) b!579558))

(declare-fun m!558217 () Bool)

(assert (=> b!579564 m!558217))

(declare-fun m!558219 () Bool)

(assert (=> b!579566 m!558219))

(declare-fun m!558221 () Bool)

(assert (=> b!579559 m!558221))

(declare-fun m!558223 () Bool)

(assert (=> b!579559 m!558223))

(declare-fun m!558225 () Bool)

(assert (=> b!579559 m!558225))

(declare-fun m!558227 () Bool)

(assert (=> b!579565 m!558227))

(assert (=> b!579565 m!558227))

(declare-fun m!558229 () Bool)

(assert (=> b!579565 m!558229))

(assert (=> b!579558 m!558227))

(assert (=> b!579558 m!558227))

(declare-fun m!558231 () Bool)

(assert (=> b!579558 m!558231))

(declare-fun m!558233 () Bool)

(assert (=> start!53332 m!558233))

(declare-fun m!558235 () Bool)

(assert (=> start!53332 m!558235))

(declare-fun m!558237 () Bool)

(assert (=> b!579562 m!558237))

(declare-fun m!558239 () Bool)

(assert (=> b!579561 m!558239))

(declare-fun m!558241 () Bool)

(assert (=> b!579563 m!558241))

(push 1)


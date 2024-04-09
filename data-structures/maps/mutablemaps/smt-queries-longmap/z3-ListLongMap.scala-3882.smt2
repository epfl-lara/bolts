; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53322 () Bool)

(assert start!53322)

(declare-fun b!579423 () Bool)

(declare-fun e!332952 () Bool)

(declare-fun e!332953 () Bool)

(assert (=> b!579423 (= e!332952 e!332953)))

(declare-fun res!367394 () Bool)

(assert (=> b!579423 (=> (not res!367394) (not e!332953))))

(declare-datatypes ((SeekEntryResult!5806 0))(
  ( (MissingZero!5806 (index!25451 (_ BitVec 32))) (Found!5806 (index!25452 (_ BitVec 32))) (Intermediate!5806 (undefined!6618 Bool) (index!25453 (_ BitVec 32)) (x!54366 (_ BitVec 32))) (Undefined!5806) (MissingVacant!5806 (index!25454 (_ BitVec 32))) )
))
(declare-fun lt!264485 () SeekEntryResult!5806)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!579423 (= res!367394 (or (= lt!264485 (MissingZero!5806 i!1108)) (= lt!264485 (MissingVacant!5806 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-datatypes ((array!36177 0))(
  ( (array!36178 (arr!17359 (Array (_ BitVec 32) (_ BitVec 64))) (size!17723 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36177)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36177 (_ BitVec 32)) SeekEntryResult!5806)

(assert (=> b!579423 (= lt!264485 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!579424 () Bool)

(declare-fun res!367396 () Bool)

(assert (=> b!579424 (=> (not res!367396) (not e!332952))))

(declare-fun arrayContainsKey!0 (array!36177 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!579424 (= res!367396 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun res!367390 () Bool)

(assert (=> start!53322 (=> (not res!367390) (not e!332952))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53322 (= res!367390 (validMask!0 mask!3053))))

(assert (=> start!53322 e!332952))

(assert (=> start!53322 true))

(declare-fun array_inv!13133 (array!36177) Bool)

(assert (=> start!53322 (array_inv!13133 a!2986)))

(declare-fun b!579425 () Bool)

(declare-fun res!367389 () Bool)

(assert (=> b!579425 (=> (not res!367389) (not e!332953))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!579425 (= res!367389 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17359 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17359 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!579426 () Bool)

(declare-fun res!367395 () Bool)

(assert (=> b!579426 (=> (not res!367395) (not e!332953))))

(declare-datatypes ((List!11453 0))(
  ( (Nil!11450) (Cons!11449 (h!12494 (_ BitVec 64)) (t!17689 List!11453)) )
))
(declare-fun arrayNoDuplicates!0 (array!36177 (_ BitVec 32) List!11453) Bool)

(assert (=> b!579426 (= res!367395 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11450))))

(declare-fun b!579427 () Bool)

(declare-fun res!367397 () Bool)

(assert (=> b!579427 (=> (not res!367397) (not e!332953))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36177 (_ BitVec 32)) Bool)

(assert (=> b!579427 (= res!367397 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!579428 () Bool)

(assert (=> b!579428 (= e!332953 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!264484 () SeekEntryResult!5806)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36177 (_ BitVec 32)) SeekEntryResult!5806)

(assert (=> b!579428 (= lt!264484 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17359 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!579429 () Bool)

(declare-fun res!367392 () Bool)

(assert (=> b!579429 (=> (not res!367392) (not e!332952))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!579429 (= res!367392 (validKeyInArray!0 (select (arr!17359 a!2986) j!136)))))

(declare-fun b!579430 () Bool)

(declare-fun res!367391 () Bool)

(assert (=> b!579430 (=> (not res!367391) (not e!332952))))

(assert (=> b!579430 (= res!367391 (validKeyInArray!0 k0!1786))))

(declare-fun b!579431 () Bool)

(declare-fun res!367393 () Bool)

(assert (=> b!579431 (=> (not res!367393) (not e!332952))))

(assert (=> b!579431 (= res!367393 (and (= (size!17723 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17723 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17723 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!53322 res!367390) b!579431))

(assert (= (and b!579431 res!367393) b!579429))

(assert (= (and b!579429 res!367392) b!579430))

(assert (= (and b!579430 res!367391) b!579424))

(assert (= (and b!579424 res!367396) b!579423))

(assert (= (and b!579423 res!367394) b!579427))

(assert (= (and b!579427 res!367397) b!579426))

(assert (= (and b!579426 res!367395) b!579425))

(assert (= (and b!579425 res!367389) b!579428))

(declare-fun m!558087 () Bool)

(assert (=> b!579426 m!558087))

(declare-fun m!558089 () Bool)

(assert (=> b!579423 m!558089))

(declare-fun m!558091 () Bool)

(assert (=> b!579425 m!558091))

(declare-fun m!558093 () Bool)

(assert (=> b!579425 m!558093))

(declare-fun m!558095 () Bool)

(assert (=> b!579425 m!558095))

(declare-fun m!558097 () Bool)

(assert (=> b!579430 m!558097))

(declare-fun m!558099 () Bool)

(assert (=> b!579428 m!558099))

(assert (=> b!579428 m!558099))

(declare-fun m!558101 () Bool)

(assert (=> b!579428 m!558101))

(declare-fun m!558103 () Bool)

(assert (=> b!579427 m!558103))

(declare-fun m!558105 () Bool)

(assert (=> start!53322 m!558105))

(declare-fun m!558107 () Bool)

(assert (=> start!53322 m!558107))

(assert (=> b!579429 m!558099))

(assert (=> b!579429 m!558099))

(declare-fun m!558109 () Bool)

(assert (=> b!579429 m!558109))

(declare-fun m!558111 () Bool)

(assert (=> b!579424 m!558111))

(check-sat (not b!579426) (not b!579427) (not b!579428) (not b!579424) (not b!579423) (not b!579430) (not b!579429) (not start!53322))
(check-sat)

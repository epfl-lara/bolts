; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53324 () Bool)

(assert start!53324)

(declare-fun b!579450 () Bool)

(declare-fun res!367419 () Bool)

(declare-fun e!332960 () Bool)

(assert (=> b!579450 (=> (not res!367419) (not e!332960))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36179 0))(
  ( (array!36180 (arr!17360 (Array (_ BitVec 32) (_ BitVec 64))) (size!17724 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36179)

(assert (=> b!579450 (= res!367419 (and (= (size!17724 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17724 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17724 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!579451 () Bool)

(declare-fun res!367417 () Bool)

(declare-fun e!332962 () Bool)

(assert (=> b!579451 (=> (not res!367417) (not e!332962))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!579451 (= res!367417 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17360 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17360 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!579452 () Bool)

(assert (=> b!579452 (= e!332962 false)))

(declare-datatypes ((SeekEntryResult!5807 0))(
  ( (MissingZero!5807 (index!25455 (_ BitVec 32))) (Found!5807 (index!25456 (_ BitVec 32))) (Intermediate!5807 (undefined!6619 Bool) (index!25457 (_ BitVec 32)) (x!54367 (_ BitVec 32))) (Undefined!5807) (MissingVacant!5807 (index!25458 (_ BitVec 32))) )
))
(declare-fun lt!264490 () SeekEntryResult!5807)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36179 (_ BitVec 32)) SeekEntryResult!5807)

(assert (=> b!579452 (= lt!264490 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17360 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!579453 () Bool)

(declare-fun res!367422 () Bool)

(assert (=> b!579453 (=> (not res!367422) (not e!332960))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!579453 (= res!367422 (validKeyInArray!0 (select (arr!17360 a!2986) j!136)))))

(declare-fun b!579454 () Bool)

(declare-fun res!367420 () Bool)

(assert (=> b!579454 (=> (not res!367420) (not e!332960))))

(assert (=> b!579454 (= res!367420 (validKeyInArray!0 k!1786))))

(declare-fun b!579455 () Bool)

(assert (=> b!579455 (= e!332960 e!332962)))

(declare-fun res!367416 () Bool)

(assert (=> b!579455 (=> (not res!367416) (not e!332962))))

(declare-fun lt!264491 () SeekEntryResult!5807)

(assert (=> b!579455 (= res!367416 (or (= lt!264491 (MissingZero!5807 i!1108)) (= lt!264491 (MissingVacant!5807 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36179 (_ BitVec 32)) SeekEntryResult!5807)

(assert (=> b!579455 (= lt!264491 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!579456 () Bool)

(declare-fun res!367418 () Bool)

(assert (=> b!579456 (=> (not res!367418) (not e!332962))))

(declare-datatypes ((List!11454 0))(
  ( (Nil!11451) (Cons!11450 (h!12495 (_ BitVec 64)) (t!17690 List!11454)) )
))
(declare-fun arrayNoDuplicates!0 (array!36179 (_ BitVec 32) List!11454) Bool)

(assert (=> b!579456 (= res!367418 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11451))))

(declare-fun b!579457 () Bool)

(declare-fun res!367423 () Bool)

(assert (=> b!579457 (=> (not res!367423) (not e!332962))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36179 (_ BitVec 32)) Bool)

(assert (=> b!579457 (= res!367423 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!367421 () Bool)

(assert (=> start!53324 (=> (not res!367421) (not e!332960))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53324 (= res!367421 (validMask!0 mask!3053))))

(assert (=> start!53324 e!332960))

(assert (=> start!53324 true))

(declare-fun array_inv!13134 (array!36179) Bool)

(assert (=> start!53324 (array_inv!13134 a!2986)))

(declare-fun b!579458 () Bool)

(declare-fun res!367424 () Bool)

(assert (=> b!579458 (=> (not res!367424) (not e!332960))))

(declare-fun arrayContainsKey!0 (array!36179 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!579458 (= res!367424 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!53324 res!367421) b!579450))

(assert (= (and b!579450 res!367419) b!579453))

(assert (= (and b!579453 res!367422) b!579454))

(assert (= (and b!579454 res!367420) b!579458))

(assert (= (and b!579458 res!367424) b!579455))

(assert (= (and b!579455 res!367416) b!579457))

(assert (= (and b!579457 res!367423) b!579456))

(assert (= (and b!579456 res!367418) b!579451))

(assert (= (and b!579451 res!367417) b!579452))

(declare-fun m!558113 () Bool)

(assert (=> start!53324 m!558113))

(declare-fun m!558115 () Bool)

(assert (=> start!53324 m!558115))

(declare-fun m!558117 () Bool)

(assert (=> b!579455 m!558117))

(declare-fun m!558119 () Bool)

(assert (=> b!579458 m!558119))

(declare-fun m!558121 () Bool)

(assert (=> b!579454 m!558121))

(declare-fun m!558123 () Bool)

(assert (=> b!579457 m!558123))

(declare-fun m!558125 () Bool)

(assert (=> b!579451 m!558125))

(declare-fun m!558127 () Bool)

(assert (=> b!579451 m!558127))

(declare-fun m!558129 () Bool)

(assert (=> b!579451 m!558129))

(declare-fun m!558131 () Bool)

(assert (=> b!579453 m!558131))

(assert (=> b!579453 m!558131))

(declare-fun m!558133 () Bool)

(assert (=> b!579453 m!558133))

(declare-fun m!558135 () Bool)

(assert (=> b!579456 m!558135))

(assert (=> b!579452 m!558131))

(assert (=> b!579452 m!558131))

(declare-fun m!558137 () Bool)

(assert (=> b!579452 m!558137))

(push 1)

(assert (not b!579458))

(assert (not start!53324))


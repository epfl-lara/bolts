; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53318 () Bool)

(assert start!53318)

(declare-fun b!579369 () Bool)

(declare-fun res!367341 () Bool)

(declare-fun e!332933 () Bool)

(assert (=> b!579369 (=> (not res!367341) (not e!332933))))

(declare-datatypes ((array!36173 0))(
  ( (array!36174 (arr!17357 (Array (_ BitVec 32) (_ BitVec 64))) (size!17721 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36173)

(declare-datatypes ((List!11451 0))(
  ( (Nil!11448) (Cons!11447 (h!12492 (_ BitVec 64)) (t!17687 List!11451)) )
))
(declare-fun arrayNoDuplicates!0 (array!36173 (_ BitVec 32) List!11451) Bool)

(assert (=> b!579369 (= res!367341 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11448))))

(declare-fun b!579370 () Bool)

(declare-fun res!367337 () Bool)

(declare-fun e!332934 () Bool)

(assert (=> b!579370 (=> (not res!367337) (not e!332934))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!579370 (= res!367337 (and (= (size!17721 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17721 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17721 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!579371 () Bool)

(declare-fun res!367338 () Bool)

(assert (=> b!579371 (=> (not res!367338) (not e!332934))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!579371 (= res!367338 (validKeyInArray!0 (select (arr!17357 a!2986) j!136)))))

(declare-fun b!579372 () Bool)

(declare-fun res!367340 () Bool)

(assert (=> b!579372 (=> (not res!367340) (not e!332934))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36173 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!579372 (= res!367340 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!579373 () Bool)

(declare-fun res!367336 () Bool)

(assert (=> b!579373 (=> (not res!367336) (not e!332933))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36173 (_ BitVec 32)) Bool)

(assert (=> b!579373 (= res!367336 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!579374 () Bool)

(declare-fun res!367342 () Bool)

(assert (=> b!579374 (=> (not res!367342) (not e!332933))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!579374 (= res!367342 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17357 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17357 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!579375 () Bool)

(assert (=> b!579375 (= e!332934 e!332933)))

(declare-fun res!367343 () Bool)

(assert (=> b!579375 (=> (not res!367343) (not e!332933))))

(declare-datatypes ((SeekEntryResult!5804 0))(
  ( (MissingZero!5804 (index!25443 (_ BitVec 32))) (Found!5804 (index!25444 (_ BitVec 32))) (Intermediate!5804 (undefined!6616 Bool) (index!25445 (_ BitVec 32)) (x!54356 (_ BitVec 32))) (Undefined!5804) (MissingVacant!5804 (index!25446 (_ BitVec 32))) )
))
(declare-fun lt!264473 () SeekEntryResult!5804)

(assert (=> b!579375 (= res!367343 (or (= lt!264473 (MissingZero!5804 i!1108)) (= lt!264473 (MissingVacant!5804 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36173 (_ BitVec 32)) SeekEntryResult!5804)

(assert (=> b!579375 (= lt!264473 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!367339 () Bool)

(assert (=> start!53318 (=> (not res!367339) (not e!332934))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53318 (= res!367339 (validMask!0 mask!3053))))

(assert (=> start!53318 e!332934))

(assert (=> start!53318 true))

(declare-fun array_inv!13131 (array!36173) Bool)

(assert (=> start!53318 (array_inv!13131 a!2986)))

(declare-fun b!579376 () Bool)

(assert (=> b!579376 (= e!332933 false)))

(declare-fun lt!264472 () SeekEntryResult!5804)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36173 (_ BitVec 32)) SeekEntryResult!5804)

(assert (=> b!579376 (= lt!264472 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17357 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!579377 () Bool)

(declare-fun res!367335 () Bool)

(assert (=> b!579377 (=> (not res!367335) (not e!332934))))

(assert (=> b!579377 (= res!367335 (validKeyInArray!0 k!1786))))

(assert (= (and start!53318 res!367339) b!579370))

(assert (= (and b!579370 res!367337) b!579371))

(assert (= (and b!579371 res!367338) b!579377))

(assert (= (and b!579377 res!367335) b!579372))

(assert (= (and b!579372 res!367340) b!579375))

(assert (= (and b!579375 res!367343) b!579373))

(assert (= (and b!579373 res!367336) b!579369))

(assert (= (and b!579369 res!367341) b!579374))

(assert (= (and b!579374 res!367342) b!579376))

(declare-fun m!558035 () Bool)

(assert (=> b!579377 m!558035))

(declare-fun m!558037 () Bool)

(assert (=> b!579373 m!558037))

(declare-fun m!558039 () Bool)

(assert (=> b!579369 m!558039))

(declare-fun m!558041 () Bool)

(assert (=> b!579371 m!558041))

(assert (=> b!579371 m!558041))

(declare-fun m!558043 () Bool)

(assert (=> b!579371 m!558043))

(declare-fun m!558045 () Bool)

(assert (=> b!579375 m!558045))

(assert (=> b!579376 m!558041))

(assert (=> b!579376 m!558041))

(declare-fun m!558047 () Bool)

(assert (=> b!579376 m!558047))

(declare-fun m!558049 () Bool)

(assert (=> b!579372 m!558049))

(declare-fun m!558051 () Bool)

(assert (=> b!579374 m!558051))

(declare-fun m!558053 () Bool)

(assert (=> b!579374 m!558053))

(declare-fun m!558055 () Bool)

(assert (=> b!579374 m!558055))

(declare-fun m!558057 () Bool)

(assert (=> start!53318 m!558057))

(declare-fun m!558059 () Bool)

(assert (=> start!53318 m!558059))

(push 1)

(assert (not b!579369))

(assert (not b!579372))

(assert (not b!579377))

(assert (not b!579376))

(assert (not b!579375))

(assert (not b!579371))

(assert (not b!579373))

(assert (not start!53318))

(check-sat)


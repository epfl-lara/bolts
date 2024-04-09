; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53314 () Bool)

(assert start!53314)

(declare-fun b!579315 () Bool)

(declare-fun res!367286 () Bool)

(declare-fun e!332915 () Bool)

(assert (=> b!579315 (=> (not res!367286) (not e!332915))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36169 0))(
  ( (array!36170 (arr!17355 (Array (_ BitVec 32) (_ BitVec 64))) (size!17719 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36169)

(assert (=> b!579315 (= res!367286 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17355 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17355 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!579316 () Bool)

(assert (=> b!579316 (= e!332915 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5802 0))(
  ( (MissingZero!5802 (index!25435 (_ BitVec 32))) (Found!5802 (index!25436 (_ BitVec 32))) (Intermediate!5802 (undefined!6614 Bool) (index!25437 (_ BitVec 32)) (x!54354 (_ BitVec 32))) (Undefined!5802) (MissingVacant!5802 (index!25438 (_ BitVec 32))) )
))
(declare-fun lt!264461 () SeekEntryResult!5802)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36169 (_ BitVec 32)) SeekEntryResult!5802)

(assert (=> b!579316 (= lt!264461 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17355 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!579317 () Bool)

(declare-fun e!332916 () Bool)

(assert (=> b!579317 (= e!332916 e!332915)))

(declare-fun res!367281 () Bool)

(assert (=> b!579317 (=> (not res!367281) (not e!332915))))

(declare-fun lt!264460 () SeekEntryResult!5802)

(assert (=> b!579317 (= res!367281 (or (= lt!264460 (MissingZero!5802 i!1108)) (= lt!264460 (MissingVacant!5802 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36169 (_ BitVec 32)) SeekEntryResult!5802)

(assert (=> b!579317 (= lt!264460 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!579318 () Bool)

(declare-fun res!367284 () Bool)

(assert (=> b!579318 (=> (not res!367284) (not e!332915))))

(declare-datatypes ((List!11449 0))(
  ( (Nil!11446) (Cons!11445 (h!12490 (_ BitVec 64)) (t!17685 List!11449)) )
))
(declare-fun arrayNoDuplicates!0 (array!36169 (_ BitVec 32) List!11449) Bool)

(assert (=> b!579318 (= res!367284 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11446))))

(declare-fun res!367288 () Bool)

(assert (=> start!53314 (=> (not res!367288) (not e!332916))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53314 (= res!367288 (validMask!0 mask!3053))))

(assert (=> start!53314 e!332916))

(assert (=> start!53314 true))

(declare-fun array_inv!13129 (array!36169) Bool)

(assert (=> start!53314 (array_inv!13129 a!2986)))

(declare-fun b!579319 () Bool)

(declare-fun res!367283 () Bool)

(assert (=> b!579319 (=> (not res!367283) (not e!332916))))

(declare-fun arrayContainsKey!0 (array!36169 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!579319 (= res!367283 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!579320 () Bool)

(declare-fun res!367289 () Bool)

(assert (=> b!579320 (=> (not res!367289) (not e!332916))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!579320 (= res!367289 (validKeyInArray!0 (select (arr!17355 a!2986) j!136)))))

(declare-fun b!579321 () Bool)

(declare-fun res!367285 () Bool)

(assert (=> b!579321 (=> (not res!367285) (not e!332916))))

(assert (=> b!579321 (= res!367285 (and (= (size!17719 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17719 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17719 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!579322 () Bool)

(declare-fun res!367287 () Bool)

(assert (=> b!579322 (=> (not res!367287) (not e!332916))))

(assert (=> b!579322 (= res!367287 (validKeyInArray!0 k!1786))))

(declare-fun b!579323 () Bool)

(declare-fun res!367282 () Bool)

(assert (=> b!579323 (=> (not res!367282) (not e!332915))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36169 (_ BitVec 32)) Bool)

(assert (=> b!579323 (= res!367282 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!53314 res!367288) b!579321))

(assert (= (and b!579321 res!367285) b!579320))

(assert (= (and b!579320 res!367289) b!579322))

(assert (= (and b!579322 res!367287) b!579319))

(assert (= (and b!579319 res!367283) b!579317))

(assert (= (and b!579317 res!367281) b!579323))

(assert (= (and b!579323 res!367282) b!579318))

(assert (= (and b!579318 res!367284) b!579315))

(assert (= (and b!579315 res!367286) b!579316))

(declare-fun m!557983 () Bool)

(assert (=> b!579323 m!557983))

(declare-fun m!557985 () Bool)

(assert (=> start!53314 m!557985))

(declare-fun m!557987 () Bool)

(assert (=> start!53314 m!557987))

(declare-fun m!557989 () Bool)

(assert (=> b!579316 m!557989))

(assert (=> b!579316 m!557989))

(declare-fun m!557991 () Bool)

(assert (=> b!579316 m!557991))

(declare-fun m!557993 () Bool)

(assert (=> b!579322 m!557993))

(assert (=> b!579320 m!557989))

(assert (=> b!579320 m!557989))

(declare-fun m!557995 () Bool)

(assert (=> b!579320 m!557995))

(declare-fun m!557997 () Bool)

(assert (=> b!579319 m!557997))

(declare-fun m!557999 () Bool)

(assert (=> b!579315 m!557999))

(declare-fun m!558001 () Bool)

(assert (=> b!579315 m!558001))

(declare-fun m!558003 () Bool)

(assert (=> b!579315 m!558003))

(declare-fun m!558005 () Bool)

(assert (=> b!579318 m!558005))

(declare-fun m!558007 () Bool)

(assert (=> b!579317 m!558007))

(push 1)


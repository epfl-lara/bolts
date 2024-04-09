; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53662 () Bool)

(assert start!53662)

(declare-fun b!584307 () Bool)

(declare-fun res!372280 () Bool)

(declare-fun e!334564 () Bool)

(assert (=> b!584307 (=> (not res!372280) (not e!334564))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!584307 (= res!372280 (validKeyInArray!0 k!1786))))

(declare-fun b!584308 () Bool)

(declare-fun res!372281 () Bool)

(declare-fun e!334566 () Bool)

(assert (=> b!584308 (=> (not res!372281) (not e!334566))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36517 0))(
  ( (array!36518 (arr!17529 (Array (_ BitVec 32) (_ BitVec 64))) (size!17893 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36517)

(declare-datatypes ((SeekEntryResult!5976 0))(
  ( (MissingZero!5976 (index!26131 (_ BitVec 32))) (Found!5976 (index!26132 (_ BitVec 32))) (Intermediate!5976 (undefined!6788 Bool) (index!26133 (_ BitVec 32)) (x!54992 (_ BitVec 32))) (Undefined!5976) (MissingVacant!5976 (index!26134 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36517 (_ BitVec 32)) SeekEntryResult!5976)

(assert (=> b!584308 (= res!372281 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17529 a!2986) j!136) a!2986 mask!3053) (Found!5976 j!136)))))

(declare-fun b!584309 () Bool)

(declare-fun res!372278 () Bool)

(assert (=> b!584309 (=> (not res!372278) (not e!334564))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!584309 (= res!372278 (and (= (size!17893 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17893 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17893 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!372283 () Bool)

(assert (=> start!53662 (=> (not res!372283) (not e!334564))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53662 (= res!372283 (validMask!0 mask!3053))))

(assert (=> start!53662 e!334564))

(assert (=> start!53662 true))

(declare-fun array_inv!13303 (array!36517) Bool)

(assert (=> start!53662 (array_inv!13303 a!2986)))

(declare-fun b!584310 () Bool)

(declare-fun res!372277 () Bool)

(assert (=> b!584310 (=> (not res!372277) (not e!334564))))

(declare-fun arrayContainsKey!0 (array!36517 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!584310 (= res!372277 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!584311 () Bool)

(assert (=> b!584311 (= e!334564 e!334566)))

(declare-fun res!372279 () Bool)

(assert (=> b!584311 (=> (not res!372279) (not e!334566))))

(declare-fun lt!265552 () SeekEntryResult!5976)

(assert (=> b!584311 (= res!372279 (or (= lt!265552 (MissingZero!5976 i!1108)) (= lt!265552 (MissingVacant!5976 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36517 (_ BitVec 32)) SeekEntryResult!5976)

(assert (=> b!584311 (= lt!265552 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!584312 () Bool)

(declare-fun e!334567 () Bool)

(assert (=> b!584312 (= e!334567 false)))

(declare-fun lt!265553 () (_ BitVec 32))

(declare-fun lt!265551 () SeekEntryResult!5976)

(assert (=> b!584312 (= lt!265551 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265553 vacantSpotIndex!68 (select (arr!17529 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!584313 () Bool)

(declare-fun res!372276 () Bool)

(assert (=> b!584313 (=> (not res!372276) (not e!334566))))

(declare-datatypes ((List!11623 0))(
  ( (Nil!11620) (Cons!11619 (h!12664 (_ BitVec 64)) (t!17859 List!11623)) )
))
(declare-fun arrayNoDuplicates!0 (array!36517 (_ BitVec 32) List!11623) Bool)

(assert (=> b!584313 (= res!372276 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11620))))

(declare-fun b!584314 () Bool)

(declare-fun res!372273 () Bool)

(assert (=> b!584314 (=> (not res!372273) (not e!334566))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36517 (_ BitVec 32)) Bool)

(assert (=> b!584314 (= res!372273 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!584315 () Bool)

(assert (=> b!584315 (= e!334566 e!334567)))

(declare-fun res!372275 () Bool)

(assert (=> b!584315 (=> (not res!372275) (not e!334567))))

(assert (=> b!584315 (= res!372275 (and (bvsge lt!265553 #b00000000000000000000000000000000) (bvslt lt!265553 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!584315 (= lt!265553 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!584316 () Bool)

(declare-fun res!372282 () Bool)

(assert (=> b!584316 (=> (not res!372282) (not e!334566))))

(assert (=> b!584316 (= res!372282 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17529 a!2986) index!984) (select (arr!17529 a!2986) j!136))) (not (= (select (arr!17529 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!584317 () Bool)

(declare-fun res!372274 () Bool)

(assert (=> b!584317 (=> (not res!372274) (not e!334564))))

(assert (=> b!584317 (= res!372274 (validKeyInArray!0 (select (arr!17529 a!2986) j!136)))))

(declare-fun b!584318 () Bool)

(declare-fun res!372284 () Bool)

(assert (=> b!584318 (=> (not res!372284) (not e!334566))))

(assert (=> b!584318 (= res!372284 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17529 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17529 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!53662 res!372283) b!584309))

(assert (= (and b!584309 res!372278) b!584317))

(assert (= (and b!584317 res!372274) b!584307))

(assert (= (and b!584307 res!372280) b!584310))

(assert (= (and b!584310 res!372277) b!584311))

(assert (= (and b!584311 res!372279) b!584314))

(assert (= (and b!584314 res!372273) b!584313))

(assert (= (and b!584313 res!372276) b!584318))

(assert (= (and b!584318 res!372284) b!584308))

(assert (= (and b!584308 res!372281) b!584316))

(assert (= (and b!584316 res!372282) b!584315))

(assert (= (and b!584315 res!372275) b!584312))

(declare-fun m!562705 () Bool)

(assert (=> b!584316 m!562705))

(declare-fun m!562707 () Bool)

(assert (=> b!584316 m!562707))

(declare-fun m!562709 () Bool)

(assert (=> b!584310 m!562709))

(declare-fun m!562711 () Bool)

(assert (=> b!584313 m!562711))

(declare-fun m!562713 () Bool)

(assert (=> b!584314 m!562713))

(declare-fun m!562715 () Bool)

(assert (=> b!584307 m!562715))

(assert (=> b!584312 m!562707))

(assert (=> b!584312 m!562707))

(declare-fun m!562717 () Bool)

(assert (=> b!584312 m!562717))

(assert (=> b!584308 m!562707))

(assert (=> b!584308 m!562707))

(declare-fun m!562719 () Bool)

(assert (=> b!584308 m!562719))

(declare-fun m!562721 () Bool)

(assert (=> b!584311 m!562721))

(declare-fun m!562723 () Bool)

(assert (=> b!584318 m!562723))

(declare-fun m!562725 () Bool)

(assert (=> b!584318 m!562725))

(declare-fun m!562727 () Bool)

(assert (=> b!584318 m!562727))

(declare-fun m!562729 () Bool)

(assert (=> b!584315 m!562729))

(assert (=> b!584317 m!562707))

(assert (=> b!584317 m!562707))

(declare-fun m!562731 () Bool)

(assert (=> b!584317 m!562731))

(declare-fun m!562733 () Bool)

(assert (=> start!53662 m!562733))

(declare-fun m!562735 () Bool)

(assert (=> start!53662 m!562735))

(push 1)


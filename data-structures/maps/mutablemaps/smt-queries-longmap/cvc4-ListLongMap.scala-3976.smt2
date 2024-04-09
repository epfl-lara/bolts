; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53948 () Bool)

(assert start!53948)

(declare-fun b!588384 () Bool)

(declare-fun e!335986 () Bool)

(declare-fun e!335981 () Bool)

(assert (=> b!588384 (= e!335986 e!335981)))

(declare-fun res!376178 () Bool)

(assert (=> b!588384 (=> (not res!376178) (not e!335981))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6089 0))(
  ( (MissingZero!6089 (index!26586 (_ BitVec 32))) (Found!6089 (index!26587 (_ BitVec 32))) (Intermediate!6089 (undefined!6901 Bool) (index!26588 (_ BitVec 32)) (x!55410 (_ BitVec 32))) (Undefined!6089) (MissingVacant!6089 (index!26589 (_ BitVec 32))) )
))
(declare-fun lt!266815 () SeekEntryResult!6089)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36746 0))(
  ( (array!36747 (arr!17642 (Array (_ BitVec 32) (_ BitVec 64))) (size!18006 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36746)

(assert (=> b!588384 (= res!376178 (and (= lt!266815 (Found!6089 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17642 a!2986) index!984) (select (arr!17642 a!2986) j!136))) (not (= (select (arr!17642 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36746 (_ BitVec 32)) SeekEntryResult!6089)

(assert (=> b!588384 (= lt!266815 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17642 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!376174 () Bool)

(declare-fun e!335983 () Bool)

(assert (=> start!53948 (=> (not res!376174) (not e!335983))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53948 (= res!376174 (validMask!0 mask!3053))))

(assert (=> start!53948 e!335983))

(assert (=> start!53948 true))

(declare-fun array_inv!13416 (array!36746) Bool)

(assert (=> start!53948 (array_inv!13416 a!2986)))

(declare-fun b!588385 () Bool)

(declare-fun res!376179 () Bool)

(assert (=> b!588385 (=> (not res!376179) (not e!335983))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!588385 (= res!376179 (and (= (size!18006 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18006 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18006 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!588386 () Bool)

(declare-fun res!376176 () Bool)

(assert (=> b!588386 (=> (not res!376176) (not e!335986))))

(declare-datatypes ((List!11736 0))(
  ( (Nil!11733) (Cons!11732 (h!12777 (_ BitVec 64)) (t!17972 List!11736)) )
))
(declare-fun arrayNoDuplicates!0 (array!36746 (_ BitVec 32) List!11736) Bool)

(assert (=> b!588386 (= res!376176 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11733))))

(declare-fun b!588387 () Bool)

(declare-fun res!376171 () Bool)

(assert (=> b!588387 (=> (not res!376171) (not e!335983))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36746 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!588387 (= res!376171 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!588388 () Bool)

(declare-fun e!335982 () Bool)

(assert (=> b!588388 (= e!335981 (not e!335982))))

(declare-fun res!376173 () Bool)

(assert (=> b!588388 (=> res!376173 e!335982)))

(assert (=> b!588388 (= res!376173 (bvslt mask!3053 #b00000000000000000000000000000000))))

(declare-fun e!335985 () Bool)

(assert (=> b!588388 e!335985))

(declare-fun res!376177 () Bool)

(assert (=> b!588388 (=> (not res!376177) (not e!335985))))

(declare-fun lt!266814 () SeekEntryResult!6089)

(declare-fun lt!266812 () (_ BitVec 32))

(assert (=> b!588388 (= res!376177 (= lt!266814 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266812 vacantSpotIndex!68 (select (store (arr!17642 a!2986) i!1108 k!1786) j!136) (array!36747 (store (arr!17642 a!2986) i!1108 k!1786) (size!18006 a!2986)) mask!3053)))))

(assert (=> b!588388 (= lt!266814 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266812 vacantSpotIndex!68 (select (arr!17642 a!2986) j!136) a!2986 mask!3053))))

(declare-datatypes ((Unit!18302 0))(
  ( (Unit!18303) )
))
(declare-fun lt!266816 () Unit!18302)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36746 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18302)

(assert (=> b!588388 (= lt!266816 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266812 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!588388 (= lt!266812 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!588389 () Bool)

(declare-fun res!376181 () Bool)

(assert (=> b!588389 (=> (not res!376181) (not e!335983))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!588389 (= res!376181 (validKeyInArray!0 (select (arr!17642 a!2986) j!136)))))

(declare-fun b!588390 () Bool)

(declare-fun res!376180 () Bool)

(assert (=> b!588390 (=> (not res!376180) (not e!335986))))

(assert (=> b!588390 (= res!376180 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17642 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17642 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!588391 () Bool)

(assert (=> b!588391 (= e!335985 (= lt!266815 lt!266814))))

(declare-fun b!588392 () Bool)

(assert (=> b!588392 (= e!335982 (validKeyInArray!0 (select (store (arr!17642 a!2986) i!1108 k!1786) j!136)))))

(declare-fun b!588393 () Bool)

(assert (=> b!588393 (= e!335983 e!335986)))

(declare-fun res!376172 () Bool)

(assert (=> b!588393 (=> (not res!376172) (not e!335986))))

(declare-fun lt!266813 () SeekEntryResult!6089)

(assert (=> b!588393 (= res!376172 (or (= lt!266813 (MissingZero!6089 i!1108)) (= lt!266813 (MissingVacant!6089 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36746 (_ BitVec 32)) SeekEntryResult!6089)

(assert (=> b!588393 (= lt!266813 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!588394 () Bool)

(declare-fun res!376170 () Bool)

(assert (=> b!588394 (=> (not res!376170) (not e!335983))))

(assert (=> b!588394 (= res!376170 (validKeyInArray!0 k!1786))))

(declare-fun b!588395 () Bool)

(declare-fun res!376175 () Bool)

(assert (=> b!588395 (=> (not res!376175) (not e!335986))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36746 (_ BitVec 32)) Bool)

(assert (=> b!588395 (= res!376175 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!53948 res!376174) b!588385))

(assert (= (and b!588385 res!376179) b!588389))

(assert (= (and b!588389 res!376181) b!588394))

(assert (= (and b!588394 res!376170) b!588387))

(assert (= (and b!588387 res!376171) b!588393))

(assert (= (and b!588393 res!376172) b!588395))

(assert (= (and b!588395 res!376175) b!588386))

(assert (= (and b!588386 res!376176) b!588390))

(assert (= (and b!588390 res!376180) b!588384))

(assert (= (and b!588384 res!376178) b!588388))

(assert (= (and b!588388 res!376177) b!588391))

(assert (= (and b!588388 (not res!376173)) b!588392))

(declare-fun m!567003 () Bool)

(assert (=> b!588394 m!567003))

(declare-fun m!567005 () Bool)

(assert (=> b!588386 m!567005))

(declare-fun m!567007 () Bool)

(assert (=> b!588395 m!567007))

(declare-fun m!567009 () Bool)

(assert (=> b!588388 m!567009))

(declare-fun m!567011 () Bool)

(assert (=> b!588388 m!567011))

(declare-fun m!567013 () Bool)

(assert (=> b!588388 m!567013))

(assert (=> b!588388 m!567013))

(declare-fun m!567015 () Bool)

(assert (=> b!588388 m!567015))

(declare-fun m!567017 () Bool)

(assert (=> b!588388 m!567017))

(declare-fun m!567019 () Bool)

(assert (=> b!588388 m!567019))

(assert (=> b!588388 m!567011))

(declare-fun m!567021 () Bool)

(assert (=> b!588388 m!567021))

(declare-fun m!567023 () Bool)

(assert (=> b!588387 m!567023))

(declare-fun m!567025 () Bool)

(assert (=> b!588384 m!567025))

(assert (=> b!588384 m!567013))

(assert (=> b!588384 m!567013))

(declare-fun m!567027 () Bool)

(assert (=> b!588384 m!567027))

(assert (=> b!588389 m!567013))

(assert (=> b!588389 m!567013))

(declare-fun m!567029 () Bool)

(assert (=> b!588389 m!567029))

(declare-fun m!567031 () Bool)

(assert (=> b!588390 m!567031))

(assert (=> b!588390 m!567019))

(declare-fun m!567033 () Bool)

(assert (=> b!588390 m!567033))

(declare-fun m!567035 () Bool)

(assert (=> start!53948 m!567035))

(declare-fun m!567037 () Bool)

(assert (=> start!53948 m!567037))

(assert (=> b!588392 m!567019))

(assert (=> b!588392 m!567011))

(assert (=> b!588392 m!567011))

(declare-fun m!567039 () Bool)

(assert (=> b!588392 m!567039))

(declare-fun m!567041 () Bool)

(assert (=> b!588393 m!567041))

(push 1)


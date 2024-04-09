; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54010 () Bool)

(assert start!54010)

(declare-fun b!589713 () Bool)

(declare-fun res!377317 () Bool)

(declare-fun e!336664 () Bool)

(assert (=> b!589713 (=> (not res!377317) (not e!336664))))

(declare-datatypes ((array!36808 0))(
  ( (array!36809 (arr!17673 (Array (_ BitVec 32) (_ BitVec 64))) (size!18037 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36808)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!589713 (= res!377317 (validKeyInArray!0 (select (arr!17673 a!2986) j!136)))))

(declare-fun b!589715 () Bool)

(declare-fun res!377326 () Bool)

(declare-fun e!336660 () Bool)

(assert (=> b!589715 (=> (not res!377326) (not e!336660))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36808 (_ BitVec 32)) Bool)

(assert (=> b!589715 (= res!377326 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!589716 () Bool)

(declare-datatypes ((Unit!18424 0))(
  ( (Unit!18425) )
))
(declare-fun e!336665 () Unit!18424)

(declare-fun Unit!18426 () Unit!18424)

(assert (=> b!589716 (= e!336665 Unit!18426)))

(assert (=> b!589716 false))

(declare-fun b!589717 () Bool)

(assert (=> b!589717 (= e!336664 e!336660)))

(declare-fun res!377321 () Bool)

(assert (=> b!589717 (=> (not res!377321) (not e!336660))))

(declare-datatypes ((SeekEntryResult!6120 0))(
  ( (MissingZero!6120 (index!26710 (_ BitVec 32))) (Found!6120 (index!26711 (_ BitVec 32))) (Intermediate!6120 (undefined!6932 Bool) (index!26712 (_ BitVec 32)) (x!55529 (_ BitVec 32))) (Undefined!6120) (MissingVacant!6120 (index!26713 (_ BitVec 32))) )
))
(declare-fun lt!267579 () SeekEntryResult!6120)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!589717 (= res!377321 (or (= lt!267579 (MissingZero!6120 i!1108)) (= lt!267579 (MissingVacant!6120 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36808 (_ BitVec 32)) SeekEntryResult!6120)

(assert (=> b!589717 (= lt!267579 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!589718 () Bool)

(declare-fun e!336666 () Bool)

(declare-fun lt!267580 () SeekEntryResult!6120)

(declare-fun lt!267574 () SeekEntryResult!6120)

(assert (=> b!589718 (= e!336666 (= lt!267580 lt!267574))))

(declare-fun e!336667 () Bool)

(declare-fun lt!267573 () (_ BitVec 64))

(declare-fun b!589719 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!589719 (= e!336667 (or (not (= (select (arr!17673 a!2986) j!136) lt!267573)) (not (= (select (arr!17673 a!2986) j!136) (select (store (arr!17673 a!2986) i!1108 k!1786) index!984))) (bvsge j!136 index!984) (bvslt (size!18037 a!2986) #b01111111111111111111111111111111)))))

(assert (=> b!589719 (= (select (store (arr!17673 a!2986) i!1108 k!1786) index!984) (select (arr!17673 a!2986) j!136))))

(declare-fun b!589720 () Bool)

(declare-fun res!377327 () Bool)

(assert (=> b!589720 (=> (not res!377327) (not e!336660))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!589720 (= res!377327 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17673 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!589721 () Bool)

(declare-fun res!377316 () Bool)

(assert (=> b!589721 (=> (not res!377316) (not e!336664))))

(declare-fun arrayContainsKey!0 (array!36808 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!589721 (= res!377316 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!589722 () Bool)

(declare-fun e!336662 () Bool)

(assert (=> b!589722 (= e!336662 (not e!336667))))

(declare-fun res!377320 () Bool)

(assert (=> b!589722 (=> res!377320 e!336667)))

(declare-fun lt!267578 () SeekEntryResult!6120)

(assert (=> b!589722 (= res!377320 (not (= lt!267578 (Found!6120 index!984))))))

(declare-fun lt!267577 () Unit!18424)

(assert (=> b!589722 (= lt!267577 e!336665)))

(declare-fun c!66566 () Bool)

(assert (=> b!589722 (= c!66566 (= lt!267578 Undefined!6120))))

(declare-fun lt!267576 () array!36808)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36808 (_ BitVec 32)) SeekEntryResult!6120)

(assert (=> b!589722 (= lt!267578 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!267573 lt!267576 mask!3053))))

(assert (=> b!589722 e!336666))

(declare-fun res!377325 () Bool)

(assert (=> b!589722 (=> (not res!377325) (not e!336666))))

(declare-fun lt!267575 () (_ BitVec 32))

(assert (=> b!589722 (= res!377325 (= lt!267574 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267575 vacantSpotIndex!68 lt!267573 lt!267576 mask!3053)))))

(assert (=> b!589722 (= lt!267574 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267575 vacantSpotIndex!68 (select (arr!17673 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!589722 (= lt!267573 (select (store (arr!17673 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!267581 () Unit!18424)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36808 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18424)

(assert (=> b!589722 (= lt!267581 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!267575 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!589722 (= lt!267575 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun res!377324 () Bool)

(assert (=> start!54010 (=> (not res!377324) (not e!336664))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54010 (= res!377324 (validMask!0 mask!3053))))

(assert (=> start!54010 e!336664))

(assert (=> start!54010 true))

(declare-fun array_inv!13447 (array!36808) Bool)

(assert (=> start!54010 (array_inv!13447 a!2986)))

(declare-fun b!589714 () Bool)

(declare-fun e!336663 () Bool)

(assert (=> b!589714 (= e!336663 e!336662)))

(declare-fun res!377322 () Bool)

(assert (=> b!589714 (=> (not res!377322) (not e!336662))))

(assert (=> b!589714 (= res!377322 (and (= lt!267580 (Found!6120 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17673 a!2986) index!984) (select (arr!17673 a!2986) j!136))) (not (= (select (arr!17673 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!589714 (= lt!267580 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17673 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!589723 () Bool)

(declare-fun res!377323 () Bool)

(assert (=> b!589723 (=> (not res!377323) (not e!336660))))

(declare-datatypes ((List!11767 0))(
  ( (Nil!11764) (Cons!11763 (h!12808 (_ BitVec 64)) (t!18003 List!11767)) )
))
(declare-fun arrayNoDuplicates!0 (array!36808 (_ BitVec 32) List!11767) Bool)

(assert (=> b!589723 (= res!377323 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11764))))

(declare-fun b!589724 () Bool)

(assert (=> b!589724 (= e!336660 e!336663)))

(declare-fun res!377319 () Bool)

(assert (=> b!589724 (=> (not res!377319) (not e!336663))))

(assert (=> b!589724 (= res!377319 (= (select (store (arr!17673 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!589724 (= lt!267576 (array!36809 (store (arr!17673 a!2986) i!1108 k!1786) (size!18037 a!2986)))))

(declare-fun b!589725 () Bool)

(declare-fun res!377318 () Bool)

(assert (=> b!589725 (=> (not res!377318) (not e!336664))))

(assert (=> b!589725 (= res!377318 (and (= (size!18037 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18037 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18037 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!589726 () Bool)

(declare-fun res!377315 () Bool)

(assert (=> b!589726 (=> (not res!377315) (not e!336664))))

(assert (=> b!589726 (= res!377315 (validKeyInArray!0 k!1786))))

(declare-fun b!589727 () Bool)

(declare-fun Unit!18427 () Unit!18424)

(assert (=> b!589727 (= e!336665 Unit!18427)))

(assert (= (and start!54010 res!377324) b!589725))

(assert (= (and b!589725 res!377318) b!589713))

(assert (= (and b!589713 res!377317) b!589726))

(assert (= (and b!589726 res!377315) b!589721))

(assert (= (and b!589721 res!377316) b!589717))

(assert (= (and b!589717 res!377321) b!589715))

(assert (= (and b!589715 res!377326) b!589723))

(assert (= (and b!589723 res!377323) b!589720))

(assert (= (and b!589720 res!377327) b!589724))

(assert (= (and b!589724 res!377319) b!589714))

(assert (= (and b!589714 res!377322) b!589722))

(assert (= (and b!589722 res!377325) b!589718))

(assert (= (and b!589722 c!66566) b!589716))

(assert (= (and b!589722 (not c!66566)) b!589727))

(assert (= (and b!589722 (not res!377320)) b!589719))

(declare-fun m!568261 () Bool)

(assert (=> b!589724 m!568261))

(declare-fun m!568263 () Bool)

(assert (=> b!589724 m!568263))

(declare-fun m!568265 () Bool)

(assert (=> b!589713 m!568265))

(assert (=> b!589713 m!568265))

(declare-fun m!568267 () Bool)

(assert (=> b!589713 m!568267))

(declare-fun m!568269 () Bool)

(assert (=> start!54010 m!568269))

(declare-fun m!568271 () Bool)

(assert (=> start!54010 m!568271))

(declare-fun m!568273 () Bool)

(assert (=> b!589715 m!568273))

(declare-fun m!568275 () Bool)

(assert (=> b!589726 m!568275))

(declare-fun m!568277 () Bool)

(assert (=> b!589717 m!568277))

(declare-fun m!568279 () Bool)

(assert (=> b!589720 m!568279))

(declare-fun m!568281 () Bool)

(assert (=> b!589714 m!568281))

(assert (=> b!589714 m!568265))

(assert (=> b!589714 m!568265))

(declare-fun m!568283 () Bool)

(assert (=> b!589714 m!568283))

(declare-fun m!568285 () Bool)

(assert (=> b!589723 m!568285))

(declare-fun m!568287 () Bool)

(assert (=> b!589722 m!568287))

(declare-fun m!568289 () Bool)

(assert (=> b!589722 m!568289))

(declare-fun m!568291 () Bool)

(assert (=> b!589722 m!568291))

(assert (=> b!589722 m!568265))

(assert (=> b!589722 m!568261))

(assert (=> b!589722 m!568265))

(declare-fun m!568293 () Bool)

(assert (=> b!589722 m!568293))

(declare-fun m!568295 () Bool)

(assert (=> b!589722 m!568295))

(declare-fun m!568297 () Bool)

(assert (=> b!589722 m!568297))

(assert (=> b!589719 m!568265))

(assert (=> b!589719 m!568261))

(declare-fun m!568299 () Bool)

(assert (=> b!589719 m!568299))

(declare-fun m!568301 () Bool)

(assert (=> b!589721 m!568301))

(push 1)

(assert (not b!589713))

(assert (not b!589715))

(assert (not start!54010))

(assert (not b!589714))

(assert (not b!589723))

(assert (not b!589721))

(assert (not b!589726))

(assert (not b!589717))

(assert (not b!589722))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)


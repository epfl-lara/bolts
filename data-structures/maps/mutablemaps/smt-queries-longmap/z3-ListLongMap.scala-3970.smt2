; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53910 () Bool)

(assert start!53910)

(declare-fun b!587749 () Bool)

(declare-fun e!335692 () Bool)

(declare-fun e!335688 () Bool)

(assert (=> b!587749 (= e!335692 e!335688)))

(declare-fun res!375538 () Bool)

(assert (=> b!587749 (=> (not res!375538) (not e!335688))))

(declare-datatypes ((SeekEntryResult!6070 0))(
  ( (MissingZero!6070 (index!26510 (_ BitVec 32))) (Found!6070 (index!26511 (_ BitVec 32))) (Intermediate!6070 (undefined!6882 Bool) (index!26512 (_ BitVec 32)) (x!55343 (_ BitVec 32))) (Undefined!6070) (MissingVacant!6070 (index!26513 (_ BitVec 32))) )
))
(declare-fun lt!266530 () SeekEntryResult!6070)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!587749 (= res!375538 (or (= lt!266530 (MissingZero!6070 i!1108)) (= lt!266530 (MissingVacant!6070 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-datatypes ((array!36708 0))(
  ( (array!36709 (arr!17623 (Array (_ BitVec 32) (_ BitVec 64))) (size!17987 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36708)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36708 (_ BitVec 32)) SeekEntryResult!6070)

(assert (=> b!587749 (= lt!266530 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!587750 () Bool)

(declare-fun res!375543 () Bool)

(assert (=> b!587750 (=> (not res!375543) (not e!335692))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!587750 (= res!375543 (and (= (size!17987 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17987 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17987 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!587751 () Bool)

(declare-fun res!375539 () Bool)

(assert (=> b!587751 (=> (not res!375539) (not e!335688))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36708 (_ BitVec 32)) Bool)

(assert (=> b!587751 (= res!375539 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!375537 () Bool)

(assert (=> start!53910 (=> (not res!375537) (not e!335692))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53910 (= res!375537 (validMask!0 mask!3053))))

(assert (=> start!53910 e!335692))

(assert (=> start!53910 true))

(declare-fun array_inv!13397 (array!36708) Bool)

(assert (=> start!53910 (array_inv!13397 a!2986)))

(declare-fun b!587752 () Bool)

(declare-fun res!375545 () Bool)

(assert (=> b!587752 (=> (not res!375545) (not e!335688))))

(declare-datatypes ((List!11717 0))(
  ( (Nil!11714) (Cons!11713 (h!12758 (_ BitVec 64)) (t!17953 List!11717)) )
))
(declare-fun arrayNoDuplicates!0 (array!36708 (_ BitVec 32) List!11717) Bool)

(assert (=> b!587752 (= res!375545 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11714))))

(declare-fun b!587753 () Bool)

(declare-fun res!375540 () Bool)

(assert (=> b!587753 (=> (not res!375540) (not e!335688))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!587753 (= res!375540 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17623 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17623 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!587754 () Bool)

(declare-fun res!375542 () Bool)

(assert (=> b!587754 (=> (not res!375542) (not e!335692))))

(declare-fun arrayContainsKey!0 (array!36708 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!587754 (= res!375542 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!587755 () Bool)

(declare-fun e!335690 () Bool)

(assert (=> b!587755 (= e!335690 (not (bvsge mask!3053 #b00000000000000000000000000000000)))))

(declare-fun e!335689 () Bool)

(assert (=> b!587755 e!335689))

(declare-fun res!375535 () Bool)

(assert (=> b!587755 (=> (not res!375535) (not e!335689))))

(declare-fun lt!266527 () SeekEntryResult!6070)

(declare-fun lt!266531 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36708 (_ BitVec 32)) SeekEntryResult!6070)

(assert (=> b!587755 (= res!375535 (= lt!266527 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266531 vacantSpotIndex!68 (select (store (arr!17623 a!2986) i!1108 k0!1786) j!136) (array!36709 (store (arr!17623 a!2986) i!1108 k0!1786) (size!17987 a!2986)) mask!3053)))))

(assert (=> b!587755 (= lt!266527 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266531 vacantSpotIndex!68 (select (arr!17623 a!2986) j!136) a!2986 mask!3053))))

(declare-datatypes ((Unit!18264 0))(
  ( (Unit!18265) )
))
(declare-fun lt!266528 () Unit!18264)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36708 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18264)

(assert (=> b!587755 (= lt!266528 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266531 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!587755 (= lt!266531 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!587756 () Bool)

(declare-fun res!375536 () Bool)

(assert (=> b!587756 (=> (not res!375536) (not e!335692))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!587756 (= res!375536 (validKeyInArray!0 k0!1786))))

(declare-fun b!587757 () Bool)

(assert (=> b!587757 (= e!335688 e!335690)))

(declare-fun res!375541 () Bool)

(assert (=> b!587757 (=> (not res!375541) (not e!335690))))

(declare-fun lt!266529 () SeekEntryResult!6070)

(assert (=> b!587757 (= res!375541 (and (= lt!266529 (Found!6070 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17623 a!2986) index!984) (select (arr!17623 a!2986) j!136))) (not (= (select (arr!17623 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!587757 (= lt!266529 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17623 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!587758 () Bool)

(assert (=> b!587758 (= e!335689 (= lt!266529 lt!266527))))

(declare-fun b!587759 () Bool)

(declare-fun res!375544 () Bool)

(assert (=> b!587759 (=> (not res!375544) (not e!335692))))

(assert (=> b!587759 (= res!375544 (validKeyInArray!0 (select (arr!17623 a!2986) j!136)))))

(assert (= (and start!53910 res!375537) b!587750))

(assert (= (and b!587750 res!375543) b!587759))

(assert (= (and b!587759 res!375544) b!587756))

(assert (= (and b!587756 res!375536) b!587754))

(assert (= (and b!587754 res!375542) b!587749))

(assert (= (and b!587749 res!375538) b!587751))

(assert (= (and b!587751 res!375539) b!587752))

(assert (= (and b!587752 res!375545) b!587753))

(assert (= (and b!587753 res!375540) b!587757))

(assert (= (and b!587757 res!375541) b!587755))

(assert (= (and b!587755 res!375535) b!587758))

(declare-fun m!566277 () Bool)

(assert (=> b!587754 m!566277))

(declare-fun m!566279 () Bool)

(assert (=> start!53910 m!566279))

(declare-fun m!566281 () Bool)

(assert (=> start!53910 m!566281))

(declare-fun m!566283 () Bool)

(assert (=> b!587756 m!566283))

(declare-fun m!566285 () Bool)

(assert (=> b!587752 m!566285))

(declare-fun m!566287 () Bool)

(assert (=> b!587753 m!566287))

(declare-fun m!566289 () Bool)

(assert (=> b!587753 m!566289))

(declare-fun m!566291 () Bool)

(assert (=> b!587753 m!566291))

(declare-fun m!566293 () Bool)

(assert (=> b!587757 m!566293))

(declare-fun m!566295 () Bool)

(assert (=> b!587757 m!566295))

(assert (=> b!587757 m!566295))

(declare-fun m!566297 () Bool)

(assert (=> b!587757 m!566297))

(assert (=> b!587759 m!566295))

(assert (=> b!587759 m!566295))

(declare-fun m!566299 () Bool)

(assert (=> b!587759 m!566299))

(declare-fun m!566301 () Bool)

(assert (=> b!587755 m!566301))

(declare-fun m!566303 () Bool)

(assert (=> b!587755 m!566303))

(assert (=> b!587755 m!566295))

(assert (=> b!587755 m!566289))

(declare-fun m!566305 () Bool)

(assert (=> b!587755 m!566305))

(assert (=> b!587755 m!566295))

(declare-fun m!566307 () Bool)

(assert (=> b!587755 m!566307))

(assert (=> b!587755 m!566303))

(declare-fun m!566309 () Bool)

(assert (=> b!587755 m!566309))

(declare-fun m!566311 () Bool)

(assert (=> b!587749 m!566311))

(declare-fun m!566313 () Bool)

(assert (=> b!587751 m!566313))

(check-sat (not start!53910) (not b!587751) (not b!587755) (not b!587759) (not b!587749) (not b!587754) (not b!587757) (not b!587756) (not b!587752))
(check-sat)

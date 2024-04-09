; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54550 () Bool)

(assert start!54550)

(declare-fun b!595834 () Bool)

(declare-fun e!340438 () Bool)

(declare-fun e!340436 () Bool)

(assert (=> b!595834 (= e!340438 e!340436)))

(declare-fun res!381851 () Bool)

(assert (=> b!595834 (=> (not res!381851) (not e!340436))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!36973 0))(
  ( (array!36974 (arr!17747 (Array (_ BitVec 32) (_ BitVec 64))) (size!18111 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36973)

(assert (=> b!595834 (= res!381851 (= (select (store (arr!17747 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!270639 () array!36973)

(assert (=> b!595834 (= lt!270639 (array!36974 (store (arr!17747 a!2986) i!1108 k!1786) (size!18111 a!2986)))))

(declare-fun b!595835 () Bool)

(declare-fun res!381835 () Bool)

(declare-fun e!340435 () Bool)

(assert (=> b!595835 (=> (not res!381835) (not e!340435))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!595835 (= res!381835 (validKeyInArray!0 (select (arr!17747 a!2986) j!136)))))

(declare-fun b!595836 () Bool)

(declare-fun e!340437 () Bool)

(declare-fun e!340426 () Bool)

(assert (=> b!595836 (= e!340437 e!340426)))

(declare-fun res!381849 () Bool)

(assert (=> b!595836 (=> res!381849 e!340426)))

(declare-fun lt!270640 () (_ BitVec 64))

(declare-fun lt!270638 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!595836 (= res!381849 (or (not (= (select (arr!17747 a!2986) j!136) lt!270640)) (not (= (select (arr!17747 a!2986) j!136) lt!270638)) (bvsge j!136 index!984)))))

(declare-fun e!340431 () Bool)

(assert (=> b!595836 e!340431))

(declare-fun res!381847 () Bool)

(assert (=> b!595836 (=> (not res!381847) (not e!340431))))

(assert (=> b!595836 (= res!381847 (= lt!270638 (select (arr!17747 a!2986) j!136)))))

(assert (=> b!595836 (= lt!270638 (select (store (arr!17747 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!595837 () Bool)

(declare-fun res!381846 () Bool)

(assert (=> b!595837 (=> (not res!381846) (not e!340435))))

(declare-fun arrayContainsKey!0 (array!36973 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!595837 (= res!381846 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!595838 () Bool)

(declare-fun e!340434 () Bool)

(assert (=> b!595838 (= e!340436 e!340434)))

(declare-fun res!381854 () Bool)

(assert (=> b!595838 (=> (not res!381854) (not e!340434))))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6194 0))(
  ( (MissingZero!6194 (index!27023 (_ BitVec 32))) (Found!6194 (index!27024 (_ BitVec 32))) (Intermediate!6194 (undefined!7006 Bool) (index!27025 (_ BitVec 32)) (x!55847 (_ BitVec 32))) (Undefined!6194) (MissingVacant!6194 (index!27026 (_ BitVec 32))) )
))
(declare-fun lt!270643 () SeekEntryResult!6194)

(assert (=> b!595838 (= res!381854 (and (= lt!270643 (Found!6194 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17747 a!2986) index!984) (select (arr!17747 a!2986) j!136))) (not (= (select (arr!17747 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36973 (_ BitVec 32)) SeekEntryResult!6194)

(assert (=> b!595838 (= lt!270643 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17747 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!595839 () Bool)

(declare-fun e!340429 () Bool)

(assert (=> b!595839 (= e!340429 true)))

(declare-fun lt!270637 () Bool)

(declare-datatypes ((List!11841 0))(
  ( (Nil!11838) (Cons!11837 (h!12882 (_ BitVec 64)) (t!18077 List!11841)) )
))
(declare-fun contains!2945 (List!11841 (_ BitVec 64)) Bool)

(assert (=> b!595839 (= lt!270637 (contains!2945 Nil!11838 k!1786))))

(declare-fun b!595840 () Bool)

(assert (=> b!595840 (= e!340435 e!340438)))

(declare-fun res!381848 () Bool)

(assert (=> b!595840 (=> (not res!381848) (not e!340438))))

(declare-fun lt!270648 () SeekEntryResult!6194)

(assert (=> b!595840 (= res!381848 (or (= lt!270648 (MissingZero!6194 i!1108)) (= lt!270648 (MissingVacant!6194 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36973 (_ BitVec 32)) SeekEntryResult!6194)

(assert (=> b!595840 (= lt!270648 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!595841 () Bool)

(declare-datatypes ((Unit!18720 0))(
  ( (Unit!18721) )
))
(declare-fun e!340432 () Unit!18720)

(declare-fun Unit!18722 () Unit!18720)

(assert (=> b!595841 (= e!340432 Unit!18722)))

(assert (=> b!595841 false))

(declare-fun b!595842 () Bool)

(assert (=> b!595842 (= e!340426 e!340429)))

(declare-fun res!381845 () Bool)

(assert (=> b!595842 (=> res!381845 e!340429)))

(assert (=> b!595842 (= res!381845 (or (bvsge (size!18111 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18111 a!2986))))))

(assert (=> b!595842 (arrayContainsKey!0 lt!270639 (select (arr!17747 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!270646 () Unit!18720)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36973 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18720)

(assert (=> b!595842 (= lt!270646 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!270639 (select (arr!17747 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!340433 () Bool)

(declare-fun b!595843 () Bool)

(assert (=> b!595843 (= e!340433 (arrayContainsKey!0 lt!270639 (select (arr!17747 a!2986) j!136) index!984))))

(declare-fun b!595844 () Bool)

(declare-fun e!340430 () Bool)

(assert (=> b!595844 (= e!340431 e!340430)))

(declare-fun res!381853 () Bool)

(assert (=> b!595844 (=> res!381853 e!340430)))

(assert (=> b!595844 (= res!381853 (or (not (= (select (arr!17747 a!2986) j!136) lt!270640)) (not (= (select (arr!17747 a!2986) j!136) lt!270638)) (bvsge j!136 index!984)))))

(declare-fun b!595845 () Bool)

(declare-fun res!381841 () Bool)

(assert (=> b!595845 (=> (not res!381841) (not e!340435))))

(assert (=> b!595845 (= res!381841 (and (= (size!18111 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18111 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18111 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!595847 () Bool)

(declare-fun res!381843 () Bool)

(assert (=> b!595847 (=> (not res!381843) (not e!340438))))

(assert (=> b!595847 (= res!381843 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17747 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!595848 () Bool)

(declare-fun res!381850 () Bool)

(assert (=> b!595848 (=> res!381850 e!340429)))

(assert (=> b!595848 (= res!381850 (contains!2945 Nil!11838 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!595849 () Bool)

(declare-fun res!381836 () Bool)

(assert (=> b!595849 (=> res!381836 e!340429)))

(declare-fun noDuplicate!261 (List!11841) Bool)

(assert (=> b!595849 (= res!381836 (not (noDuplicate!261 Nil!11838)))))

(declare-fun b!595850 () Bool)

(declare-fun res!381834 () Bool)

(assert (=> b!595850 (=> res!381834 e!340429)))

(assert (=> b!595850 (= res!381834 (contains!2945 Nil!11838 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!595851 () Bool)

(assert (=> b!595851 (= e!340430 e!340433)))

(declare-fun res!381844 () Bool)

(assert (=> b!595851 (=> (not res!381844) (not e!340433))))

(assert (=> b!595851 (= res!381844 (arrayContainsKey!0 lt!270639 (select (arr!17747 a!2986) j!136) j!136))))

(declare-fun b!595852 () Bool)

(declare-fun e!340428 () Bool)

(declare-fun lt!270641 () SeekEntryResult!6194)

(assert (=> b!595852 (= e!340428 (= lt!270643 lt!270641))))

(declare-fun b!595853 () Bool)

(assert (=> b!595853 (= e!340434 (not e!340437))))

(declare-fun res!381837 () Bool)

(assert (=> b!595853 (=> res!381837 e!340437)))

(declare-fun lt!270647 () SeekEntryResult!6194)

(assert (=> b!595853 (= res!381837 (not (= lt!270647 (Found!6194 index!984))))))

(declare-fun lt!270645 () Unit!18720)

(assert (=> b!595853 (= lt!270645 e!340432)))

(declare-fun c!67367 () Bool)

(assert (=> b!595853 (= c!67367 (= lt!270647 Undefined!6194))))

(assert (=> b!595853 (= lt!270647 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!270640 lt!270639 mask!3053))))

(assert (=> b!595853 e!340428))

(declare-fun res!381839 () Bool)

(assert (=> b!595853 (=> (not res!381839) (not e!340428))))

(declare-fun lt!270642 () (_ BitVec 32))

(assert (=> b!595853 (= res!381839 (= lt!270641 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270642 vacantSpotIndex!68 lt!270640 lt!270639 mask!3053)))))

(assert (=> b!595853 (= lt!270641 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270642 vacantSpotIndex!68 (select (arr!17747 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!595853 (= lt!270640 (select (store (arr!17747 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!270644 () Unit!18720)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36973 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18720)

(assert (=> b!595853 (= lt!270644 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!270642 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!595853 (= lt!270642 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!595854 () Bool)

(declare-fun res!381840 () Bool)

(assert (=> b!595854 (=> (not res!381840) (not e!340438))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36973 (_ BitVec 32)) Bool)

(assert (=> b!595854 (= res!381840 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!381838 () Bool)

(assert (=> start!54550 (=> (not res!381838) (not e!340435))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54550 (= res!381838 (validMask!0 mask!3053))))

(assert (=> start!54550 e!340435))

(assert (=> start!54550 true))

(declare-fun array_inv!13521 (array!36973) Bool)

(assert (=> start!54550 (array_inv!13521 a!2986)))

(declare-fun b!595846 () Bool)

(declare-fun res!381852 () Bool)

(assert (=> b!595846 (=> (not res!381852) (not e!340435))))

(assert (=> b!595846 (= res!381852 (validKeyInArray!0 k!1786))))

(declare-fun b!595855 () Bool)

(declare-fun Unit!18723 () Unit!18720)

(assert (=> b!595855 (= e!340432 Unit!18723)))

(declare-fun b!595856 () Bool)

(declare-fun res!381842 () Bool)

(assert (=> b!595856 (=> (not res!381842) (not e!340438))))

(declare-fun arrayNoDuplicates!0 (array!36973 (_ BitVec 32) List!11841) Bool)

(assert (=> b!595856 (= res!381842 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11838))))

(assert (= (and start!54550 res!381838) b!595845))

(assert (= (and b!595845 res!381841) b!595835))

(assert (= (and b!595835 res!381835) b!595846))

(assert (= (and b!595846 res!381852) b!595837))

(assert (= (and b!595837 res!381846) b!595840))

(assert (= (and b!595840 res!381848) b!595854))

(assert (= (and b!595854 res!381840) b!595856))

(assert (= (and b!595856 res!381842) b!595847))

(assert (= (and b!595847 res!381843) b!595834))

(assert (= (and b!595834 res!381851) b!595838))

(assert (= (and b!595838 res!381854) b!595853))

(assert (= (and b!595853 res!381839) b!595852))

(assert (= (and b!595853 c!67367) b!595841))

(assert (= (and b!595853 (not c!67367)) b!595855))

(assert (= (and b!595853 (not res!381837)) b!595836))

(assert (= (and b!595836 res!381847) b!595844))

(assert (= (and b!595844 (not res!381853)) b!595851))

(assert (= (and b!595851 res!381844) b!595843))

(assert (= (and b!595836 (not res!381849)) b!595842))

(assert (= (and b!595842 (not res!381845)) b!595849))

(assert (= (and b!595849 (not res!381836)) b!595848))

(assert (= (and b!595848 (not res!381850)) b!595850))

(assert (= (and b!595850 (not res!381834)) b!595839))

(declare-fun m!573437 () Bool)

(assert (=> b!595854 m!573437))

(declare-fun m!573439 () Bool)

(assert (=> b!595838 m!573439))

(declare-fun m!573441 () Bool)

(assert (=> b!595838 m!573441))

(assert (=> b!595838 m!573441))

(declare-fun m!573443 () Bool)

(assert (=> b!595838 m!573443))

(declare-fun m!573445 () Bool)

(assert (=> b!595834 m!573445))

(declare-fun m!573447 () Bool)

(assert (=> b!595834 m!573447))

(declare-fun m!573449 () Bool)

(assert (=> b!595856 m!573449))

(declare-fun m!573451 () Bool)

(assert (=> b!595840 m!573451))

(assert (=> b!595836 m!573441))

(assert (=> b!595836 m!573445))

(declare-fun m!573453 () Bool)

(assert (=> b!595836 m!573453))

(assert (=> b!595835 m!573441))

(assert (=> b!595835 m!573441))

(declare-fun m!573455 () Bool)

(assert (=> b!595835 m!573455))

(declare-fun m!573457 () Bool)

(assert (=> b!595837 m!573457))

(declare-fun m!573459 () Bool)

(assert (=> b!595850 m!573459))

(assert (=> b!595842 m!573441))

(assert (=> b!595842 m!573441))

(declare-fun m!573461 () Bool)

(assert (=> b!595842 m!573461))

(assert (=> b!595842 m!573441))

(declare-fun m!573463 () Bool)

(assert (=> b!595842 m!573463))

(declare-fun m!573465 () Bool)

(assert (=> b!595847 m!573465))

(declare-fun m!573467 () Bool)

(assert (=> start!54550 m!573467))

(declare-fun m!573469 () Bool)

(assert (=> start!54550 m!573469))

(assert (=> b!595844 m!573441))

(assert (=> b!595853 m!573441))

(declare-fun m!573471 () Bool)

(assert (=> b!595853 m!573471))

(declare-fun m!573473 () Bool)

(assert (=> b!595853 m!573473))

(declare-fun m!573475 () Bool)

(assert (=> b!595853 m!573475))

(assert (=> b!595853 m!573441))

(assert (=> b!595853 m!573445))

(declare-fun m!573477 () Bool)

(assert (=> b!595853 m!573477))

(declare-fun m!573479 () Bool)

(assert (=> b!595853 m!573479))

(declare-fun m!573481 () Bool)

(assert (=> b!595853 m!573481))

(assert (=> b!595851 m!573441))

(assert (=> b!595851 m!573441))

(declare-fun m!573483 () Bool)

(assert (=> b!595851 m!573483))

(declare-fun m!573485 () Bool)

(assert (=> b!595839 m!573485))

(declare-fun m!573487 () Bool)

(assert (=> b!595848 m!573487))

(declare-fun m!573489 () Bool)

(assert (=> b!595846 m!573489))

(declare-fun m!573491 () Bool)

(assert (=> b!595849 m!573491))

(assert (=> b!595843 m!573441))

(assert (=> b!595843 m!573441))

(declare-fun m!573493 () Bool)

(assert (=> b!595843 m!573493))

(push 1)


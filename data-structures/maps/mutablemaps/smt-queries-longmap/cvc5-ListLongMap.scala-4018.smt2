; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54738 () Bool)

(assert start!54738)

(declare-fun b!597686 () Bool)

(declare-fun e!341597 () Bool)

(declare-datatypes ((List!11860 0))(
  ( (Nil!11857) (Cons!11856 (h!12901 (_ BitVec 64)) (t!18096 List!11860)) )
))
(declare-fun contains!2960 (List!11860 (_ BitVec 64)) Bool)

(assert (=> b!597686 (= e!341597 (not (contains!2960 Nil!11857 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!597687 () Bool)

(declare-fun res!383169 () Bool)

(declare-fun e!341595 () Bool)

(assert (=> b!597687 (=> (not res!383169) (not e!341595))))

(declare-datatypes ((array!37017 0))(
  ( (array!37018 (arr!17766 (Array (_ BitVec 32) (_ BitVec 64))) (size!18130 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37017)

(declare-fun arrayNoDuplicates!0 (array!37017 (_ BitVec 32) List!11860) Bool)

(assert (=> b!597687 (= res!383169 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11857))))

(declare-fun b!597688 () Bool)

(declare-fun res!383170 () Bool)

(declare-fun e!341589 () Bool)

(assert (=> b!597688 (=> res!383170 e!341589)))

(declare-fun noDuplicate!274 (List!11860) Bool)

(assert (=> b!597688 (= res!383170 (not (noDuplicate!274 Nil!11857)))))

(declare-fun b!597689 () Bool)

(declare-fun e!341594 () Bool)

(assert (=> b!597689 (= e!341594 e!341589)))

(declare-fun res!383183 () Bool)

(assert (=> b!597689 (=> res!383183 e!341589)))

(assert (=> b!597689 (= res!383183 (or (bvsgt #b00000000000000000000000000000000 (size!18130 a!2986)) (bvsge (size!18130 a!2986) #b01111111111111111111111111111111)))))

(declare-fun lt!271579 () array!37017)

(assert (=> b!597689 (arrayNoDuplicates!0 lt!271579 #b00000000000000000000000000000000 Nil!11857)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((Unit!18796 0))(
  ( (Unit!18797) )
))
(declare-fun lt!271575 () Unit!18796)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37017 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11860) Unit!18796)

(assert (=> b!597689 (= lt!271575 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11857))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!37017 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!597689 (arrayContainsKey!0 lt!271579 (select (arr!17766 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!271583 () Unit!18796)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37017 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18796)

(assert (=> b!597689 (= lt!271583 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!271579 (select (arr!17766 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!597690 () Bool)

(declare-fun e!341602 () Bool)

(declare-fun e!341590 () Bool)

(assert (=> b!597690 (= e!341602 (not e!341590))))

(declare-fun res!383168 () Bool)

(assert (=> b!597690 (=> res!383168 e!341590)))

(declare-datatypes ((SeekEntryResult!6213 0))(
  ( (MissingZero!6213 (index!27105 (_ BitVec 32))) (Found!6213 (index!27106 (_ BitVec 32))) (Intermediate!6213 (undefined!7025 Bool) (index!27107 (_ BitVec 32)) (x!55940 (_ BitVec 32))) (Undefined!6213) (MissingVacant!6213 (index!27108 (_ BitVec 32))) )
))
(declare-fun lt!271578 () SeekEntryResult!6213)

(assert (=> b!597690 (= res!383168 (not (= lt!271578 (Found!6213 index!984))))))

(declare-fun lt!271582 () Unit!18796)

(declare-fun e!341598 () Unit!18796)

(assert (=> b!597690 (= lt!271582 e!341598)))

(declare-fun c!67628 () Bool)

(assert (=> b!597690 (= c!67628 (= lt!271578 Undefined!6213))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!271574 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37017 (_ BitVec 32)) SeekEntryResult!6213)

(assert (=> b!597690 (= lt!271578 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!271574 lt!271579 mask!3053))))

(declare-fun e!341599 () Bool)

(assert (=> b!597690 e!341599))

(declare-fun res!383177 () Bool)

(assert (=> b!597690 (=> (not res!383177) (not e!341599))))

(declare-fun lt!271581 () SeekEntryResult!6213)

(declare-fun lt!271580 () (_ BitVec 32))

(assert (=> b!597690 (= res!383177 (= lt!271581 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271580 vacantSpotIndex!68 lt!271574 lt!271579 mask!3053)))))

(assert (=> b!597690 (= lt!271581 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271580 vacantSpotIndex!68 (select (arr!17766 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!597690 (= lt!271574 (select (store (arr!17766 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!271576 () Unit!18796)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37017 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18796)

(assert (=> b!597690 (= lt!271576 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!271580 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!597690 (= lt!271580 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!597691 () Bool)

(declare-fun e!341591 () Bool)

(assert (=> b!597691 (= e!341591 e!341595)))

(declare-fun res!383176 () Bool)

(assert (=> b!597691 (=> (not res!383176) (not e!341595))))

(declare-fun lt!271584 () SeekEntryResult!6213)

(assert (=> b!597691 (= res!383176 (or (= lt!271584 (MissingZero!6213 i!1108)) (= lt!271584 (MissingVacant!6213 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37017 (_ BitVec 32)) SeekEntryResult!6213)

(assert (=> b!597691 (= lt!271584 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!597692 () Bool)

(declare-fun e!341596 () Bool)

(assert (=> b!597692 (= e!341596 e!341602)))

(declare-fun res!383182 () Bool)

(assert (=> b!597692 (=> (not res!383182) (not e!341602))))

(declare-fun lt!271573 () SeekEntryResult!6213)

(assert (=> b!597692 (= res!383182 (and (= lt!271573 (Found!6213 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17766 a!2986) index!984) (select (arr!17766 a!2986) j!136))) (not (= (select (arr!17766 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!597692 (= lt!271573 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17766 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!597693 () Bool)

(declare-fun e!341593 () Bool)

(assert (=> b!597693 (= e!341593 (arrayContainsKey!0 lt!271579 (select (arr!17766 a!2986) j!136) index!984))))

(declare-fun b!597694 () Bool)

(declare-fun e!341600 () Bool)

(declare-fun e!341601 () Bool)

(assert (=> b!597694 (= e!341600 e!341601)))

(declare-fun res!383180 () Bool)

(assert (=> b!597694 (=> res!383180 e!341601)))

(declare-fun lt!271577 () (_ BitVec 64))

(assert (=> b!597694 (= res!383180 (or (not (= (select (arr!17766 a!2986) j!136) lt!271574)) (not (= (select (arr!17766 a!2986) j!136) lt!271577)) (bvsge j!136 index!984)))))

(declare-fun b!597695 () Bool)

(declare-fun res!383179 () Bool)

(assert (=> b!597695 (=> (not res!383179) (not e!341595))))

(assert (=> b!597695 (= res!383179 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17766 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!597696 () Bool)

(declare-fun res!383164 () Bool)

(assert (=> b!597696 (=> (not res!383164) (not e!341591))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!597696 (= res!383164 (validKeyInArray!0 k!1786))))

(declare-fun b!597697 () Bool)

(assert (=> b!597697 (= e!341590 e!341594)))

(declare-fun res!383181 () Bool)

(assert (=> b!597697 (=> res!383181 e!341594)))

(assert (=> b!597697 (= res!383181 (or (not (= (select (arr!17766 a!2986) j!136) lt!271574)) (not (= (select (arr!17766 a!2986) j!136) lt!271577)) (bvsge j!136 index!984)))))

(assert (=> b!597697 e!341600))

(declare-fun res!383167 () Bool)

(assert (=> b!597697 (=> (not res!383167) (not e!341600))))

(assert (=> b!597697 (= res!383167 (= lt!271577 (select (arr!17766 a!2986) j!136)))))

(assert (=> b!597697 (= lt!271577 (select (store (arr!17766 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!597698 () Bool)

(declare-fun Unit!18798 () Unit!18796)

(assert (=> b!597698 (= e!341598 Unit!18798)))

(assert (=> b!597698 false))

(declare-fun b!597699 () Bool)

(assert (=> b!597699 (= e!341595 e!341596)))

(declare-fun res!383175 () Bool)

(assert (=> b!597699 (=> (not res!383175) (not e!341596))))

(assert (=> b!597699 (= res!383175 (= (select (store (arr!17766 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!597699 (= lt!271579 (array!37018 (store (arr!17766 a!2986) i!1108 k!1786) (size!18130 a!2986)))))

(declare-fun b!597700 () Bool)

(declare-fun res!383165 () Bool)

(assert (=> b!597700 (=> (not res!383165) (not e!341591))))

(assert (=> b!597700 (= res!383165 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!597701 () Bool)

(assert (=> b!597701 (= e!341601 e!341593)))

(declare-fun res!383178 () Bool)

(assert (=> b!597701 (=> (not res!383178) (not e!341593))))

(assert (=> b!597701 (= res!383178 (arrayContainsKey!0 lt!271579 (select (arr!17766 a!2986) j!136) j!136))))

(declare-fun b!597702 () Bool)

(assert (=> b!597702 (= e!341589 e!341597)))

(declare-fun res!383173 () Bool)

(assert (=> b!597702 (=> (not res!383173) (not e!341597))))

(assert (=> b!597702 (= res!383173 (not (contains!2960 Nil!11857 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!597703 () Bool)

(declare-fun res!383174 () Bool)

(assert (=> b!597703 (=> (not res!383174) (not e!341595))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37017 (_ BitVec 32)) Bool)

(assert (=> b!597703 (= res!383174 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!597704 () Bool)

(assert (=> b!597704 (= e!341599 (= lt!271573 lt!271581))))

(declare-fun res!383171 () Bool)

(assert (=> start!54738 (=> (not res!383171) (not e!341591))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54738 (= res!383171 (validMask!0 mask!3053))))

(assert (=> start!54738 e!341591))

(assert (=> start!54738 true))

(declare-fun array_inv!13540 (array!37017) Bool)

(assert (=> start!54738 (array_inv!13540 a!2986)))

(declare-fun b!597705 () Bool)

(declare-fun Unit!18799 () Unit!18796)

(assert (=> b!597705 (= e!341598 Unit!18799)))

(declare-fun b!597706 () Bool)

(declare-fun res!383172 () Bool)

(assert (=> b!597706 (=> (not res!383172) (not e!341591))))

(assert (=> b!597706 (= res!383172 (validKeyInArray!0 (select (arr!17766 a!2986) j!136)))))

(declare-fun b!597707 () Bool)

(declare-fun res!383166 () Bool)

(assert (=> b!597707 (=> (not res!383166) (not e!341591))))

(assert (=> b!597707 (= res!383166 (and (= (size!18130 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18130 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18130 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!54738 res!383171) b!597707))

(assert (= (and b!597707 res!383166) b!597706))

(assert (= (and b!597706 res!383172) b!597696))

(assert (= (and b!597696 res!383164) b!597700))

(assert (= (and b!597700 res!383165) b!597691))

(assert (= (and b!597691 res!383176) b!597703))

(assert (= (and b!597703 res!383174) b!597687))

(assert (= (and b!597687 res!383169) b!597695))

(assert (= (and b!597695 res!383179) b!597699))

(assert (= (and b!597699 res!383175) b!597692))

(assert (= (and b!597692 res!383182) b!597690))

(assert (= (and b!597690 res!383177) b!597704))

(assert (= (and b!597690 c!67628) b!597698))

(assert (= (and b!597690 (not c!67628)) b!597705))

(assert (= (and b!597690 (not res!383168)) b!597697))

(assert (= (and b!597697 res!383167) b!597694))

(assert (= (and b!597694 (not res!383180)) b!597701))

(assert (= (and b!597701 res!383178) b!597693))

(assert (= (and b!597697 (not res!383181)) b!597689))

(assert (= (and b!597689 (not res!383183)) b!597688))

(assert (= (and b!597688 (not res!383170)) b!597702))

(assert (= (and b!597702 res!383173) b!597686))

(declare-fun m!575085 () Bool)

(assert (=> b!597687 m!575085))

(declare-fun m!575087 () Bool)

(assert (=> b!597694 m!575087))

(assert (=> b!597693 m!575087))

(assert (=> b!597693 m!575087))

(declare-fun m!575089 () Bool)

(assert (=> b!597693 m!575089))

(declare-fun m!575091 () Bool)

(assert (=> b!597688 m!575091))

(declare-fun m!575093 () Bool)

(assert (=> b!597700 m!575093))

(declare-fun m!575095 () Bool)

(assert (=> b!597699 m!575095))

(declare-fun m!575097 () Bool)

(assert (=> b!597699 m!575097))

(declare-fun m!575099 () Bool)

(assert (=> b!597702 m!575099))

(assert (=> b!597706 m!575087))

(assert (=> b!597706 m!575087))

(declare-fun m!575101 () Bool)

(assert (=> b!597706 m!575101))

(assert (=> b!597689 m!575087))

(declare-fun m!575103 () Bool)

(assert (=> b!597689 m!575103))

(assert (=> b!597689 m!575087))

(declare-fun m!575105 () Bool)

(assert (=> b!597689 m!575105))

(assert (=> b!597689 m!575087))

(declare-fun m!575107 () Bool)

(assert (=> b!597689 m!575107))

(declare-fun m!575109 () Bool)

(assert (=> b!597689 m!575109))

(declare-fun m!575111 () Bool)

(assert (=> b!597692 m!575111))

(assert (=> b!597692 m!575087))

(assert (=> b!597692 m!575087))

(declare-fun m!575113 () Bool)

(assert (=> b!597692 m!575113))

(declare-fun m!575115 () Bool)

(assert (=> b!597690 m!575115))

(declare-fun m!575117 () Bool)

(assert (=> b!597690 m!575117))

(assert (=> b!597690 m!575087))

(declare-fun m!575119 () Bool)

(assert (=> b!597690 m!575119))

(assert (=> b!597690 m!575087))

(declare-fun m!575121 () Bool)

(assert (=> b!597690 m!575121))

(declare-fun m!575123 () Bool)

(assert (=> b!597690 m!575123))

(declare-fun m!575125 () Bool)

(assert (=> b!597690 m!575125))

(assert (=> b!597690 m!575095))

(declare-fun m!575127 () Bool)

(assert (=> b!597695 m!575127))

(declare-fun m!575129 () Bool)

(assert (=> start!54738 m!575129))

(declare-fun m!575131 () Bool)

(assert (=> start!54738 m!575131))

(assert (=> b!597697 m!575087))

(assert (=> b!597697 m!575095))

(declare-fun m!575133 () Bool)

(assert (=> b!597697 m!575133))

(declare-fun m!575135 () Bool)

(assert (=> b!597703 m!575135))

(declare-fun m!575137 () Bool)

(assert (=> b!597686 m!575137))

(declare-fun m!575139 () Bool)

(assert (=> b!597691 m!575139))

(assert (=> b!597701 m!575087))

(assert (=> b!597701 m!575087))

(declare-fun m!575141 () Bool)

(assert (=> b!597701 m!575141))

(declare-fun m!575143 () Bool)

(assert (=> b!597696 m!575143))

(push 1)

(assert (not b!597686))

(assert (not b!597700))

(assert (not b!597687))

(assert (not b!597688))

(assert (not b!597701))

(assert (not b!597689))

(assert (not b!597702))

(assert (not b!597706))

(assert (not start!54738))

(assert (not b!597703))

(assert (not b!597693))

(assert (not b!597692))

(assert (not b!597691))

(assert (not b!597696))

(assert (not b!597690))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!86853 () Bool)

(assert (=> d!86853 (= (validKeyInArray!0 (select (arr!17766 a!2986) j!136)) (and (not (= (select (arr!17766 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17766 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!597706 d!86853))

(declare-fun d!86855 () Bool)

(declare-fun res!383341 () Bool)

(declare-fun e!341737 () Bool)

(assert (=> d!86855 (=> res!383341 e!341737)))

(assert (=> d!86855 (= res!383341 (= (select (arr!17766 lt!271579) index!984) (select (arr!17766 a!2986) j!136)))))

(assert (=> d!86855 (= (arrayContainsKey!0 lt!271579 (select (arr!17766 a!2986) j!136) index!984) e!341737)))

(declare-fun b!597903 () Bool)

(declare-fun e!341738 () Bool)

(assert (=> b!597903 (= e!341737 e!341738)))

(declare-fun res!383342 () Bool)

(assert (=> b!597903 (=> (not res!383342) (not e!341738))))

(assert (=> b!597903 (= res!383342 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18130 lt!271579)))))

(declare-fun b!597904 () Bool)

(assert (=> b!597904 (= e!341738 (arrayContainsKey!0 lt!271579 (select (arr!17766 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!86855 (not res!383341)) b!597903))

(assert (= (and b!597903 res!383342) b!597904))

(declare-fun m!575313 () Bool)

(assert (=> d!86855 m!575313))

(assert (=> b!597904 m!575087))

(declare-fun m!575315 () Bool)

(assert (=> b!597904 m!575315))

(assert (=> b!597693 d!86855))

(declare-fun b!597962 () Bool)

(declare-fun e!341776 () SeekEntryResult!6213)

(declare-fun e!341775 () SeekEntryResult!6213)

(assert (=> b!597962 (= e!341776 e!341775)))

(declare-fun lt!271695 () (_ BitVec 64))

(declare-fun c!67671 () Bool)

(assert (=> b!597962 (= c!67671 (= lt!271695 (select (arr!17766 a!2986) j!136)))))

(declare-fun b!597963 () Bool)

(assert (=> b!597963 (= e!341775 (Found!6213 index!984))))

(declare-fun e!341777 () SeekEntryResult!6213)

(declare-fun b!597964 () Bool)

(assert (=> b!597964 (= e!341777 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!17766 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!597965 () Bool)

(assert (=> b!597965 (= e!341776 Undefined!6213)))

(declare-fun b!597966 () Bool)

(assert (=> b!597966 (= e!341777 (MissingVacant!6213 vacantSpotIndex!68))))

(declare-fun lt!271696 () SeekEntryResult!6213)

(declare-fun d!86859 () Bool)

(assert (=> d!86859 (and (or (is-Undefined!6213 lt!271696) (not (is-Found!6213 lt!271696)) (and (bvsge (index!27106 lt!271696) #b00000000000000000000000000000000) (bvslt (index!27106 lt!271696) (size!18130 a!2986)))) (or (is-Undefined!6213 lt!271696) (is-Found!6213 lt!271696) (not (is-MissingVacant!6213 lt!271696)) (not (= (index!27108 lt!271696) vacantSpotIndex!68)) (and (bvsge (index!27108 lt!271696) #b00000000000000000000000000000000) (bvslt (index!27108 lt!271696) (size!18130 a!2986)))) (or (is-Undefined!6213 lt!271696) (ite (is-Found!6213 lt!271696) (= (select (arr!17766 a!2986) (index!27106 lt!271696)) (select (arr!17766 a!2986) j!136)) (and (is-MissingVacant!6213 lt!271696) (= (index!27108 lt!271696) vacantSpotIndex!68) (= (select (arr!17766 a!2986) (index!27108 lt!271696)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!86859 (= lt!271696 e!341776)))

(declare-fun c!67669 () Bool)

(assert (=> d!86859 (= c!67669 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!86859 (= lt!271695 (select (arr!17766 a!2986) index!984))))

(assert (=> d!86859 (validMask!0 mask!3053)))

(assert (=> d!86859 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17766 a!2986) j!136) a!2986 mask!3053) lt!271696)))

(declare-fun b!597967 () Bool)

(declare-fun c!67670 () Bool)

(assert (=> b!597967 (= c!67670 (= lt!271695 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!597967 (= e!341775 e!341777)))

(assert (= (and d!86859 c!67669) b!597965))

(assert (= (and d!86859 (not c!67669)) b!597962))

(assert (= (and b!597962 c!67671) b!597963))

(assert (= (and b!597962 (not c!67671)) b!597967))

(assert (= (and b!597967 c!67670) b!597966))

(assert (= (and b!597967 (not c!67670)) b!597964))

(assert (=> b!597964 m!575115))

(assert (=> b!597964 m!575115))

(assert (=> b!597964 m!575087))

(declare-fun m!575347 () Bool)

(assert (=> b!597964 m!575347))

(declare-fun m!575349 () Bool)

(assert (=> d!86859 m!575349))

(declare-fun m!575351 () Bool)

(assert (=> d!86859 m!575351))

(assert (=> d!86859 m!575111))

(assert (=> d!86859 m!575129))

(assert (=> b!597692 d!86859))

(declare-fun d!86869 () Bool)

(assert (=> d!86869 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!54738 d!86869))

(declare-fun d!86877 () Bool)

(assert (=> d!86877 (= (array_inv!13540 a!2986) (bvsge (size!18130 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!54738 d!86877))

(declare-fun b!598015 () Bool)

(declare-fun e!341808 () Bool)

(declare-fun call!32952 () Bool)

(assert (=> b!598015 (= e!341808 call!32952)))

(declare-fun d!86879 () Bool)

(declare-fun res!383372 () Bool)

(declare-fun e!341809 () Bool)

(assert (=> d!86879 (=> res!383372 e!341809)))

(assert (=> d!86879 (= res!383372 (bvsge #b00000000000000000000000000000000 (size!18130 a!2986)))))

(assert (=> d!86879 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!341809)))

(declare-fun b!598016 () Bool)

(assert (=> b!598016 (= e!341809 e!341808)))

(declare-fun c!67689 () Bool)

(assert (=> b!598016 (= c!67689 (validKeyInArray!0 (select (arr!17766 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!598017 () Bool)

(declare-fun e!341810 () Bool)

(assert (=> b!598017 (= e!341808 e!341810)))

(declare-fun lt!271723 () (_ BitVec 64))

(assert (=> b!598017 (= lt!271723 (select (arr!17766 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!271721 () Unit!18796)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!37017 (_ BitVec 64) (_ BitVec 32)) Unit!18796)

(assert (=> b!598017 (= lt!271721 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!271723 #b00000000000000000000000000000000))))

(assert (=> b!598017 (arrayContainsKey!0 a!2986 lt!271723 #b00000000000000000000000000000000)))

(declare-fun lt!271722 () Unit!18796)

(assert (=> b!598017 (= lt!271722 lt!271721)))

(declare-fun res!383371 () Bool)

(assert (=> b!598017 (= res!383371 (= (seekEntryOrOpen!0 (select (arr!17766 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6213 #b00000000000000000000000000000000)))))

(assert (=> b!598017 (=> (not res!383371) (not e!341810))))

(declare-fun bm!32949 () Bool)

(assert (=> bm!32949 (= call!32952 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!598018 () Bool)

(assert (=> b!598018 (= e!341810 call!32952)))

(assert (= (and d!86879 (not res!383372)) b!598016))

(assert (= (and b!598016 c!67689) b!598017))

(assert (= (and b!598016 (not c!67689)) b!598015))

(assert (= (and b!598017 res!383371) b!598018))

(assert (= (or b!598018 b!598015) bm!32949))

(declare-fun m!575385 () Bool)

(assert (=> b!598016 m!575385))

(assert (=> b!598016 m!575385))

(declare-fun m!575387 () Bool)

(assert (=> b!598016 m!575387))

(assert (=> b!598017 m!575385))

(declare-fun m!575389 () Bool)

(assert (=> b!598017 m!575389))

(declare-fun m!575393 () Bool)

(assert (=> b!598017 m!575393))

(assert (=> b!598017 m!575385))

(declare-fun m!575395 () Bool)

(assert (=> b!598017 m!575395))

(declare-fun m!575397 () Bool)

(assert (=> bm!32949 m!575397))

(assert (=> b!597703 d!86879))

(declare-fun d!86889 () Bool)

(declare-fun res!383373 () Bool)

(declare-fun e!341811 () Bool)

(assert (=> d!86889 (=> res!383373 e!341811)))

(assert (=> d!86889 (= res!383373 (= (select (arr!17766 lt!271579) j!136) (select (arr!17766 a!2986) j!136)))))

(assert (=> d!86889 (= (arrayContainsKey!0 lt!271579 (select (arr!17766 a!2986) j!136) j!136) e!341811)))

(declare-fun b!598019 () Bool)

(declare-fun e!341812 () Bool)

(assert (=> b!598019 (= e!341811 e!341812)))

(declare-fun res!383374 () Bool)

(assert (=> b!598019 (=> (not res!383374) (not e!341812))))

(assert (=> b!598019 (= res!383374 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18130 lt!271579)))))

(declare-fun b!598020 () Bool)

(assert (=> b!598020 (= e!341812 (arrayContainsKey!0 lt!271579 (select (arr!17766 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!86889 (not res!383373)) b!598019))

(assert (= (and b!598019 res!383374) b!598020))

(declare-fun m!575399 () Bool)

(assert (=> d!86889 m!575399))

(assert (=> b!598020 m!575087))

(declare-fun m!575401 () Bool)

(assert (=> b!598020 m!575401))

(assert (=> b!597701 d!86889))

(declare-fun b!598077 () Bool)

(declare-fun c!67708 () Bool)

(declare-fun lt!271748 () (_ BitVec 64))

(assert (=> b!598077 (= c!67708 (= lt!271748 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!341851 () SeekEntryResult!6213)

(declare-fun e!341852 () SeekEntryResult!6213)

(assert (=> b!598077 (= e!341851 e!341852)))

(declare-fun b!598078 () Bool)

(declare-fun e!341853 () SeekEntryResult!6213)

(assert (=> b!598078 (= e!341853 Undefined!6213)))

(declare-fun b!598079 () Bool)

(declare-fun lt!271746 () SeekEntryResult!6213)

(assert (=> b!598079 (= e!341852 (MissingZero!6213 (index!27107 lt!271746)))))

(declare-fun b!598081 () Bool)

(assert (=> b!598081 (= e!341851 (Found!6213 (index!27107 lt!271746)))))

(declare-fun b!598082 () Bool)

(assert (=> b!598082 (= e!341853 e!341851)))

(assert (=> b!598082 (= lt!271748 (select (arr!17766 a!2986) (index!27107 lt!271746)))))

(declare-fun c!67710 () Bool)

(assert (=> b!598082 (= c!67710 (= lt!271748 k!1786))))

(declare-fun d!86891 () Bool)

(declare-fun lt!271747 () SeekEntryResult!6213)

(assert (=> d!86891 (and (or (is-Undefined!6213 lt!271747) (not (is-Found!6213 lt!271747)) (and (bvsge (index!27106 lt!271747) #b00000000000000000000000000000000) (bvslt (index!27106 lt!271747) (size!18130 a!2986)))) (or (is-Undefined!6213 lt!271747) (is-Found!6213 lt!271747) (not (is-MissingZero!6213 lt!271747)) (and (bvsge (index!27105 lt!271747) #b00000000000000000000000000000000) (bvslt (index!27105 lt!271747) (size!18130 a!2986)))) (or (is-Undefined!6213 lt!271747) (is-Found!6213 lt!271747) (is-MissingZero!6213 lt!271747) (not (is-MissingVacant!6213 lt!271747)) (and (bvsge (index!27108 lt!271747) #b00000000000000000000000000000000) (bvslt (index!27108 lt!271747) (size!18130 a!2986)))) (or (is-Undefined!6213 lt!271747) (ite (is-Found!6213 lt!271747) (= (select (arr!17766 a!2986) (index!27106 lt!271747)) k!1786) (ite (is-MissingZero!6213 lt!271747) (= (select (arr!17766 a!2986) (index!27105 lt!271747)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6213 lt!271747) (= (select (arr!17766 a!2986) (index!27108 lt!271747)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!86891 (= lt!271747 e!341853)))

(declare-fun c!67709 () Bool)

(assert (=> d!86891 (= c!67709 (and (is-Intermediate!6213 lt!271746) (undefined!7025 lt!271746)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37017 (_ BitVec 32)) SeekEntryResult!6213)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!86891 (= lt!271746 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!86891 (validMask!0 mask!3053)))

(assert (=> d!86891 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!271747)))

(declare-fun b!598080 () Bool)

(assert (=> b!598080 (= e!341852 (seekKeyOrZeroReturnVacant!0 (x!55940 lt!271746) (index!27107 lt!271746) (index!27107 lt!271746) k!1786 a!2986 mask!3053))))

(assert (= (and d!86891 c!67709) b!598078))

(assert (= (and d!86891 (not c!67709)) b!598082))

(assert (= (and b!598082 c!67710) b!598081))

(assert (= (and b!598082 (not c!67710)) b!598077))

(assert (= (and b!598077 c!67708) b!598079))

(assert (= (and b!598077 (not c!67708)) b!598080))

(declare-fun m!575437 () Bool)

(assert (=> b!598082 m!575437))

(declare-fun m!575439 () Bool)

(assert (=> d!86891 m!575439))

(declare-fun m!575441 () Bool)

(assert (=> d!86891 m!575441))

(declare-fun m!575443 () Bool)

(assert (=> d!86891 m!575443))

(declare-fun m!575445 () Bool)

(assert (=> d!86891 m!575445))

(assert (=> d!86891 m!575439))

(declare-fun m!575447 () Bool)

(assert (=> d!86891 m!575447))

(assert (=> d!86891 m!575129))

(declare-fun m!575449 () Bool)

(assert (=> b!598080 m!575449))

(assert (=> b!597691 d!86891))

(declare-fun d!86905 () Bool)

(declare-fun lt!271755 () Bool)

(declare-fun content!237 (List!11860) (Set (_ BitVec 64)))

(assert (=> d!86905 (= lt!271755 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!237 Nil!11857)))))

(declare-fun e!341864 () Bool)

(assert (=> d!86905 (= lt!271755 e!341864)))

(declare-fun res!383400 () Bool)

(assert (=> d!86905 (=> (not res!383400) (not e!341864))))

(assert (=> d!86905 (= res!383400 (is-Cons!11856 Nil!11857))))

(assert (=> d!86905 (= (contains!2960 Nil!11857 #b0000000000000000000000000000000000000000000000000000000000000000) lt!271755)))

(declare-fun b!598099 () Bool)

(declare-fun e!341865 () Bool)

(assert (=> b!598099 (= e!341864 e!341865)))

(declare-fun res!383399 () Bool)

(assert (=> b!598099 (=> res!383399 e!341865)))

(assert (=> b!598099 (= res!383399 (= (h!12901 Nil!11857) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!598100 () Bool)

(assert (=> b!598100 (= e!341865 (contains!2960 (t!18096 Nil!11857) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!86905 res!383400) b!598099))

(assert (= (and b!598099 (not res!383399)) b!598100))

(declare-fun m!575467 () Bool)

(assert (=> d!86905 m!575467))

(declare-fun m!575469 () Bool)

(assert (=> d!86905 m!575469))

(declare-fun m!575471 () Bool)

(assert (=> b!598100 m!575471))

(assert (=> b!597702 d!86905))

(declare-fun d!86911 () Bool)

(declare-fun res!383408 () Bool)

(declare-fun e!341874 () Bool)

(assert (=> d!86911 (=> res!383408 e!341874)))

(assert (=> d!86911 (= res!383408 (bvsge #b00000000000000000000000000000000 (size!18130 lt!271579)))))

(assert (=> d!86911 (= (arrayNoDuplicates!0 lt!271579 #b00000000000000000000000000000000 Nil!11857) e!341874)))

(declare-fun b!598111 () Bool)

(declare-fun e!341877 () Bool)

(declare-fun e!341876 () Bool)

(assert (=> b!598111 (= e!341877 e!341876)))

(declare-fun c!67719 () Bool)

(assert (=> b!598111 (= c!67719 (validKeyInArray!0 (select (arr!17766 lt!271579) #b00000000000000000000000000000000)))))

(declare-fun bm!32955 () Bool)

(declare-fun call!32958 () Bool)

(assert (=> bm!32955 (= call!32958 (arrayNoDuplicates!0 lt!271579 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!67719 (Cons!11856 (select (arr!17766 lt!271579) #b00000000000000000000000000000000) Nil!11857) Nil!11857)))))

(declare-fun b!598112 () Bool)

(declare-fun e!341875 () Bool)

(assert (=> b!598112 (= e!341875 (contains!2960 Nil!11857 (select (arr!17766 lt!271579) #b00000000000000000000000000000000)))))

(declare-fun b!598113 () Bool)

(assert (=> b!598113 (= e!341876 call!32958)))

(declare-fun b!598114 () Bool)

(assert (=> b!598114 (= e!341874 e!341877)))

(declare-fun res!383407 () Bool)

(assert (=> b!598114 (=> (not res!383407) (not e!341877))))

(assert (=> b!598114 (= res!383407 (not e!341875))))

(declare-fun res!383409 () Bool)

(assert (=> b!598114 (=> (not res!383409) (not e!341875))))

(assert (=> b!598114 (= res!383409 (validKeyInArray!0 (select (arr!17766 lt!271579) #b00000000000000000000000000000000)))))

(declare-fun b!598115 () Bool)

(assert (=> b!598115 (= e!341876 call!32958)))

(assert (= (and d!86911 (not res!383408)) b!598114))

(assert (= (and b!598114 res!383409) b!598112))

(assert (= (and b!598114 res!383407) b!598111))

(assert (= (and b!598111 c!67719) b!598115))

(assert (= (and b!598111 (not c!67719)) b!598113))

(assert (= (or b!598115 b!598113) bm!32955))

(declare-fun m!575473 () Bool)

(assert (=> b!598111 m!575473))

(assert (=> b!598111 m!575473))

(declare-fun m!575475 () Bool)

(assert (=> b!598111 m!575475))

(assert (=> bm!32955 m!575473))

(declare-fun m!575477 () Bool)

(assert (=> bm!32955 m!575477))

(assert (=> b!598112 m!575473))

(assert (=> b!598112 m!575473))

(declare-fun m!575479 () Bool)

(assert (=> b!598112 m!575479))

(assert (=> b!598114 m!575473))

(assert (=> b!598114 m!575473))

(assert (=> b!598114 m!575475))

(assert (=> b!597689 d!86911))

(declare-fun d!86913 () Bool)

(declare-fun e!341880 () Bool)

(assert (=> d!86913 e!341880))

(declare-fun res!383412 () Bool)

(assert (=> d!86913 (=> (not res!383412) (not e!341880))))

(assert (=> d!86913 (= res!383412 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18130 a!2986))))))

(declare-fun lt!271760 () Unit!18796)

(declare-fun choose!41 (array!37017 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11860) Unit!18796)

(assert (=> d!86913 (= lt!271760 (choose!41 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11857))))

(assert (=> d!86913 (bvslt (size!18130 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!86913 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11857) lt!271760)))

(declare-fun b!598118 () Bool)

(assert (=> b!598118 (= e!341880 (arrayNoDuplicates!0 (array!37018 (store (arr!17766 a!2986) i!1108 k!1786) (size!18130 a!2986)) #b00000000000000000000000000000000 Nil!11857))))

(assert (= (and d!86913 res!383412) b!598118))

(declare-fun m!575481 () Bool)

(assert (=> d!86913 m!575481))

(assert (=> b!598118 m!575095))

(declare-fun m!575483 () Bool)

(assert (=> b!598118 m!575483))

(assert (=> b!597689 d!86913))

(declare-fun d!86915 () Bool)

(declare-fun res!383415 () Bool)

(declare-fun e!341883 () Bool)

(assert (=> d!86915 (=> res!383415 e!341883)))

(assert (=> d!86915 (= res!383415 (= (select (arr!17766 lt!271579) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!17766 a!2986) j!136)))))

(assert (=> d!86915 (= (arrayContainsKey!0 lt!271579 (select (arr!17766 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!341883)))

(declare-fun b!598121 () Bool)

(declare-fun e!341884 () Bool)

(assert (=> b!598121 (= e!341883 e!341884)))

(declare-fun res!383416 () Bool)

(assert (=> b!598121 (=> (not res!383416) (not e!341884))))

(assert (=> b!598121 (= res!383416 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18130 lt!271579)))))

(declare-fun b!598122 () Bool)

(assert (=> b!598122 (= e!341884 (arrayContainsKey!0 lt!271579 (select (arr!17766 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!86915 (not res!383415)) b!598121))

(assert (= (and b!598121 res!383416) b!598122))

(declare-fun m!575485 () Bool)

(assert (=> d!86915 m!575485))

(assert (=> b!598122 m!575087))

(declare-fun m!575487 () Bool)

(assert (=> b!598122 m!575487))

(assert (=> b!597689 d!86915))

(declare-fun d!86917 () Bool)

(assert (=> d!86917 (arrayContainsKey!0 lt!271579 (select (arr!17766 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!271764 () Unit!18796)

(declare-fun choose!114 (array!37017 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18796)

(assert (=> d!86917 (= lt!271764 (choose!114 lt!271579 (select (arr!17766 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!86917 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!86917 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!271579 (select (arr!17766 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!271764)))

(declare-fun bs!18379 () Bool)

(assert (= bs!18379 d!86917))

(assert (=> bs!18379 m!575087))

(assert (=> bs!18379 m!575107))

(assert (=> bs!18379 m!575087))

(declare-fun m!575489 () Bool)

(assert (=> bs!18379 m!575489))

(assert (=> b!597689 d!86917))

(declare-fun d!86919 () Bool)

(declare-fun res!383418 () Bool)

(declare-fun e!341886 () Bool)

(assert (=> d!86919 (=> res!383418 e!341886)))

(assert (=> d!86919 (= res!383418 (= (select (arr!17766 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!86919 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!341886)))

(declare-fun b!598124 () Bool)

(declare-fun e!341887 () Bool)

(assert (=> b!598124 (= e!341886 e!341887)))

(declare-fun res!383419 () Bool)

(assert (=> b!598124 (=> (not res!383419) (not e!341887))))

(assert (=> b!598124 (= res!383419 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18130 a!2986)))))

(declare-fun b!598125 () Bool)

(assert (=> b!598125 (= e!341887 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!86919 (not res!383418)) b!598124))

(assert (= (and b!598124 res!383419) b!598125))

(assert (=> d!86919 m!575385))

(declare-fun m!575495 () Bool)

(assert (=> b!598125 m!575495))

(assert (=> b!597700 d!86919))

(declare-fun b!598126 () Bool)

(declare-fun e!341889 () SeekEntryResult!6213)

(declare-fun e!341888 () SeekEntryResult!6213)

(assert (=> b!598126 (= e!341889 e!341888)))

(declare-fun lt!271765 () (_ BitVec 64))

(declare-fun c!67722 () Bool)

(assert (=> b!598126 (= c!67722 (= lt!271765 (select (arr!17766 a!2986) j!136)))))

(declare-fun b!598127 () Bool)

(assert (=> b!598127 (= e!341888 (Found!6213 lt!271580))))

(declare-fun b!598128 () Bool)

(declare-fun e!341890 () SeekEntryResult!6213)

(assert (=> b!598128 (= e!341890 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!271580 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!17766 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!598129 () Bool)

(assert (=> b!598129 (= e!341889 Undefined!6213)))

(declare-fun b!598130 () Bool)

(assert (=> b!598130 (= e!341890 (MissingVacant!6213 vacantSpotIndex!68))))

(declare-fun lt!271766 () SeekEntryResult!6213)

(declare-fun d!86921 () Bool)

(assert (=> d!86921 (and (or (is-Undefined!6213 lt!271766) (not (is-Found!6213 lt!271766)) (and (bvsge (index!27106 lt!271766) #b00000000000000000000000000000000) (bvslt (index!27106 lt!271766) (size!18130 a!2986)))) (or (is-Undefined!6213 lt!271766) (is-Found!6213 lt!271766) (not (is-MissingVacant!6213 lt!271766)) (not (= (index!27108 lt!271766) vacantSpotIndex!68)) (and (bvsge (index!27108 lt!271766) #b00000000000000000000000000000000) (bvslt (index!27108 lt!271766) (size!18130 a!2986)))) (or (is-Undefined!6213 lt!271766) (ite (is-Found!6213 lt!271766) (= (select (arr!17766 a!2986) (index!27106 lt!271766)) (select (arr!17766 a!2986) j!136)) (and (is-MissingVacant!6213 lt!271766) (= (index!27108 lt!271766) vacantSpotIndex!68) (= (select (arr!17766 a!2986) (index!27108 lt!271766)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!86921 (= lt!271766 e!341889)))

(declare-fun c!67720 () Bool)

(assert (=> d!86921 (= c!67720 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!86921 (= lt!271765 (select (arr!17766 a!2986) lt!271580))))

(assert (=> d!86921 (validMask!0 mask!3053)))

(assert (=> d!86921 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271580 vacantSpotIndex!68 (select (arr!17766 a!2986) j!136) a!2986 mask!3053) lt!271766)))

(declare-fun b!598131 () Bool)

(declare-fun c!67721 () Bool)

(assert (=> b!598131 (= c!67721 (= lt!271765 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!598131 (= e!341888 e!341890)))

(assert (= (and d!86921 c!67720) b!598129))

(assert (= (and d!86921 (not c!67720)) b!598126))

(assert (= (and b!598126 c!67722) b!598127))

(assert (= (and b!598126 (not c!67722)) b!598131))

(assert (= (and b!598131 c!67721) b!598130))

(assert (= (and b!598131 (not c!67721)) b!598128))

(declare-fun m!575497 () Bool)

(assert (=> b!598128 m!575497))

(assert (=> b!598128 m!575497))

(assert (=> b!598128 m!575087))

(declare-fun m!575499 () Bool)

(assert (=> b!598128 m!575499))

(declare-fun m!575501 () Bool)

(assert (=> d!86921 m!575501))

(declare-fun m!575503 () Bool)

(assert (=> d!86921 m!575503))

(declare-fun m!575505 () Bool)

(assert (=> d!86921 m!575505))

(assert (=> d!86921 m!575129))

(assert (=> b!597690 d!86921))

(declare-fun d!86925 () Bool)


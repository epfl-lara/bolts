; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53954 () Bool)

(assert start!53954)

(declare-fun b!588508 () Bool)

(declare-fun res!376280 () Bool)

(declare-fun e!336043 () Bool)

(assert (=> b!588508 (=> (not res!376280) (not e!336043))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!588508 (= res!376280 (validKeyInArray!0 k!1786))))

(declare-fun b!588509 () Bool)

(declare-fun res!376287 () Bool)

(declare-fun e!336044 () Bool)

(assert (=> b!588509 (=> (not res!376287) (not e!336044))))

(declare-datatypes ((array!36752 0))(
  ( (array!36753 (arr!17645 (Array (_ BitVec 32) (_ BitVec 64))) (size!18009 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36752)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36752 (_ BitVec 32)) Bool)

(assert (=> b!588509 (= res!376287 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!376288 () Bool)

(assert (=> start!53954 (=> (not res!376288) (not e!336043))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53954 (= res!376288 (validMask!0 mask!3053))))

(assert (=> start!53954 e!336043))

(assert (=> start!53954 true))

(declare-fun array_inv!13419 (array!36752) Bool)

(assert (=> start!53954 (array_inv!13419 a!2986)))

(declare-fun b!588510 () Bool)

(declare-fun res!376279 () Bool)

(assert (=> b!588510 (=> (not res!376279) (not e!336043))))

(declare-fun arrayContainsKey!0 (array!36752 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!588510 (= res!376279 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!588511 () Bool)

(declare-datatypes ((Unit!18312 0))(
  ( (Unit!18313) )
))
(declare-fun e!336047 () Unit!18312)

(declare-fun Unit!18314 () Unit!18312)

(assert (=> b!588511 (= e!336047 Unit!18314)))

(assert (=> b!588511 false))

(declare-fun b!588512 () Bool)

(declare-fun e!336048 () Bool)

(assert (=> b!588512 (= e!336044 e!336048)))

(declare-fun res!376286 () Bool)

(assert (=> b!588512 (=> (not res!376286) (not e!336048))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!588512 (= res!376286 (= (select (store (arr!17645 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!266887 () array!36752)

(assert (=> b!588512 (= lt!266887 (array!36753 (store (arr!17645 a!2986) i!1108 k!1786) (size!18009 a!2986)))))

(declare-fun b!588513 () Bool)

(declare-fun Unit!18315 () Unit!18312)

(assert (=> b!588513 (= e!336047 Unit!18315)))

(declare-fun b!588514 () Bool)

(declare-fun res!376285 () Bool)

(assert (=> b!588514 (=> (not res!376285) (not e!336044))))

(declare-datatypes ((List!11739 0))(
  ( (Nil!11736) (Cons!11735 (h!12780 (_ BitVec 64)) (t!17975 List!11739)) )
))
(declare-fun arrayNoDuplicates!0 (array!36752 (_ BitVec 32) List!11739) Bool)

(assert (=> b!588514 (= res!376285 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11736))))

(declare-fun b!588515 () Bool)

(assert (=> b!588515 (= e!336043 e!336044)))

(declare-fun res!376284 () Bool)

(assert (=> b!588515 (=> (not res!376284) (not e!336044))))

(declare-datatypes ((SeekEntryResult!6092 0))(
  ( (MissingZero!6092 (index!26598 (_ BitVec 32))) (Found!6092 (index!26599 (_ BitVec 32))) (Intermediate!6092 (undefined!6904 Bool) (index!26600 (_ BitVec 32)) (x!55421 (_ BitVec 32))) (Undefined!6092) (MissingVacant!6092 (index!26601 (_ BitVec 32))) )
))
(declare-fun lt!266881 () SeekEntryResult!6092)

(assert (=> b!588515 (= res!376284 (or (= lt!266881 (MissingZero!6092 i!1108)) (= lt!266881 (MissingVacant!6092 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36752 (_ BitVec 32)) SeekEntryResult!6092)

(assert (=> b!588515 (= lt!266881 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!588516 () Bool)

(declare-fun res!376278 () Bool)

(assert (=> b!588516 (=> (not res!376278) (not e!336044))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!588516 (= res!376278 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17645 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!588517 () Bool)

(declare-fun e!336045 () Bool)

(declare-fun lt!266886 () SeekEntryResult!6092)

(declare-fun lt!266882 () SeekEntryResult!6092)

(assert (=> b!588517 (= e!336045 (= lt!266886 lt!266882))))

(declare-fun b!588518 () Bool)

(declare-fun e!336046 () Bool)

(assert (=> b!588518 (= e!336046 (not true))))

(declare-fun lt!266884 () Unit!18312)

(assert (=> b!588518 (= lt!266884 e!336047)))

(declare-fun lt!266888 () (_ BitVec 64))

(declare-fun c!66482 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36752 (_ BitVec 32)) SeekEntryResult!6092)

(assert (=> b!588518 (= c!66482 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!266888 lt!266887 mask!3053) Undefined!6092))))

(assert (=> b!588518 e!336045))

(declare-fun res!376289 () Bool)

(assert (=> b!588518 (=> (not res!376289) (not e!336045))))

(declare-fun lt!266883 () (_ BitVec 32))

(assert (=> b!588518 (= res!376289 (= lt!266882 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266883 vacantSpotIndex!68 lt!266888 lt!266887 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!588518 (= lt!266882 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266883 vacantSpotIndex!68 (select (arr!17645 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!588518 (= lt!266888 (select (store (arr!17645 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!266885 () Unit!18312)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36752 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18312)

(assert (=> b!588518 (= lt!266885 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266883 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!588518 (= lt!266883 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!588519 () Bool)

(assert (=> b!588519 (= e!336048 e!336046)))

(declare-fun res!376283 () Bool)

(assert (=> b!588519 (=> (not res!376283) (not e!336046))))

(assert (=> b!588519 (= res!376283 (and (= lt!266886 (Found!6092 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17645 a!2986) index!984) (select (arr!17645 a!2986) j!136))) (not (= (select (arr!17645 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!588519 (= lt!266886 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17645 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!588520 () Bool)

(declare-fun res!376281 () Bool)

(assert (=> b!588520 (=> (not res!376281) (not e!336043))))

(assert (=> b!588520 (= res!376281 (validKeyInArray!0 (select (arr!17645 a!2986) j!136)))))

(declare-fun b!588521 () Bool)

(declare-fun res!376282 () Bool)

(assert (=> b!588521 (=> (not res!376282) (not e!336043))))

(assert (=> b!588521 (= res!376282 (and (= (size!18009 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18009 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18009 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!53954 res!376288) b!588521))

(assert (= (and b!588521 res!376282) b!588520))

(assert (= (and b!588520 res!376281) b!588508))

(assert (= (and b!588508 res!376280) b!588510))

(assert (= (and b!588510 res!376279) b!588515))

(assert (= (and b!588515 res!376284) b!588509))

(assert (= (and b!588509 res!376287) b!588514))

(assert (= (and b!588514 res!376285) b!588516))

(assert (= (and b!588516 res!376278) b!588512))

(assert (= (and b!588512 res!376286) b!588519))

(assert (= (and b!588519 res!376283) b!588518))

(assert (= (and b!588518 res!376289) b!588517))

(assert (= (and b!588518 c!66482) b!588511))

(assert (= (and b!588518 (not c!66482)) b!588513))

(declare-fun m!567123 () Bool)

(assert (=> b!588519 m!567123))

(declare-fun m!567125 () Bool)

(assert (=> b!588519 m!567125))

(assert (=> b!588519 m!567125))

(declare-fun m!567127 () Bool)

(assert (=> b!588519 m!567127))

(declare-fun m!567129 () Bool)

(assert (=> b!588512 m!567129))

(declare-fun m!567131 () Bool)

(assert (=> b!588512 m!567131))

(declare-fun m!567133 () Bool)

(assert (=> b!588518 m!567133))

(declare-fun m!567135 () Bool)

(assert (=> b!588518 m!567135))

(assert (=> b!588518 m!567125))

(assert (=> b!588518 m!567129))

(declare-fun m!567137 () Bool)

(assert (=> b!588518 m!567137))

(assert (=> b!588518 m!567125))

(declare-fun m!567139 () Bool)

(assert (=> b!588518 m!567139))

(declare-fun m!567141 () Bool)

(assert (=> b!588518 m!567141))

(declare-fun m!567143 () Bool)

(assert (=> b!588518 m!567143))

(declare-fun m!567145 () Bool)

(assert (=> b!588514 m!567145))

(declare-fun m!567147 () Bool)

(assert (=> b!588515 m!567147))

(declare-fun m!567149 () Bool)

(assert (=> b!588508 m!567149))

(assert (=> b!588520 m!567125))

(assert (=> b!588520 m!567125))

(declare-fun m!567151 () Bool)

(assert (=> b!588520 m!567151))

(declare-fun m!567153 () Bool)

(assert (=> b!588510 m!567153))

(declare-fun m!567155 () Bool)

(assert (=> b!588509 m!567155))

(declare-fun m!567157 () Bool)

(assert (=> b!588516 m!567157))

(declare-fun m!567159 () Bool)

(assert (=> start!53954 m!567159))

(declare-fun m!567161 () Bool)

(assert (=> start!53954 m!567161))

(push 1)


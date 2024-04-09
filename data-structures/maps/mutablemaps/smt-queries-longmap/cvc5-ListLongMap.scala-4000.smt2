; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54264 () Bool)

(assert start!54264)

(declare-fun b!592595 () Bool)

(declare-fun e!338449 () Bool)

(declare-fun e!338452 () Bool)

(assert (=> b!592595 (= e!338449 e!338452)))

(declare-fun res!379400 () Bool)

(assert (=> b!592595 (=> res!379400 e!338452)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!269049 () (_ BitVec 64))

(declare-fun lt!269051 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36894 0))(
  ( (array!36895 (arr!17712 (Array (_ BitVec 32) (_ BitVec 64))) (size!18076 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36894)

(assert (=> b!592595 (= res!379400 (or (not (= (select (arr!17712 a!2986) j!136) lt!269049)) (not (= (select (arr!17712 a!2986) j!136) lt!269051)) (bvsge j!136 index!984)))))

(declare-fun b!592596 () Bool)

(declare-fun res!379406 () Bool)

(declare-fun e!338447 () Bool)

(assert (=> b!592596 (=> (not res!379406) (not e!338447))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!592596 (= res!379406 (and (= (size!18076 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18076 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18076 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!592597 () Bool)

(declare-fun e!338451 () Bool)

(declare-datatypes ((SeekEntryResult!6159 0))(
  ( (MissingZero!6159 (index!26874 (_ BitVec 32))) (Found!6159 (index!26875 (_ BitVec 32))) (Intermediate!6159 (undefined!6971 Bool) (index!26876 (_ BitVec 32)) (x!55697 (_ BitVec 32))) (Undefined!6159) (MissingVacant!6159 (index!26877 (_ BitVec 32))) )
))
(declare-fun lt!269053 () SeekEntryResult!6159)

(declare-fun lt!269055 () SeekEntryResult!6159)

(assert (=> b!592597 (= e!338451 (= lt!269053 lt!269055))))

(declare-fun b!592598 () Bool)

(declare-datatypes ((Unit!18580 0))(
  ( (Unit!18581) )
))
(declare-fun e!338442 () Unit!18580)

(declare-fun Unit!18582 () Unit!18580)

(assert (=> b!592598 (= e!338442 Unit!18582)))

(assert (=> b!592598 false))

(declare-fun b!592599 () Bool)

(declare-fun e!338450 () Bool)

(declare-fun e!338444 () Bool)

(assert (=> b!592599 (= e!338450 e!338444)))

(declare-fun res!379412 () Bool)

(assert (=> b!592599 (=> (not res!379412) (not e!338444))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!592599 (= res!379412 (and (= lt!269053 (Found!6159 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17712 a!2986) index!984) (select (arr!17712 a!2986) j!136))) (not (= (select (arr!17712 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36894 (_ BitVec 32)) SeekEntryResult!6159)

(assert (=> b!592599 (= lt!269053 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17712 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!592600 () Bool)

(declare-fun e!338445 () Bool)

(assert (=> b!592600 (= e!338447 e!338445)))

(declare-fun res!379411 () Bool)

(assert (=> b!592600 (=> (not res!379411) (not e!338445))))

(declare-fun lt!269048 () SeekEntryResult!6159)

(assert (=> b!592600 (= res!379411 (or (= lt!269048 (MissingZero!6159 i!1108)) (= lt!269048 (MissingVacant!6159 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36894 (_ BitVec 32)) SeekEntryResult!6159)

(assert (=> b!592600 (= lt!269048 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!592601 () Bool)

(declare-fun Unit!18583 () Unit!18580)

(assert (=> b!592601 (= e!338442 Unit!18583)))

(declare-fun b!592602 () Bool)

(declare-fun res!379414 () Bool)

(assert (=> b!592602 (=> (not res!379414) (not e!338445))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36894 (_ BitVec 32)) Bool)

(assert (=> b!592602 (= res!379414 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!592603 () Bool)

(declare-fun e!338443 () Bool)

(assert (=> b!592603 (= e!338443 (bvsle #b00000000000000000000000000000000 (size!18076 a!2986)))))

(declare-fun lt!269050 () array!36894)

(declare-fun arrayContainsKey!0 (array!36894 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!592603 (arrayContainsKey!0 lt!269050 (select (arr!17712 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!269052 () Unit!18580)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36894 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18580)

(assert (=> b!592603 (= lt!269052 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!269050 (select (arr!17712 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!592604 () Bool)

(declare-fun e!338446 () Bool)

(assert (=> b!592604 (= e!338446 e!338443)))

(declare-fun res!379415 () Bool)

(assert (=> b!592604 (=> res!379415 e!338443)))

(assert (=> b!592604 (= res!379415 (or (not (= (select (arr!17712 a!2986) j!136) lt!269049)) (not (= (select (arr!17712 a!2986) j!136) lt!269051)) (bvsge j!136 index!984)))))

(assert (=> b!592604 e!338449))

(declare-fun res!379401 () Bool)

(assert (=> b!592604 (=> (not res!379401) (not e!338449))))

(assert (=> b!592604 (= res!379401 (= lt!269051 (select (arr!17712 a!2986) j!136)))))

(assert (=> b!592604 (= lt!269051 (select (store (arr!17712 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!592605 () Bool)

(assert (=> b!592605 (= e!338444 (not e!338446))))

(declare-fun res!379409 () Bool)

(assert (=> b!592605 (=> res!379409 e!338446)))

(declare-fun lt!269058 () SeekEntryResult!6159)

(assert (=> b!592605 (= res!379409 (not (= lt!269058 (Found!6159 index!984))))))

(declare-fun lt!269056 () Unit!18580)

(assert (=> b!592605 (= lt!269056 e!338442)))

(declare-fun c!66965 () Bool)

(assert (=> b!592605 (= c!66965 (= lt!269058 Undefined!6159))))

(assert (=> b!592605 (= lt!269058 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!269049 lt!269050 mask!3053))))

(assert (=> b!592605 e!338451))

(declare-fun res!379413 () Bool)

(assert (=> b!592605 (=> (not res!379413) (not e!338451))))

(declare-fun lt!269057 () (_ BitVec 32))

(assert (=> b!592605 (= res!379413 (= lt!269055 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269057 vacantSpotIndex!68 lt!269049 lt!269050 mask!3053)))))

(assert (=> b!592605 (= lt!269055 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269057 vacantSpotIndex!68 (select (arr!17712 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!592605 (= lt!269049 (select (store (arr!17712 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!269054 () Unit!18580)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36894 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18580)

(assert (=> b!592605 (= lt!269054 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!269057 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!592605 (= lt!269057 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!592606 () Bool)

(assert (=> b!592606 (= e!338445 e!338450)))

(declare-fun res!379410 () Bool)

(assert (=> b!592606 (=> (not res!379410) (not e!338450))))

(assert (=> b!592606 (= res!379410 (= (select (store (arr!17712 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!592606 (= lt!269050 (array!36895 (store (arr!17712 a!2986) i!1108 k!1786) (size!18076 a!2986)))))

(declare-fun b!592607 () Bool)

(declare-fun e!338441 () Bool)

(assert (=> b!592607 (= e!338441 (arrayContainsKey!0 lt!269050 (select (arr!17712 a!2986) j!136) index!984))))

(declare-fun b!592608 () Bool)

(declare-fun res!379405 () Bool)

(assert (=> b!592608 (=> (not res!379405) (not e!338445))))

(assert (=> b!592608 (= res!379405 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17712 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!592609 () Bool)

(declare-fun res!379403 () Bool)

(assert (=> b!592609 (=> (not res!379403) (not e!338445))))

(declare-datatypes ((List!11806 0))(
  ( (Nil!11803) (Cons!11802 (h!12847 (_ BitVec 64)) (t!18042 List!11806)) )
))
(declare-fun arrayNoDuplicates!0 (array!36894 (_ BitVec 32) List!11806) Bool)

(assert (=> b!592609 (= res!379403 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11803))))

(declare-fun b!592611 () Bool)

(declare-fun res!379407 () Bool)

(assert (=> b!592611 (=> (not res!379407) (not e!338447))))

(assert (=> b!592611 (= res!379407 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!592610 () Bool)

(assert (=> b!592610 (= e!338452 e!338441)))

(declare-fun res!379399 () Bool)

(assert (=> b!592610 (=> (not res!379399) (not e!338441))))

(assert (=> b!592610 (= res!379399 (arrayContainsKey!0 lt!269050 (select (arr!17712 a!2986) j!136) j!136))))

(declare-fun res!379408 () Bool)

(assert (=> start!54264 (=> (not res!379408) (not e!338447))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54264 (= res!379408 (validMask!0 mask!3053))))

(assert (=> start!54264 e!338447))

(assert (=> start!54264 true))

(declare-fun array_inv!13486 (array!36894) Bool)

(assert (=> start!54264 (array_inv!13486 a!2986)))

(declare-fun b!592612 () Bool)

(declare-fun res!379404 () Bool)

(assert (=> b!592612 (=> (not res!379404) (not e!338447))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!592612 (= res!379404 (validKeyInArray!0 (select (arr!17712 a!2986) j!136)))))

(declare-fun b!592613 () Bool)

(declare-fun res!379402 () Bool)

(assert (=> b!592613 (=> (not res!379402) (not e!338447))))

(assert (=> b!592613 (= res!379402 (validKeyInArray!0 k!1786))))

(assert (= (and start!54264 res!379408) b!592596))

(assert (= (and b!592596 res!379406) b!592612))

(assert (= (and b!592612 res!379404) b!592613))

(assert (= (and b!592613 res!379402) b!592611))

(assert (= (and b!592611 res!379407) b!592600))

(assert (= (and b!592600 res!379411) b!592602))

(assert (= (and b!592602 res!379414) b!592609))

(assert (= (and b!592609 res!379403) b!592608))

(assert (= (and b!592608 res!379405) b!592606))

(assert (= (and b!592606 res!379410) b!592599))

(assert (= (and b!592599 res!379412) b!592605))

(assert (= (and b!592605 res!379413) b!592597))

(assert (= (and b!592605 c!66965) b!592598))

(assert (= (and b!592605 (not c!66965)) b!592601))

(assert (= (and b!592605 (not res!379409)) b!592604))

(assert (= (and b!592604 res!379401) b!592595))

(assert (= (and b!592595 (not res!379400)) b!592610))

(assert (= (and b!592610 res!379399) b!592607))

(assert (= (and b!592604 (not res!379415)) b!592603))

(declare-fun m!570687 () Bool)

(assert (=> b!592611 m!570687))

(declare-fun m!570689 () Bool)

(assert (=> b!592603 m!570689))

(assert (=> b!592603 m!570689))

(declare-fun m!570691 () Bool)

(assert (=> b!592603 m!570691))

(assert (=> b!592603 m!570689))

(declare-fun m!570693 () Bool)

(assert (=> b!592603 m!570693))

(declare-fun m!570695 () Bool)

(assert (=> b!592608 m!570695))

(assert (=> b!592607 m!570689))

(assert (=> b!592607 m!570689))

(declare-fun m!570697 () Bool)

(assert (=> b!592607 m!570697))

(declare-fun m!570699 () Bool)

(assert (=> b!592600 m!570699))

(assert (=> b!592610 m!570689))

(assert (=> b!592610 m!570689))

(declare-fun m!570701 () Bool)

(assert (=> b!592610 m!570701))

(assert (=> b!592612 m!570689))

(assert (=> b!592612 m!570689))

(declare-fun m!570703 () Bool)

(assert (=> b!592612 m!570703))

(declare-fun m!570705 () Bool)

(assert (=> b!592609 m!570705))

(declare-fun m!570707 () Bool)

(assert (=> b!592606 m!570707))

(declare-fun m!570709 () Bool)

(assert (=> b!592606 m!570709))

(assert (=> b!592604 m!570689))

(assert (=> b!592604 m!570707))

(declare-fun m!570711 () Bool)

(assert (=> b!592604 m!570711))

(declare-fun m!570713 () Bool)

(assert (=> b!592599 m!570713))

(assert (=> b!592599 m!570689))

(assert (=> b!592599 m!570689))

(declare-fun m!570715 () Bool)

(assert (=> b!592599 m!570715))

(declare-fun m!570717 () Bool)

(assert (=> b!592602 m!570717))

(declare-fun m!570719 () Bool)

(assert (=> start!54264 m!570719))

(declare-fun m!570721 () Bool)

(assert (=> start!54264 m!570721))

(assert (=> b!592595 m!570689))

(declare-fun m!570723 () Bool)

(assert (=> b!592613 m!570723))

(declare-fun m!570725 () Bool)

(assert (=> b!592605 m!570725))

(assert (=> b!592605 m!570689))

(declare-fun m!570727 () Bool)

(assert (=> b!592605 m!570727))

(declare-fun m!570729 () Bool)

(assert (=> b!592605 m!570729))

(assert (=> b!592605 m!570689))

(assert (=> b!592605 m!570707))

(declare-fun m!570731 () Bool)

(assert (=> b!592605 m!570731))

(declare-fun m!570733 () Bool)

(assert (=> b!592605 m!570733))

(declare-fun m!570735 () Bool)

(assert (=> b!592605 m!570735))

(push 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53944 () Bool)

(assert start!53944)

(declare-fun b!588312 () Bool)

(declare-fun e!335948 () Bool)

(declare-fun e!335947 () Bool)

(assert (=> b!588312 (= e!335948 e!335947)))

(declare-fun res!376100 () Bool)

(assert (=> b!588312 (=> (not res!376100) (not e!335947))))

(declare-datatypes ((SeekEntryResult!6087 0))(
  ( (MissingZero!6087 (index!26578 (_ BitVec 32))) (Found!6087 (index!26579 (_ BitVec 32))) (Intermediate!6087 (undefined!6899 Bool) (index!26580 (_ BitVec 32)) (x!55408 (_ BitVec 32))) (Undefined!6087) (MissingVacant!6087 (index!26581 (_ BitVec 32))) )
))
(declare-fun lt!266782 () SeekEntryResult!6087)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!588312 (= res!376100 (or (= lt!266782 (MissingZero!6087 i!1108)) (= lt!266782 (MissingVacant!6087 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!36742 0))(
  ( (array!36743 (arr!17640 (Array (_ BitVec 32) (_ BitVec 64))) (size!18004 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36742)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36742 (_ BitVec 32)) SeekEntryResult!6087)

(assert (=> b!588312 (= lt!266782 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!376103 () Bool)

(assert (=> start!53944 (=> (not res!376103) (not e!335948))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53944 (= res!376103 (validMask!0 mask!3053))))

(assert (=> start!53944 e!335948))

(assert (=> start!53944 true))

(declare-fun array_inv!13414 (array!36742) Bool)

(assert (=> start!53944 (array_inv!13414 a!2986)))

(declare-fun b!588313 () Bool)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun e!335949 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!588313 (= e!335949 (validKeyInArray!0 (select (store (arr!17640 a!2986) i!1108 k!1786) j!136)))))

(declare-fun b!588314 () Bool)

(declare-fun e!335950 () Bool)

(assert (=> b!588314 (= e!335947 e!335950)))

(declare-fun res!376102 () Bool)

(assert (=> b!588314 (=> (not res!376102) (not e!335950))))

(declare-fun lt!266783 () SeekEntryResult!6087)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!588314 (= res!376102 (and (= lt!266783 (Found!6087 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17640 a!2986) index!984) (select (arr!17640 a!2986) j!136))) (not (= (select (arr!17640 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36742 (_ BitVec 32)) SeekEntryResult!6087)

(assert (=> b!588314 (= lt!266783 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17640 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!588315 () Bool)

(declare-fun res!376108 () Bool)

(assert (=> b!588315 (=> (not res!376108) (not e!335947))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36742 (_ BitVec 32)) Bool)

(assert (=> b!588315 (= res!376108 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!588316 () Bool)

(declare-fun res!376101 () Bool)

(assert (=> b!588316 (=> (not res!376101) (not e!335947))))

(declare-datatypes ((List!11734 0))(
  ( (Nil!11731) (Cons!11730 (h!12775 (_ BitVec 64)) (t!17970 List!11734)) )
))
(declare-fun arrayNoDuplicates!0 (array!36742 (_ BitVec 32) List!11734) Bool)

(assert (=> b!588316 (= res!376101 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11731))))

(declare-fun b!588317 () Bool)

(declare-fun e!335945 () Bool)

(declare-fun lt!266785 () SeekEntryResult!6087)

(assert (=> b!588317 (= e!335945 (= lt!266783 lt!266785))))

(declare-fun b!588318 () Bool)

(declare-fun res!376104 () Bool)

(assert (=> b!588318 (=> (not res!376104) (not e!335947))))

(assert (=> b!588318 (= res!376104 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17640 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17640 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!588319 () Bool)

(declare-fun res!376098 () Bool)

(assert (=> b!588319 (=> (not res!376098) (not e!335948))))

(declare-fun arrayContainsKey!0 (array!36742 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!588319 (= res!376098 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!588320 () Bool)

(declare-fun res!376105 () Bool)

(assert (=> b!588320 (=> (not res!376105) (not e!335948))))

(assert (=> b!588320 (= res!376105 (validKeyInArray!0 (select (arr!17640 a!2986) j!136)))))

(declare-fun b!588321 () Bool)

(declare-fun res!376106 () Bool)

(assert (=> b!588321 (=> (not res!376106) (not e!335948))))

(assert (=> b!588321 (= res!376106 (validKeyInArray!0 k!1786))))

(declare-fun b!588322 () Bool)

(declare-fun res!376099 () Bool)

(assert (=> b!588322 (=> (not res!376099) (not e!335948))))

(assert (=> b!588322 (= res!376099 (and (= (size!18004 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18004 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18004 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!588323 () Bool)

(assert (=> b!588323 (= e!335950 (not e!335949))))

(declare-fun res!376109 () Bool)

(assert (=> b!588323 (=> res!376109 e!335949)))

(assert (=> b!588323 (= res!376109 (bvslt mask!3053 #b00000000000000000000000000000000))))

(assert (=> b!588323 e!335945))

(declare-fun res!376107 () Bool)

(assert (=> b!588323 (=> (not res!376107) (not e!335945))))

(declare-fun lt!266784 () (_ BitVec 32))

(assert (=> b!588323 (= res!376107 (= lt!266785 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266784 vacantSpotIndex!68 (select (store (arr!17640 a!2986) i!1108 k!1786) j!136) (array!36743 (store (arr!17640 a!2986) i!1108 k!1786) (size!18004 a!2986)) mask!3053)))))

(assert (=> b!588323 (= lt!266785 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266784 vacantSpotIndex!68 (select (arr!17640 a!2986) j!136) a!2986 mask!3053))))

(declare-datatypes ((Unit!18298 0))(
  ( (Unit!18299) )
))
(declare-fun lt!266786 () Unit!18298)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36742 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18298)

(assert (=> b!588323 (= lt!266786 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266784 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!588323 (= lt!266784 (nextIndex!0 index!984 x!910 mask!3053))))

(assert (= (and start!53944 res!376103) b!588322))

(assert (= (and b!588322 res!376099) b!588320))

(assert (= (and b!588320 res!376105) b!588321))

(assert (= (and b!588321 res!376106) b!588319))

(assert (= (and b!588319 res!376098) b!588312))

(assert (= (and b!588312 res!376100) b!588315))

(assert (= (and b!588315 res!376108) b!588316))

(assert (= (and b!588316 res!376101) b!588318))

(assert (= (and b!588318 res!376104) b!588314))

(assert (= (and b!588314 res!376102) b!588323))

(assert (= (and b!588323 res!376107) b!588317))

(assert (= (and b!588323 (not res!376109)) b!588313))

(declare-fun m!566923 () Bool)

(assert (=> b!588312 m!566923))

(declare-fun m!566925 () Bool)

(assert (=> b!588316 m!566925))

(declare-fun m!566927 () Bool)

(assert (=> b!588318 m!566927))

(declare-fun m!566929 () Bool)

(assert (=> b!588318 m!566929))

(declare-fun m!566931 () Bool)

(assert (=> b!588318 m!566931))

(assert (=> b!588313 m!566929))

(declare-fun m!566933 () Bool)

(assert (=> b!588313 m!566933))

(assert (=> b!588313 m!566933))

(declare-fun m!566935 () Bool)

(assert (=> b!588313 m!566935))

(declare-fun m!566937 () Bool)

(assert (=> b!588321 m!566937))

(assert (=> b!588323 m!566933))

(declare-fun m!566939 () Bool)

(assert (=> b!588323 m!566939))

(declare-fun m!566941 () Bool)

(assert (=> b!588323 m!566941))

(assert (=> b!588323 m!566939))

(assert (=> b!588323 m!566929))

(declare-fun m!566943 () Bool)

(assert (=> b!588323 m!566943))

(declare-fun m!566945 () Bool)

(assert (=> b!588323 m!566945))

(assert (=> b!588323 m!566933))

(declare-fun m!566947 () Bool)

(assert (=> b!588323 m!566947))

(assert (=> b!588320 m!566939))

(assert (=> b!588320 m!566939))

(declare-fun m!566949 () Bool)

(assert (=> b!588320 m!566949))

(declare-fun m!566951 () Bool)

(assert (=> b!588314 m!566951))

(assert (=> b!588314 m!566939))

(assert (=> b!588314 m!566939))

(declare-fun m!566953 () Bool)

(assert (=> b!588314 m!566953))

(declare-fun m!566955 () Bool)

(assert (=> b!588319 m!566955))

(declare-fun m!566957 () Bool)

(assert (=> start!53944 m!566957))

(declare-fun m!566959 () Bool)

(assert (=> start!53944 m!566959))

(declare-fun m!566961 () Bool)

(assert (=> b!588315 m!566961))

(push 1)


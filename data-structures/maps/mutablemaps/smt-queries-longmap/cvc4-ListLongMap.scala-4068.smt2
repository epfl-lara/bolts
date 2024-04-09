; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55918 () Bool)

(assert start!55918)

(declare-fun b!611752 () Bool)

(declare-fun e!350620 () Bool)

(declare-datatypes ((SeekEntryResult!6365 0))(
  ( (MissingZero!6365 (index!27743 (_ BitVec 32))) (Found!6365 (index!27744 (_ BitVec 32))) (Intermediate!6365 (undefined!7177 Bool) (index!27745 (_ BitVec 32)) (x!56582 (_ BitVec 32))) (Undefined!6365) (MissingVacant!6365 (index!27746 (_ BitVec 32))) )
))
(declare-fun lt!280023 () SeekEntryResult!6365)

(declare-fun lt!280028 () SeekEntryResult!6365)

(assert (=> b!611752 (= e!350620 (= lt!280023 lt!280028))))

(declare-fun b!611753 () Bool)

(declare-fun e!350613 () Bool)

(declare-fun e!350617 () Bool)

(assert (=> b!611753 (= e!350613 e!350617)))

(declare-fun res!393594 () Bool)

(assert (=> b!611753 (=> (not res!393594) (not e!350617))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!37351 0))(
  ( (array!37352 (arr!17918 (Array (_ BitVec 32) (_ BitVec 64))) (size!18282 (_ BitVec 32))) )
))
(declare-fun lt!280036 () array!37351)

(declare-fun a!2986 () array!37351)

(declare-fun arrayContainsKey!0 (array!37351 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!611753 (= res!393594 (arrayContainsKey!0 lt!280036 (select (arr!17918 a!2986) j!136) j!136))))

(declare-fun b!611754 () Bool)

(declare-fun e!350615 () Bool)

(declare-fun e!350621 () Bool)

(assert (=> b!611754 (= e!350615 e!350621)))

(declare-fun res!393578 () Bool)

(assert (=> b!611754 (=> (not res!393578) (not e!350621))))

(declare-fun lt!280033 () SeekEntryResult!6365)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!611754 (= res!393578 (or (= lt!280033 (MissingZero!6365 i!1108)) (= lt!280033 (MissingVacant!6365 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37351 (_ BitVec 32)) SeekEntryResult!6365)

(assert (=> b!611754 (= lt!280033 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!611755 () Bool)

(declare-fun e!350623 () Bool)

(declare-fun e!350619 () Bool)

(assert (=> b!611755 (= e!350623 e!350619)))

(declare-fun res!393592 () Bool)

(assert (=> b!611755 (=> res!393592 e!350619)))

(declare-fun lt!280030 () (_ BitVec 64))

(declare-fun lt!280038 () (_ BitVec 64))

(assert (=> b!611755 (= res!393592 (or (not (= (select (arr!17918 a!2986) j!136) lt!280038)) (not (= (select (arr!17918 a!2986) j!136) lt!280030))))))

(declare-fun e!350618 () Bool)

(assert (=> b!611755 e!350618))

(declare-fun res!393581 () Bool)

(assert (=> b!611755 (=> (not res!393581) (not e!350618))))

(assert (=> b!611755 (= res!393581 (= lt!280030 (select (arr!17918 a!2986) j!136)))))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!611755 (= lt!280030 (select (store (arr!17918 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!611756 () Bool)

(declare-fun res!393580 () Bool)

(assert (=> b!611756 (=> (not res!393580) (not e!350615))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!611756 (= res!393580 (validKeyInArray!0 k!1786))))

(declare-fun b!611757 () Bool)

(declare-fun res!393587 () Bool)

(assert (=> b!611757 (=> (not res!393587) (not e!350615))))

(assert (=> b!611757 (= res!393587 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!611758 () Bool)

(declare-fun res!393590 () Bool)

(assert (=> b!611758 (=> (not res!393590) (not e!350621))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!611758 (= res!393590 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17918 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!611760 () Bool)

(declare-fun res!393585 () Bool)

(assert (=> b!611760 (=> (not res!393585) (not e!350621))))

(declare-datatypes ((List!12012 0))(
  ( (Nil!12009) (Cons!12008 (h!13053 (_ BitVec 64)) (t!18248 List!12012)) )
))
(declare-fun arrayNoDuplicates!0 (array!37351 (_ BitVec 32) List!12012) Bool)

(assert (=> b!611760 (= res!393585 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12009))))

(declare-fun b!611761 () Bool)

(declare-datatypes ((Unit!19618 0))(
  ( (Unit!19619) )
))
(declare-fun e!350614 () Unit!19618)

(declare-fun Unit!19620 () Unit!19618)

(assert (=> b!611761 (= e!350614 Unit!19620)))

(assert (=> b!611761 false))

(declare-fun b!611762 () Bool)

(declare-fun e!350616 () Bool)

(assert (=> b!611762 (= e!350621 e!350616)))

(declare-fun res!393591 () Bool)

(assert (=> b!611762 (=> (not res!393591) (not e!350616))))

(assert (=> b!611762 (= res!393591 (= (select (store (arr!17918 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!611762 (= lt!280036 (array!37352 (store (arr!17918 a!2986) i!1108 k!1786) (size!18282 a!2986)))))

(declare-fun e!350612 () Bool)

(declare-fun b!611763 () Bool)

(assert (=> b!611763 (= e!350612 (arrayContainsKey!0 lt!280036 (select (arr!17918 a!2986) j!136) index!984))))

(declare-fun b!611764 () Bool)

(declare-fun e!350622 () Unit!19618)

(declare-fun Unit!19621 () Unit!19618)

(assert (=> b!611764 (= e!350622 Unit!19621)))

(declare-fun lt!280025 () Unit!19618)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37351 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19618)

(assert (=> b!611764 (= lt!280025 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!280036 (select (arr!17918 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!611764 (arrayContainsKey!0 lt!280036 (select (arr!17918 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!280026 () Unit!19618)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37351 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12012) Unit!19618)

(assert (=> b!611764 (= lt!280026 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12009))))

(assert (=> b!611764 (arrayNoDuplicates!0 lt!280036 #b00000000000000000000000000000000 Nil!12009)))

(declare-fun lt!280031 () Unit!19618)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37351 (_ BitVec 32) (_ BitVec 32)) Unit!19618)

(assert (=> b!611764 (= lt!280031 (lemmaNoDuplicateFromThenFromBigger!0 lt!280036 #b00000000000000000000000000000000 j!136))))

(assert (=> b!611764 (arrayNoDuplicates!0 lt!280036 j!136 Nil!12009)))

(declare-fun lt!280024 () Unit!19618)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37351 (_ BitVec 64) (_ BitVec 32) List!12012) Unit!19618)

(assert (=> b!611764 (= lt!280024 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!280036 (select (arr!17918 a!2986) j!136) j!136 Nil!12009))))

(assert (=> b!611764 false))

(declare-fun b!611765 () Bool)

(assert (=> b!611765 (= e!350617 (arrayContainsKey!0 lt!280036 (select (arr!17918 a!2986) j!136) index!984))))

(declare-fun b!611766 () Bool)

(assert (=> b!611766 (= e!350618 e!350613)))

(declare-fun res!393595 () Bool)

(assert (=> b!611766 (=> res!393595 e!350613)))

(assert (=> b!611766 (= res!393595 (or (not (= (select (arr!17918 a!2986) j!136) lt!280038)) (not (= (select (arr!17918 a!2986) j!136) lt!280030)) (bvsge j!136 index!984)))))

(declare-fun b!611767 () Bool)

(declare-fun Unit!19622 () Unit!19618)

(assert (=> b!611767 (= e!350622 Unit!19622)))

(declare-fun b!611768 () Bool)

(declare-fun res!393584 () Bool)

(assert (=> b!611768 (=> (not res!393584) (not e!350621))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37351 (_ BitVec 32)) Bool)

(assert (=> b!611768 (= res!393584 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!611769 () Bool)

(declare-fun e!350610 () Bool)

(assert (=> b!611769 (= e!350616 e!350610)))

(declare-fun res!393583 () Bool)

(assert (=> b!611769 (=> (not res!393583) (not e!350610))))

(assert (=> b!611769 (= res!393583 (and (= lt!280023 (Found!6365 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17918 a!2986) index!984) (select (arr!17918 a!2986) j!136))) (not (= (select (arr!17918 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37351 (_ BitVec 32)) SeekEntryResult!6365)

(assert (=> b!611769 (= lt!280023 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17918 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!611770 () Bool)

(declare-fun res!393589 () Bool)

(assert (=> b!611770 (=> (not res!393589) (not e!350615))))

(assert (=> b!611770 (= res!393589 (and (= (size!18282 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18282 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18282 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!611759 () Bool)

(declare-fun e!350609 () Bool)

(assert (=> b!611759 (= e!350609 true)))

(assert (=> b!611759 (arrayNoDuplicates!0 lt!280036 #b00000000000000000000000000000000 Nil!12009)))

(declare-fun lt!280032 () Unit!19618)

(assert (=> b!611759 (= lt!280032 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12009))))

(assert (=> b!611759 (arrayContainsKey!0 lt!280036 (select (arr!17918 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!280029 () Unit!19618)

(assert (=> b!611759 (= lt!280029 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!280036 (select (arr!17918 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!611759 e!350612))

(declare-fun res!393593 () Bool)

(assert (=> b!611759 (=> (not res!393593) (not e!350612))))

(assert (=> b!611759 (= res!393593 (arrayContainsKey!0 lt!280036 (select (arr!17918 a!2986) j!136) j!136))))

(declare-fun res!393579 () Bool)

(assert (=> start!55918 (=> (not res!393579) (not e!350615))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55918 (= res!393579 (validMask!0 mask!3053))))

(assert (=> start!55918 e!350615))

(assert (=> start!55918 true))

(declare-fun array_inv!13692 (array!37351) Bool)

(assert (=> start!55918 (array_inv!13692 a!2986)))

(declare-fun b!611771 () Bool)

(declare-fun res!393582 () Bool)

(assert (=> b!611771 (=> (not res!393582) (not e!350615))))

(assert (=> b!611771 (= res!393582 (validKeyInArray!0 (select (arr!17918 a!2986) j!136)))))

(declare-fun b!611772 () Bool)

(assert (=> b!611772 (= e!350619 e!350609)))

(declare-fun res!393586 () Bool)

(assert (=> b!611772 (=> res!393586 e!350609)))

(assert (=> b!611772 (= res!393586 (bvsge index!984 j!136))))

(declare-fun lt!280027 () Unit!19618)

(assert (=> b!611772 (= lt!280027 e!350622)))

(declare-fun c!69454 () Bool)

(assert (=> b!611772 (= c!69454 (bvslt j!136 index!984))))

(declare-fun b!611773 () Bool)

(declare-fun Unit!19623 () Unit!19618)

(assert (=> b!611773 (= e!350614 Unit!19623)))

(declare-fun b!611774 () Bool)

(assert (=> b!611774 (= e!350610 (not e!350623))))

(declare-fun res!393596 () Bool)

(assert (=> b!611774 (=> res!393596 e!350623)))

(declare-fun lt!280022 () SeekEntryResult!6365)

(assert (=> b!611774 (= res!393596 (not (= lt!280022 (Found!6365 index!984))))))

(declare-fun lt!280034 () Unit!19618)

(assert (=> b!611774 (= lt!280034 e!350614)))

(declare-fun c!69455 () Bool)

(assert (=> b!611774 (= c!69455 (= lt!280022 Undefined!6365))))

(assert (=> b!611774 (= lt!280022 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!280038 lt!280036 mask!3053))))

(assert (=> b!611774 e!350620))

(declare-fun res!393588 () Bool)

(assert (=> b!611774 (=> (not res!393588) (not e!350620))))

(declare-fun lt!280037 () (_ BitVec 32))

(assert (=> b!611774 (= res!393588 (= lt!280028 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!280037 vacantSpotIndex!68 lt!280038 lt!280036 mask!3053)))))

(assert (=> b!611774 (= lt!280028 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!280037 vacantSpotIndex!68 (select (arr!17918 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!611774 (= lt!280038 (select (store (arr!17918 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!280035 () Unit!19618)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37351 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19618)

(assert (=> b!611774 (= lt!280035 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!280037 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!611774 (= lt!280037 (nextIndex!0 index!984 x!910 mask!3053))))

(assert (= (and start!55918 res!393579) b!611770))

(assert (= (and b!611770 res!393589) b!611771))

(assert (= (and b!611771 res!393582) b!611756))

(assert (= (and b!611756 res!393580) b!611757))

(assert (= (and b!611757 res!393587) b!611754))

(assert (= (and b!611754 res!393578) b!611768))

(assert (= (and b!611768 res!393584) b!611760))

(assert (= (and b!611760 res!393585) b!611758))

(assert (= (and b!611758 res!393590) b!611762))

(assert (= (and b!611762 res!393591) b!611769))

(assert (= (and b!611769 res!393583) b!611774))

(assert (= (and b!611774 res!393588) b!611752))

(assert (= (and b!611774 c!69455) b!611761))

(assert (= (and b!611774 (not c!69455)) b!611773))

(assert (= (and b!611774 (not res!393596)) b!611755))

(assert (= (and b!611755 res!393581) b!611766))

(assert (= (and b!611766 (not res!393595)) b!611753))

(assert (= (and b!611753 res!393594) b!611765))

(assert (= (and b!611755 (not res!393592)) b!611772))

(assert (= (and b!611772 c!69454) b!611764))

(assert (= (and b!611772 (not c!69454)) b!611767))

(assert (= (and b!611772 (not res!393586)) b!611759))

(assert (= (and b!611759 res!393593) b!611763))

(declare-fun m!588185 () Bool)

(assert (=> b!611757 m!588185))

(declare-fun m!588187 () Bool)

(assert (=> b!611759 m!588187))

(declare-fun m!588189 () Bool)

(assert (=> b!611759 m!588189))

(assert (=> b!611759 m!588187))

(assert (=> b!611759 m!588187))

(declare-fun m!588191 () Bool)

(assert (=> b!611759 m!588191))

(assert (=> b!611759 m!588187))

(declare-fun m!588193 () Bool)

(assert (=> b!611759 m!588193))

(declare-fun m!588195 () Bool)

(assert (=> b!611759 m!588195))

(declare-fun m!588197 () Bool)

(assert (=> b!611759 m!588197))

(declare-fun m!588199 () Bool)

(assert (=> b!611762 m!588199))

(declare-fun m!588201 () Bool)

(assert (=> b!611762 m!588201))

(declare-fun m!588203 () Bool)

(assert (=> b!611760 m!588203))

(declare-fun m!588205 () Bool)

(assert (=> b!611768 m!588205))

(declare-fun m!588207 () Bool)

(assert (=> b!611769 m!588207))

(assert (=> b!611769 m!588187))

(assert (=> b!611769 m!588187))

(declare-fun m!588209 () Bool)

(assert (=> b!611769 m!588209))

(assert (=> b!611763 m!588187))

(assert (=> b!611763 m!588187))

(declare-fun m!588211 () Bool)

(assert (=> b!611763 m!588211))

(declare-fun m!588213 () Bool)

(assert (=> b!611758 m!588213))

(declare-fun m!588215 () Bool)

(assert (=> b!611754 m!588215))

(assert (=> b!611753 m!588187))

(assert (=> b!611753 m!588187))

(assert (=> b!611753 m!588189))

(assert (=> b!611764 m!588187))

(declare-fun m!588217 () Bool)

(assert (=> b!611764 m!588217))

(assert (=> b!611764 m!588187))

(declare-fun m!588219 () Bool)

(assert (=> b!611764 m!588219))

(assert (=> b!611764 m!588187))

(declare-fun m!588221 () Bool)

(assert (=> b!611764 m!588221))

(assert (=> b!611764 m!588187))

(declare-fun m!588223 () Bool)

(assert (=> b!611764 m!588223))

(declare-fun m!588225 () Bool)

(assert (=> b!611764 m!588225))

(assert (=> b!611764 m!588195))

(assert (=> b!611764 m!588197))

(declare-fun m!588227 () Bool)

(assert (=> b!611756 m!588227))

(declare-fun m!588229 () Bool)

(assert (=> b!611774 m!588229))

(declare-fun m!588231 () Bool)

(assert (=> b!611774 m!588231))

(declare-fun m!588233 () Bool)

(assert (=> b!611774 m!588233))

(declare-fun m!588235 () Bool)

(assert (=> b!611774 m!588235))

(assert (=> b!611774 m!588187))

(declare-fun m!588237 () Bool)

(assert (=> b!611774 m!588237))

(assert (=> b!611774 m!588187))

(declare-fun m!588239 () Bool)

(assert (=> b!611774 m!588239))

(assert (=> b!611774 m!588199))

(assert (=> b!611766 m!588187))

(assert (=> b!611765 m!588187))

(assert (=> b!611765 m!588187))

(assert (=> b!611765 m!588211))

(declare-fun m!588241 () Bool)

(assert (=> start!55918 m!588241))

(declare-fun m!588243 () Bool)

(assert (=> start!55918 m!588243))

(assert (=> b!611771 m!588187))

(assert (=> b!611771 m!588187))

(declare-fun m!588245 () Bool)

(assert (=> b!611771 m!588245))

(assert (=> b!611755 m!588187))

(assert (=> b!611755 m!588199))

(declare-fun m!588247 () Bool)

(assert (=> b!611755 m!588247))

(push 1)


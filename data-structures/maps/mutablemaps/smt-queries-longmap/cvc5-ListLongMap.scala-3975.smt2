; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53938 () Bool)

(assert start!53938)

(declare-fun b!588211 () Bool)

(declare-fun res!376007 () Bool)

(declare-fun e!335901 () Bool)

(assert (=> b!588211 (=> (not res!376007) (not e!335901))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!588211 (= res!376007 (validKeyInArray!0 k!1786))))

(declare-fun b!588212 () Bool)

(declare-fun res!376002 () Bool)

(declare-fun e!335898 () Bool)

(assert (=> b!588212 (=> (not res!376002) (not e!335898))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36736 0))(
  ( (array!36737 (arr!17637 (Array (_ BitVec 32) (_ BitVec 64))) (size!18001 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36736)

(assert (=> b!588212 (= res!376002 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17637 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17637 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!588213 () Bool)

(declare-fun e!335902 () Bool)

(assert (=> b!588213 (= e!335902 (not true))))

(declare-fun e!335900 () Bool)

(assert (=> b!588213 e!335900))

(declare-fun res!376000 () Bool)

(assert (=> b!588213 (=> (not res!376000) (not e!335900))))

(declare-datatypes ((SeekEntryResult!6084 0))(
  ( (MissingZero!6084 (index!26566 (_ BitVec 32))) (Found!6084 (index!26567 (_ BitVec 32))) (Intermediate!6084 (undefined!6896 Bool) (index!26568 (_ BitVec 32)) (x!55397 (_ BitVec 32))) (Undefined!6084) (MissingVacant!6084 (index!26569 (_ BitVec 32))) )
))
(declare-fun lt!266739 () SeekEntryResult!6084)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!266738 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36736 (_ BitVec 32)) SeekEntryResult!6084)

(assert (=> b!588213 (= res!376000 (= lt!266739 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266738 vacantSpotIndex!68 (select (store (arr!17637 a!2986) i!1108 k!1786) j!136) (array!36737 (store (arr!17637 a!2986) i!1108 k!1786) (size!18001 a!2986)) mask!3053)))))

(assert (=> b!588213 (= lt!266739 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266738 vacantSpotIndex!68 (select (arr!17637 a!2986) j!136) a!2986 mask!3053))))

(declare-datatypes ((Unit!18292 0))(
  ( (Unit!18293) )
))
(declare-fun lt!266740 () Unit!18292)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36736 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18292)

(assert (=> b!588213 (= lt!266740 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266738 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!588213 (= lt!266738 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!588214 () Bool)

(declare-fun res!376001 () Bool)

(assert (=> b!588214 (=> (not res!376001) (not e!335898))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36736 (_ BitVec 32)) Bool)

(assert (=> b!588214 (= res!376001 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!588216 () Bool)

(declare-fun lt!266737 () SeekEntryResult!6084)

(assert (=> b!588216 (= e!335900 (= lt!266737 lt!266739))))

(declare-fun b!588217 () Bool)

(assert (=> b!588217 (= e!335901 e!335898)))

(declare-fun res!376003 () Bool)

(assert (=> b!588217 (=> (not res!376003) (not e!335898))))

(declare-fun lt!266741 () SeekEntryResult!6084)

(assert (=> b!588217 (= res!376003 (or (= lt!266741 (MissingZero!6084 i!1108)) (= lt!266741 (MissingVacant!6084 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36736 (_ BitVec 32)) SeekEntryResult!6084)

(assert (=> b!588217 (= lt!266741 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!588218 () Bool)

(declare-fun res!375999 () Bool)

(assert (=> b!588218 (=> (not res!375999) (not e!335898))))

(declare-datatypes ((List!11731 0))(
  ( (Nil!11728) (Cons!11727 (h!12772 (_ BitVec 64)) (t!17967 List!11731)) )
))
(declare-fun arrayNoDuplicates!0 (array!36736 (_ BitVec 32) List!11731) Bool)

(assert (=> b!588218 (= res!375999 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11728))))

(declare-fun b!588219 () Bool)

(declare-fun res!375998 () Bool)

(assert (=> b!588219 (=> (not res!375998) (not e!335901))))

(assert (=> b!588219 (= res!375998 (and (= (size!18001 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18001 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18001 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!588220 () Bool)

(declare-fun res!375997 () Bool)

(assert (=> b!588220 (=> (not res!375997) (not e!335901))))

(declare-fun arrayContainsKey!0 (array!36736 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!588220 (= res!375997 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!588221 () Bool)

(declare-fun res!376006 () Bool)

(assert (=> b!588221 (=> (not res!376006) (not e!335901))))

(assert (=> b!588221 (= res!376006 (validKeyInArray!0 (select (arr!17637 a!2986) j!136)))))

(declare-fun b!588215 () Bool)

(assert (=> b!588215 (= e!335898 e!335902)))

(declare-fun res!376004 () Bool)

(assert (=> b!588215 (=> (not res!376004) (not e!335902))))

(assert (=> b!588215 (= res!376004 (and (= lt!266737 (Found!6084 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17637 a!2986) index!984) (select (arr!17637 a!2986) j!136))) (not (= (select (arr!17637 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!588215 (= lt!266737 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17637 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!376005 () Bool)

(assert (=> start!53938 (=> (not res!376005) (not e!335901))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53938 (= res!376005 (validMask!0 mask!3053))))

(assert (=> start!53938 e!335901))

(assert (=> start!53938 true))

(declare-fun array_inv!13411 (array!36736) Bool)

(assert (=> start!53938 (array_inv!13411 a!2986)))

(assert (= (and start!53938 res!376005) b!588219))

(assert (= (and b!588219 res!375998) b!588221))

(assert (= (and b!588221 res!376006) b!588211))

(assert (= (and b!588211 res!376007) b!588220))

(assert (= (and b!588220 res!375997) b!588217))

(assert (= (and b!588217 res!376003) b!588214))

(assert (= (and b!588214 res!376001) b!588218))

(assert (= (and b!588218 res!375999) b!588212))

(assert (= (and b!588212 res!376002) b!588215))

(assert (= (and b!588215 res!376004) b!588213))

(assert (= (and b!588213 res!376000) b!588216))

(declare-fun m!566809 () Bool)

(assert (=> b!588221 m!566809))

(assert (=> b!588221 m!566809))

(declare-fun m!566811 () Bool)

(assert (=> b!588221 m!566811))

(declare-fun m!566813 () Bool)

(assert (=> b!588220 m!566813))

(declare-fun m!566815 () Bool)

(assert (=> b!588211 m!566815))

(declare-fun m!566817 () Bool)

(assert (=> b!588217 m!566817))

(declare-fun m!566819 () Bool)

(assert (=> start!53938 m!566819))

(declare-fun m!566821 () Bool)

(assert (=> start!53938 m!566821))

(declare-fun m!566823 () Bool)

(assert (=> b!588213 m!566823))

(declare-fun m!566825 () Bool)

(assert (=> b!588213 m!566825))

(assert (=> b!588213 m!566809))

(assert (=> b!588213 m!566825))

(declare-fun m!566827 () Bool)

(assert (=> b!588213 m!566827))

(declare-fun m!566829 () Bool)

(assert (=> b!588213 m!566829))

(declare-fun m!566831 () Bool)

(assert (=> b!588213 m!566831))

(assert (=> b!588213 m!566809))

(declare-fun m!566833 () Bool)

(assert (=> b!588213 m!566833))

(declare-fun m!566835 () Bool)

(assert (=> b!588218 m!566835))

(declare-fun m!566837 () Bool)

(assert (=> b!588212 m!566837))

(assert (=> b!588212 m!566829))

(declare-fun m!566839 () Bool)

(assert (=> b!588212 m!566839))

(declare-fun m!566841 () Bool)

(assert (=> b!588215 m!566841))

(assert (=> b!588215 m!566809))

(assert (=> b!588215 m!566809))

(declare-fun m!566843 () Bool)

(assert (=> b!588215 m!566843))

(declare-fun m!566845 () Bool)

(assert (=> b!588214 m!566845))

(push 1)


; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!55148 () Bool)

(assert start!55148)

(declare-fun e!345456 () Bool)

(declare-datatypes ((array!37184 0))(
  ( (array!37185 (arr!17845 (Array (_ BitVec 32) (_ BitVec 64))) (size!18209 (_ BitVec 32))) )
))
(declare-fun lt!275321 () array!37184)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun b!603796 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!37184)

(declare-fun arrayContainsKey!0 (array!37184 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!603796 (= e!345456 (arrayContainsKey!0 lt!275321 (select (arr!17845 a!2986) j!136) index!984))))

(declare-fun b!603797 () Bool)

(declare-datatypes ((Unit!19180 0))(
  ( (Unit!19181) )
))
(declare-fun e!345466 () Unit!19180)

(declare-fun Unit!19182 () Unit!19180)

(assert (=> b!603797 (= e!345466 Unit!19182)))

(declare-fun b!603798 () Bool)

(declare-fun res!387983 () Bool)

(declare-fun e!345458 () Bool)

(assert (=> b!603798 (=> (not res!387983) (not e!345458))))

(declare-datatypes ((List!11939 0))(
  ( (Nil!11936) (Cons!11935 (h!12980 (_ BitVec 64)) (t!18175 List!11939)) )
))
(declare-fun arrayNoDuplicates!0 (array!37184 (_ BitVec 32) List!11939) Bool)

(assert (=> b!603798 (= res!387983 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11936))))

(declare-fun b!603799 () Bool)

(declare-fun e!345459 () Bool)

(declare-fun e!345455 () Bool)

(assert (=> b!603799 (= e!345459 e!345455)))

(declare-fun res!387982 () Bool)

(assert (=> b!603799 (=> (not res!387982) (not e!345455))))

(declare-datatypes ((SeekEntryResult!6292 0))(
  ( (MissingZero!6292 (index!27430 (_ BitVec 32))) (Found!6292 (index!27431 (_ BitVec 32))) (Intermediate!6292 (undefined!7104 Bool) (index!27432 (_ BitVec 32)) (x!56254 (_ BitVec 32))) (Undefined!6292) (MissingVacant!6292 (index!27433 (_ BitVec 32))) )
))
(declare-fun lt!275322 () SeekEntryResult!6292)

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!603799 (= res!387982 (and (= lt!275322 (Found!6292 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17845 a!2986) index!984) (select (arr!17845 a!2986) j!136))) (not (= (select (arr!17845 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37184 (_ BitVec 32)) SeekEntryResult!6292)

(assert (=> b!603799 (= lt!275322 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17845 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!603800 () Bool)

(declare-fun e!345467 () Bool)

(declare-fun lt!275331 () SeekEntryResult!6292)

(assert (=> b!603800 (= e!345467 (= lt!275322 lt!275331))))

(declare-fun b!603801 () Bool)

(declare-fun e!345461 () Bool)

(assert (=> b!603801 (= e!345461 (arrayContainsKey!0 lt!275321 (select (arr!17845 a!2986) j!136) index!984))))

(declare-fun b!603802 () Bool)

(declare-fun res!387970 () Bool)

(declare-fun e!345464 () Bool)

(assert (=> b!603802 (=> (not res!387970) (not e!345464))))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!603802 (= res!387970 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun res!387969 () Bool)

(assert (=> start!55148 (=> (not res!387969) (not e!345464))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55148 (= res!387969 (validMask!0 mask!3053))))

(assert (=> start!55148 e!345464))

(assert (=> start!55148 true))

(declare-fun array_inv!13619 (array!37184) Bool)

(assert (=> start!55148 (array_inv!13619 a!2986)))

(declare-fun b!603803 () Bool)

(declare-fun res!387979 () Bool)

(assert (=> b!603803 (=> (not res!387979) (not e!345458))))

(assert (=> b!603803 (= res!387979 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17845 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!603804 () Bool)

(declare-fun res!387974 () Bool)

(assert (=> b!603804 (=> (not res!387974) (not e!345458))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37184 (_ BitVec 32)) Bool)

(assert (=> b!603804 (= res!387974 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!603805 () Bool)

(assert (=> b!603805 (= e!345458 e!345459)))

(declare-fun res!387972 () Bool)

(assert (=> b!603805 (=> (not res!387972) (not e!345459))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!603805 (= res!387972 (= (select (store (arr!17845 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!603805 (= lt!275321 (array!37185 (store (arr!17845 a!2986) i!1108 k0!1786) (size!18209 a!2986)))))

(declare-fun b!603806 () Bool)

(declare-fun res!387975 () Bool)

(assert (=> b!603806 (=> (not res!387975) (not e!345464))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!603806 (= res!387975 (validKeyInArray!0 (select (arr!17845 a!2986) j!136)))))

(declare-fun b!603807 () Bool)

(declare-fun e!345468 () Bool)

(declare-fun e!345457 () Bool)

(assert (=> b!603807 (= e!345468 e!345457)))

(declare-fun res!387976 () Bool)

(assert (=> b!603807 (=> res!387976 e!345457)))

(declare-fun lt!275324 () (_ BitVec 64))

(declare-fun lt!275319 () (_ BitVec 64))

(assert (=> b!603807 (= res!387976 (or (not (= (select (arr!17845 a!2986) j!136) lt!275319)) (not (= (select (arr!17845 a!2986) j!136) lt!275324)) (bvsge j!136 index!984)))))

(declare-fun b!603808 () Bool)

(declare-fun e!345465 () Bool)

(declare-fun e!345460 () Bool)

(assert (=> b!603808 (= e!345465 e!345460)))

(declare-fun res!387977 () Bool)

(assert (=> b!603808 (=> res!387977 e!345460)))

(assert (=> b!603808 (= res!387977 (bvsge index!984 j!136))))

(declare-fun lt!275317 () Unit!19180)

(declare-fun e!345469 () Unit!19180)

(assert (=> b!603808 (= lt!275317 e!345469)))

(declare-fun c!68282 () Bool)

(assert (=> b!603808 (= c!68282 (bvslt j!136 index!984))))

(declare-fun b!603809 () Bool)

(declare-fun e!345463 () Bool)

(assert (=> b!603809 (= e!345463 e!345465)))

(declare-fun res!387984 () Bool)

(assert (=> b!603809 (=> res!387984 e!345465)))

(assert (=> b!603809 (= res!387984 (or (not (= (select (arr!17845 a!2986) j!136) lt!275319)) (not (= (select (arr!17845 a!2986) j!136) lt!275324))))))

(assert (=> b!603809 e!345468))

(declare-fun res!387980 () Bool)

(assert (=> b!603809 (=> (not res!387980) (not e!345468))))

(assert (=> b!603809 (= res!387980 (= lt!275324 (select (arr!17845 a!2986) j!136)))))

(assert (=> b!603809 (= lt!275324 (select (store (arr!17845 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!603810 () Bool)

(assert (=> b!603810 (= e!345455 (not e!345463))))

(declare-fun res!387973 () Bool)

(assert (=> b!603810 (=> res!387973 e!345463)))

(declare-fun lt!275323 () SeekEntryResult!6292)

(assert (=> b!603810 (= res!387973 (not (= lt!275323 (Found!6292 index!984))))))

(declare-fun lt!275320 () Unit!19180)

(assert (=> b!603810 (= lt!275320 e!345466)))

(declare-fun c!68281 () Bool)

(assert (=> b!603810 (= c!68281 (= lt!275323 Undefined!6292))))

(assert (=> b!603810 (= lt!275323 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!275319 lt!275321 mask!3053))))

(assert (=> b!603810 e!345467))

(declare-fun res!387978 () Bool)

(assert (=> b!603810 (=> (not res!387978) (not e!345467))))

(declare-fun lt!275329 () (_ BitVec 32))

(assert (=> b!603810 (= res!387978 (= lt!275331 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!275329 vacantSpotIndex!68 lt!275319 lt!275321 mask!3053)))))

(assert (=> b!603810 (= lt!275331 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!275329 vacantSpotIndex!68 (select (arr!17845 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!603810 (= lt!275319 (select (store (arr!17845 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!275325 () Unit!19180)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37184 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19180)

(assert (=> b!603810 (= lt!275325 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!275329 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!603810 (= lt!275329 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!603811 () Bool)

(declare-fun res!387985 () Bool)

(assert (=> b!603811 (=> (not res!387985) (not e!345464))))

(assert (=> b!603811 (= res!387985 (validKeyInArray!0 k0!1786))))

(declare-fun b!603812 () Bool)

(declare-fun Unit!19183 () Unit!19180)

(assert (=> b!603812 (= e!345469 Unit!19183)))

(declare-fun lt!275326 () Unit!19180)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37184 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19180)

(assert (=> b!603812 (= lt!275326 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!275321 (select (arr!17845 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!603812 (arrayContainsKey!0 lt!275321 (select (arr!17845 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!275330 () Unit!19180)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37184 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11939) Unit!19180)

(assert (=> b!603812 (= lt!275330 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11936))))

(assert (=> b!603812 (arrayNoDuplicates!0 lt!275321 #b00000000000000000000000000000000 Nil!11936)))

(declare-fun lt!275318 () Unit!19180)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37184 (_ BitVec 32) (_ BitVec 32)) Unit!19180)

(assert (=> b!603812 (= lt!275318 (lemmaNoDuplicateFromThenFromBigger!0 lt!275321 #b00000000000000000000000000000000 j!136))))

(assert (=> b!603812 (arrayNoDuplicates!0 lt!275321 j!136 Nil!11936)))

(declare-fun lt!275328 () Unit!19180)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37184 (_ BitVec 64) (_ BitVec 32) List!11939) Unit!19180)

(assert (=> b!603812 (= lt!275328 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!275321 (select (arr!17845 a!2986) j!136) j!136 Nil!11936))))

(assert (=> b!603812 false))

(declare-fun b!603813 () Bool)

(declare-fun res!387981 () Bool)

(assert (=> b!603813 (=> (not res!387981) (not e!345464))))

(assert (=> b!603813 (= res!387981 (and (= (size!18209 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18209 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18209 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!603814 () Bool)

(assert (=> b!603814 (= e!345460 true)))

(assert (=> b!603814 e!345456))

(declare-fun res!387986 () Bool)

(assert (=> b!603814 (=> (not res!387986) (not e!345456))))

(assert (=> b!603814 (= res!387986 (arrayContainsKey!0 lt!275321 (select (arr!17845 a!2986) j!136) j!136))))

(declare-fun b!603815 () Bool)

(assert (=> b!603815 (= e!345457 e!345461)))

(declare-fun res!387968 () Bool)

(assert (=> b!603815 (=> (not res!387968) (not e!345461))))

(assert (=> b!603815 (= res!387968 (arrayContainsKey!0 lt!275321 (select (arr!17845 a!2986) j!136) j!136))))

(declare-fun b!603816 () Bool)

(declare-fun Unit!19184 () Unit!19180)

(assert (=> b!603816 (= e!345469 Unit!19184)))

(declare-fun b!603817 () Bool)

(declare-fun Unit!19185 () Unit!19180)

(assert (=> b!603817 (= e!345466 Unit!19185)))

(assert (=> b!603817 false))

(declare-fun b!603818 () Bool)

(assert (=> b!603818 (= e!345464 e!345458)))

(declare-fun res!387971 () Bool)

(assert (=> b!603818 (=> (not res!387971) (not e!345458))))

(declare-fun lt!275327 () SeekEntryResult!6292)

(assert (=> b!603818 (= res!387971 (or (= lt!275327 (MissingZero!6292 i!1108)) (= lt!275327 (MissingVacant!6292 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37184 (_ BitVec 32)) SeekEntryResult!6292)

(assert (=> b!603818 (= lt!275327 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(assert (= (and start!55148 res!387969) b!603813))

(assert (= (and b!603813 res!387981) b!603806))

(assert (= (and b!603806 res!387975) b!603811))

(assert (= (and b!603811 res!387985) b!603802))

(assert (= (and b!603802 res!387970) b!603818))

(assert (= (and b!603818 res!387971) b!603804))

(assert (= (and b!603804 res!387974) b!603798))

(assert (= (and b!603798 res!387983) b!603803))

(assert (= (and b!603803 res!387979) b!603805))

(assert (= (and b!603805 res!387972) b!603799))

(assert (= (and b!603799 res!387982) b!603810))

(assert (= (and b!603810 res!387978) b!603800))

(assert (= (and b!603810 c!68281) b!603817))

(assert (= (and b!603810 (not c!68281)) b!603797))

(assert (= (and b!603810 (not res!387973)) b!603809))

(assert (= (and b!603809 res!387980) b!603807))

(assert (= (and b!603807 (not res!387976)) b!603815))

(assert (= (and b!603815 res!387968) b!603801))

(assert (= (and b!603809 (not res!387984)) b!603808))

(assert (= (and b!603808 c!68282) b!603812))

(assert (= (and b!603808 (not c!68282)) b!603816))

(assert (= (and b!603808 (not res!387977)) b!603814))

(assert (= (and b!603814 res!387986) b!603796))

(declare-fun m!580791 () Bool)

(assert (=> b!603798 m!580791))

(declare-fun m!580793 () Bool)

(assert (=> start!55148 m!580793))

(declare-fun m!580795 () Bool)

(assert (=> start!55148 m!580795))

(declare-fun m!580797 () Bool)

(assert (=> b!603810 m!580797))

(declare-fun m!580799 () Bool)

(assert (=> b!603810 m!580799))

(declare-fun m!580801 () Bool)

(assert (=> b!603810 m!580801))

(declare-fun m!580803 () Bool)

(assert (=> b!603810 m!580803))

(declare-fun m!580805 () Bool)

(assert (=> b!603810 m!580805))

(declare-fun m!580807 () Bool)

(assert (=> b!603810 m!580807))

(declare-fun m!580809 () Bool)

(assert (=> b!603810 m!580809))

(assert (=> b!603810 m!580801))

(declare-fun m!580811 () Bool)

(assert (=> b!603810 m!580811))

(assert (=> b!603806 m!580801))

(assert (=> b!603806 m!580801))

(declare-fun m!580813 () Bool)

(assert (=> b!603806 m!580813))

(declare-fun m!580815 () Bool)

(assert (=> b!603802 m!580815))

(declare-fun m!580817 () Bool)

(assert (=> b!603803 m!580817))

(assert (=> b!603801 m!580801))

(assert (=> b!603801 m!580801))

(declare-fun m!580819 () Bool)

(assert (=> b!603801 m!580819))

(declare-fun m!580821 () Bool)

(assert (=> b!603811 m!580821))

(assert (=> b!603814 m!580801))

(assert (=> b!603814 m!580801))

(declare-fun m!580823 () Bool)

(assert (=> b!603814 m!580823))

(declare-fun m!580825 () Bool)

(assert (=> b!603804 m!580825))

(assert (=> b!603805 m!580803))

(declare-fun m!580827 () Bool)

(assert (=> b!603805 m!580827))

(declare-fun m!580829 () Bool)

(assert (=> b!603812 m!580829))

(declare-fun m!580831 () Bool)

(assert (=> b!603812 m!580831))

(assert (=> b!603812 m!580801))

(declare-fun m!580833 () Bool)

(assert (=> b!603812 m!580833))

(assert (=> b!603812 m!580801))

(declare-fun m!580835 () Bool)

(assert (=> b!603812 m!580835))

(declare-fun m!580837 () Bool)

(assert (=> b!603812 m!580837))

(assert (=> b!603812 m!580801))

(declare-fun m!580839 () Bool)

(assert (=> b!603812 m!580839))

(assert (=> b!603812 m!580801))

(declare-fun m!580841 () Bool)

(assert (=> b!603812 m!580841))

(assert (=> b!603796 m!580801))

(assert (=> b!603796 m!580801))

(assert (=> b!603796 m!580819))

(assert (=> b!603809 m!580801))

(assert (=> b!603809 m!580803))

(declare-fun m!580843 () Bool)

(assert (=> b!603809 m!580843))

(assert (=> b!603815 m!580801))

(assert (=> b!603815 m!580801))

(assert (=> b!603815 m!580823))

(declare-fun m!580845 () Bool)

(assert (=> b!603818 m!580845))

(assert (=> b!603807 m!580801))

(declare-fun m!580847 () Bool)

(assert (=> b!603799 m!580847))

(assert (=> b!603799 m!580801))

(assert (=> b!603799 m!580801))

(declare-fun m!580849 () Bool)

(assert (=> b!603799 m!580849))

(check-sat (not b!603798) (not b!603812) (not b!603801) (not b!603804) (not b!603818) (not b!603810) (not b!603811) (not b!603814) (not start!55148) (not b!603815) (not b!603799) (not b!603806) (not b!603796) (not b!603802))
(check-sat)

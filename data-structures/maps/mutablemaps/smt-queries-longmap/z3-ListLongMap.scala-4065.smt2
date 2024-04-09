; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!55712 () Bool)

(assert start!55712)

(declare-fun b!610305 () Bool)

(declare-fun res!392683 () Bool)

(declare-fun e!349622 () Bool)

(assert (=> b!610305 (=> (not res!392683) (not e!349622))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!610305 (= res!392683 (validKeyInArray!0 k0!1786))))

(declare-fun b!610306 () Bool)

(declare-fun e!349636 () Bool)

(declare-datatypes ((List!12002 0))(
  ( (Nil!11999) (Cons!11998 (h!13043 (_ BitVec 64)) (t!18238 List!12002)) )
))
(declare-fun noDuplicate!344 (List!12002) Bool)

(assert (=> b!610306 (= e!349636 (noDuplicate!344 Nil!11999))))

(declare-fun b!610307 () Bool)

(declare-fun e!349623 () Bool)

(assert (=> b!610307 (= e!349623 e!349636)))

(declare-fun res!392675 () Bool)

(assert (=> b!610307 (=> res!392675 e!349636)))

(declare-datatypes ((array!37325 0))(
  ( (array!37326 (arr!17908 (Array (_ BitVec 32) (_ BitVec 64))) (size!18272 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37325)

(assert (=> b!610307 (= res!392675 (or (bvsgt #b00000000000000000000000000000000 (size!18272 a!2986)) (bvsge (size!18272 a!2986) #b01111111111111111111111111111111)))))

(declare-fun lt!279218 () array!37325)

(declare-fun arrayNoDuplicates!0 (array!37325 (_ BitVec 32) List!12002) Bool)

(assert (=> b!610307 (arrayNoDuplicates!0 lt!279218 #b00000000000000000000000000000000 Nil!11999)))

(declare-datatypes ((Unit!19558 0))(
  ( (Unit!19559) )
))
(declare-fun lt!279214 () Unit!19558)

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37325 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12002) Unit!19558)

(assert (=> b!610307 (= lt!279214 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11999))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!37325 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!610307 (arrayContainsKey!0 lt!279218 (select (arr!17908 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!279222 () Unit!19558)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37325 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19558)

(assert (=> b!610307 (= lt!279222 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!279218 (select (arr!17908 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!349632 () Bool)

(assert (=> b!610307 e!349632))

(declare-fun res!392687 () Bool)

(assert (=> b!610307 (=> (not res!392687) (not e!349632))))

(assert (=> b!610307 (= res!392687 (arrayContainsKey!0 lt!279218 (select (arr!17908 a!2986) j!136) j!136))))

(declare-fun b!610308 () Bool)

(declare-fun e!349631 () Unit!19558)

(declare-fun Unit!19560 () Unit!19558)

(assert (=> b!610308 (= e!349631 Unit!19560)))

(declare-fun b!610309 () Bool)

(declare-fun res!392672 () Bool)

(declare-fun e!349629 () Bool)

(assert (=> b!610309 (=> (not res!392672) (not e!349629))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37325 (_ BitVec 32)) Bool)

(assert (=> b!610309 (= res!392672 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!610311 () Bool)

(declare-fun res!392680 () Bool)

(assert (=> b!610311 (=> (not res!392680) (not e!349629))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!610311 (= res!392680 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17908 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!610312 () Bool)

(declare-fun e!349628 () Bool)

(declare-fun e!349626 () Bool)

(assert (=> b!610312 (= e!349628 (not e!349626))))

(declare-fun res!392679 () Bool)

(assert (=> b!610312 (=> res!392679 e!349626)))

(declare-datatypes ((SeekEntryResult!6355 0))(
  ( (MissingZero!6355 (index!27697 (_ BitVec 32))) (Found!6355 (index!27698 (_ BitVec 32))) (Intermediate!6355 (undefined!7167 Bool) (index!27699 (_ BitVec 32)) (x!56530 (_ BitVec 32))) (Undefined!6355) (MissingVacant!6355 (index!27700 (_ BitVec 32))) )
))
(declare-fun lt!279216 () SeekEntryResult!6355)

(assert (=> b!610312 (= res!392679 (not (= lt!279216 (Found!6355 index!984))))))

(declare-fun lt!279209 () Unit!19558)

(declare-fun e!349625 () Unit!19558)

(assert (=> b!610312 (= lt!279209 e!349625)))

(declare-fun c!69184 () Bool)

(assert (=> b!610312 (= c!69184 (= lt!279216 Undefined!6355))))

(declare-fun lt!279217 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37325 (_ BitVec 32)) SeekEntryResult!6355)

(assert (=> b!610312 (= lt!279216 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!279217 lt!279218 mask!3053))))

(declare-fun e!349634 () Bool)

(assert (=> b!610312 e!349634))

(declare-fun res!392676 () Bool)

(assert (=> b!610312 (=> (not res!392676) (not e!349634))))

(declare-fun lt!279219 () (_ BitVec 32))

(declare-fun lt!279210 () SeekEntryResult!6355)

(assert (=> b!610312 (= res!392676 (= lt!279210 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!279219 vacantSpotIndex!68 lt!279217 lt!279218 mask!3053)))))

(assert (=> b!610312 (= lt!279210 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!279219 vacantSpotIndex!68 (select (arr!17908 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!610312 (= lt!279217 (select (store (arr!17908 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!279212 () Unit!19558)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37325 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19558)

(assert (=> b!610312 (= lt!279212 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!279219 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!610312 (= lt!279219 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!610313 () Bool)

(declare-fun e!349624 () Bool)

(assert (=> b!610313 (= e!349629 e!349624)))

(declare-fun res!392682 () Bool)

(assert (=> b!610313 (=> (not res!392682) (not e!349624))))

(assert (=> b!610313 (= res!392682 (= (select (store (arr!17908 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!610313 (= lt!279218 (array!37326 (store (arr!17908 a!2986) i!1108 k0!1786) (size!18272 a!2986)))))

(declare-fun b!610314 () Bool)

(declare-fun lt!279207 () SeekEntryResult!6355)

(assert (=> b!610314 (= e!349634 (= lt!279207 lt!279210))))

(declare-fun b!610315 () Bool)

(declare-fun Unit!19561 () Unit!19558)

(assert (=> b!610315 (= e!349631 Unit!19561)))

(declare-fun lt!279213 () Unit!19558)

(assert (=> b!610315 (= lt!279213 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!279218 (select (arr!17908 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!610315 (arrayContainsKey!0 lt!279218 (select (arr!17908 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!279220 () Unit!19558)

(assert (=> b!610315 (= lt!279220 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11999))))

(assert (=> b!610315 (arrayNoDuplicates!0 lt!279218 #b00000000000000000000000000000000 Nil!11999)))

(declare-fun lt!279211 () Unit!19558)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37325 (_ BitVec 32) (_ BitVec 32)) Unit!19558)

(assert (=> b!610315 (= lt!279211 (lemmaNoDuplicateFromThenFromBigger!0 lt!279218 #b00000000000000000000000000000000 j!136))))

(assert (=> b!610315 (arrayNoDuplicates!0 lt!279218 j!136 Nil!11999)))

(declare-fun lt!279208 () Unit!19558)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37325 (_ BitVec 64) (_ BitVec 32) List!12002) Unit!19558)

(assert (=> b!610315 (= lt!279208 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!279218 (select (arr!17908 a!2986) j!136) j!136 Nil!11999))))

(assert (=> b!610315 false))

(declare-fun b!610316 () Bool)

(declare-fun res!392671 () Bool)

(assert (=> b!610316 (=> (not res!392671) (not e!349622))))

(assert (=> b!610316 (= res!392671 (and (= (size!18272 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18272 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18272 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!610317 () Bool)

(declare-fun e!349621 () Bool)

(assert (=> b!610317 (= e!349626 e!349621)))

(declare-fun res!392681 () Bool)

(assert (=> b!610317 (=> res!392681 e!349621)))

(declare-fun lt!279206 () (_ BitVec 64))

(assert (=> b!610317 (= res!392681 (or (not (= (select (arr!17908 a!2986) j!136) lt!279217)) (not (= (select (arr!17908 a!2986) j!136) lt!279206))))))

(declare-fun e!349627 () Bool)

(assert (=> b!610317 e!349627))

(declare-fun res!392678 () Bool)

(assert (=> b!610317 (=> (not res!392678) (not e!349627))))

(assert (=> b!610317 (= res!392678 (= lt!279206 (select (arr!17908 a!2986) j!136)))))

(assert (=> b!610317 (= lt!279206 (select (store (arr!17908 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!610318 () Bool)

(assert (=> b!610318 (= e!349624 e!349628)))

(declare-fun res!392688 () Bool)

(assert (=> b!610318 (=> (not res!392688) (not e!349628))))

(assert (=> b!610318 (= res!392688 (and (= lt!279207 (Found!6355 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17908 a!2986) index!984) (select (arr!17908 a!2986) j!136))) (not (= (select (arr!17908 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!610318 (= lt!279207 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17908 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!610319 () Bool)

(declare-fun res!392677 () Bool)

(assert (=> b!610319 (=> (not res!392677) (not e!349622))))

(assert (=> b!610319 (= res!392677 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!610320 () Bool)

(declare-fun Unit!19562 () Unit!19558)

(assert (=> b!610320 (= e!349625 Unit!19562)))

(declare-fun b!610321 () Bool)

(declare-fun res!392673 () Bool)

(assert (=> b!610321 (=> (not res!392673) (not e!349629))))

(assert (=> b!610321 (= res!392673 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11999))))

(declare-fun b!610322 () Bool)

(assert (=> b!610322 (= e!349632 (arrayContainsKey!0 lt!279218 (select (arr!17908 a!2986) j!136) index!984))))

(declare-fun e!349633 () Bool)

(declare-fun b!610323 () Bool)

(assert (=> b!610323 (= e!349633 (arrayContainsKey!0 lt!279218 (select (arr!17908 a!2986) j!136) index!984))))

(declare-fun b!610310 () Bool)

(assert (=> b!610310 (= e!349621 e!349623)))

(declare-fun res!392684 () Bool)

(assert (=> b!610310 (=> res!392684 e!349623)))

(assert (=> b!610310 (= res!392684 (bvsge index!984 j!136))))

(declare-fun lt!279215 () Unit!19558)

(assert (=> b!610310 (= lt!279215 e!349631)))

(declare-fun c!69185 () Bool)

(assert (=> b!610310 (= c!69185 (bvslt j!136 index!984))))

(declare-fun res!392689 () Bool)

(assert (=> start!55712 (=> (not res!392689) (not e!349622))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55712 (= res!392689 (validMask!0 mask!3053))))

(assert (=> start!55712 e!349622))

(assert (=> start!55712 true))

(declare-fun array_inv!13682 (array!37325) Bool)

(assert (=> start!55712 (array_inv!13682 a!2986)))

(declare-fun b!610324 () Bool)

(declare-fun res!392685 () Bool)

(assert (=> b!610324 (=> (not res!392685) (not e!349622))))

(assert (=> b!610324 (= res!392685 (validKeyInArray!0 (select (arr!17908 a!2986) j!136)))))

(declare-fun b!610325 () Bool)

(assert (=> b!610325 (= e!349622 e!349629)))

(declare-fun res!392686 () Bool)

(assert (=> b!610325 (=> (not res!392686) (not e!349629))))

(declare-fun lt!279221 () SeekEntryResult!6355)

(assert (=> b!610325 (= res!392686 (or (= lt!279221 (MissingZero!6355 i!1108)) (= lt!279221 (MissingVacant!6355 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37325 (_ BitVec 32)) SeekEntryResult!6355)

(assert (=> b!610325 (= lt!279221 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!610326 () Bool)

(declare-fun e!349630 () Bool)

(assert (=> b!610326 (= e!349627 e!349630)))

(declare-fun res!392690 () Bool)

(assert (=> b!610326 (=> res!392690 e!349630)))

(assert (=> b!610326 (= res!392690 (or (not (= (select (arr!17908 a!2986) j!136) lt!279217)) (not (= (select (arr!17908 a!2986) j!136) lt!279206)) (bvsge j!136 index!984)))))

(declare-fun b!610327 () Bool)

(declare-fun Unit!19563 () Unit!19558)

(assert (=> b!610327 (= e!349625 Unit!19563)))

(assert (=> b!610327 false))

(declare-fun b!610328 () Bool)

(assert (=> b!610328 (= e!349630 e!349633)))

(declare-fun res!392674 () Bool)

(assert (=> b!610328 (=> (not res!392674) (not e!349633))))

(assert (=> b!610328 (= res!392674 (arrayContainsKey!0 lt!279218 (select (arr!17908 a!2986) j!136) j!136))))

(assert (= (and start!55712 res!392689) b!610316))

(assert (= (and b!610316 res!392671) b!610324))

(assert (= (and b!610324 res!392685) b!610305))

(assert (= (and b!610305 res!392683) b!610319))

(assert (= (and b!610319 res!392677) b!610325))

(assert (= (and b!610325 res!392686) b!610309))

(assert (= (and b!610309 res!392672) b!610321))

(assert (= (and b!610321 res!392673) b!610311))

(assert (= (and b!610311 res!392680) b!610313))

(assert (= (and b!610313 res!392682) b!610318))

(assert (= (and b!610318 res!392688) b!610312))

(assert (= (and b!610312 res!392676) b!610314))

(assert (= (and b!610312 c!69184) b!610327))

(assert (= (and b!610312 (not c!69184)) b!610320))

(assert (= (and b!610312 (not res!392679)) b!610317))

(assert (= (and b!610317 res!392678) b!610326))

(assert (= (and b!610326 (not res!392690)) b!610328))

(assert (= (and b!610328 res!392674) b!610323))

(assert (= (and b!610317 (not res!392681)) b!610310))

(assert (= (and b!610310 c!69185) b!610315))

(assert (= (and b!610310 (not c!69185)) b!610308))

(assert (= (and b!610310 (not res!392684)) b!610307))

(assert (= (and b!610307 res!392687) b!610322))

(assert (= (and b!610307 (not res!392675)) b!610306))

(declare-fun m!586809 () Bool)

(assert (=> b!610321 m!586809))

(declare-fun m!586811 () Bool)

(assert (=> b!610317 m!586811))

(declare-fun m!586813 () Bool)

(assert (=> b!610317 m!586813))

(declare-fun m!586815 () Bool)

(assert (=> b!610317 m!586815))

(assert (=> b!610328 m!586811))

(assert (=> b!610328 m!586811))

(declare-fun m!586817 () Bool)

(assert (=> b!610328 m!586817))

(assert (=> b!610315 m!586811))

(declare-fun m!586819 () Bool)

(assert (=> b!610315 m!586819))

(assert (=> b!610315 m!586811))

(assert (=> b!610315 m!586811))

(declare-fun m!586821 () Bool)

(assert (=> b!610315 m!586821))

(declare-fun m!586823 () Bool)

(assert (=> b!610315 m!586823))

(declare-fun m!586825 () Bool)

(assert (=> b!610315 m!586825))

(declare-fun m!586827 () Bool)

(assert (=> b!610315 m!586827))

(assert (=> b!610315 m!586811))

(declare-fun m!586829 () Bool)

(assert (=> b!610315 m!586829))

(declare-fun m!586831 () Bool)

(assert (=> b!610315 m!586831))

(declare-fun m!586833 () Bool)

(assert (=> b!610309 m!586833))

(declare-fun m!586835 () Bool)

(assert (=> b!610311 m!586835))

(declare-fun m!586837 () Bool)

(assert (=> b!610318 m!586837))

(assert (=> b!610318 m!586811))

(assert (=> b!610318 m!586811))

(declare-fun m!586839 () Bool)

(assert (=> b!610318 m!586839))

(assert (=> b!610322 m!586811))

(assert (=> b!610322 m!586811))

(declare-fun m!586841 () Bool)

(assert (=> b!610322 m!586841))

(declare-fun m!586843 () Bool)

(assert (=> start!55712 m!586843))

(declare-fun m!586845 () Bool)

(assert (=> start!55712 m!586845))

(declare-fun m!586847 () Bool)

(assert (=> b!610319 m!586847))

(declare-fun m!586849 () Bool)

(assert (=> b!610305 m!586849))

(assert (=> b!610324 m!586811))

(assert (=> b!610324 m!586811))

(declare-fun m!586851 () Bool)

(assert (=> b!610324 m!586851))

(declare-fun m!586853 () Bool)

(assert (=> b!610325 m!586853))

(declare-fun m!586855 () Bool)

(assert (=> b!610306 m!586855))

(declare-fun m!586857 () Bool)

(assert (=> b!610312 m!586857))

(declare-fun m!586859 () Bool)

(assert (=> b!610312 m!586859))

(assert (=> b!610312 m!586811))

(assert (=> b!610312 m!586813))

(declare-fun m!586861 () Bool)

(assert (=> b!610312 m!586861))

(assert (=> b!610312 m!586811))

(declare-fun m!586863 () Bool)

(assert (=> b!610312 m!586863))

(declare-fun m!586865 () Bool)

(assert (=> b!610312 m!586865))

(declare-fun m!586867 () Bool)

(assert (=> b!610312 m!586867))

(assert (=> b!610326 m!586811))

(assert (=> b!610313 m!586813))

(declare-fun m!586869 () Bool)

(assert (=> b!610313 m!586869))

(assert (=> b!610307 m!586811))

(assert (=> b!610307 m!586825))

(assert (=> b!610307 m!586811))

(declare-fun m!586871 () Bool)

(assert (=> b!610307 m!586871))

(assert (=> b!610307 m!586811))

(assert (=> b!610307 m!586817))

(assert (=> b!610307 m!586811))

(declare-fun m!586873 () Bool)

(assert (=> b!610307 m!586873))

(assert (=> b!610307 m!586831))

(assert (=> b!610323 m!586811))

(assert (=> b!610323 m!586811))

(assert (=> b!610323 m!586841))

(check-sat (not b!610312) (not b!610318) (not b!610309) (not b!610323) (not b!610324) (not b!610305) (not b!610321) (not b!610325) (not b!610328) (not b!610315) (not b!610306) (not b!610319) (not b!610307) (not start!55712) (not b!610322))
(check-sat)
(get-model)

(declare-fun d!88113 () Bool)

(assert (=> d!88113 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!610305 d!88113))

(declare-fun d!88115 () Bool)

(assert (=> d!88115 (arrayContainsKey!0 lt!279218 (select (arr!17908 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!279276 () Unit!19558)

(declare-fun choose!114 (array!37325 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19558)

(assert (=> d!88115 (= lt!279276 (choose!114 lt!279218 (select (arr!17908 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!88115 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!88115 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!279218 (select (arr!17908 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!279276)))

(declare-fun bs!18623 () Bool)

(assert (= bs!18623 d!88115))

(assert (=> bs!18623 m!586811))

(assert (=> bs!18623 m!586821))

(assert (=> bs!18623 m!586811))

(declare-fun m!586941 () Bool)

(assert (=> bs!18623 m!586941))

(assert (=> b!610315 d!88115))

(declare-fun d!88117 () Bool)

(declare-fun res!392755 () Bool)

(declare-fun e!349689 () Bool)

(assert (=> d!88117 (=> res!392755 e!349689)))

(assert (=> d!88117 (= res!392755 (= (select (arr!17908 lt!279218) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!17908 a!2986) j!136)))))

(assert (=> d!88117 (= (arrayContainsKey!0 lt!279218 (select (arr!17908 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!349689)))

(declare-fun b!610405 () Bool)

(declare-fun e!349690 () Bool)

(assert (=> b!610405 (= e!349689 e!349690)))

(declare-fun res!392756 () Bool)

(assert (=> b!610405 (=> (not res!392756) (not e!349690))))

(assert (=> b!610405 (= res!392756 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18272 lt!279218)))))

(declare-fun b!610406 () Bool)

(assert (=> b!610406 (= e!349690 (arrayContainsKey!0 lt!279218 (select (arr!17908 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!88117 (not res!392755)) b!610405))

(assert (= (and b!610405 res!392756) b!610406))

(declare-fun m!586943 () Bool)

(assert (=> d!88117 m!586943))

(assert (=> b!610406 m!586811))

(declare-fun m!586945 () Bool)

(assert (=> b!610406 m!586945))

(assert (=> b!610315 d!88117))

(declare-fun bm!33128 () Bool)

(declare-fun c!69194 () Bool)

(declare-fun call!33131 () Bool)

(assert (=> bm!33128 (= call!33131 (arrayNoDuplicates!0 lt!279218 (bvadd j!136 #b00000000000000000000000000000001) (ite c!69194 (Cons!11998 (select (arr!17908 lt!279218) j!136) Nil!11999) Nil!11999)))))

(declare-fun b!610418 () Bool)

(declare-fun e!349701 () Bool)

(declare-fun e!349699 () Bool)

(assert (=> b!610418 (= e!349701 e!349699)))

(assert (=> b!610418 (= c!69194 (validKeyInArray!0 (select (arr!17908 lt!279218) j!136)))))

(declare-fun b!610419 () Bool)

(declare-fun e!349702 () Bool)

(assert (=> b!610419 (= e!349702 e!349701)))

(declare-fun res!392765 () Bool)

(assert (=> b!610419 (=> (not res!392765) (not e!349701))))

(declare-fun e!349700 () Bool)

(assert (=> b!610419 (= res!392765 (not e!349700))))

(declare-fun res!392764 () Bool)

(assert (=> b!610419 (=> (not res!392764) (not e!349700))))

(assert (=> b!610419 (= res!392764 (validKeyInArray!0 (select (arr!17908 lt!279218) j!136)))))

(declare-fun b!610417 () Bool)

(declare-fun contains!3043 (List!12002 (_ BitVec 64)) Bool)

(assert (=> b!610417 (= e!349700 (contains!3043 Nil!11999 (select (arr!17908 lt!279218) j!136)))))

(declare-fun d!88119 () Bool)

(declare-fun res!392763 () Bool)

(assert (=> d!88119 (=> res!392763 e!349702)))

(assert (=> d!88119 (= res!392763 (bvsge j!136 (size!18272 lt!279218)))))

(assert (=> d!88119 (= (arrayNoDuplicates!0 lt!279218 j!136 Nil!11999) e!349702)))

(declare-fun b!610420 () Bool)

(assert (=> b!610420 (= e!349699 call!33131)))

(declare-fun b!610421 () Bool)

(assert (=> b!610421 (= e!349699 call!33131)))

(assert (= (and d!88119 (not res!392763)) b!610419))

(assert (= (and b!610419 res!392764) b!610417))

(assert (= (and b!610419 res!392765) b!610418))

(assert (= (and b!610418 c!69194) b!610420))

(assert (= (and b!610418 (not c!69194)) b!610421))

(assert (= (or b!610420 b!610421) bm!33128))

(declare-fun m!586947 () Bool)

(assert (=> bm!33128 m!586947))

(declare-fun m!586949 () Bool)

(assert (=> bm!33128 m!586949))

(assert (=> b!610418 m!586947))

(assert (=> b!610418 m!586947))

(declare-fun m!586951 () Bool)

(assert (=> b!610418 m!586951))

(assert (=> b!610419 m!586947))

(assert (=> b!610419 m!586947))

(assert (=> b!610419 m!586951))

(assert (=> b!610417 m!586947))

(assert (=> b!610417 m!586947))

(declare-fun m!586953 () Bool)

(assert (=> b!610417 m!586953))

(assert (=> b!610315 d!88119))

(declare-fun bm!33129 () Bool)

(declare-fun call!33132 () Bool)

(declare-fun c!69195 () Bool)

(assert (=> bm!33129 (= call!33132 (arrayNoDuplicates!0 lt!279218 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!69195 (Cons!11998 (select (arr!17908 lt!279218) #b00000000000000000000000000000000) Nil!11999) Nil!11999)))))

(declare-fun b!610423 () Bool)

(declare-fun e!349705 () Bool)

(declare-fun e!349703 () Bool)

(assert (=> b!610423 (= e!349705 e!349703)))

(assert (=> b!610423 (= c!69195 (validKeyInArray!0 (select (arr!17908 lt!279218) #b00000000000000000000000000000000)))))

(declare-fun b!610424 () Bool)

(declare-fun e!349706 () Bool)

(assert (=> b!610424 (= e!349706 e!349705)))

(declare-fun res!392768 () Bool)

(assert (=> b!610424 (=> (not res!392768) (not e!349705))))

(declare-fun e!349704 () Bool)

(assert (=> b!610424 (= res!392768 (not e!349704))))

(declare-fun res!392767 () Bool)

(assert (=> b!610424 (=> (not res!392767) (not e!349704))))

(assert (=> b!610424 (= res!392767 (validKeyInArray!0 (select (arr!17908 lt!279218) #b00000000000000000000000000000000)))))

(declare-fun b!610422 () Bool)

(assert (=> b!610422 (= e!349704 (contains!3043 Nil!11999 (select (arr!17908 lt!279218) #b00000000000000000000000000000000)))))

(declare-fun d!88121 () Bool)

(declare-fun res!392766 () Bool)

(assert (=> d!88121 (=> res!392766 e!349706)))

(assert (=> d!88121 (= res!392766 (bvsge #b00000000000000000000000000000000 (size!18272 lt!279218)))))

(assert (=> d!88121 (= (arrayNoDuplicates!0 lt!279218 #b00000000000000000000000000000000 Nil!11999) e!349706)))

(declare-fun b!610425 () Bool)

(assert (=> b!610425 (= e!349703 call!33132)))

(declare-fun b!610426 () Bool)

(assert (=> b!610426 (= e!349703 call!33132)))

(assert (= (and d!88121 (not res!392766)) b!610424))

(assert (= (and b!610424 res!392767) b!610422))

(assert (= (and b!610424 res!392768) b!610423))

(assert (= (and b!610423 c!69195) b!610425))

(assert (= (and b!610423 (not c!69195)) b!610426))

(assert (= (or b!610425 b!610426) bm!33129))

(declare-fun m!586955 () Bool)

(assert (=> bm!33129 m!586955))

(declare-fun m!586957 () Bool)

(assert (=> bm!33129 m!586957))

(assert (=> b!610423 m!586955))

(assert (=> b!610423 m!586955))

(declare-fun m!586959 () Bool)

(assert (=> b!610423 m!586959))

(assert (=> b!610424 m!586955))

(assert (=> b!610424 m!586955))

(assert (=> b!610424 m!586959))

(assert (=> b!610422 m!586955))

(assert (=> b!610422 m!586955))

(declare-fun m!586961 () Bool)

(assert (=> b!610422 m!586961))

(assert (=> b!610315 d!88121))

(declare-fun d!88123 () Bool)

(declare-fun e!349709 () Bool)

(assert (=> d!88123 e!349709))

(declare-fun res!392771 () Bool)

(assert (=> d!88123 (=> (not res!392771) (not e!349709))))

(assert (=> d!88123 (= res!392771 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18272 a!2986))))))

(declare-fun lt!279279 () Unit!19558)

(declare-fun choose!41 (array!37325 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12002) Unit!19558)

(assert (=> d!88123 (= lt!279279 (choose!41 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11999))))

(assert (=> d!88123 (bvslt (size!18272 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!88123 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11999) lt!279279)))

(declare-fun b!610429 () Bool)

(assert (=> b!610429 (= e!349709 (arrayNoDuplicates!0 (array!37326 (store (arr!17908 a!2986) i!1108 k0!1786) (size!18272 a!2986)) #b00000000000000000000000000000000 Nil!11999))))

(assert (= (and d!88123 res!392771) b!610429))

(declare-fun m!586963 () Bool)

(assert (=> d!88123 m!586963))

(assert (=> b!610429 m!586813))

(declare-fun m!586965 () Bool)

(assert (=> b!610429 m!586965))

(assert (=> b!610315 d!88123))

(declare-fun d!88125 () Bool)

(assert (=> d!88125 (arrayNoDuplicates!0 lt!279218 j!136 Nil!11999)))

(declare-fun lt!279282 () Unit!19558)

(declare-fun choose!39 (array!37325 (_ BitVec 32) (_ BitVec 32)) Unit!19558)

(assert (=> d!88125 (= lt!279282 (choose!39 lt!279218 #b00000000000000000000000000000000 j!136))))

(assert (=> d!88125 (bvslt (size!18272 lt!279218) #b01111111111111111111111111111111)))

(assert (=> d!88125 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!279218 #b00000000000000000000000000000000 j!136) lt!279282)))

(declare-fun bs!18624 () Bool)

(assert (= bs!18624 d!88125))

(assert (=> bs!18624 m!586823))

(declare-fun m!586967 () Bool)

(assert (=> bs!18624 m!586967))

(assert (=> b!610315 d!88125))

(declare-fun d!88127 () Bool)

(assert (=> d!88127 (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18272 lt!279218)) (not (= (select (arr!17908 lt!279218) j!136) (select (arr!17908 a!2986) j!136))))))

(declare-fun lt!279285 () Unit!19558)

(declare-fun choose!21 (array!37325 (_ BitVec 64) (_ BitVec 32) List!12002) Unit!19558)

(assert (=> d!88127 (= lt!279285 (choose!21 lt!279218 (select (arr!17908 a!2986) j!136) j!136 Nil!11999))))

(assert (=> d!88127 (bvslt (size!18272 lt!279218) #b01111111111111111111111111111111)))

(assert (=> d!88127 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!279218 (select (arr!17908 a!2986) j!136) j!136 Nil!11999) lt!279285)))

(declare-fun bs!18625 () Bool)

(assert (= bs!18625 d!88127))

(assert (=> bs!18625 m!586947))

(assert (=> bs!18625 m!586811))

(declare-fun m!586969 () Bool)

(assert (=> bs!18625 m!586969))

(assert (=> b!610315 d!88127))

(declare-fun d!88129 () Bool)

(assert (=> d!88129 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!55712 d!88129))

(declare-fun d!88131 () Bool)

(assert (=> d!88131 (= (array_inv!13682 a!2986) (bvsge (size!18272 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!55712 d!88131))

(declare-fun e!349729 () SeekEntryResult!6355)

(declare-fun lt!279296 () SeekEntryResult!6355)

(declare-fun b!610455 () Bool)

(assert (=> b!610455 (= e!349729 (seekKeyOrZeroReturnVacant!0 (x!56530 lt!279296) (index!27699 lt!279296) (index!27699 lt!279296) k0!1786 a!2986 mask!3053))))

(declare-fun b!610456 () Bool)

(declare-fun e!349728 () SeekEntryResult!6355)

(declare-fun e!349730 () SeekEntryResult!6355)

(assert (=> b!610456 (= e!349728 e!349730)))

(declare-fun lt!279297 () (_ BitVec 64))

(assert (=> b!610456 (= lt!279297 (select (arr!17908 a!2986) (index!27699 lt!279296)))))

(declare-fun c!69202 () Bool)

(assert (=> b!610456 (= c!69202 (= lt!279297 k0!1786))))

(declare-fun b!610457 () Bool)

(assert (=> b!610457 (= e!349729 (MissingZero!6355 (index!27699 lt!279296)))))

(declare-fun b!610458 () Bool)

(declare-fun c!69203 () Bool)

(assert (=> b!610458 (= c!69203 (= lt!279297 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!610458 (= e!349730 e!349729)))

(declare-fun b!610459 () Bool)

(assert (=> b!610459 (= e!349730 (Found!6355 (index!27699 lt!279296)))))

(declare-fun d!88133 () Bool)

(declare-fun lt!279295 () SeekEntryResult!6355)

(get-info :version)

(assert (=> d!88133 (and (or ((_ is Undefined!6355) lt!279295) (not ((_ is Found!6355) lt!279295)) (and (bvsge (index!27698 lt!279295) #b00000000000000000000000000000000) (bvslt (index!27698 lt!279295) (size!18272 a!2986)))) (or ((_ is Undefined!6355) lt!279295) ((_ is Found!6355) lt!279295) (not ((_ is MissingZero!6355) lt!279295)) (and (bvsge (index!27697 lt!279295) #b00000000000000000000000000000000) (bvslt (index!27697 lt!279295) (size!18272 a!2986)))) (or ((_ is Undefined!6355) lt!279295) ((_ is Found!6355) lt!279295) ((_ is MissingZero!6355) lt!279295) (not ((_ is MissingVacant!6355) lt!279295)) (and (bvsge (index!27700 lt!279295) #b00000000000000000000000000000000) (bvslt (index!27700 lt!279295) (size!18272 a!2986)))) (or ((_ is Undefined!6355) lt!279295) (ite ((_ is Found!6355) lt!279295) (= (select (arr!17908 a!2986) (index!27698 lt!279295)) k0!1786) (ite ((_ is MissingZero!6355) lt!279295) (= (select (arr!17908 a!2986) (index!27697 lt!279295)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!6355) lt!279295) (= (select (arr!17908 a!2986) (index!27700 lt!279295)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!88133 (= lt!279295 e!349728)))

(declare-fun c!69204 () Bool)

(assert (=> d!88133 (= c!69204 (and ((_ is Intermediate!6355) lt!279296) (undefined!7167 lt!279296)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37325 (_ BitVec 32)) SeekEntryResult!6355)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!88133 (= lt!279296 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!88133 (validMask!0 mask!3053)))

(assert (=> d!88133 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!279295)))

(declare-fun b!610454 () Bool)

(assert (=> b!610454 (= e!349728 Undefined!6355)))

(assert (= (and d!88133 c!69204) b!610454))

(assert (= (and d!88133 (not c!69204)) b!610456))

(assert (= (and b!610456 c!69202) b!610459))

(assert (= (and b!610456 (not c!69202)) b!610458))

(assert (= (and b!610458 c!69203) b!610457))

(assert (= (and b!610458 (not c!69203)) b!610455))

(declare-fun m!586981 () Bool)

(assert (=> b!610455 m!586981))

(declare-fun m!586983 () Bool)

(assert (=> b!610456 m!586983))

(declare-fun m!586985 () Bool)

(assert (=> d!88133 m!586985))

(declare-fun m!586987 () Bool)

(assert (=> d!88133 m!586987))

(assert (=> d!88133 m!586843))

(assert (=> d!88133 m!586985))

(declare-fun m!586989 () Bool)

(assert (=> d!88133 m!586989))

(declare-fun m!586991 () Bool)

(assert (=> d!88133 m!586991))

(declare-fun m!586993 () Bool)

(assert (=> d!88133 m!586993))

(assert (=> b!610325 d!88133))

(declare-fun d!88145 () Bool)

(assert (=> d!88145 (= (validKeyInArray!0 (select (arr!17908 a!2986) j!136)) (and (not (= (select (arr!17908 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17908 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!610324 d!88145))

(declare-fun d!88147 () Bool)

(declare-fun res!392784 () Bool)

(declare-fun e!349731 () Bool)

(assert (=> d!88147 (=> res!392784 e!349731)))

(assert (=> d!88147 (= res!392784 (= (select (arr!17908 lt!279218) index!984) (select (arr!17908 a!2986) j!136)))))

(assert (=> d!88147 (= (arrayContainsKey!0 lt!279218 (select (arr!17908 a!2986) j!136) index!984) e!349731)))

(declare-fun b!610460 () Bool)

(declare-fun e!349732 () Bool)

(assert (=> b!610460 (= e!349731 e!349732)))

(declare-fun res!392785 () Bool)

(assert (=> b!610460 (=> (not res!392785) (not e!349732))))

(assert (=> b!610460 (= res!392785 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18272 lt!279218)))))

(declare-fun b!610461 () Bool)

(assert (=> b!610461 (= e!349732 (arrayContainsKey!0 lt!279218 (select (arr!17908 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!88147 (not res!392784)) b!610460))

(assert (= (and b!610460 res!392785) b!610461))

(declare-fun m!586995 () Bool)

(assert (=> d!88147 m!586995))

(assert (=> b!610461 m!586811))

(declare-fun m!586997 () Bool)

(assert (=> b!610461 m!586997))

(assert (=> b!610323 d!88147))

(declare-fun b!610501 () Bool)

(declare-fun c!69223 () Bool)

(declare-fun lt!279314 () (_ BitVec 64))

(assert (=> b!610501 (= c!69223 (= lt!279314 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!349755 () SeekEntryResult!6355)

(declare-fun e!349756 () SeekEntryResult!6355)

(assert (=> b!610501 (= e!349755 e!349756)))

(declare-fun b!610502 () Bool)

(assert (=> b!610502 (= e!349756 (MissingVacant!6355 vacantSpotIndex!68))))

(declare-fun b!610503 () Bool)

(assert (=> b!610503 (= e!349756 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!279217 lt!279218 mask!3053))))

(declare-fun b!610505 () Bool)

(assert (=> b!610505 (= e!349755 (Found!6355 index!984))))

(declare-fun b!610506 () Bool)

(declare-fun e!349754 () SeekEntryResult!6355)

(assert (=> b!610506 (= e!349754 e!349755)))

(declare-fun c!69225 () Bool)

(assert (=> b!610506 (= c!69225 (= lt!279314 lt!279217))))

(declare-fun b!610504 () Bool)

(assert (=> b!610504 (= e!349754 Undefined!6355)))

(declare-fun lt!279313 () SeekEntryResult!6355)

(declare-fun d!88149 () Bool)

(assert (=> d!88149 (and (or ((_ is Undefined!6355) lt!279313) (not ((_ is Found!6355) lt!279313)) (and (bvsge (index!27698 lt!279313) #b00000000000000000000000000000000) (bvslt (index!27698 lt!279313) (size!18272 lt!279218)))) (or ((_ is Undefined!6355) lt!279313) ((_ is Found!6355) lt!279313) (not ((_ is MissingVacant!6355) lt!279313)) (not (= (index!27700 lt!279313) vacantSpotIndex!68)) (and (bvsge (index!27700 lt!279313) #b00000000000000000000000000000000) (bvslt (index!27700 lt!279313) (size!18272 lt!279218)))) (or ((_ is Undefined!6355) lt!279313) (ite ((_ is Found!6355) lt!279313) (= (select (arr!17908 lt!279218) (index!27698 lt!279313)) lt!279217) (and ((_ is MissingVacant!6355) lt!279313) (= (index!27700 lt!279313) vacantSpotIndex!68) (= (select (arr!17908 lt!279218) (index!27700 lt!279313)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!88149 (= lt!279313 e!349754)))

(declare-fun c!69224 () Bool)

(assert (=> d!88149 (= c!69224 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!88149 (= lt!279314 (select (arr!17908 lt!279218) index!984))))

(assert (=> d!88149 (validMask!0 mask!3053)))

(assert (=> d!88149 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!279217 lt!279218 mask!3053) lt!279313)))

(assert (= (and d!88149 c!69224) b!610504))

(assert (= (and d!88149 (not c!69224)) b!610506))

(assert (= (and b!610506 c!69225) b!610505))

(assert (= (and b!610506 (not c!69225)) b!610501))

(assert (= (and b!610501 c!69223) b!610502))

(assert (= (and b!610501 (not c!69223)) b!610503))

(assert (=> b!610503 m!586857))

(assert (=> b!610503 m!586857))

(declare-fun m!587021 () Bool)

(assert (=> b!610503 m!587021))

(declare-fun m!587023 () Bool)

(assert (=> d!88149 m!587023))

(declare-fun m!587025 () Bool)

(assert (=> d!88149 m!587025))

(assert (=> d!88149 m!586995))

(assert (=> d!88149 m!586843))

(assert (=> b!610312 d!88149))

(declare-fun b!610513 () Bool)

(declare-fun c!69229 () Bool)

(declare-fun lt!279318 () (_ BitVec 64))

(assert (=> b!610513 (= c!69229 (= lt!279318 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!349761 () SeekEntryResult!6355)

(declare-fun e!349762 () SeekEntryResult!6355)

(assert (=> b!610513 (= e!349761 e!349762)))

(declare-fun b!610514 () Bool)

(assert (=> b!610514 (= e!349762 (MissingVacant!6355 vacantSpotIndex!68))))

(declare-fun b!610515 () Bool)

(assert (=> b!610515 (= e!349762 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!279219 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!279217 lt!279218 mask!3053))))

(declare-fun b!610517 () Bool)

(assert (=> b!610517 (= e!349761 (Found!6355 lt!279219))))

(declare-fun b!610518 () Bool)

(declare-fun e!349760 () SeekEntryResult!6355)

(assert (=> b!610518 (= e!349760 e!349761)))

(declare-fun c!69231 () Bool)

(assert (=> b!610518 (= c!69231 (= lt!279318 lt!279217))))

(declare-fun b!610516 () Bool)

(assert (=> b!610516 (= e!349760 Undefined!6355)))

(declare-fun lt!279317 () SeekEntryResult!6355)

(declare-fun d!88157 () Bool)

(assert (=> d!88157 (and (or ((_ is Undefined!6355) lt!279317) (not ((_ is Found!6355) lt!279317)) (and (bvsge (index!27698 lt!279317) #b00000000000000000000000000000000) (bvslt (index!27698 lt!279317) (size!18272 lt!279218)))) (or ((_ is Undefined!6355) lt!279317) ((_ is Found!6355) lt!279317) (not ((_ is MissingVacant!6355) lt!279317)) (not (= (index!27700 lt!279317) vacantSpotIndex!68)) (and (bvsge (index!27700 lt!279317) #b00000000000000000000000000000000) (bvslt (index!27700 lt!279317) (size!18272 lt!279218)))) (or ((_ is Undefined!6355) lt!279317) (ite ((_ is Found!6355) lt!279317) (= (select (arr!17908 lt!279218) (index!27698 lt!279317)) lt!279217) (and ((_ is MissingVacant!6355) lt!279317) (= (index!27700 lt!279317) vacantSpotIndex!68) (= (select (arr!17908 lt!279218) (index!27700 lt!279317)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!88157 (= lt!279317 e!349760)))

(declare-fun c!69230 () Bool)

(assert (=> d!88157 (= c!69230 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!88157 (= lt!279318 (select (arr!17908 lt!279218) lt!279219))))

(assert (=> d!88157 (validMask!0 mask!3053)))

(assert (=> d!88157 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!279219 vacantSpotIndex!68 lt!279217 lt!279218 mask!3053) lt!279317)))

(assert (= (and d!88157 c!69230) b!610516))

(assert (= (and d!88157 (not c!69230)) b!610518))

(assert (= (and b!610518 c!69231) b!610517))

(assert (= (and b!610518 (not c!69231)) b!610513))

(assert (= (and b!610513 c!69229) b!610514))

(assert (= (and b!610513 (not c!69229)) b!610515))

(declare-fun m!587035 () Bool)

(assert (=> b!610515 m!587035))

(assert (=> b!610515 m!587035))

(declare-fun m!587037 () Bool)

(assert (=> b!610515 m!587037))

(declare-fun m!587039 () Bool)

(assert (=> d!88157 m!587039))

(declare-fun m!587041 () Bool)

(assert (=> d!88157 m!587041))

(declare-fun m!587043 () Bool)

(assert (=> d!88157 m!587043))

(assert (=> d!88157 m!586843))

(assert (=> b!610312 d!88157))

(declare-fun d!88161 () Bool)

(declare-fun lt!279325 () (_ BitVec 32))

(assert (=> d!88161 (and (bvsge lt!279325 #b00000000000000000000000000000000) (bvslt lt!279325 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!88161 (= lt!279325 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!88161 (validMask!0 mask!3053)))

(assert (=> d!88161 (= (nextIndex!0 index!984 x!910 mask!3053) lt!279325)))

(declare-fun bs!18627 () Bool)

(assert (= bs!18627 d!88161))

(declare-fun m!587045 () Bool)

(assert (=> bs!18627 m!587045))

(assert (=> bs!18627 m!586843))

(assert (=> b!610312 d!88161))

(declare-fun b!610531 () Bool)

(declare-fun c!69238 () Bool)

(declare-fun lt!279327 () (_ BitVec 64))

(assert (=> b!610531 (= c!69238 (= lt!279327 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!349770 () SeekEntryResult!6355)

(declare-fun e!349771 () SeekEntryResult!6355)

(assert (=> b!610531 (= e!349770 e!349771)))

(declare-fun b!610532 () Bool)

(assert (=> b!610532 (= e!349771 (MissingVacant!6355 vacantSpotIndex!68))))

(declare-fun b!610533 () Bool)

(assert (=> b!610533 (= e!349771 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!279219 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!17908 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!610535 () Bool)

(assert (=> b!610535 (= e!349770 (Found!6355 lt!279219))))

(declare-fun b!610536 () Bool)

(declare-fun e!349769 () SeekEntryResult!6355)

(assert (=> b!610536 (= e!349769 e!349770)))

(declare-fun c!69240 () Bool)

(assert (=> b!610536 (= c!69240 (= lt!279327 (select (arr!17908 a!2986) j!136)))))

(declare-fun b!610534 () Bool)

(assert (=> b!610534 (= e!349769 Undefined!6355)))

(declare-fun d!88163 () Bool)

(declare-fun lt!279326 () SeekEntryResult!6355)

(assert (=> d!88163 (and (or ((_ is Undefined!6355) lt!279326) (not ((_ is Found!6355) lt!279326)) (and (bvsge (index!27698 lt!279326) #b00000000000000000000000000000000) (bvslt (index!27698 lt!279326) (size!18272 a!2986)))) (or ((_ is Undefined!6355) lt!279326) ((_ is Found!6355) lt!279326) (not ((_ is MissingVacant!6355) lt!279326)) (not (= (index!27700 lt!279326) vacantSpotIndex!68)) (and (bvsge (index!27700 lt!279326) #b00000000000000000000000000000000) (bvslt (index!27700 lt!279326) (size!18272 a!2986)))) (or ((_ is Undefined!6355) lt!279326) (ite ((_ is Found!6355) lt!279326) (= (select (arr!17908 a!2986) (index!27698 lt!279326)) (select (arr!17908 a!2986) j!136)) (and ((_ is MissingVacant!6355) lt!279326) (= (index!27700 lt!279326) vacantSpotIndex!68) (= (select (arr!17908 a!2986) (index!27700 lt!279326)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!88163 (= lt!279326 e!349769)))

(declare-fun c!69239 () Bool)

(assert (=> d!88163 (= c!69239 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!88163 (= lt!279327 (select (arr!17908 a!2986) lt!279219))))

(assert (=> d!88163 (validMask!0 mask!3053)))

(assert (=> d!88163 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!279219 vacantSpotIndex!68 (select (arr!17908 a!2986) j!136) a!2986 mask!3053) lt!279326)))

(assert (= (and d!88163 c!69239) b!610534))

(assert (= (and d!88163 (not c!69239)) b!610536))

(assert (= (and b!610536 c!69240) b!610535))

(assert (= (and b!610536 (not c!69240)) b!610531))

(assert (= (and b!610531 c!69238) b!610532))

(assert (= (and b!610531 (not c!69238)) b!610533))

(assert (=> b!610533 m!587035))

(assert (=> b!610533 m!587035))

(assert (=> b!610533 m!586811))

(declare-fun m!587047 () Bool)

(assert (=> b!610533 m!587047))

(declare-fun m!587049 () Bool)

(assert (=> d!88163 m!587049))

(declare-fun m!587051 () Bool)

(assert (=> d!88163 m!587051))

(declare-fun m!587053 () Bool)

(assert (=> d!88163 m!587053))

(assert (=> d!88163 m!586843))

(assert (=> b!610312 d!88163))

(declare-fun d!88165 () Bool)

(declare-fun e!349798 () Bool)

(assert (=> d!88165 e!349798))

(declare-fun res!392806 () Bool)

(assert (=> d!88165 (=> (not res!392806) (not e!349798))))

(assert (=> d!88165 (= res!392806 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18272 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18272 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18272 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18272 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18272 a!2986))))))

(declare-fun lt!279342 () Unit!19558)

(declare-fun choose!9 (array!37325 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19558)

(assert (=> d!88165 (= lt!279342 (choose!9 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!279219 vacantSpotIndex!68 mask!3053))))

(assert (=> d!88165 (validMask!0 mask!3053)))

(assert (=> d!88165 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!279219 vacantSpotIndex!68 mask!3053) lt!279342)))

(declare-fun b!610570 () Bool)

(assert (=> b!610570 (= e!349798 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!279219 vacantSpotIndex!68 (select (arr!17908 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!279219 vacantSpotIndex!68 (select (store (arr!17908 a!2986) i!1108 k0!1786) j!136) (array!37326 (store (arr!17908 a!2986) i!1108 k0!1786) (size!18272 a!2986)) mask!3053)))))

(assert (= (and d!88165 res!392806) b!610570))

(declare-fun m!587091 () Bool)

(assert (=> d!88165 m!587091))

(assert (=> d!88165 m!586843))

(assert (=> b!610570 m!586813))

(assert (=> b!610570 m!586859))

(assert (=> b!610570 m!586859))

(declare-fun m!587093 () Bool)

(assert (=> b!610570 m!587093))

(assert (=> b!610570 m!586811))

(assert (=> b!610570 m!586863))

(assert (=> b!610570 m!586811))

(assert (=> b!610312 d!88165))

(assert (=> b!610322 d!88147))

(declare-fun bm!33132 () Bool)

(declare-fun call!33135 () Bool)

(declare-fun c!69252 () Bool)

(assert (=> bm!33132 (= call!33135 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!69252 (Cons!11998 (select (arr!17908 a!2986) #b00000000000000000000000000000000) Nil!11999) Nil!11999)))))

(declare-fun b!610578 () Bool)

(declare-fun e!349803 () Bool)

(declare-fun e!349801 () Bool)

(assert (=> b!610578 (= e!349803 e!349801)))

(assert (=> b!610578 (= c!69252 (validKeyInArray!0 (select (arr!17908 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!610579 () Bool)

(declare-fun e!349804 () Bool)

(assert (=> b!610579 (= e!349804 e!349803)))

(declare-fun res!392809 () Bool)

(assert (=> b!610579 (=> (not res!392809) (not e!349803))))

(declare-fun e!349802 () Bool)

(assert (=> b!610579 (= res!392809 (not e!349802))))

(declare-fun res!392808 () Bool)

(assert (=> b!610579 (=> (not res!392808) (not e!349802))))

(assert (=> b!610579 (= res!392808 (validKeyInArray!0 (select (arr!17908 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!610577 () Bool)

(assert (=> b!610577 (= e!349802 (contains!3043 Nil!11999 (select (arr!17908 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!88181 () Bool)

(declare-fun res!392807 () Bool)

(assert (=> d!88181 (=> res!392807 e!349804)))

(assert (=> d!88181 (= res!392807 (bvsge #b00000000000000000000000000000000 (size!18272 a!2986)))))

(assert (=> d!88181 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11999) e!349804)))

(declare-fun b!610580 () Bool)

(assert (=> b!610580 (= e!349801 call!33135)))

(declare-fun b!610581 () Bool)

(assert (=> b!610581 (= e!349801 call!33135)))

(assert (= (and d!88181 (not res!392807)) b!610579))

(assert (= (and b!610579 res!392808) b!610577))

(assert (= (and b!610579 res!392809) b!610578))

(assert (= (and b!610578 c!69252) b!610580))

(assert (= (and b!610578 (not c!69252)) b!610581))

(assert (= (or b!610580 b!610581) bm!33132))

(declare-fun m!587095 () Bool)

(assert (=> bm!33132 m!587095))

(declare-fun m!587097 () Bool)

(assert (=> bm!33132 m!587097))

(assert (=> b!610578 m!587095))

(assert (=> b!610578 m!587095))

(declare-fun m!587099 () Bool)

(assert (=> b!610578 m!587099))

(assert (=> b!610579 m!587095))

(assert (=> b!610579 m!587095))

(assert (=> b!610579 m!587099))

(assert (=> b!610577 m!587095))

(assert (=> b!610577 m!587095))

(declare-fun m!587101 () Bool)

(assert (=> b!610577 m!587101))

(assert (=> b!610321 d!88181))

(declare-fun d!88183 () Bool)

(declare-fun res!392841 () Bool)

(declare-fun e!349848 () Bool)

(assert (=> d!88183 (=> res!392841 e!349848)))

(assert (=> d!88183 (= res!392841 (bvsge #b00000000000000000000000000000000 (size!18272 a!2986)))))

(assert (=> d!88183 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!349848)))

(declare-fun bm!33140 () Bool)

(declare-fun call!33143 () Bool)

(assert (=> bm!33140 (= call!33143 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!610633 () Bool)

(declare-fun e!349846 () Bool)

(declare-fun e!349847 () Bool)

(assert (=> b!610633 (= e!349846 e!349847)))

(declare-fun lt!279358 () (_ BitVec 64))

(assert (=> b!610633 (= lt!279358 (select (arr!17908 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!279357 () Unit!19558)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!37325 (_ BitVec 64) (_ BitVec 32)) Unit!19558)

(assert (=> b!610633 (= lt!279357 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!279358 #b00000000000000000000000000000000))))

(assert (=> b!610633 (arrayContainsKey!0 a!2986 lt!279358 #b00000000000000000000000000000000)))

(declare-fun lt!279359 () Unit!19558)

(assert (=> b!610633 (= lt!279359 lt!279357)))

(declare-fun res!392842 () Bool)

(assert (=> b!610633 (= res!392842 (= (seekEntryOrOpen!0 (select (arr!17908 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6355 #b00000000000000000000000000000000)))))

(assert (=> b!610633 (=> (not res!392842) (not e!349847))))

(declare-fun b!610634 () Bool)

(assert (=> b!610634 (= e!349848 e!349846)))

(declare-fun c!69263 () Bool)

(assert (=> b!610634 (= c!69263 (validKeyInArray!0 (select (arr!17908 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!610635 () Bool)

(assert (=> b!610635 (= e!349846 call!33143)))

(declare-fun b!610636 () Bool)

(assert (=> b!610636 (= e!349847 call!33143)))

(assert (= (and d!88183 (not res!392841)) b!610634))

(assert (= (and b!610634 c!69263) b!610633))

(assert (= (and b!610634 (not c!69263)) b!610635))

(assert (= (and b!610633 res!392842) b!610636))

(assert (= (or b!610636 b!610635) bm!33140))

(declare-fun m!587147 () Bool)

(assert (=> bm!33140 m!587147))

(assert (=> b!610633 m!587095))

(declare-fun m!587149 () Bool)

(assert (=> b!610633 m!587149))

(declare-fun m!587151 () Bool)

(assert (=> b!610633 m!587151))

(assert (=> b!610633 m!587095))

(declare-fun m!587153 () Bool)

(assert (=> b!610633 m!587153))

(assert (=> b!610634 m!587095))

(assert (=> b!610634 m!587095))

(assert (=> b!610634 m!587099))

(assert (=> b!610309 d!88183))

(declare-fun d!88205 () Bool)

(declare-fun res!392843 () Bool)

(declare-fun e!349849 () Bool)

(assert (=> d!88205 (=> res!392843 e!349849)))

(assert (=> d!88205 (= res!392843 (= (select (arr!17908 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!88205 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!349849)))

(declare-fun b!610637 () Bool)

(declare-fun e!349850 () Bool)

(assert (=> b!610637 (= e!349849 e!349850)))

(declare-fun res!392844 () Bool)

(assert (=> b!610637 (=> (not res!392844) (not e!349850))))

(assert (=> b!610637 (= res!392844 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18272 a!2986)))))

(declare-fun b!610638 () Bool)

(assert (=> b!610638 (= e!349850 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!88205 (not res!392843)) b!610637))

(assert (= (and b!610637 res!392844) b!610638))

(assert (=> d!88205 m!587095))

(declare-fun m!587155 () Bool)

(assert (=> b!610638 m!587155))

(assert (=> b!610319 d!88205))

(declare-fun b!610639 () Bool)

(declare-fun c!69264 () Bool)

(declare-fun lt!279361 () (_ BitVec 64))

(assert (=> b!610639 (= c!69264 (= lt!279361 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!349852 () SeekEntryResult!6355)

(declare-fun e!349853 () SeekEntryResult!6355)

(assert (=> b!610639 (= e!349852 e!349853)))

(declare-fun b!610640 () Bool)

(assert (=> b!610640 (= e!349853 (MissingVacant!6355 vacantSpotIndex!68))))

(declare-fun b!610641 () Bool)

(assert (=> b!610641 (= e!349853 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!17908 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!610643 () Bool)

(assert (=> b!610643 (= e!349852 (Found!6355 index!984))))

(declare-fun b!610644 () Bool)

(declare-fun e!349851 () SeekEntryResult!6355)

(assert (=> b!610644 (= e!349851 e!349852)))

(declare-fun c!69266 () Bool)

(assert (=> b!610644 (= c!69266 (= lt!279361 (select (arr!17908 a!2986) j!136)))))

(declare-fun b!610642 () Bool)

(assert (=> b!610642 (= e!349851 Undefined!6355)))

(declare-fun d!88207 () Bool)

(declare-fun lt!279360 () SeekEntryResult!6355)

(assert (=> d!88207 (and (or ((_ is Undefined!6355) lt!279360) (not ((_ is Found!6355) lt!279360)) (and (bvsge (index!27698 lt!279360) #b00000000000000000000000000000000) (bvslt (index!27698 lt!279360) (size!18272 a!2986)))) (or ((_ is Undefined!6355) lt!279360) ((_ is Found!6355) lt!279360) (not ((_ is MissingVacant!6355) lt!279360)) (not (= (index!27700 lt!279360) vacantSpotIndex!68)) (and (bvsge (index!27700 lt!279360) #b00000000000000000000000000000000) (bvslt (index!27700 lt!279360) (size!18272 a!2986)))) (or ((_ is Undefined!6355) lt!279360) (ite ((_ is Found!6355) lt!279360) (= (select (arr!17908 a!2986) (index!27698 lt!279360)) (select (arr!17908 a!2986) j!136)) (and ((_ is MissingVacant!6355) lt!279360) (= (index!27700 lt!279360) vacantSpotIndex!68) (= (select (arr!17908 a!2986) (index!27700 lt!279360)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!88207 (= lt!279360 e!349851)))

(declare-fun c!69265 () Bool)

(assert (=> d!88207 (= c!69265 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!88207 (= lt!279361 (select (arr!17908 a!2986) index!984))))

(assert (=> d!88207 (validMask!0 mask!3053)))

(assert (=> d!88207 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17908 a!2986) j!136) a!2986 mask!3053) lt!279360)))

(assert (= (and d!88207 c!69265) b!610642))

(assert (= (and d!88207 (not c!69265)) b!610644))

(assert (= (and b!610644 c!69266) b!610643))

(assert (= (and b!610644 (not c!69266)) b!610639))

(assert (= (and b!610639 c!69264) b!610640))

(assert (= (and b!610639 (not c!69264)) b!610641))

(assert (=> b!610641 m!586857))

(assert (=> b!610641 m!586857))

(assert (=> b!610641 m!586811))

(declare-fun m!587157 () Bool)

(assert (=> b!610641 m!587157))

(declare-fun m!587159 () Bool)

(assert (=> d!88207 m!587159))

(declare-fun m!587161 () Bool)

(assert (=> d!88207 m!587161))

(assert (=> d!88207 m!586837))

(assert (=> d!88207 m!586843))

(assert (=> b!610318 d!88207))

(declare-fun d!88209 () Bool)

(declare-fun res!392845 () Bool)

(declare-fun e!349854 () Bool)

(assert (=> d!88209 (=> res!392845 e!349854)))

(assert (=> d!88209 (= res!392845 (= (select (arr!17908 lt!279218) (bvadd #b00000000000000000000000000000001 index!984)) (select (arr!17908 a!2986) j!136)))))

(assert (=> d!88209 (= (arrayContainsKey!0 lt!279218 (select (arr!17908 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984)) e!349854)))

(declare-fun b!610645 () Bool)

(declare-fun e!349855 () Bool)

(assert (=> b!610645 (= e!349854 e!349855)))

(declare-fun res!392846 () Bool)

(assert (=> b!610645 (=> (not res!392846) (not e!349855))))

(assert (=> b!610645 (= res!392846 (bvslt (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001) (size!18272 lt!279218)))))

(declare-fun b!610646 () Bool)

(assert (=> b!610646 (= e!349855 (arrayContainsKey!0 lt!279218 (select (arr!17908 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!88209 (not res!392845)) b!610645))

(assert (= (and b!610645 res!392846) b!610646))

(declare-fun m!587163 () Bool)

(assert (=> d!88209 m!587163))

(assert (=> b!610646 m!586811))

(declare-fun m!587165 () Bool)

(assert (=> b!610646 m!587165))

(assert (=> b!610307 d!88209))

(declare-fun d!88211 () Bool)

(declare-fun res!392847 () Bool)

(declare-fun e!349856 () Bool)

(assert (=> d!88211 (=> res!392847 e!349856)))

(assert (=> d!88211 (= res!392847 (= (select (arr!17908 lt!279218) j!136) (select (arr!17908 a!2986) j!136)))))

(assert (=> d!88211 (= (arrayContainsKey!0 lt!279218 (select (arr!17908 a!2986) j!136) j!136) e!349856)))

(declare-fun b!610647 () Bool)

(declare-fun e!349857 () Bool)

(assert (=> b!610647 (= e!349856 e!349857)))

(declare-fun res!392848 () Bool)

(assert (=> b!610647 (=> (not res!392848) (not e!349857))))

(assert (=> b!610647 (= res!392848 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18272 lt!279218)))))

(declare-fun b!610648 () Bool)

(assert (=> b!610648 (= e!349857 (arrayContainsKey!0 lt!279218 (select (arr!17908 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!88211 (not res!392847)) b!610647))

(assert (= (and b!610647 res!392848) b!610648))

(assert (=> d!88211 m!586947))

(assert (=> b!610648 m!586811))

(declare-fun m!587167 () Bool)

(assert (=> b!610648 m!587167))

(assert (=> b!610307 d!88211))

(assert (=> b!610307 d!88121))

(declare-fun d!88213 () Bool)

(assert (=> d!88213 (arrayContainsKey!0 lt!279218 (select (arr!17908 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!279364 () Unit!19558)

(assert (=> d!88213 (= lt!279364 (choose!114 lt!279218 (select (arr!17908 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> d!88213 (bvsge j!136 #b00000000000000000000000000000000)))

(assert (=> d!88213 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!279218 (select (arr!17908 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)) lt!279364)))

(declare-fun bs!18631 () Bool)

(assert (= bs!18631 d!88213))

(assert (=> bs!18631 m!586811))

(assert (=> bs!18631 m!586871))

(assert (=> bs!18631 m!586811))

(declare-fun m!587169 () Bool)

(assert (=> bs!18631 m!587169))

(assert (=> b!610307 d!88213))

(assert (=> b!610307 d!88123))

(assert (=> b!610328 d!88211))

(declare-fun d!88215 () Bool)

(declare-fun res!392856 () Bool)

(declare-fun e!349865 () Bool)

(assert (=> d!88215 (=> res!392856 e!349865)))

(assert (=> d!88215 (= res!392856 ((_ is Nil!11999) Nil!11999))))

(assert (=> d!88215 (= (noDuplicate!344 Nil!11999) e!349865)))

(declare-fun b!610656 () Bool)

(declare-fun e!349866 () Bool)

(assert (=> b!610656 (= e!349865 e!349866)))

(declare-fun res!392857 () Bool)

(assert (=> b!610656 (=> (not res!392857) (not e!349866))))

(assert (=> b!610656 (= res!392857 (not (contains!3043 (t!18238 Nil!11999) (h!13043 Nil!11999))))))

(declare-fun b!610657 () Bool)

(assert (=> b!610657 (= e!349866 (noDuplicate!344 (t!18238 Nil!11999)))))

(assert (= (and d!88215 (not res!392856)) b!610656))

(assert (= (and b!610656 res!392857) b!610657))

(declare-fun m!587175 () Bool)

(assert (=> b!610656 m!587175))

(declare-fun m!587177 () Bool)

(assert (=> b!610657 m!587177))

(assert (=> b!610306 d!88215))

(check-sat (not b!610422) (not d!88213) (not b!610515) (not b!610657) (not d!88165) (not b!610578) (not b!610570) (not b!610406) (not b!610424) (not d!88133) (not b!610656) (not d!88125) (not b!610417) (not b!610418) (not d!88127) (not b!610419) (not b!610638) (not b!610641) (not b!610634) (not d!88149) (not b!610423) (not bm!33129) (not d!88163) (not d!88123) (not d!88161) (not bm!33128) (not b!610461) (not b!610455) (not b!610429) (not d!88207) (not d!88157) (not b!610648) (not b!610579) (not b!610646) (not b!610577) (not bm!33140) (not d!88115) (not bm!33132) (not b!610633) (not b!610533) (not b!610503))
(check-sat)

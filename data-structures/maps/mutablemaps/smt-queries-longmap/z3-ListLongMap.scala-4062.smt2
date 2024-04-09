; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!55610 () Bool)

(assert start!55610)

(declare-fun b!609330 () Bool)

(declare-fun e!348983 () Bool)

(declare-fun e!348994 () Bool)

(assert (=> b!609330 (= e!348983 e!348994)))

(declare-fun res!392033 () Bool)

(assert (=> b!609330 (=> (not res!392033) (not e!348994))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!37304 0))(
  ( (array!37305 (arr!17899 (Array (_ BitVec 32) (_ BitVec 64))) (size!18263 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37304)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!609330 (= res!392033 (= (select (store (arr!17899 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!278608 () array!37304)

(assert (=> b!609330 (= lt!278608 (array!37305 (store (arr!17899 a!2986) i!1108 k0!1786) (size!18263 a!2986)))))

(declare-fun b!609331 () Bool)

(declare-fun res!392024 () Bool)

(declare-fun e!348982 () Bool)

(assert (=> b!609331 (=> (not res!392024) (not e!348982))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(assert (=> b!609331 (= res!392024 (and (= (size!18263 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18263 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18263 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!609332 () Bool)

(declare-fun res!392028 () Bool)

(declare-fun e!348990 () Bool)

(assert (=> b!609332 (=> res!392028 e!348990)))

(declare-datatypes ((List!11993 0))(
  ( (Nil!11990) (Cons!11989 (h!13034 (_ BitVec 64)) (t!18229 List!11993)) )
))
(declare-fun contains!3039 (List!11993 (_ BitVec 64)) Bool)

(assert (=> b!609332 (= res!392028 (contains!3039 Nil!11990 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!609333 () Bool)

(declare-fun res!392018 () Bool)

(assert (=> b!609333 (=> (not res!392018) (not e!348983))))

(declare-fun arrayNoDuplicates!0 (array!37304 (_ BitVec 32) List!11993) Bool)

(assert (=> b!609333 (= res!392018 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11990))))

(declare-fun b!609334 () Bool)

(declare-fun e!348984 () Bool)

(declare-fun e!348991 () Bool)

(assert (=> b!609334 (= e!348984 e!348991)))

(declare-fun res!392036 () Bool)

(assert (=> b!609334 (=> (not res!392036) (not e!348991))))

(declare-fun arrayContainsKey!0 (array!37304 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!609334 (= res!392036 (arrayContainsKey!0 lt!278608 (select (arr!17899 a!2986) j!136) j!136))))

(declare-fun b!609335 () Bool)

(declare-fun e!348981 () Bool)

(declare-datatypes ((SeekEntryResult!6346 0))(
  ( (MissingZero!6346 (index!27658 (_ BitVec 32))) (Found!6346 (index!27659 (_ BitVec 32))) (Intermediate!6346 (undefined!7158 Bool) (index!27660 (_ BitVec 32)) (x!56488 (_ BitVec 32))) (Undefined!6346) (MissingVacant!6346 (index!27661 (_ BitVec 32))) )
))
(declare-fun lt!278604 () SeekEntryResult!6346)

(declare-fun lt!278601 () SeekEntryResult!6346)

(assert (=> b!609335 (= e!348981 (= lt!278604 lt!278601))))

(declare-fun b!609336 () Bool)

(assert (=> b!609336 (= e!348990 true)))

(declare-fun lt!278605 () Bool)

(assert (=> b!609336 (= lt!278605 (contains!3039 Nil!11990 k0!1786))))

(declare-fun b!609337 () Bool)

(declare-fun res!392031 () Bool)

(assert (=> b!609337 (=> res!392031 e!348990)))

(declare-fun noDuplicate!341 (List!11993) Bool)

(assert (=> b!609337 (= res!392031 (not (noDuplicate!341 Nil!11990)))))

(declare-fun b!609338 () Bool)

(declare-fun res!392022 () Bool)

(assert (=> b!609338 (=> res!392022 e!348990)))

(assert (=> b!609338 (= res!392022 (contains!3039 Nil!11990 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!609339 () Bool)

(declare-datatypes ((Unit!19504 0))(
  ( (Unit!19505) )
))
(declare-fun e!348979 () Unit!19504)

(declare-fun Unit!19506 () Unit!19504)

(assert (=> b!609339 (= e!348979 Unit!19506)))

(declare-fun lt!278602 () Unit!19504)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37304 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19504)

(assert (=> b!609339 (= lt!278602 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!278608 (select (arr!17899 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!609339 (arrayContainsKey!0 lt!278608 (select (arr!17899 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!278612 () Unit!19504)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37304 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11993) Unit!19504)

(assert (=> b!609339 (= lt!278612 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11990))))

(assert (=> b!609339 (arrayNoDuplicates!0 lt!278608 #b00000000000000000000000000000000 Nil!11990)))

(declare-fun lt!278600 () Unit!19504)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37304 (_ BitVec 32) (_ BitVec 32)) Unit!19504)

(assert (=> b!609339 (= lt!278600 (lemmaNoDuplicateFromThenFromBigger!0 lt!278608 #b00000000000000000000000000000000 j!136))))

(assert (=> b!609339 (arrayNoDuplicates!0 lt!278608 j!136 Nil!11990)))

(declare-fun lt!278614 () Unit!19504)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37304 (_ BitVec 64) (_ BitVec 32) List!11993) Unit!19504)

(assert (=> b!609339 (= lt!278614 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!278608 (select (arr!17899 a!2986) j!136) j!136 Nil!11990))))

(assert (=> b!609339 false))

(declare-fun res!392023 () Bool)

(assert (=> start!55610 (=> (not res!392023) (not e!348982))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55610 (= res!392023 (validMask!0 mask!3053))))

(assert (=> start!55610 e!348982))

(assert (=> start!55610 true))

(declare-fun array_inv!13673 (array!37304) Bool)

(assert (=> start!55610 (array_inv!13673 a!2986)))

(declare-fun b!609340 () Bool)

(assert (=> b!609340 (= e!348982 e!348983)))

(declare-fun res!392025 () Bool)

(assert (=> b!609340 (=> (not res!392025) (not e!348983))))

(declare-fun lt!278606 () SeekEntryResult!6346)

(assert (=> b!609340 (= res!392025 (or (= lt!278606 (MissingZero!6346 i!1108)) (= lt!278606 (MissingVacant!6346 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37304 (_ BitVec 32)) SeekEntryResult!6346)

(assert (=> b!609340 (= lt!278606 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!609341 () Bool)

(declare-fun res!392019 () Bool)

(assert (=> b!609341 (=> (not res!392019) (not e!348982))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!609341 (= res!392019 (validKeyInArray!0 (select (arr!17899 a!2986) j!136)))))

(declare-fun b!609342 () Bool)

(declare-fun e!348987 () Bool)

(assert (=> b!609342 (= e!348994 e!348987)))

(declare-fun res!392021 () Bool)

(assert (=> b!609342 (=> (not res!392021) (not e!348987))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!609342 (= res!392021 (and (= lt!278604 (Found!6346 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17899 a!2986) index!984) (select (arr!17899 a!2986) j!136))) (not (= (select (arr!17899 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37304 (_ BitVec 32)) SeekEntryResult!6346)

(assert (=> b!609342 (= lt!278604 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17899 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!609343 () Bool)

(declare-fun e!348988 () Bool)

(assert (=> b!609343 (= e!348988 e!348984)))

(declare-fun res!392027 () Bool)

(assert (=> b!609343 (=> res!392027 e!348984)))

(declare-fun lt!278607 () (_ BitVec 64))

(declare-fun lt!278613 () (_ BitVec 64))

(assert (=> b!609343 (= res!392027 (or (not (= (select (arr!17899 a!2986) j!136) lt!278613)) (not (= (select (arr!17899 a!2986) j!136) lt!278607)) (bvsge j!136 index!984)))))

(declare-fun e!348986 () Bool)

(declare-fun b!609344 () Bool)

(assert (=> b!609344 (= e!348986 (arrayContainsKey!0 lt!278608 (select (arr!17899 a!2986) j!136) index!984))))

(declare-fun b!609345 () Bool)

(declare-fun e!348989 () Bool)

(declare-fun e!348992 () Bool)

(assert (=> b!609345 (= e!348989 e!348992)))

(declare-fun res!392035 () Bool)

(assert (=> b!609345 (=> res!392035 e!348992)))

(assert (=> b!609345 (= res!392035 (or (not (= (select (arr!17899 a!2986) j!136) lt!278613)) (not (= (select (arr!17899 a!2986) j!136) lt!278607))))))

(assert (=> b!609345 e!348988))

(declare-fun res!392026 () Bool)

(assert (=> b!609345 (=> (not res!392026) (not e!348988))))

(assert (=> b!609345 (= res!392026 (= lt!278607 (select (arr!17899 a!2986) j!136)))))

(assert (=> b!609345 (= lt!278607 (select (store (arr!17899 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!609346 () Bool)

(assert (=> b!609346 (= e!348987 (not e!348989))))

(declare-fun res!392016 () Bool)

(assert (=> b!609346 (=> res!392016 e!348989)))

(declare-fun lt!278616 () SeekEntryResult!6346)

(assert (=> b!609346 (= res!392016 (not (= lt!278616 (Found!6346 index!984))))))

(declare-fun lt!278611 () Unit!19504)

(declare-fun e!348993 () Unit!19504)

(assert (=> b!609346 (= lt!278611 e!348993)))

(declare-fun c!69025 () Bool)

(assert (=> b!609346 (= c!69025 (= lt!278616 Undefined!6346))))

(assert (=> b!609346 (= lt!278616 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!278613 lt!278608 mask!3053))))

(assert (=> b!609346 e!348981))

(declare-fun res!392034 () Bool)

(assert (=> b!609346 (=> (not res!392034) (not e!348981))))

(declare-fun lt!278609 () (_ BitVec 32))

(assert (=> b!609346 (= res!392034 (= lt!278601 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!278609 vacantSpotIndex!68 lt!278613 lt!278608 mask!3053)))))

(assert (=> b!609346 (= lt!278601 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!278609 vacantSpotIndex!68 (select (arr!17899 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!609346 (= lt!278613 (select (store (arr!17899 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!278603 () Unit!19504)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37304 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19504)

(assert (=> b!609346 (= lt!278603 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!278609 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!609346 (= lt!278609 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!609347 () Bool)

(declare-fun Unit!19507 () Unit!19504)

(assert (=> b!609347 (= e!348993 Unit!19507)))

(assert (=> b!609347 false))

(declare-fun b!609348 () Bool)

(declare-fun res!392014 () Bool)

(assert (=> b!609348 (=> (not res!392014) (not e!348983))))

(assert (=> b!609348 (= res!392014 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17899 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!609349 () Bool)

(assert (=> b!609349 (= e!348991 (arrayContainsKey!0 lt!278608 (select (arr!17899 a!2986) j!136) index!984))))

(declare-fun b!609350 () Bool)

(declare-fun Unit!19508 () Unit!19504)

(assert (=> b!609350 (= e!348993 Unit!19508)))

(declare-fun b!609351 () Bool)

(declare-fun e!348985 () Bool)

(assert (=> b!609351 (= e!348985 e!348990)))

(declare-fun res!392017 () Bool)

(assert (=> b!609351 (=> res!392017 e!348990)))

(assert (=> b!609351 (= res!392017 (or (bvsge (size!18263 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18263 a!2986))))))

(assert (=> b!609351 (arrayContainsKey!0 lt!278608 (select (arr!17899 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!278610 () Unit!19504)

(assert (=> b!609351 (= lt!278610 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!278608 (select (arr!17899 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!609351 e!348986))

(declare-fun res!392032 () Bool)

(assert (=> b!609351 (=> (not res!392032) (not e!348986))))

(assert (=> b!609351 (= res!392032 (arrayContainsKey!0 lt!278608 (select (arr!17899 a!2986) j!136) j!136))))

(declare-fun b!609352 () Bool)

(declare-fun res!392015 () Bool)

(assert (=> b!609352 (=> (not res!392015) (not e!348983))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37304 (_ BitVec 32)) Bool)

(assert (=> b!609352 (= res!392015 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!609353 () Bool)

(declare-fun res!392029 () Bool)

(assert (=> b!609353 (=> (not res!392029) (not e!348982))))

(assert (=> b!609353 (= res!392029 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!609354 () Bool)

(declare-fun Unit!19509 () Unit!19504)

(assert (=> b!609354 (= e!348979 Unit!19509)))

(declare-fun b!609355 () Bool)

(declare-fun res!392020 () Bool)

(assert (=> b!609355 (=> (not res!392020) (not e!348982))))

(assert (=> b!609355 (= res!392020 (validKeyInArray!0 k0!1786))))

(declare-fun b!609356 () Bool)

(assert (=> b!609356 (= e!348992 e!348985)))

(declare-fun res!392030 () Bool)

(assert (=> b!609356 (=> res!392030 e!348985)))

(assert (=> b!609356 (= res!392030 (bvsge index!984 j!136))))

(declare-fun lt!278615 () Unit!19504)

(assert (=> b!609356 (= lt!278615 e!348979)))

(declare-fun c!69026 () Bool)

(assert (=> b!609356 (= c!69026 (bvslt j!136 index!984))))

(assert (= (and start!55610 res!392023) b!609331))

(assert (= (and b!609331 res!392024) b!609341))

(assert (= (and b!609341 res!392019) b!609355))

(assert (= (and b!609355 res!392020) b!609353))

(assert (= (and b!609353 res!392029) b!609340))

(assert (= (and b!609340 res!392025) b!609352))

(assert (= (and b!609352 res!392015) b!609333))

(assert (= (and b!609333 res!392018) b!609348))

(assert (= (and b!609348 res!392014) b!609330))

(assert (= (and b!609330 res!392033) b!609342))

(assert (= (and b!609342 res!392021) b!609346))

(assert (= (and b!609346 res!392034) b!609335))

(assert (= (and b!609346 c!69025) b!609347))

(assert (= (and b!609346 (not c!69025)) b!609350))

(assert (= (and b!609346 (not res!392016)) b!609345))

(assert (= (and b!609345 res!392026) b!609343))

(assert (= (and b!609343 (not res!392027)) b!609334))

(assert (= (and b!609334 res!392036) b!609349))

(assert (= (and b!609345 (not res!392035)) b!609356))

(assert (= (and b!609356 c!69026) b!609339))

(assert (= (and b!609356 (not c!69026)) b!609354))

(assert (= (and b!609356 (not res!392030)) b!609351))

(assert (= (and b!609351 res!392032) b!609344))

(assert (= (and b!609351 (not res!392017)) b!609337))

(assert (= (and b!609337 (not res!392031)) b!609332))

(assert (= (and b!609332 (not res!392028)) b!609338))

(assert (= (and b!609338 (not res!392022)) b!609336))

(declare-fun m!585885 () Bool)

(assert (=> b!609355 m!585885))

(declare-fun m!585887 () Bool)

(assert (=> b!609353 m!585887))

(declare-fun m!585889 () Bool)

(assert (=> b!609333 m!585889))

(declare-fun m!585891 () Bool)

(assert (=> b!609336 m!585891))

(declare-fun m!585893 () Bool)

(assert (=> b!609337 m!585893))

(declare-fun m!585895 () Bool)

(assert (=> b!609348 m!585895))

(declare-fun m!585897 () Bool)

(assert (=> b!609341 m!585897))

(assert (=> b!609341 m!585897))

(declare-fun m!585899 () Bool)

(assert (=> b!609341 m!585899))

(assert (=> b!609345 m!585897))

(declare-fun m!585901 () Bool)

(assert (=> b!609345 m!585901))

(declare-fun m!585903 () Bool)

(assert (=> b!609345 m!585903))

(declare-fun m!585905 () Bool)

(assert (=> b!609332 m!585905))

(declare-fun m!585907 () Bool)

(assert (=> b!609346 m!585907))

(assert (=> b!609346 m!585897))

(assert (=> b!609346 m!585901))

(declare-fun m!585909 () Bool)

(assert (=> b!609346 m!585909))

(assert (=> b!609346 m!585897))

(declare-fun m!585911 () Bool)

(assert (=> b!609346 m!585911))

(declare-fun m!585913 () Bool)

(assert (=> b!609346 m!585913))

(declare-fun m!585915 () Bool)

(assert (=> b!609346 m!585915))

(declare-fun m!585917 () Bool)

(assert (=> b!609346 m!585917))

(assert (=> b!609344 m!585897))

(assert (=> b!609344 m!585897))

(declare-fun m!585919 () Bool)

(assert (=> b!609344 m!585919))

(declare-fun m!585921 () Bool)

(assert (=> b!609342 m!585921))

(assert (=> b!609342 m!585897))

(assert (=> b!609342 m!585897))

(declare-fun m!585923 () Bool)

(assert (=> b!609342 m!585923))

(declare-fun m!585925 () Bool)

(assert (=> b!609339 m!585925))

(assert (=> b!609339 m!585897))

(assert (=> b!609339 m!585897))

(declare-fun m!585927 () Bool)

(assert (=> b!609339 m!585927))

(declare-fun m!585929 () Bool)

(assert (=> b!609339 m!585929))

(declare-fun m!585931 () Bool)

(assert (=> b!609339 m!585931))

(declare-fun m!585933 () Bool)

(assert (=> b!609339 m!585933))

(assert (=> b!609339 m!585897))

(declare-fun m!585935 () Bool)

(assert (=> b!609339 m!585935))

(assert (=> b!609339 m!585897))

(declare-fun m!585937 () Bool)

(assert (=> b!609339 m!585937))

(assert (=> b!609349 m!585897))

(assert (=> b!609349 m!585897))

(assert (=> b!609349 m!585919))

(declare-fun m!585939 () Bool)

(assert (=> start!55610 m!585939))

(declare-fun m!585941 () Bool)

(assert (=> start!55610 m!585941))

(assert (=> b!609334 m!585897))

(assert (=> b!609334 m!585897))

(declare-fun m!585943 () Bool)

(assert (=> b!609334 m!585943))

(declare-fun m!585945 () Bool)

(assert (=> b!609340 m!585945))

(declare-fun m!585947 () Bool)

(assert (=> b!609352 m!585947))

(assert (=> b!609351 m!585897))

(assert (=> b!609351 m!585897))

(declare-fun m!585949 () Bool)

(assert (=> b!609351 m!585949))

(assert (=> b!609351 m!585897))

(declare-fun m!585951 () Bool)

(assert (=> b!609351 m!585951))

(assert (=> b!609351 m!585897))

(assert (=> b!609351 m!585943))

(assert (=> b!609330 m!585901))

(declare-fun m!585953 () Bool)

(assert (=> b!609330 m!585953))

(declare-fun m!585955 () Bool)

(assert (=> b!609338 m!585955))

(assert (=> b!609343 m!585897))

(check-sat (not b!609334) (not b!609340) (not b!609333) (not b!609344) (not start!55610) (not b!609341) (not b!609349) (not b!609346) (not b!609352) (not b!609355) (not b!609342) (not b!609336) (not b!609353) (not b!609351) (not b!609339) (not b!609338) (not b!609337) (not b!609332))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!55922 () Bool)

(assert start!55922)

(declare-fun b!611890 () Bool)

(declare-fun e!350701 () Bool)

(declare-fun e!350713 () Bool)

(assert (=> b!611890 (= e!350701 e!350713)))

(declare-fun res!393693 () Bool)

(assert (=> b!611890 (=> (not res!393693) (not e!350713))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6367 0))(
  ( (MissingZero!6367 (index!27751 (_ BitVec 32))) (Found!6367 (index!27752 (_ BitVec 32))) (Intermediate!6367 (undefined!7179 Bool) (index!27753 (_ BitVec 32)) (x!56592 (_ BitVec 32))) (Undefined!6367) (MissingVacant!6367 (index!27754 (_ BitVec 32))) )
))
(declare-fun lt!280140 () SeekEntryResult!6367)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37355 0))(
  ( (array!37356 (arr!17920 (Array (_ BitVec 32) (_ BitVec 64))) (size!18284 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37355)

(assert (=> b!611890 (= res!393693 (and (= lt!280140 (Found!6367 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17920 a!2986) index!984) (select (arr!17920 a!2986) j!136))) (not (= (select (arr!17920 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37355 (_ BitVec 32)) SeekEntryResult!6367)

(assert (=> b!611890 (= lt!280140 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17920 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!611891 () Bool)

(declare-datatypes ((Unit!19630 0))(
  ( (Unit!19631) )
))
(declare-fun e!350702 () Unit!19630)

(declare-fun Unit!19632 () Unit!19630)

(assert (=> b!611891 (= e!350702 Unit!19632)))

(declare-fun res!393709 () Bool)

(declare-fun e!350709 () Bool)

(assert (=> start!55922 (=> (not res!393709) (not e!350709))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55922 (= res!393709 (validMask!0 mask!3053))))

(assert (=> start!55922 e!350709))

(assert (=> start!55922 true))

(declare-fun array_inv!13694 (array!37355) Bool)

(assert (=> start!55922 (array_inv!13694 a!2986)))

(declare-fun b!611892 () Bool)

(declare-fun res!393708 () Bool)

(assert (=> b!611892 (=> (not res!393708) (not e!350709))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37355 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!611892 (= res!393708 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!611893 () Bool)

(declare-fun res!393706 () Bool)

(declare-fun e!350706 () Bool)

(assert (=> b!611893 (=> (not res!393706) (not e!350706))))

(assert (=> b!611893 (= res!393706 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17920 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!611894 () Bool)

(declare-fun res!393694 () Bool)

(assert (=> b!611894 (=> (not res!393694) (not e!350709))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!611894 (= res!393694 (validKeyInArray!0 k0!1786))))

(declare-fun b!611895 () Bool)

(declare-fun Unit!19633 () Unit!19630)

(assert (=> b!611895 (= e!350702 Unit!19633)))

(assert (=> b!611895 false))

(declare-fun b!611896 () Bool)

(declare-fun e!350708 () Bool)

(declare-fun e!350711 () Bool)

(assert (=> b!611896 (= e!350708 e!350711)))

(declare-fun res!393704 () Bool)

(assert (=> b!611896 (=> res!393704 e!350711)))

(declare-fun lt!280136 () (_ BitVec 64))

(declare-fun lt!280132 () (_ BitVec 64))

(assert (=> b!611896 (= res!393704 (or (not (= (select (arr!17920 a!2986) j!136) lt!280132)) (not (= (select (arr!17920 a!2986) j!136) lt!280136))))))

(declare-fun e!350704 () Bool)

(assert (=> b!611896 e!350704))

(declare-fun res!393700 () Bool)

(assert (=> b!611896 (=> (not res!393700) (not e!350704))))

(assert (=> b!611896 (= res!393700 (= lt!280136 (select (arr!17920 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!611896 (= lt!280136 (select (store (arr!17920 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!611897 () Bool)

(declare-fun e!350707 () Bool)

(declare-fun e!350712 () Bool)

(assert (=> b!611897 (= e!350707 e!350712)))

(declare-fun res!393702 () Bool)

(assert (=> b!611897 (=> (not res!393702) (not e!350712))))

(declare-fun lt!280137 () array!37355)

(assert (=> b!611897 (= res!393702 (arrayContainsKey!0 lt!280137 (select (arr!17920 a!2986) j!136) j!136))))

(declare-fun b!611898 () Bool)

(declare-fun e!350710 () Unit!19630)

(declare-fun Unit!19634 () Unit!19630)

(assert (=> b!611898 (= e!350710 Unit!19634)))

(declare-fun b!611899 () Bool)

(declare-fun res!393699 () Bool)

(assert (=> b!611899 (=> (not res!393699) (not e!350706))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37355 (_ BitVec 32)) Bool)

(assert (=> b!611899 (= res!393699 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!611900 () Bool)

(declare-fun Unit!19635 () Unit!19630)

(assert (=> b!611900 (= e!350710 Unit!19635)))

(declare-fun lt!280127 () Unit!19630)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37355 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19630)

(assert (=> b!611900 (= lt!280127 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!280137 (select (arr!17920 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!611900 (arrayContainsKey!0 lt!280137 (select (arr!17920 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!280124 () Unit!19630)

(declare-datatypes ((List!12014 0))(
  ( (Nil!12011) (Cons!12010 (h!13055 (_ BitVec 64)) (t!18250 List!12014)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37355 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12014) Unit!19630)

(assert (=> b!611900 (= lt!280124 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12011))))

(declare-fun arrayNoDuplicates!0 (array!37355 (_ BitVec 32) List!12014) Bool)

(assert (=> b!611900 (arrayNoDuplicates!0 lt!280137 #b00000000000000000000000000000000 Nil!12011)))

(declare-fun lt!280130 () Unit!19630)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37355 (_ BitVec 32) (_ BitVec 32)) Unit!19630)

(assert (=> b!611900 (= lt!280130 (lemmaNoDuplicateFromThenFromBigger!0 lt!280137 #b00000000000000000000000000000000 j!136))))

(assert (=> b!611900 (arrayNoDuplicates!0 lt!280137 j!136 Nil!12011)))

(declare-fun lt!280138 () Unit!19630)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37355 (_ BitVec 64) (_ BitVec 32) List!12014) Unit!19630)

(assert (=> b!611900 (= lt!280138 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!280137 (select (arr!17920 a!2986) j!136) j!136 Nil!12011))))

(assert (=> b!611900 false))

(declare-fun b!611901 () Bool)

(assert (=> b!611901 (= e!350709 e!350706)))

(declare-fun res!393692 () Bool)

(assert (=> b!611901 (=> (not res!393692) (not e!350706))))

(declare-fun lt!280131 () SeekEntryResult!6367)

(assert (=> b!611901 (= res!393692 (or (= lt!280131 (MissingZero!6367 i!1108)) (= lt!280131 (MissingVacant!6367 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37355 (_ BitVec 32)) SeekEntryResult!6367)

(assert (=> b!611901 (= lt!280131 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!611902 () Bool)

(assert (=> b!611902 (= e!350704 e!350707)))

(declare-fun res!393695 () Bool)

(assert (=> b!611902 (=> res!393695 e!350707)))

(assert (=> b!611902 (= res!393695 (or (not (= (select (arr!17920 a!2986) j!136) lt!280132)) (not (= (select (arr!17920 a!2986) j!136) lt!280136)) (bvsge j!136 index!984)))))

(declare-fun b!611903 () Bool)

(declare-fun e!350700 () Bool)

(declare-fun lt!280125 () SeekEntryResult!6367)

(assert (=> b!611903 (= e!350700 (= lt!280140 lt!280125))))

(declare-fun b!611904 () Bool)

(declare-fun res!393710 () Bool)

(assert (=> b!611904 (=> (not res!393710) (not e!350706))))

(assert (=> b!611904 (= res!393710 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12011))))

(declare-fun b!611905 () Bool)

(declare-fun res!393696 () Bool)

(assert (=> b!611905 (=> (not res!393696) (not e!350709))))

(assert (=> b!611905 (= res!393696 (and (= (size!18284 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18284 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18284 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!611906 () Bool)

(assert (=> b!611906 (= e!350712 (arrayContainsKey!0 lt!280137 (select (arr!17920 a!2986) j!136) index!984))))

(declare-fun b!611907 () Bool)

(declare-fun e!350705 () Bool)

(assert (=> b!611907 (= e!350705 true)))

(assert (=> b!611907 (arrayNoDuplicates!0 lt!280137 #b00000000000000000000000000000000 Nil!12011)))

(declare-fun lt!280135 () Unit!19630)

(assert (=> b!611907 (= lt!280135 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12011))))

(assert (=> b!611907 (arrayContainsKey!0 lt!280137 (select (arr!17920 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!280133 () Unit!19630)

(assert (=> b!611907 (= lt!280133 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!280137 (select (arr!17920 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!350699 () Bool)

(assert (=> b!611907 e!350699))

(declare-fun res!393705 () Bool)

(assert (=> b!611907 (=> (not res!393705) (not e!350699))))

(assert (=> b!611907 (= res!393705 (arrayContainsKey!0 lt!280137 (select (arr!17920 a!2986) j!136) j!136))))

(declare-fun b!611908 () Bool)

(declare-fun res!393701 () Bool)

(assert (=> b!611908 (=> (not res!393701) (not e!350709))))

(assert (=> b!611908 (= res!393701 (validKeyInArray!0 (select (arr!17920 a!2986) j!136)))))

(declare-fun b!611909 () Bool)

(assert (=> b!611909 (= e!350706 e!350701)))

(declare-fun res!393707 () Bool)

(assert (=> b!611909 (=> (not res!393707) (not e!350701))))

(assert (=> b!611909 (= res!393707 (= (select (store (arr!17920 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!611909 (= lt!280137 (array!37356 (store (arr!17920 a!2986) i!1108 k0!1786) (size!18284 a!2986)))))

(declare-fun b!611910 () Bool)

(assert (=> b!611910 (= e!350713 (not e!350708))))

(declare-fun res!393697 () Bool)

(assert (=> b!611910 (=> res!393697 e!350708)))

(declare-fun lt!280139 () SeekEntryResult!6367)

(assert (=> b!611910 (= res!393697 (not (= lt!280139 (Found!6367 index!984))))))

(declare-fun lt!280129 () Unit!19630)

(assert (=> b!611910 (= lt!280129 e!350702)))

(declare-fun c!69467 () Bool)

(assert (=> b!611910 (= c!69467 (= lt!280139 Undefined!6367))))

(assert (=> b!611910 (= lt!280139 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!280132 lt!280137 mask!3053))))

(assert (=> b!611910 e!350700))

(declare-fun res!393703 () Bool)

(assert (=> b!611910 (=> (not res!393703) (not e!350700))))

(declare-fun lt!280134 () (_ BitVec 32))

(assert (=> b!611910 (= res!393703 (= lt!280125 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!280134 vacantSpotIndex!68 lt!280132 lt!280137 mask!3053)))))

(assert (=> b!611910 (= lt!280125 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!280134 vacantSpotIndex!68 (select (arr!17920 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!611910 (= lt!280132 (select (store (arr!17920 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!280128 () Unit!19630)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37355 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19630)

(assert (=> b!611910 (= lt!280128 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!280134 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!611910 (= lt!280134 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!611911 () Bool)

(assert (=> b!611911 (= e!350699 (arrayContainsKey!0 lt!280137 (select (arr!17920 a!2986) j!136) index!984))))

(declare-fun b!611912 () Bool)

(assert (=> b!611912 (= e!350711 e!350705)))

(declare-fun res!393698 () Bool)

(assert (=> b!611912 (=> res!393698 e!350705)))

(assert (=> b!611912 (= res!393698 (bvsge index!984 j!136))))

(declare-fun lt!280126 () Unit!19630)

(assert (=> b!611912 (= lt!280126 e!350710)))

(declare-fun c!69466 () Bool)

(assert (=> b!611912 (= c!69466 (bvslt j!136 index!984))))

(assert (= (and start!55922 res!393709) b!611905))

(assert (= (and b!611905 res!393696) b!611908))

(assert (= (and b!611908 res!393701) b!611894))

(assert (= (and b!611894 res!393694) b!611892))

(assert (= (and b!611892 res!393708) b!611901))

(assert (= (and b!611901 res!393692) b!611899))

(assert (= (and b!611899 res!393699) b!611904))

(assert (= (and b!611904 res!393710) b!611893))

(assert (= (and b!611893 res!393706) b!611909))

(assert (= (and b!611909 res!393707) b!611890))

(assert (= (and b!611890 res!393693) b!611910))

(assert (= (and b!611910 res!393703) b!611903))

(assert (= (and b!611910 c!69467) b!611895))

(assert (= (and b!611910 (not c!69467)) b!611891))

(assert (= (and b!611910 (not res!393697)) b!611896))

(assert (= (and b!611896 res!393700) b!611902))

(assert (= (and b!611902 (not res!393695)) b!611897))

(assert (= (and b!611897 res!393702) b!611906))

(assert (= (and b!611896 (not res!393704)) b!611912))

(assert (= (and b!611912 c!69466) b!611900))

(assert (= (and b!611912 (not c!69466)) b!611898))

(assert (= (and b!611912 (not res!393698)) b!611907))

(assert (= (and b!611907 res!393705) b!611911))

(declare-fun m!588313 () Bool)

(assert (=> b!611902 m!588313))

(declare-fun m!588315 () Bool)

(assert (=> b!611899 m!588315))

(declare-fun m!588317 () Bool)

(assert (=> b!611892 m!588317))

(declare-fun m!588319 () Bool)

(assert (=> b!611901 m!588319))

(assert (=> b!611906 m!588313))

(assert (=> b!611906 m!588313))

(declare-fun m!588321 () Bool)

(assert (=> b!611906 m!588321))

(assert (=> b!611908 m!588313))

(assert (=> b!611908 m!588313))

(declare-fun m!588323 () Bool)

(assert (=> b!611908 m!588323))

(declare-fun m!588325 () Bool)

(assert (=> b!611904 m!588325))

(assert (=> b!611907 m!588313))

(declare-fun m!588327 () Bool)

(assert (=> b!611907 m!588327))

(declare-fun m!588329 () Bool)

(assert (=> b!611907 m!588329))

(assert (=> b!611907 m!588313))

(assert (=> b!611907 m!588313))

(declare-fun m!588331 () Bool)

(assert (=> b!611907 m!588331))

(assert (=> b!611907 m!588313))

(declare-fun m!588333 () Bool)

(assert (=> b!611907 m!588333))

(declare-fun m!588335 () Bool)

(assert (=> b!611907 m!588335))

(assert (=> b!611896 m!588313))

(declare-fun m!588337 () Bool)

(assert (=> b!611896 m!588337))

(declare-fun m!588339 () Bool)

(assert (=> b!611896 m!588339))

(assert (=> b!611909 m!588337))

(declare-fun m!588341 () Bool)

(assert (=> b!611909 m!588341))

(declare-fun m!588343 () Bool)

(assert (=> b!611893 m!588343))

(assert (=> b!611897 m!588313))

(assert (=> b!611897 m!588313))

(assert (=> b!611897 m!588331))

(declare-fun m!588345 () Bool)

(assert (=> start!55922 m!588345))

(declare-fun m!588347 () Bool)

(assert (=> start!55922 m!588347))

(assert (=> b!611900 m!588329))

(assert (=> b!611900 m!588313))

(declare-fun m!588349 () Bool)

(assert (=> b!611900 m!588349))

(assert (=> b!611900 m!588313))

(declare-fun m!588351 () Bool)

(assert (=> b!611900 m!588351))

(assert (=> b!611900 m!588313))

(declare-fun m!588353 () Bool)

(assert (=> b!611900 m!588353))

(assert (=> b!611900 m!588335))

(declare-fun m!588355 () Bool)

(assert (=> b!611900 m!588355))

(assert (=> b!611900 m!588313))

(declare-fun m!588357 () Bool)

(assert (=> b!611900 m!588357))

(declare-fun m!588359 () Bool)

(assert (=> b!611894 m!588359))

(declare-fun m!588361 () Bool)

(assert (=> b!611910 m!588361))

(assert (=> b!611910 m!588313))

(declare-fun m!588363 () Bool)

(assert (=> b!611910 m!588363))

(assert (=> b!611910 m!588337))

(assert (=> b!611910 m!588313))

(declare-fun m!588365 () Bool)

(assert (=> b!611910 m!588365))

(declare-fun m!588367 () Bool)

(assert (=> b!611910 m!588367))

(declare-fun m!588369 () Bool)

(assert (=> b!611910 m!588369))

(declare-fun m!588371 () Bool)

(assert (=> b!611910 m!588371))

(assert (=> b!611911 m!588313))

(assert (=> b!611911 m!588313))

(assert (=> b!611911 m!588321))

(declare-fun m!588373 () Bool)

(assert (=> b!611890 m!588373))

(assert (=> b!611890 m!588313))

(assert (=> b!611890 m!588313))

(declare-fun m!588375 () Bool)

(assert (=> b!611890 m!588375))

(check-sat (not b!611910) (not b!611890) (not b!611899) (not b!611900) (not b!611907) (not b!611901) (not start!55922) (not b!611894) (not b!611904) (not b!611908) (not b!611892) (not b!611911) (not b!611897) (not b!611906))
(check-sat)

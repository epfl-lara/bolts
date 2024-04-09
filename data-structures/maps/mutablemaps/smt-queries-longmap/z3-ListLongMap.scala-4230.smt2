; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!58334 () Bool)

(assert start!58334)

(declare-fun b!643510 () Bool)

(declare-fun res!416894 () Bool)

(declare-fun e!368643 () Bool)

(assert (=> b!643510 (=> (not res!416894) (not e!368643))))

(declare-datatypes ((array!38387 0))(
  ( (array!38388 (arr!18403 (Array (_ BitVec 32) (_ BitVec 64))) (size!18767 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38387)

(declare-datatypes ((List!12497 0))(
  ( (Nil!12494) (Cons!12493 (h!13538 (_ BitVec 64)) (t!18733 List!12497)) )
))
(declare-fun arrayNoDuplicates!0 (array!38387 (_ BitVec 32) List!12497) Bool)

(assert (=> b!643510 (= res!416894 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12494))))

(declare-fun b!643511 () Bool)

(declare-datatypes ((Unit!21772 0))(
  ( (Unit!21773) )
))
(declare-fun e!368652 () Unit!21772)

(declare-fun Unit!21774 () Unit!21772)

(assert (=> b!643511 (= e!368652 Unit!21774)))

(declare-fun b!643512 () Bool)

(declare-fun e!368650 () Bool)

(declare-fun e!368646 () Bool)

(assert (=> b!643512 (= e!368650 e!368646)))

(declare-fun res!416893 () Bool)

(assert (=> b!643512 (=> (not res!416893) (not e!368646))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!298178 () array!38387)

(declare-fun arrayContainsKey!0 (array!38387 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!643512 (= res!416893 (arrayContainsKey!0 lt!298178 (select (arr!18403 a!2986) j!136) j!136))))

(declare-fun b!643513 () Bool)

(declare-fun res!416879 () Bool)

(assert (=> b!643513 (=> (not res!416879) (not e!368643))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!643513 (= res!416879 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18403 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!643514 () Bool)

(declare-fun e!368651 () Bool)

(assert (=> b!643514 (= e!368651 e!368650)))

(declare-fun res!416889 () Bool)

(assert (=> b!643514 (=> res!416889 e!368650)))

(declare-fun lt!298188 () (_ BitVec 64))

(declare-fun lt!298185 () (_ BitVec 64))

(assert (=> b!643514 (= res!416889 (or (not (= (select (arr!18403 a!2986) j!136) lt!298185)) (not (= (select (arr!18403 a!2986) j!136) lt!298188)) (bvsge j!136 index!984)))))

(declare-fun b!643515 () Bool)

(declare-fun e!368656 () Bool)

(assert (=> b!643515 (= e!368656 true)))

(declare-fun e!368647 () Bool)

(assert (=> b!643515 e!368647))

(declare-fun res!416883 () Bool)

(assert (=> b!643515 (=> (not res!416883) (not e!368647))))

(assert (=> b!643515 (= res!416883 (arrayContainsKey!0 lt!298178 (select (arr!18403 a!2986) j!136) j!136))))

(declare-fun b!643516 () Bool)

(declare-fun res!416892 () Bool)

(declare-fun e!368649 () Bool)

(assert (=> b!643516 (=> (not res!416892) (not e!368649))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!643516 (= res!416892 (validKeyInArray!0 (select (arr!18403 a!2986) j!136)))))

(declare-fun b!643517 () Bool)

(assert (=> b!643517 (= e!368649 e!368643)))

(declare-fun res!416877 () Bool)

(assert (=> b!643517 (=> (not res!416877) (not e!368643))))

(declare-datatypes ((SeekEntryResult!6850 0))(
  ( (MissingZero!6850 (index!29731 (_ BitVec 32))) (Found!6850 (index!29732 (_ BitVec 32))) (Intermediate!6850 (undefined!7662 Bool) (index!29733 (_ BitVec 32)) (x!58531 (_ BitVec 32))) (Undefined!6850) (MissingVacant!6850 (index!29734 (_ BitVec 32))) )
))
(declare-fun lt!298183 () SeekEntryResult!6850)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!643517 (= res!416877 (or (= lt!298183 (MissingZero!6850 i!1108)) (= lt!298183 (MissingVacant!6850 i!1108))))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38387 (_ BitVec 32)) SeekEntryResult!6850)

(assert (=> b!643517 (= lt!298183 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!643518 () Bool)

(assert (=> b!643518 (= e!368647 (arrayContainsKey!0 lt!298178 (select (arr!18403 a!2986) j!136) index!984))))

(declare-fun b!643519 () Bool)

(declare-fun res!416890 () Bool)

(assert (=> b!643519 (=> (not res!416890) (not e!368649))))

(assert (=> b!643519 (= res!416890 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun res!416887 () Bool)

(assert (=> start!58334 (=> (not res!416887) (not e!368649))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58334 (= res!416887 (validMask!0 mask!3053))))

(assert (=> start!58334 e!368649))

(assert (=> start!58334 true))

(declare-fun array_inv!14177 (array!38387) Bool)

(assert (=> start!58334 (array_inv!14177 a!2986)))

(declare-fun b!643520 () Bool)

(declare-fun res!416886 () Bool)

(assert (=> b!643520 (=> (not res!416886) (not e!368643))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38387 (_ BitVec 32)) Bool)

(assert (=> b!643520 (= res!416886 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!643521 () Bool)

(declare-fun e!368654 () Unit!21772)

(declare-fun Unit!21775 () Unit!21772)

(assert (=> b!643521 (= e!368654 Unit!21775)))

(declare-fun lt!298182 () Unit!21772)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38387 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21772)

(assert (=> b!643521 (= lt!298182 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!298178 (select (arr!18403 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!643521 (arrayContainsKey!0 lt!298178 (select (arr!18403 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!298190 () Unit!21772)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38387 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12497) Unit!21772)

(assert (=> b!643521 (= lt!298190 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12494))))

(assert (=> b!643521 (arrayNoDuplicates!0 lt!298178 #b00000000000000000000000000000000 Nil!12494)))

(declare-fun lt!298179 () Unit!21772)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38387 (_ BitVec 32) (_ BitVec 32)) Unit!21772)

(assert (=> b!643521 (= lt!298179 (lemmaNoDuplicateFromThenFromBigger!0 lt!298178 #b00000000000000000000000000000000 j!136))))

(assert (=> b!643521 (arrayNoDuplicates!0 lt!298178 j!136 Nil!12494)))

(declare-fun lt!298186 () Unit!21772)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38387 (_ BitVec 64) (_ BitVec 32) List!12497) Unit!21772)

(assert (=> b!643521 (= lt!298186 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!298178 (select (arr!18403 a!2986) j!136) j!136 Nil!12494))))

(assert (=> b!643521 false))

(declare-fun b!643522 () Bool)

(declare-fun res!416882 () Bool)

(assert (=> b!643522 (=> (not res!416882) (not e!368649))))

(assert (=> b!643522 (= res!416882 (validKeyInArray!0 k0!1786))))

(declare-fun b!643523 () Bool)

(declare-fun e!368655 () Bool)

(declare-fun e!368653 () Bool)

(assert (=> b!643523 (= e!368655 (not e!368653))))

(declare-fun res!416885 () Bool)

(assert (=> b!643523 (=> res!416885 e!368653)))

(declare-fun lt!298184 () SeekEntryResult!6850)

(assert (=> b!643523 (= res!416885 (not (= lt!298184 (Found!6850 index!984))))))

(declare-fun lt!298180 () Unit!21772)

(assert (=> b!643523 (= lt!298180 e!368652)))

(declare-fun c!73685 () Bool)

(assert (=> b!643523 (= c!73685 (= lt!298184 Undefined!6850))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38387 (_ BitVec 32)) SeekEntryResult!6850)

(assert (=> b!643523 (= lt!298184 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!298185 lt!298178 mask!3053))))

(declare-fun e!368644 () Bool)

(assert (=> b!643523 e!368644))

(declare-fun res!416880 () Bool)

(assert (=> b!643523 (=> (not res!416880) (not e!368644))))

(declare-fun lt!298181 () SeekEntryResult!6850)

(declare-fun lt!298191 () (_ BitVec 32))

(assert (=> b!643523 (= res!416880 (= lt!298181 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!298191 vacantSpotIndex!68 lt!298185 lt!298178 mask!3053)))))

(assert (=> b!643523 (= lt!298181 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!298191 vacantSpotIndex!68 (select (arr!18403 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!643523 (= lt!298185 (select (store (arr!18403 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!298187 () Unit!21772)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38387 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21772)

(assert (=> b!643523 (= lt!298187 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!298191 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!643523 (= lt!298191 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!643524 () Bool)

(declare-fun e!368642 () Bool)

(assert (=> b!643524 (= e!368643 e!368642)))

(declare-fun res!416876 () Bool)

(assert (=> b!643524 (=> (not res!416876) (not e!368642))))

(assert (=> b!643524 (= res!416876 (= (select (store (arr!18403 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!643524 (= lt!298178 (array!38388 (store (arr!18403 a!2986) i!1108 k0!1786) (size!18767 a!2986)))))

(declare-fun b!643525 () Bool)

(declare-fun Unit!21776 () Unit!21772)

(assert (=> b!643525 (= e!368654 Unit!21776)))

(declare-fun b!643526 () Bool)

(assert (=> b!643526 (= e!368642 e!368655)))

(declare-fun res!416878 () Bool)

(assert (=> b!643526 (=> (not res!416878) (not e!368655))))

(declare-fun lt!298177 () SeekEntryResult!6850)

(assert (=> b!643526 (= res!416878 (and (= lt!298177 (Found!6850 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18403 a!2986) index!984) (select (arr!18403 a!2986) j!136))) (not (= (select (arr!18403 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!643526 (= lt!298177 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18403 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!643527 () Bool)

(declare-fun e!368645 () Bool)

(assert (=> b!643527 (= e!368645 e!368656)))

(declare-fun res!416891 () Bool)

(assert (=> b!643527 (=> res!416891 e!368656)))

(assert (=> b!643527 (= res!416891 (bvsge index!984 j!136))))

(declare-fun lt!298189 () Unit!21772)

(assert (=> b!643527 (= lt!298189 e!368654)))

(declare-fun c!73684 () Bool)

(assert (=> b!643527 (= c!73684 (bvslt j!136 index!984))))

(declare-fun b!643528 () Bool)

(assert (=> b!643528 (= e!368653 e!368645)))

(declare-fun res!416888 () Bool)

(assert (=> b!643528 (=> res!416888 e!368645)))

(assert (=> b!643528 (= res!416888 (or (not (= (select (arr!18403 a!2986) j!136) lt!298185)) (not (= (select (arr!18403 a!2986) j!136) lt!298188))))))

(assert (=> b!643528 e!368651))

(declare-fun res!416884 () Bool)

(assert (=> b!643528 (=> (not res!416884) (not e!368651))))

(assert (=> b!643528 (= res!416884 (= lt!298188 (select (arr!18403 a!2986) j!136)))))

(assert (=> b!643528 (= lt!298188 (select (store (arr!18403 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!643529 () Bool)

(declare-fun res!416881 () Bool)

(assert (=> b!643529 (=> (not res!416881) (not e!368649))))

(assert (=> b!643529 (= res!416881 (and (= (size!18767 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18767 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18767 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!643530 () Bool)

(assert (=> b!643530 (= e!368646 (arrayContainsKey!0 lt!298178 (select (arr!18403 a!2986) j!136) index!984))))

(declare-fun b!643531 () Bool)

(declare-fun Unit!21777 () Unit!21772)

(assert (=> b!643531 (= e!368652 Unit!21777)))

(assert (=> b!643531 false))

(declare-fun b!643532 () Bool)

(assert (=> b!643532 (= e!368644 (= lt!298177 lt!298181))))

(assert (= (and start!58334 res!416887) b!643529))

(assert (= (and b!643529 res!416881) b!643516))

(assert (= (and b!643516 res!416892) b!643522))

(assert (= (and b!643522 res!416882) b!643519))

(assert (= (and b!643519 res!416890) b!643517))

(assert (= (and b!643517 res!416877) b!643520))

(assert (= (and b!643520 res!416886) b!643510))

(assert (= (and b!643510 res!416894) b!643513))

(assert (= (and b!643513 res!416879) b!643524))

(assert (= (and b!643524 res!416876) b!643526))

(assert (= (and b!643526 res!416878) b!643523))

(assert (= (and b!643523 res!416880) b!643532))

(assert (= (and b!643523 c!73685) b!643531))

(assert (= (and b!643523 (not c!73685)) b!643511))

(assert (= (and b!643523 (not res!416885)) b!643528))

(assert (= (and b!643528 res!416884) b!643514))

(assert (= (and b!643514 (not res!416889)) b!643512))

(assert (= (and b!643512 res!416893) b!643530))

(assert (= (and b!643528 (not res!416888)) b!643527))

(assert (= (and b!643527 c!73684) b!643521))

(assert (= (and b!643527 (not c!73684)) b!643525))

(assert (= (and b!643527 (not res!416891)) b!643515))

(assert (= (and b!643515 res!416883) b!643518))

(declare-fun m!617283 () Bool)

(assert (=> b!643521 m!617283))

(assert (=> b!643521 m!617283))

(declare-fun m!617285 () Bool)

(assert (=> b!643521 m!617285))

(declare-fun m!617287 () Bool)

(assert (=> b!643521 m!617287))

(assert (=> b!643521 m!617283))

(declare-fun m!617289 () Bool)

(assert (=> b!643521 m!617289))

(declare-fun m!617291 () Bool)

(assert (=> b!643521 m!617291))

(assert (=> b!643521 m!617283))

(declare-fun m!617293 () Bool)

(assert (=> b!643521 m!617293))

(declare-fun m!617295 () Bool)

(assert (=> b!643521 m!617295))

(declare-fun m!617297 () Bool)

(assert (=> b!643521 m!617297))

(declare-fun m!617299 () Bool)

(assert (=> b!643526 m!617299))

(assert (=> b!643526 m!617283))

(assert (=> b!643526 m!617283))

(declare-fun m!617301 () Bool)

(assert (=> b!643526 m!617301))

(assert (=> b!643518 m!617283))

(assert (=> b!643518 m!617283))

(declare-fun m!617303 () Bool)

(assert (=> b!643518 m!617303))

(declare-fun m!617305 () Bool)

(assert (=> b!643510 m!617305))

(declare-fun m!617307 () Bool)

(assert (=> start!58334 m!617307))

(declare-fun m!617309 () Bool)

(assert (=> start!58334 m!617309))

(declare-fun m!617311 () Bool)

(assert (=> b!643522 m!617311))

(assert (=> b!643514 m!617283))

(declare-fun m!617313 () Bool)

(assert (=> b!643524 m!617313))

(declare-fun m!617315 () Bool)

(assert (=> b!643524 m!617315))

(assert (=> b!643512 m!617283))

(assert (=> b!643512 m!617283))

(declare-fun m!617317 () Bool)

(assert (=> b!643512 m!617317))

(assert (=> b!643516 m!617283))

(assert (=> b!643516 m!617283))

(declare-fun m!617319 () Bool)

(assert (=> b!643516 m!617319))

(assert (=> b!643515 m!617283))

(assert (=> b!643515 m!617283))

(assert (=> b!643515 m!617317))

(declare-fun m!617321 () Bool)

(assert (=> b!643519 m!617321))

(declare-fun m!617323 () Bool)

(assert (=> b!643520 m!617323))

(declare-fun m!617325 () Bool)

(assert (=> b!643517 m!617325))

(assert (=> b!643530 m!617283))

(assert (=> b!643530 m!617283))

(assert (=> b!643530 m!617303))

(declare-fun m!617327 () Bool)

(assert (=> b!643523 m!617327))

(declare-fun m!617329 () Bool)

(assert (=> b!643523 m!617329))

(assert (=> b!643523 m!617283))

(declare-fun m!617331 () Bool)

(assert (=> b!643523 m!617331))

(assert (=> b!643523 m!617313))

(declare-fun m!617333 () Bool)

(assert (=> b!643523 m!617333))

(assert (=> b!643523 m!617283))

(declare-fun m!617335 () Bool)

(assert (=> b!643523 m!617335))

(declare-fun m!617337 () Bool)

(assert (=> b!643523 m!617337))

(assert (=> b!643528 m!617283))

(assert (=> b!643528 m!617313))

(declare-fun m!617339 () Bool)

(assert (=> b!643528 m!617339))

(declare-fun m!617341 () Bool)

(assert (=> b!643513 m!617341))

(check-sat (not b!643518) (not b!643510) (not b!643523) (not b!643512) (not b!643526) (not b!643530) (not b!643519) (not b!643522) (not b!643516) (not b!643520) (not b!643521) (not b!643517) (not b!643515) (not start!58334))
(check-sat)

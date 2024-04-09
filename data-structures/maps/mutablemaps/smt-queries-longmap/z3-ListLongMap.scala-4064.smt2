; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!55622 () Bool)

(assert start!55622)

(declare-fun b!609760 () Bool)

(declare-fun e!349267 () Bool)

(declare-datatypes ((SeekEntryResult!6352 0))(
  ( (MissingZero!6352 (index!27682 (_ BitVec 32))) (Found!6352 (index!27683 (_ BitVec 32))) (Intermediate!6352 (undefined!7164 Bool) (index!27684 (_ BitVec 32)) (x!56510 (_ BitVec 32))) (Undefined!6352) (MissingVacant!6352 (index!27685 (_ BitVec 32))) )
))
(declare-fun lt!278910 () SeekEntryResult!6352)

(declare-fun lt!278913 () SeekEntryResult!6352)

(assert (=> b!609760 (= e!349267 (= lt!278910 lt!278913))))

(declare-fun b!609761 () Bool)

(declare-fun res!392390 () Bool)

(declare-fun e!349256 () Bool)

(assert (=> b!609761 (=> (not res!392390) (not e!349256))))

(declare-datatypes ((array!37316 0))(
  ( (array!37317 (arr!17905 (Array (_ BitVec 32) (_ BitVec 64))) (size!18269 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37316)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!609761 (= res!392390 (validKeyInArray!0 (select (arr!17905 a!2986) j!136)))))

(declare-fun res!392388 () Bool)

(assert (=> start!55622 (=> (not res!392388) (not e!349256))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55622 (= res!392388 (validMask!0 mask!3053))))

(assert (=> start!55622 e!349256))

(assert (=> start!55622 true))

(declare-fun array_inv!13679 (array!37316) Bool)

(assert (=> start!55622 (array_inv!13679 a!2986)))

(declare-fun b!609762 () Bool)

(declare-fun e!349262 () Bool)

(declare-fun e!349266 () Bool)

(assert (=> b!609762 (= e!349262 e!349266)))

(declare-fun res!392376 () Bool)

(assert (=> b!609762 (=> res!392376 e!349266)))

(declare-fun lt!278916 () (_ BitVec 64))

(declare-fun lt!278920 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!609762 (= res!392376 (or (not (= (select (arr!17905 a!2986) j!136) lt!278920)) (not (= (select (arr!17905 a!2986) j!136) lt!278916)) (bvsge j!136 index!984)))))

(declare-fun b!609763 () Bool)

(declare-fun lt!278915 () array!37316)

(declare-fun e!349258 () Bool)

(declare-fun arrayContainsKey!0 (array!37316 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!609763 (= e!349258 (arrayContainsKey!0 lt!278915 (select (arr!17905 a!2986) j!136) index!984))))

(declare-fun b!609764 () Bool)

(declare-datatypes ((Unit!19540 0))(
  ( (Unit!19541) )
))
(declare-fun e!349257 () Unit!19540)

(declare-fun Unit!19542 () Unit!19540)

(assert (=> b!609764 (= e!349257 Unit!19542)))

(declare-fun b!609765 () Bool)

(declare-fun res!392379 () Bool)

(assert (=> b!609765 (=> (not res!392379) (not e!349256))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!609765 (= res!392379 (and (= (size!18269 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18269 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18269 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!609766 () Bool)

(declare-fun res!392377 () Bool)

(assert (=> b!609766 (=> (not res!392377) (not e!349256))))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!609766 (= res!392377 (validKeyInArray!0 k0!1786))))

(declare-fun b!609767 () Bool)

(declare-fun e!349261 () Bool)

(assert (=> b!609767 (= e!349256 e!349261)))

(declare-fun res!392389 () Bool)

(assert (=> b!609767 (=> (not res!392389) (not e!349261))))

(declare-fun lt!278906 () SeekEntryResult!6352)

(assert (=> b!609767 (= res!392389 (or (= lt!278906 (MissingZero!6352 i!1108)) (= lt!278906 (MissingVacant!6352 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37316 (_ BitVec 32)) SeekEntryResult!6352)

(assert (=> b!609767 (= lt!278906 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!609768 () Bool)

(declare-fun e!349255 () Bool)

(assert (=> b!609768 (= e!349266 e!349255)))

(declare-fun res!392385 () Bool)

(assert (=> b!609768 (=> (not res!392385) (not e!349255))))

(assert (=> b!609768 (= res!392385 (arrayContainsKey!0 lt!278915 (select (arr!17905 a!2986) j!136) j!136))))

(declare-fun b!609769 () Bool)

(declare-fun e!349253 () Unit!19540)

(declare-fun Unit!19543 () Unit!19540)

(assert (=> b!609769 (= e!349253 Unit!19543)))

(assert (=> b!609769 false))

(declare-fun b!609770 () Bool)

(declare-fun e!349260 () Bool)

(assert (=> b!609770 (= e!349261 e!349260)))

(declare-fun res!392378 () Bool)

(assert (=> b!609770 (=> (not res!392378) (not e!349260))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!609770 (= res!392378 (= (select (store (arr!17905 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!609770 (= lt!278915 (array!37317 (store (arr!17905 a!2986) i!1108 k0!1786) (size!18269 a!2986)))))

(declare-fun b!609771 () Bool)

(declare-fun e!349265 () Bool)

(declare-fun e!349263 () Bool)

(assert (=> b!609771 (= e!349265 e!349263)))

(declare-fun res!392381 () Bool)

(assert (=> b!609771 (=> res!392381 e!349263)))

(assert (=> b!609771 (= res!392381 (or (not (= (select (arr!17905 a!2986) j!136) lt!278920)) (not (= (select (arr!17905 a!2986) j!136) lt!278916))))))

(assert (=> b!609771 e!349262))

(declare-fun res!392375 () Bool)

(assert (=> b!609771 (=> (not res!392375) (not e!349262))))

(assert (=> b!609771 (= res!392375 (= lt!278916 (select (arr!17905 a!2986) j!136)))))

(assert (=> b!609771 (= lt!278916 (select (store (arr!17905 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!609772 () Bool)

(declare-fun e!349254 () Bool)

(assert (=> b!609772 (= e!349263 e!349254)))

(declare-fun res!392382 () Bool)

(assert (=> b!609772 (=> res!392382 e!349254)))

(assert (=> b!609772 (= res!392382 (bvsge index!984 j!136))))

(declare-fun lt!278917 () Unit!19540)

(assert (=> b!609772 (= lt!278917 e!349257)))

(declare-fun c!69061 () Bool)

(assert (=> b!609772 (= c!69061 (bvslt j!136 index!984))))

(declare-fun b!609773 () Bool)

(declare-fun e!349259 () Bool)

(assert (=> b!609773 (= e!349259 (not e!349265))))

(declare-fun res!392372 () Bool)

(assert (=> b!609773 (=> res!392372 e!349265)))

(declare-fun lt!278918 () SeekEntryResult!6352)

(assert (=> b!609773 (= res!392372 (not (= lt!278918 (Found!6352 index!984))))))

(declare-fun lt!278914 () Unit!19540)

(assert (=> b!609773 (= lt!278914 e!349253)))

(declare-fun c!69062 () Bool)

(assert (=> b!609773 (= c!69062 (= lt!278918 Undefined!6352))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37316 (_ BitVec 32)) SeekEntryResult!6352)

(assert (=> b!609773 (= lt!278918 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!278920 lt!278915 mask!3053))))

(assert (=> b!609773 e!349267))

(declare-fun res!392374 () Bool)

(assert (=> b!609773 (=> (not res!392374) (not e!349267))))

(declare-fun lt!278921 () (_ BitVec 32))

(assert (=> b!609773 (= res!392374 (= lt!278913 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!278921 vacantSpotIndex!68 lt!278920 lt!278915 mask!3053)))))

(assert (=> b!609773 (= lt!278913 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!278921 vacantSpotIndex!68 (select (arr!17905 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!609773 (= lt!278920 (select (store (arr!17905 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!278911 () Unit!19540)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37316 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19540)

(assert (=> b!609773 (= lt!278911 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!278921 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!609773 (= lt!278921 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!609774 () Bool)

(declare-fun Unit!19544 () Unit!19540)

(assert (=> b!609774 (= e!349253 Unit!19544)))

(declare-fun b!609775 () Bool)

(assert (=> b!609775 (= e!349255 (arrayContainsKey!0 lt!278915 (select (arr!17905 a!2986) j!136) index!984))))

(declare-fun b!609776 () Bool)

(declare-fun res!392384 () Bool)

(assert (=> b!609776 (=> (not res!392384) (not e!349261))))

(declare-datatypes ((List!11999 0))(
  ( (Nil!11996) (Cons!11995 (h!13040 (_ BitVec 64)) (t!18235 List!11999)) )
))
(declare-fun arrayNoDuplicates!0 (array!37316 (_ BitVec 32) List!11999) Bool)

(assert (=> b!609776 (= res!392384 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11996))))

(declare-fun b!609777 () Bool)

(declare-fun res!392383 () Bool)

(assert (=> b!609777 (=> (not res!392383) (not e!349261))))

(assert (=> b!609777 (= res!392383 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17905 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!609778 () Bool)

(assert (=> b!609778 (= e!349260 e!349259)))

(declare-fun res!392373 () Bool)

(assert (=> b!609778 (=> (not res!392373) (not e!349259))))

(assert (=> b!609778 (= res!392373 (and (= lt!278910 (Found!6352 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17905 a!2986) index!984) (select (arr!17905 a!2986) j!136))) (not (= (select (arr!17905 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!609778 (= lt!278910 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17905 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!609779 () Bool)

(declare-fun Unit!19545 () Unit!19540)

(assert (=> b!609779 (= e!349257 Unit!19545)))

(declare-fun lt!278922 () Unit!19540)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37316 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19540)

(assert (=> b!609779 (= lt!278922 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!278915 (select (arr!17905 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!609779 (arrayContainsKey!0 lt!278915 (select (arr!17905 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!278912 () Unit!19540)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37316 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11999) Unit!19540)

(assert (=> b!609779 (= lt!278912 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11996))))

(assert (=> b!609779 (arrayNoDuplicates!0 lt!278915 #b00000000000000000000000000000000 Nil!11996)))

(declare-fun lt!278908 () Unit!19540)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37316 (_ BitVec 32) (_ BitVec 32)) Unit!19540)

(assert (=> b!609779 (= lt!278908 (lemmaNoDuplicateFromThenFromBigger!0 lt!278915 #b00000000000000000000000000000000 j!136))))

(assert (=> b!609779 (arrayNoDuplicates!0 lt!278915 j!136 Nil!11996)))

(declare-fun lt!278909 () Unit!19540)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37316 (_ BitVec 64) (_ BitVec 32) List!11999) Unit!19540)

(assert (=> b!609779 (= lt!278909 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!278915 (select (arr!17905 a!2986) j!136) j!136 Nil!11996))))

(assert (=> b!609779 false))

(declare-fun b!609780 () Bool)

(declare-fun res!392387 () Bool)

(assert (=> b!609780 (=> (not res!392387) (not e!349256))))

(assert (=> b!609780 (= res!392387 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!609781 () Bool)

(assert (=> b!609781 (= e!349254 (or (bvsgt #b00000000000000000000000000000000 (size!18269 a!2986)) (bvslt (size!18269 a!2986) #b01111111111111111111111111111111)))))

(assert (=> b!609781 (arrayNoDuplicates!0 lt!278915 #b00000000000000000000000000000000 Nil!11996)))

(declare-fun lt!278919 () Unit!19540)

(assert (=> b!609781 (= lt!278919 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11996))))

(assert (=> b!609781 (arrayContainsKey!0 lt!278915 (select (arr!17905 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!278907 () Unit!19540)

(assert (=> b!609781 (= lt!278907 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!278915 (select (arr!17905 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!609781 e!349258))

(declare-fun res!392380 () Bool)

(assert (=> b!609781 (=> (not res!392380) (not e!349258))))

(assert (=> b!609781 (= res!392380 (arrayContainsKey!0 lt!278915 (select (arr!17905 a!2986) j!136) j!136))))

(declare-fun b!609782 () Bool)

(declare-fun res!392386 () Bool)

(assert (=> b!609782 (=> (not res!392386) (not e!349261))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37316 (_ BitVec 32)) Bool)

(assert (=> b!609782 (= res!392386 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!55622 res!392388) b!609765))

(assert (= (and b!609765 res!392379) b!609761))

(assert (= (and b!609761 res!392390) b!609766))

(assert (= (and b!609766 res!392377) b!609780))

(assert (= (and b!609780 res!392387) b!609767))

(assert (= (and b!609767 res!392389) b!609782))

(assert (= (and b!609782 res!392386) b!609776))

(assert (= (and b!609776 res!392384) b!609777))

(assert (= (and b!609777 res!392383) b!609770))

(assert (= (and b!609770 res!392378) b!609778))

(assert (= (and b!609778 res!392373) b!609773))

(assert (= (and b!609773 res!392374) b!609760))

(assert (= (and b!609773 c!69062) b!609769))

(assert (= (and b!609773 (not c!69062)) b!609774))

(assert (= (and b!609773 (not res!392372)) b!609771))

(assert (= (and b!609771 res!392375) b!609762))

(assert (= (and b!609762 (not res!392376)) b!609768))

(assert (= (and b!609768 res!392385) b!609775))

(assert (= (and b!609771 (not res!392381)) b!609772))

(assert (= (and b!609772 c!69061) b!609779))

(assert (= (and b!609772 (not c!69061)) b!609764))

(assert (= (and b!609772 (not res!392382)) b!609781))

(assert (= (and b!609781 res!392380) b!609763))

(declare-fun m!586285 () Bool)

(assert (=> b!609775 m!586285))

(assert (=> b!609775 m!586285))

(declare-fun m!586287 () Bool)

(assert (=> b!609775 m!586287))

(declare-fun m!586289 () Bool)

(assert (=> b!609778 m!586289))

(assert (=> b!609778 m!586285))

(assert (=> b!609778 m!586285))

(declare-fun m!586291 () Bool)

(assert (=> b!609778 m!586291))

(assert (=> b!609763 m!586285))

(assert (=> b!609763 m!586285))

(assert (=> b!609763 m!586287))

(assert (=> b!609762 m!586285))

(assert (=> b!609761 m!586285))

(assert (=> b!609761 m!586285))

(declare-fun m!586293 () Bool)

(assert (=> b!609761 m!586293))

(declare-fun m!586295 () Bool)

(assert (=> b!609773 m!586295))

(declare-fun m!586297 () Bool)

(assert (=> b!609773 m!586297))

(declare-fun m!586299 () Bool)

(assert (=> b!609773 m!586299))

(assert (=> b!609773 m!586285))

(assert (=> b!609773 m!586285))

(declare-fun m!586301 () Bool)

(assert (=> b!609773 m!586301))

(declare-fun m!586303 () Bool)

(assert (=> b!609773 m!586303))

(declare-fun m!586305 () Bool)

(assert (=> b!609773 m!586305))

(declare-fun m!586307 () Bool)

(assert (=> b!609773 m!586307))

(assert (=> b!609770 m!586307))

(declare-fun m!586309 () Bool)

(assert (=> b!609770 m!586309))

(declare-fun m!586311 () Bool)

(assert (=> start!55622 m!586311))

(declare-fun m!586313 () Bool)

(assert (=> start!55622 m!586313))

(declare-fun m!586315 () Bool)

(assert (=> b!609779 m!586315))

(assert (=> b!609779 m!586285))

(declare-fun m!586317 () Bool)

(assert (=> b!609779 m!586317))

(assert (=> b!609779 m!586285))

(assert (=> b!609779 m!586285))

(declare-fun m!586319 () Bool)

(assert (=> b!609779 m!586319))

(declare-fun m!586321 () Bool)

(assert (=> b!609779 m!586321))

(declare-fun m!586323 () Bool)

(assert (=> b!609779 m!586323))

(assert (=> b!609779 m!586285))

(declare-fun m!586325 () Bool)

(assert (=> b!609779 m!586325))

(declare-fun m!586327 () Bool)

(assert (=> b!609779 m!586327))

(declare-fun m!586329 () Bool)

(assert (=> b!609767 m!586329))

(assert (=> b!609771 m!586285))

(assert (=> b!609771 m!586307))

(declare-fun m!586331 () Bool)

(assert (=> b!609771 m!586331))

(declare-fun m!586333 () Bool)

(assert (=> b!609777 m!586333))

(assert (=> b!609768 m!586285))

(assert (=> b!609768 m!586285))

(declare-fun m!586335 () Bool)

(assert (=> b!609768 m!586335))

(declare-fun m!586337 () Bool)

(assert (=> b!609782 m!586337))

(declare-fun m!586339 () Bool)

(assert (=> b!609776 m!586339))

(declare-fun m!586341 () Bool)

(assert (=> b!609780 m!586341))

(declare-fun m!586343 () Bool)

(assert (=> b!609766 m!586343))

(assert (=> b!609781 m!586285))

(declare-fun m!586345 () Bool)

(assert (=> b!609781 m!586345))

(assert (=> b!609781 m!586285))

(assert (=> b!609781 m!586285))

(assert (=> b!609781 m!586335))

(assert (=> b!609781 m!586323))

(assert (=> b!609781 m!586285))

(declare-fun m!586347 () Bool)

(assert (=> b!609781 m!586347))

(assert (=> b!609781 m!586327))

(check-sat (not b!609780) (not b!609781) (not b!609775) (not start!55622) (not b!609763) (not b!609761) (not b!609768) (not b!609773) (not b!609766) (not b!609779) (not b!609767) (not b!609778) (not b!609782) (not b!609776))
(check-sat)
(get-model)

(declare-fun b!609862 () Bool)

(declare-fun e!349321 () Bool)

(declare-fun e!349324 () Bool)

(assert (=> b!609862 (= e!349321 e!349324)))

(declare-fun res!392454 () Bool)

(assert (=> b!609862 (=> (not res!392454) (not e!349324))))

(declare-fun e!349322 () Bool)

(assert (=> b!609862 (= res!392454 (not e!349322))))

(declare-fun res!392456 () Bool)

(assert (=> b!609862 (=> (not res!392456) (not e!349322))))

(assert (=> b!609862 (= res!392456 (validKeyInArray!0 (select (arr!17905 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!87961 () Bool)

(declare-fun res!392455 () Bool)

(assert (=> d!87961 (=> res!392455 e!349321)))

(assert (=> d!87961 (= res!392455 (bvsge #b00000000000000000000000000000000 (size!18269 a!2986)))))

(assert (=> d!87961 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11996) e!349321)))

(declare-fun b!609863 () Bool)

(declare-fun e!349323 () Bool)

(declare-fun call!33107 () Bool)

(assert (=> b!609863 (= e!349323 call!33107)))

(declare-fun b!609864 () Bool)

(declare-fun contains!3041 (List!11999 (_ BitVec 64)) Bool)

(assert (=> b!609864 (= e!349322 (contains!3041 Nil!11996 (select (arr!17905 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!33104 () Bool)

(declare-fun c!69071 () Bool)

(assert (=> bm!33104 (= call!33107 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!69071 (Cons!11995 (select (arr!17905 a!2986) #b00000000000000000000000000000000) Nil!11996) Nil!11996)))))

(declare-fun b!609865 () Bool)

(assert (=> b!609865 (= e!349324 e!349323)))

(assert (=> b!609865 (= c!69071 (validKeyInArray!0 (select (arr!17905 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!609866 () Bool)

(assert (=> b!609866 (= e!349323 call!33107)))

(assert (= (and d!87961 (not res!392455)) b!609862))

(assert (= (and b!609862 res!392456) b!609864))

(assert (= (and b!609862 res!392454) b!609865))

(assert (= (and b!609865 c!69071) b!609866))

(assert (= (and b!609865 (not c!69071)) b!609863))

(assert (= (or b!609866 b!609863) bm!33104))

(declare-fun m!586413 () Bool)

(assert (=> b!609862 m!586413))

(assert (=> b!609862 m!586413))

(declare-fun m!586415 () Bool)

(assert (=> b!609862 m!586415))

(assert (=> b!609864 m!586413))

(assert (=> b!609864 m!586413))

(declare-fun m!586417 () Bool)

(assert (=> b!609864 m!586417))

(assert (=> bm!33104 m!586413))

(declare-fun m!586419 () Bool)

(assert (=> bm!33104 m!586419))

(assert (=> b!609865 m!586413))

(assert (=> b!609865 m!586413))

(assert (=> b!609865 m!586415))

(assert (=> b!609776 d!87961))

(declare-fun d!87963 () Bool)

(assert (=> d!87963 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!609766 d!87963))

(declare-fun b!609879 () Bool)

(declare-fun e!349331 () SeekEntryResult!6352)

(assert (=> b!609879 (= e!349331 Undefined!6352)))

(declare-fun b!609880 () Bool)

(declare-fun c!69080 () Bool)

(declare-fun lt!278980 () (_ BitVec 64))

(assert (=> b!609880 (= c!69080 (= lt!278980 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!349333 () SeekEntryResult!6352)

(declare-fun e!349332 () SeekEntryResult!6352)

(assert (=> b!609880 (= e!349333 e!349332)))

(declare-fun d!87965 () Bool)

(declare-fun lt!278982 () SeekEntryResult!6352)

(get-info :version)

(assert (=> d!87965 (and (or ((_ is Undefined!6352) lt!278982) (not ((_ is Found!6352) lt!278982)) (and (bvsge (index!27683 lt!278982) #b00000000000000000000000000000000) (bvslt (index!27683 lt!278982) (size!18269 a!2986)))) (or ((_ is Undefined!6352) lt!278982) ((_ is Found!6352) lt!278982) (not ((_ is MissingZero!6352) lt!278982)) (and (bvsge (index!27682 lt!278982) #b00000000000000000000000000000000) (bvslt (index!27682 lt!278982) (size!18269 a!2986)))) (or ((_ is Undefined!6352) lt!278982) ((_ is Found!6352) lt!278982) ((_ is MissingZero!6352) lt!278982) (not ((_ is MissingVacant!6352) lt!278982)) (and (bvsge (index!27685 lt!278982) #b00000000000000000000000000000000) (bvslt (index!27685 lt!278982) (size!18269 a!2986)))) (or ((_ is Undefined!6352) lt!278982) (ite ((_ is Found!6352) lt!278982) (= (select (arr!17905 a!2986) (index!27683 lt!278982)) k0!1786) (ite ((_ is MissingZero!6352) lt!278982) (= (select (arr!17905 a!2986) (index!27682 lt!278982)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!6352) lt!278982) (= (select (arr!17905 a!2986) (index!27685 lt!278982)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!87965 (= lt!278982 e!349331)))

(declare-fun c!69079 () Bool)

(declare-fun lt!278981 () SeekEntryResult!6352)

(assert (=> d!87965 (= c!69079 (and ((_ is Intermediate!6352) lt!278981) (undefined!7164 lt!278981)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37316 (_ BitVec 32)) SeekEntryResult!6352)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!87965 (= lt!278981 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!87965 (validMask!0 mask!3053)))

(assert (=> d!87965 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!278982)))

(declare-fun b!609881 () Bool)

(assert (=> b!609881 (= e!349332 (seekKeyOrZeroReturnVacant!0 (x!56510 lt!278981) (index!27684 lt!278981) (index!27684 lt!278981) k0!1786 a!2986 mask!3053))))

(declare-fun b!609882 () Bool)

(assert (=> b!609882 (= e!349333 (Found!6352 (index!27684 lt!278981)))))

(declare-fun b!609883 () Bool)

(assert (=> b!609883 (= e!349332 (MissingZero!6352 (index!27684 lt!278981)))))

(declare-fun b!609884 () Bool)

(assert (=> b!609884 (= e!349331 e!349333)))

(assert (=> b!609884 (= lt!278980 (select (arr!17905 a!2986) (index!27684 lt!278981)))))

(declare-fun c!69078 () Bool)

(assert (=> b!609884 (= c!69078 (= lt!278980 k0!1786))))

(assert (= (and d!87965 c!69079) b!609879))

(assert (= (and d!87965 (not c!69079)) b!609884))

(assert (= (and b!609884 c!69078) b!609882))

(assert (= (and b!609884 (not c!69078)) b!609880))

(assert (= (and b!609880 c!69080) b!609883))

(assert (= (and b!609880 (not c!69080)) b!609881))

(declare-fun m!586421 () Bool)

(assert (=> d!87965 m!586421))

(declare-fun m!586423 () Bool)

(assert (=> d!87965 m!586423))

(declare-fun m!586425 () Bool)

(assert (=> d!87965 m!586425))

(declare-fun m!586427 () Bool)

(assert (=> d!87965 m!586427))

(assert (=> d!87965 m!586425))

(declare-fun m!586429 () Bool)

(assert (=> d!87965 m!586429))

(assert (=> d!87965 m!586311))

(declare-fun m!586431 () Bool)

(assert (=> b!609881 m!586431))

(declare-fun m!586433 () Bool)

(assert (=> b!609884 m!586433))

(assert (=> b!609767 d!87965))

(declare-fun b!609905 () Bool)

(declare-fun e!349350 () SeekEntryResult!6352)

(assert (=> b!609905 (= e!349350 (Found!6352 index!984))))

(declare-fun e!349348 () SeekEntryResult!6352)

(declare-fun b!609906 () Bool)

(assert (=> b!609906 (= e!349348 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!17905 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!609907 () Bool)

(declare-fun c!69088 () Bool)

(declare-fun lt!278988 () (_ BitVec 64))

(assert (=> b!609907 (= c!69088 (= lt!278988 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!609907 (= e!349350 e!349348)))

(declare-fun b!609908 () Bool)

(assert (=> b!609908 (= e!349348 (MissingVacant!6352 vacantSpotIndex!68))))

(declare-fun b!609909 () Bool)

(declare-fun e!349349 () SeekEntryResult!6352)

(assert (=> b!609909 (= e!349349 e!349350)))

(declare-fun c!69087 () Bool)

(assert (=> b!609909 (= c!69087 (= lt!278988 (select (arr!17905 a!2986) j!136)))))

(declare-fun lt!278987 () SeekEntryResult!6352)

(declare-fun d!87967 () Bool)

(assert (=> d!87967 (and (or ((_ is Undefined!6352) lt!278987) (not ((_ is Found!6352) lt!278987)) (and (bvsge (index!27683 lt!278987) #b00000000000000000000000000000000) (bvslt (index!27683 lt!278987) (size!18269 a!2986)))) (or ((_ is Undefined!6352) lt!278987) ((_ is Found!6352) lt!278987) (not ((_ is MissingVacant!6352) lt!278987)) (not (= (index!27685 lt!278987) vacantSpotIndex!68)) (and (bvsge (index!27685 lt!278987) #b00000000000000000000000000000000) (bvslt (index!27685 lt!278987) (size!18269 a!2986)))) (or ((_ is Undefined!6352) lt!278987) (ite ((_ is Found!6352) lt!278987) (= (select (arr!17905 a!2986) (index!27683 lt!278987)) (select (arr!17905 a!2986) j!136)) (and ((_ is MissingVacant!6352) lt!278987) (= (index!27685 lt!278987) vacantSpotIndex!68) (= (select (arr!17905 a!2986) (index!27685 lt!278987)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!87967 (= lt!278987 e!349349)))

(declare-fun c!69089 () Bool)

(assert (=> d!87967 (= c!69089 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!87967 (= lt!278988 (select (arr!17905 a!2986) index!984))))

(assert (=> d!87967 (validMask!0 mask!3053)))

(assert (=> d!87967 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17905 a!2986) j!136) a!2986 mask!3053) lt!278987)))

(declare-fun b!609910 () Bool)

(assert (=> b!609910 (= e!349349 Undefined!6352)))

(assert (= (and d!87967 c!69089) b!609910))

(assert (= (and d!87967 (not c!69089)) b!609909))

(assert (= (and b!609909 c!69087) b!609905))

(assert (= (and b!609909 (not c!69087)) b!609907))

(assert (= (and b!609907 c!69088) b!609908))

(assert (= (and b!609907 (not c!69088)) b!609906))

(assert (=> b!609906 m!586295))

(assert (=> b!609906 m!586295))

(assert (=> b!609906 m!586285))

(declare-fun m!586443 () Bool)

(assert (=> b!609906 m!586443))

(declare-fun m!586445 () Bool)

(assert (=> d!87967 m!586445))

(declare-fun m!586447 () Bool)

(assert (=> d!87967 m!586447))

(assert (=> d!87967 m!586289))

(assert (=> d!87967 m!586311))

(assert (=> b!609778 d!87967))

(declare-fun d!87975 () Bool)

(assert (=> d!87975 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!55622 d!87975))

(declare-fun d!87979 () Bool)

(assert (=> d!87979 (= (array_inv!13679 a!2986) (bvsge (size!18269 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!55622 d!87979))

(declare-fun d!87981 () Bool)

(assert (=> d!87981 (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18269 lt!278915)) (not (= (select (arr!17905 lt!278915) j!136) (select (arr!17905 a!2986) j!136))))))

(declare-fun lt!278997 () Unit!19540)

(declare-fun choose!21 (array!37316 (_ BitVec 64) (_ BitVec 32) List!11999) Unit!19540)

(assert (=> d!87981 (= lt!278997 (choose!21 lt!278915 (select (arr!17905 a!2986) j!136) j!136 Nil!11996))))

(assert (=> d!87981 (bvslt (size!18269 lt!278915) #b01111111111111111111111111111111)))

(assert (=> d!87981 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!278915 (select (arr!17905 a!2986) j!136) j!136 Nil!11996) lt!278997)))

(declare-fun bs!18605 () Bool)

(assert (= bs!18605 d!87981))

(declare-fun m!586449 () Bool)

(assert (=> bs!18605 m!586449))

(assert (=> bs!18605 m!586285))

(declare-fun m!586451 () Bool)

(assert (=> bs!18605 m!586451))

(assert (=> b!609779 d!87981))

(declare-fun d!87983 () Bool)

(declare-fun res!392469 () Bool)

(declare-fun e!349364 () Bool)

(assert (=> d!87983 (=> res!392469 e!349364)))

(assert (=> d!87983 (= res!392469 (= (select (arr!17905 lt!278915) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!17905 a!2986) j!136)))))

(assert (=> d!87983 (= (arrayContainsKey!0 lt!278915 (select (arr!17905 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!349364)))

(declare-fun b!609933 () Bool)

(declare-fun e!349365 () Bool)

(assert (=> b!609933 (= e!349364 e!349365)))

(declare-fun res!392470 () Bool)

(assert (=> b!609933 (=> (not res!392470) (not e!349365))))

(assert (=> b!609933 (= res!392470 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18269 lt!278915)))))

(declare-fun b!609934 () Bool)

(assert (=> b!609934 (= e!349365 (arrayContainsKey!0 lt!278915 (select (arr!17905 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!87983 (not res!392469)) b!609933))

(assert (= (and b!609933 res!392470) b!609934))

(declare-fun m!586467 () Bool)

(assert (=> d!87983 m!586467))

(assert (=> b!609934 m!586285))

(declare-fun m!586469 () Bool)

(assert (=> b!609934 m!586469))

(assert (=> b!609779 d!87983))

(declare-fun d!87987 () Bool)

(assert (=> d!87987 (arrayNoDuplicates!0 lt!278915 j!136 Nil!11996)))

(declare-fun lt!279003 () Unit!19540)

(declare-fun choose!39 (array!37316 (_ BitVec 32) (_ BitVec 32)) Unit!19540)

(assert (=> d!87987 (= lt!279003 (choose!39 lt!278915 #b00000000000000000000000000000000 j!136))))

(assert (=> d!87987 (bvslt (size!18269 lt!278915) #b01111111111111111111111111111111)))

(assert (=> d!87987 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!278915 #b00000000000000000000000000000000 j!136) lt!279003)))

(declare-fun bs!18606 () Bool)

(assert (= bs!18606 d!87987))

(assert (=> bs!18606 m!586315))

(declare-fun m!586471 () Bool)

(assert (=> bs!18606 m!586471))

(assert (=> b!609779 d!87987))

(declare-fun d!87989 () Bool)

(assert (=> d!87989 (arrayContainsKey!0 lt!278915 (select (arr!17905 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!279006 () Unit!19540)

(declare-fun choose!114 (array!37316 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19540)

(assert (=> d!87989 (= lt!279006 (choose!114 lt!278915 (select (arr!17905 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!87989 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!87989 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!278915 (select (arr!17905 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!279006)))

(declare-fun bs!18607 () Bool)

(assert (= bs!18607 d!87989))

(assert (=> bs!18607 m!586285))

(assert (=> bs!18607 m!586325))

(assert (=> bs!18607 m!586285))

(declare-fun m!586473 () Bool)

(assert (=> bs!18607 m!586473))

(assert (=> b!609779 d!87989))

(declare-fun b!609950 () Bool)

(declare-fun e!349378 () Bool)

(declare-fun e!349381 () Bool)

(assert (=> b!609950 (= e!349378 e!349381)))

(declare-fun res!392480 () Bool)

(assert (=> b!609950 (=> (not res!392480) (not e!349381))))

(declare-fun e!349379 () Bool)

(assert (=> b!609950 (= res!392480 (not e!349379))))

(declare-fun res!392482 () Bool)

(assert (=> b!609950 (=> (not res!392482) (not e!349379))))

(assert (=> b!609950 (= res!392482 (validKeyInArray!0 (select (arr!17905 lt!278915) j!136)))))

(declare-fun d!87991 () Bool)

(declare-fun res!392481 () Bool)

(assert (=> d!87991 (=> res!392481 e!349378)))

(assert (=> d!87991 (= res!392481 (bvsge j!136 (size!18269 lt!278915)))))

(assert (=> d!87991 (= (arrayNoDuplicates!0 lt!278915 j!136 Nil!11996) e!349378)))

(declare-fun b!609951 () Bool)

(declare-fun e!349380 () Bool)

(declare-fun call!33111 () Bool)

(assert (=> b!609951 (= e!349380 call!33111)))

(declare-fun b!609952 () Bool)

(assert (=> b!609952 (= e!349379 (contains!3041 Nil!11996 (select (arr!17905 lt!278915) j!136)))))

(declare-fun c!69102 () Bool)

(declare-fun bm!33108 () Bool)

(assert (=> bm!33108 (= call!33111 (arrayNoDuplicates!0 lt!278915 (bvadd j!136 #b00000000000000000000000000000001) (ite c!69102 (Cons!11995 (select (arr!17905 lt!278915) j!136) Nil!11996) Nil!11996)))))

(declare-fun b!609953 () Bool)

(assert (=> b!609953 (= e!349381 e!349380)))

(assert (=> b!609953 (= c!69102 (validKeyInArray!0 (select (arr!17905 lt!278915) j!136)))))

(declare-fun b!609954 () Bool)

(assert (=> b!609954 (= e!349380 call!33111)))

(assert (= (and d!87991 (not res!392481)) b!609950))

(assert (= (and b!609950 res!392482) b!609952))

(assert (= (and b!609950 res!392480) b!609953))

(assert (= (and b!609953 c!69102) b!609954))

(assert (= (and b!609953 (not c!69102)) b!609951))

(assert (= (or b!609954 b!609951) bm!33108))

(assert (=> b!609950 m!586449))

(assert (=> b!609950 m!586449))

(declare-fun m!586481 () Bool)

(assert (=> b!609950 m!586481))

(assert (=> b!609952 m!586449))

(assert (=> b!609952 m!586449))

(declare-fun m!586483 () Bool)

(assert (=> b!609952 m!586483))

(assert (=> bm!33108 m!586449))

(declare-fun m!586487 () Bool)

(assert (=> bm!33108 m!586487))

(assert (=> b!609953 m!586449))

(assert (=> b!609953 m!586449))

(assert (=> b!609953 m!586481))

(assert (=> b!609779 d!87991))

(declare-fun b!609955 () Bool)

(declare-fun e!349382 () Bool)

(declare-fun e!349385 () Bool)

(assert (=> b!609955 (= e!349382 e!349385)))

(declare-fun res!392483 () Bool)

(assert (=> b!609955 (=> (not res!392483) (not e!349385))))

(declare-fun e!349383 () Bool)

(assert (=> b!609955 (= res!392483 (not e!349383))))

(declare-fun res!392485 () Bool)

(assert (=> b!609955 (=> (not res!392485) (not e!349383))))

(assert (=> b!609955 (= res!392485 (validKeyInArray!0 (select (arr!17905 lt!278915) #b00000000000000000000000000000000)))))

(declare-fun d!87995 () Bool)

(declare-fun res!392484 () Bool)

(assert (=> d!87995 (=> res!392484 e!349382)))

(assert (=> d!87995 (= res!392484 (bvsge #b00000000000000000000000000000000 (size!18269 lt!278915)))))

(assert (=> d!87995 (= (arrayNoDuplicates!0 lt!278915 #b00000000000000000000000000000000 Nil!11996) e!349382)))

(declare-fun b!609956 () Bool)

(declare-fun e!349384 () Bool)

(declare-fun call!33112 () Bool)

(assert (=> b!609956 (= e!349384 call!33112)))

(declare-fun b!609957 () Bool)

(assert (=> b!609957 (= e!349383 (contains!3041 Nil!11996 (select (arr!17905 lt!278915) #b00000000000000000000000000000000)))))

(declare-fun bm!33109 () Bool)

(declare-fun c!69103 () Bool)

(assert (=> bm!33109 (= call!33112 (arrayNoDuplicates!0 lt!278915 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!69103 (Cons!11995 (select (arr!17905 lt!278915) #b00000000000000000000000000000000) Nil!11996) Nil!11996)))))

(declare-fun b!609958 () Bool)

(assert (=> b!609958 (= e!349385 e!349384)))

(assert (=> b!609958 (= c!69103 (validKeyInArray!0 (select (arr!17905 lt!278915) #b00000000000000000000000000000000)))))

(declare-fun b!609959 () Bool)

(assert (=> b!609959 (= e!349384 call!33112)))

(assert (= (and d!87995 (not res!392484)) b!609955))

(assert (= (and b!609955 res!392485) b!609957))

(assert (= (and b!609955 res!392483) b!609958))

(assert (= (and b!609958 c!69103) b!609959))

(assert (= (and b!609958 (not c!69103)) b!609956))

(assert (= (or b!609959 b!609956) bm!33109))

(declare-fun m!586489 () Bool)

(assert (=> b!609955 m!586489))

(assert (=> b!609955 m!586489))

(declare-fun m!586491 () Bool)

(assert (=> b!609955 m!586491))

(assert (=> b!609957 m!586489))

(assert (=> b!609957 m!586489))

(declare-fun m!586493 () Bool)

(assert (=> b!609957 m!586493))

(assert (=> bm!33109 m!586489))

(declare-fun m!586495 () Bool)

(assert (=> bm!33109 m!586495))

(assert (=> b!609958 m!586489))

(assert (=> b!609958 m!586489))

(assert (=> b!609958 m!586491))

(assert (=> b!609779 d!87995))

(declare-fun d!87997 () Bool)

(declare-fun e!349396 () Bool)

(assert (=> d!87997 e!349396))

(declare-fun res!392490 () Bool)

(assert (=> d!87997 (=> (not res!392490) (not e!349396))))

(assert (=> d!87997 (= res!392490 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18269 a!2986))))))

(declare-fun lt!279019 () Unit!19540)

(declare-fun choose!41 (array!37316 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11999) Unit!19540)

(assert (=> d!87997 (= lt!279019 (choose!41 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11996))))

(assert (=> d!87997 (bvslt (size!18269 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!87997 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11996) lt!279019)))

(declare-fun b!609976 () Bool)

(assert (=> b!609976 (= e!349396 (arrayNoDuplicates!0 (array!37317 (store (arr!17905 a!2986) i!1108 k0!1786) (size!18269 a!2986)) #b00000000000000000000000000000000 Nil!11996))))

(assert (= (and d!87997 res!392490) b!609976))

(declare-fun m!586503 () Bool)

(assert (=> d!87997 m!586503))

(assert (=> b!609976 m!586307))

(declare-fun m!586505 () Bool)

(assert (=> b!609976 m!586505))

(assert (=> b!609779 d!87997))

(declare-fun d!88003 () Bool)

(declare-fun res!392491 () Bool)

(declare-fun e!349400 () Bool)

(assert (=> d!88003 (=> res!392491 e!349400)))

(assert (=> d!88003 (= res!392491 (= (select (arr!17905 lt!278915) j!136) (select (arr!17905 a!2986) j!136)))))

(assert (=> d!88003 (= (arrayContainsKey!0 lt!278915 (select (arr!17905 a!2986) j!136) j!136) e!349400)))

(declare-fun b!609983 () Bool)

(declare-fun e!349401 () Bool)

(assert (=> b!609983 (= e!349400 e!349401)))

(declare-fun res!392492 () Bool)

(assert (=> b!609983 (=> (not res!392492) (not e!349401))))

(assert (=> b!609983 (= res!392492 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18269 lt!278915)))))

(declare-fun b!609984 () Bool)

(assert (=> b!609984 (= e!349401 (arrayContainsKey!0 lt!278915 (select (arr!17905 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!88003 (not res!392491)) b!609983))

(assert (= (and b!609983 res!392492) b!609984))

(assert (=> d!88003 m!586449))

(assert (=> b!609984 m!586285))

(declare-fun m!586515 () Bool)

(assert (=> b!609984 m!586515))

(assert (=> b!609768 d!88003))

(declare-fun d!88005 () Bool)

(declare-fun res!392495 () Bool)

(declare-fun e!349404 () Bool)

(assert (=> d!88005 (=> res!392495 e!349404)))

(assert (=> d!88005 (= res!392495 (= (select (arr!17905 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!88005 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!349404)))

(declare-fun b!609985 () Bool)

(declare-fun e!349405 () Bool)

(assert (=> b!609985 (= e!349404 e!349405)))

(declare-fun res!392496 () Bool)

(assert (=> b!609985 (=> (not res!392496) (not e!349405))))

(assert (=> b!609985 (= res!392496 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18269 a!2986)))))

(declare-fun b!609986 () Bool)

(assert (=> b!609986 (= e!349405 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!88005 (not res!392495)) b!609985))

(assert (= (and b!609985 res!392496) b!609986))

(assert (=> d!88005 m!586413))

(declare-fun m!586523 () Bool)

(assert (=> b!609986 m!586523))

(assert (=> b!609780 d!88005))

(declare-fun d!88009 () Bool)

(declare-fun res!392497 () Bool)

(declare-fun e!349406 () Bool)

(assert (=> d!88009 (=> res!392497 e!349406)))

(assert (=> d!88009 (= res!392497 (= (select (arr!17905 lt!278915) (bvadd #b00000000000000000000000000000001 index!984)) (select (arr!17905 a!2986) j!136)))))

(assert (=> d!88009 (= (arrayContainsKey!0 lt!278915 (select (arr!17905 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984)) e!349406)))

(declare-fun b!609989 () Bool)

(declare-fun e!349407 () Bool)

(assert (=> b!609989 (= e!349406 e!349407)))

(declare-fun res!392498 () Bool)

(assert (=> b!609989 (=> (not res!392498) (not e!349407))))

(assert (=> b!609989 (= res!392498 (bvslt (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001) (size!18269 lt!278915)))))

(declare-fun b!609990 () Bool)

(assert (=> b!609990 (= e!349407 (arrayContainsKey!0 lt!278915 (select (arr!17905 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!88009 (not res!392497)) b!609989))

(assert (= (and b!609989 res!392498) b!609990))

(declare-fun m!586525 () Bool)

(assert (=> d!88009 m!586525))

(assert (=> b!609990 m!586285))

(declare-fun m!586527 () Bool)

(assert (=> b!609990 m!586527))

(assert (=> b!609781 d!88009))

(declare-fun d!88011 () Bool)

(assert (=> d!88011 (arrayContainsKey!0 lt!278915 (select (arr!17905 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!279024 () Unit!19540)

(assert (=> d!88011 (= lt!279024 (choose!114 lt!278915 (select (arr!17905 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> d!88011 (bvsge j!136 #b00000000000000000000000000000000)))

(assert (=> d!88011 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!278915 (select (arr!17905 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)) lt!279024)))

(declare-fun bs!18609 () Bool)

(assert (= bs!18609 d!88011))

(assert (=> bs!18609 m!586285))

(assert (=> bs!18609 m!586347))

(assert (=> bs!18609 m!586285))

(declare-fun m!586529 () Bool)

(assert (=> bs!18609 m!586529))

(assert (=> b!609781 d!88011))

(assert (=> b!609781 d!87995))

(assert (=> b!609781 d!88003))

(assert (=> b!609781 d!87997))

(declare-fun d!88013 () Bool)

(assert (=> d!88013 (= (validKeyInArray!0 (select (arr!17905 a!2986) j!136)) (and (not (= (select (arr!17905 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17905 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!609761 d!88013))

(declare-fun bm!33113 () Bool)

(declare-fun call!33116 () Bool)

(assert (=> bm!33113 (= call!33116 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!610005 () Bool)

(declare-fun e!349419 () Bool)

(declare-fun e!349421 () Bool)

(assert (=> b!610005 (= e!349419 e!349421)))

(declare-fun lt!279038 () (_ BitVec 64))

(assert (=> b!610005 (= lt!279038 (select (arr!17905 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!279039 () Unit!19540)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!37316 (_ BitVec 64) (_ BitVec 32)) Unit!19540)

(assert (=> b!610005 (= lt!279039 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!279038 #b00000000000000000000000000000000))))

(assert (=> b!610005 (arrayContainsKey!0 a!2986 lt!279038 #b00000000000000000000000000000000)))

(declare-fun lt!279040 () Unit!19540)

(assert (=> b!610005 (= lt!279040 lt!279039)))

(declare-fun res!392507 () Bool)

(assert (=> b!610005 (= res!392507 (= (seekEntryOrOpen!0 (select (arr!17905 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6352 #b00000000000000000000000000000000)))))

(assert (=> b!610005 (=> (not res!392507) (not e!349421))))

(declare-fun b!610006 () Bool)

(assert (=> b!610006 (= e!349419 call!33116)))

(declare-fun b!610007 () Bool)

(assert (=> b!610007 (= e!349421 call!33116)))

(declare-fun d!88015 () Bool)

(declare-fun res!392508 () Bool)

(declare-fun e!349420 () Bool)

(assert (=> d!88015 (=> res!392508 e!349420)))

(assert (=> d!88015 (= res!392508 (bvsge #b00000000000000000000000000000000 (size!18269 a!2986)))))

(assert (=> d!88015 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!349420)))

(declare-fun b!610008 () Bool)

(assert (=> b!610008 (= e!349420 e!349419)))

(declare-fun c!69116 () Bool)

(assert (=> b!610008 (= c!69116 (validKeyInArray!0 (select (arr!17905 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!88015 (not res!392508)) b!610008))

(assert (= (and b!610008 c!69116) b!610005))

(assert (= (and b!610008 (not c!69116)) b!610006))

(assert (= (and b!610005 res!392507) b!610007))

(assert (= (or b!610007 b!610006) bm!33113))

(declare-fun m!586545 () Bool)

(assert (=> bm!33113 m!586545))

(assert (=> b!610005 m!586413))

(declare-fun m!586547 () Bool)

(assert (=> b!610005 m!586547))

(declare-fun m!586549 () Bool)

(assert (=> b!610005 m!586549))

(assert (=> b!610005 m!586413))

(declare-fun m!586551 () Bool)

(assert (=> b!610005 m!586551))

(assert (=> b!610008 m!586413))

(assert (=> b!610008 m!586413))

(assert (=> b!610008 m!586415))

(assert (=> b!609782 d!88015))

(declare-fun b!610009 () Bool)

(declare-fun e!349424 () SeekEntryResult!6352)

(assert (=> b!610009 (= e!349424 (Found!6352 lt!278921))))

(declare-fun b!610010 () Bool)

(declare-fun e!349422 () SeekEntryResult!6352)

(assert (=> b!610010 (= e!349422 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!278921 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!17905 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!610011 () Bool)

(declare-fun c!69118 () Bool)

(declare-fun lt!279042 () (_ BitVec 64))

(assert (=> b!610011 (= c!69118 (= lt!279042 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!610011 (= e!349424 e!349422)))

(declare-fun b!610012 () Bool)

(assert (=> b!610012 (= e!349422 (MissingVacant!6352 vacantSpotIndex!68))))

(declare-fun b!610013 () Bool)

(declare-fun e!349423 () SeekEntryResult!6352)

(assert (=> b!610013 (= e!349423 e!349424)))

(declare-fun c!69117 () Bool)

(assert (=> b!610013 (= c!69117 (= lt!279042 (select (arr!17905 a!2986) j!136)))))

(declare-fun lt!279041 () SeekEntryResult!6352)

(declare-fun d!88029 () Bool)

(assert (=> d!88029 (and (or ((_ is Undefined!6352) lt!279041) (not ((_ is Found!6352) lt!279041)) (and (bvsge (index!27683 lt!279041) #b00000000000000000000000000000000) (bvslt (index!27683 lt!279041) (size!18269 a!2986)))) (or ((_ is Undefined!6352) lt!279041) ((_ is Found!6352) lt!279041) (not ((_ is MissingVacant!6352) lt!279041)) (not (= (index!27685 lt!279041) vacantSpotIndex!68)) (and (bvsge (index!27685 lt!279041) #b00000000000000000000000000000000) (bvslt (index!27685 lt!279041) (size!18269 a!2986)))) (or ((_ is Undefined!6352) lt!279041) (ite ((_ is Found!6352) lt!279041) (= (select (arr!17905 a!2986) (index!27683 lt!279041)) (select (arr!17905 a!2986) j!136)) (and ((_ is MissingVacant!6352) lt!279041) (= (index!27685 lt!279041) vacantSpotIndex!68) (= (select (arr!17905 a!2986) (index!27685 lt!279041)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!88029 (= lt!279041 e!349423)))

(declare-fun c!69119 () Bool)

(assert (=> d!88029 (= c!69119 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!88029 (= lt!279042 (select (arr!17905 a!2986) lt!278921))))

(assert (=> d!88029 (validMask!0 mask!3053)))

(assert (=> d!88029 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!278921 vacantSpotIndex!68 (select (arr!17905 a!2986) j!136) a!2986 mask!3053) lt!279041)))

(declare-fun b!610014 () Bool)

(assert (=> b!610014 (= e!349423 Undefined!6352)))

(assert (= (and d!88029 c!69119) b!610014))

(assert (= (and d!88029 (not c!69119)) b!610013))

(assert (= (and b!610013 c!69117) b!610009))

(assert (= (and b!610013 (not c!69117)) b!610011))

(assert (= (and b!610011 c!69118) b!610012))

(assert (= (and b!610011 (not c!69118)) b!610010))

(declare-fun m!586553 () Bool)

(assert (=> b!610010 m!586553))

(assert (=> b!610010 m!586553))

(assert (=> b!610010 m!586285))

(declare-fun m!586555 () Bool)

(assert (=> b!610010 m!586555))

(declare-fun m!586557 () Bool)

(assert (=> d!88029 m!586557))

(declare-fun m!586559 () Bool)

(assert (=> d!88029 m!586559))

(declare-fun m!586561 () Bool)

(assert (=> d!88029 m!586561))

(assert (=> d!88029 m!586311))

(assert (=> b!609773 d!88029))

(declare-fun d!88031 () Bool)

(declare-fun lt!279045 () (_ BitVec 32))

(assert (=> d!88031 (and (bvsge lt!279045 #b00000000000000000000000000000000) (bvslt lt!279045 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!88031 (= lt!279045 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!88031 (validMask!0 mask!3053)))

(assert (=> d!88031 (= (nextIndex!0 index!984 x!910 mask!3053) lt!279045)))

(declare-fun bs!18612 () Bool)

(assert (= bs!18612 d!88031))

(declare-fun m!586563 () Bool)

(assert (=> bs!18612 m!586563))

(assert (=> bs!18612 m!586311))

(assert (=> b!609773 d!88031))

(declare-fun d!88033 () Bool)

(declare-fun e!349439 () Bool)

(assert (=> d!88033 e!349439))

(declare-fun res!392511 () Bool)

(assert (=> d!88033 (=> (not res!392511) (not e!349439))))

(assert (=> d!88033 (= res!392511 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18269 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18269 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18269 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18269 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18269 a!2986))))))

(declare-fun lt!279056 () Unit!19540)

(declare-fun choose!9 (array!37316 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19540)

(assert (=> d!88033 (= lt!279056 (choose!9 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!278921 vacantSpotIndex!68 mask!3053))))

(assert (=> d!88033 (validMask!0 mask!3053)))

(assert (=> d!88033 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!278921 vacantSpotIndex!68 mask!3053) lt!279056)))

(declare-fun b!610041 () Bool)

(assert (=> b!610041 (= e!349439 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!278921 vacantSpotIndex!68 (select (arr!17905 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!278921 vacantSpotIndex!68 (select (store (arr!17905 a!2986) i!1108 k0!1786) j!136) (array!37317 (store (arr!17905 a!2986) i!1108 k0!1786) (size!18269 a!2986)) mask!3053)))))

(assert (= (and d!88033 res!392511) b!610041))

(declare-fun m!586583 () Bool)

(assert (=> d!88033 m!586583))

(assert (=> d!88033 m!586311))

(assert (=> b!610041 m!586297))

(assert (=> b!610041 m!586307))

(assert (=> b!610041 m!586285))

(assert (=> b!610041 m!586297))

(declare-fun m!586585 () Bool)

(assert (=> b!610041 m!586585))

(assert (=> b!610041 m!586285))

(assert (=> b!610041 m!586301))

(assert (=> b!609773 d!88033))

(declare-fun b!610048 () Bool)

(declare-fun e!349445 () SeekEntryResult!6352)

(assert (=> b!610048 (= e!349445 (Found!6352 index!984))))

(declare-fun b!610049 () Bool)

(declare-fun e!349443 () SeekEntryResult!6352)

(assert (=> b!610049 (= e!349443 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!278920 lt!278915 mask!3053))))

(declare-fun b!610050 () Bool)

(declare-fun c!69136 () Bool)

(declare-fun lt!279060 () (_ BitVec 64))

(assert (=> b!610050 (= c!69136 (= lt!279060 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!610050 (= e!349445 e!349443)))

(declare-fun b!610051 () Bool)

(assert (=> b!610051 (= e!349443 (MissingVacant!6352 vacantSpotIndex!68))))

(declare-fun b!610052 () Bool)

(declare-fun e!349444 () SeekEntryResult!6352)

(assert (=> b!610052 (= e!349444 e!349445)))

(declare-fun c!69135 () Bool)

(assert (=> b!610052 (= c!69135 (= lt!279060 lt!278920))))

(declare-fun d!88045 () Bool)

(declare-fun lt!279059 () SeekEntryResult!6352)

(assert (=> d!88045 (and (or ((_ is Undefined!6352) lt!279059) (not ((_ is Found!6352) lt!279059)) (and (bvsge (index!27683 lt!279059) #b00000000000000000000000000000000) (bvslt (index!27683 lt!279059) (size!18269 lt!278915)))) (or ((_ is Undefined!6352) lt!279059) ((_ is Found!6352) lt!279059) (not ((_ is MissingVacant!6352) lt!279059)) (not (= (index!27685 lt!279059) vacantSpotIndex!68)) (and (bvsge (index!27685 lt!279059) #b00000000000000000000000000000000) (bvslt (index!27685 lt!279059) (size!18269 lt!278915)))) (or ((_ is Undefined!6352) lt!279059) (ite ((_ is Found!6352) lt!279059) (= (select (arr!17905 lt!278915) (index!27683 lt!279059)) lt!278920) (and ((_ is MissingVacant!6352) lt!279059) (= (index!27685 lt!279059) vacantSpotIndex!68) (= (select (arr!17905 lt!278915) (index!27685 lt!279059)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!88045 (= lt!279059 e!349444)))

(declare-fun c!69137 () Bool)

(assert (=> d!88045 (= c!69137 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!88045 (= lt!279060 (select (arr!17905 lt!278915) index!984))))

(assert (=> d!88045 (validMask!0 mask!3053)))

(assert (=> d!88045 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!278920 lt!278915 mask!3053) lt!279059)))

(declare-fun b!610053 () Bool)

(assert (=> b!610053 (= e!349444 Undefined!6352)))

(assert (= (and d!88045 c!69137) b!610053))

(assert (= (and d!88045 (not c!69137)) b!610052))

(assert (= (and b!610052 c!69135) b!610048))

(assert (= (and b!610052 (not c!69135)) b!610050))

(assert (= (and b!610050 c!69136) b!610051))

(assert (= (and b!610050 (not c!69136)) b!610049))

(assert (=> b!610049 m!586295))

(assert (=> b!610049 m!586295))

(declare-fun m!586595 () Bool)

(assert (=> b!610049 m!586595))

(declare-fun m!586597 () Bool)

(assert (=> d!88045 m!586597))

(declare-fun m!586599 () Bool)

(assert (=> d!88045 m!586599))

(declare-fun m!586601 () Bool)

(assert (=> d!88045 m!586601))

(assert (=> d!88045 m!586311))

(assert (=> b!609773 d!88045))

(declare-fun b!610054 () Bool)

(declare-fun e!349448 () SeekEntryResult!6352)

(assert (=> b!610054 (= e!349448 (Found!6352 lt!278921))))

(declare-fun e!349446 () SeekEntryResult!6352)

(declare-fun b!610055 () Bool)

(assert (=> b!610055 (= e!349446 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!278921 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!278920 lt!278915 mask!3053))))

(declare-fun b!610056 () Bool)

(declare-fun c!69139 () Bool)

(declare-fun lt!279062 () (_ BitVec 64))

(assert (=> b!610056 (= c!69139 (= lt!279062 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!610056 (= e!349448 e!349446)))

(declare-fun b!610057 () Bool)

(assert (=> b!610057 (= e!349446 (MissingVacant!6352 vacantSpotIndex!68))))

(declare-fun b!610058 () Bool)

(declare-fun e!349447 () SeekEntryResult!6352)

(assert (=> b!610058 (= e!349447 e!349448)))

(declare-fun c!69138 () Bool)

(assert (=> b!610058 (= c!69138 (= lt!279062 lt!278920))))

(declare-fun d!88049 () Bool)

(declare-fun lt!279061 () SeekEntryResult!6352)

(assert (=> d!88049 (and (or ((_ is Undefined!6352) lt!279061) (not ((_ is Found!6352) lt!279061)) (and (bvsge (index!27683 lt!279061) #b00000000000000000000000000000000) (bvslt (index!27683 lt!279061) (size!18269 lt!278915)))) (or ((_ is Undefined!6352) lt!279061) ((_ is Found!6352) lt!279061) (not ((_ is MissingVacant!6352) lt!279061)) (not (= (index!27685 lt!279061) vacantSpotIndex!68)) (and (bvsge (index!27685 lt!279061) #b00000000000000000000000000000000) (bvslt (index!27685 lt!279061) (size!18269 lt!278915)))) (or ((_ is Undefined!6352) lt!279061) (ite ((_ is Found!6352) lt!279061) (= (select (arr!17905 lt!278915) (index!27683 lt!279061)) lt!278920) (and ((_ is MissingVacant!6352) lt!279061) (= (index!27685 lt!279061) vacantSpotIndex!68) (= (select (arr!17905 lt!278915) (index!27685 lt!279061)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!88049 (= lt!279061 e!349447)))

(declare-fun c!69140 () Bool)

(assert (=> d!88049 (= c!69140 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!88049 (= lt!279062 (select (arr!17905 lt!278915) lt!278921))))

(assert (=> d!88049 (validMask!0 mask!3053)))

(assert (=> d!88049 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!278921 vacantSpotIndex!68 lt!278920 lt!278915 mask!3053) lt!279061)))

(declare-fun b!610059 () Bool)

(assert (=> b!610059 (= e!349447 Undefined!6352)))

(assert (= (and d!88049 c!69140) b!610059))

(assert (= (and d!88049 (not c!69140)) b!610058))

(assert (= (and b!610058 c!69138) b!610054))

(assert (= (and b!610058 (not c!69138)) b!610056))

(assert (= (and b!610056 c!69139) b!610057))

(assert (= (and b!610056 (not c!69139)) b!610055))

(assert (=> b!610055 m!586553))

(assert (=> b!610055 m!586553))

(declare-fun m!586603 () Bool)

(assert (=> b!610055 m!586603))

(declare-fun m!586605 () Bool)

(assert (=> d!88049 m!586605))

(declare-fun m!586607 () Bool)

(assert (=> d!88049 m!586607))

(declare-fun m!586609 () Bool)

(assert (=> d!88049 m!586609))

(assert (=> d!88049 m!586311))

(assert (=> b!609773 d!88049))

(declare-fun d!88051 () Bool)

(declare-fun res!392512 () Bool)

(declare-fun e!349449 () Bool)

(assert (=> d!88051 (=> res!392512 e!349449)))

(assert (=> d!88051 (= res!392512 (= (select (arr!17905 lt!278915) index!984) (select (arr!17905 a!2986) j!136)))))

(assert (=> d!88051 (= (arrayContainsKey!0 lt!278915 (select (arr!17905 a!2986) j!136) index!984) e!349449)))

(declare-fun b!610060 () Bool)

(declare-fun e!349450 () Bool)

(assert (=> b!610060 (= e!349449 e!349450)))

(declare-fun res!392513 () Bool)

(assert (=> b!610060 (=> (not res!392513) (not e!349450))))

(assert (=> b!610060 (= res!392513 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18269 lt!278915)))))

(declare-fun b!610061 () Bool)

(assert (=> b!610061 (= e!349450 (arrayContainsKey!0 lt!278915 (select (arr!17905 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!88051 (not res!392512)) b!610060))

(assert (= (and b!610060 res!392513) b!610061))

(assert (=> d!88051 m!586601))

(assert (=> b!610061 m!586285))

(declare-fun m!586611 () Bool)

(assert (=> b!610061 m!586611))

(assert (=> b!609763 d!88051))

(assert (=> b!609775 d!88051))

(check-sat (not d!88029) (not bm!33113) (not d!87997) (not bm!33104) (not b!609953) (not d!88031) (not b!610055) (not b!609976) (not b!609955) (not b!609986) (not d!87967) (not b!610061) (not b!609864) (not d!87989) (not d!88045) (not d!88011) (not b!609934) (not d!88033) (not d!87987) (not b!609950) (not b!610049) (not b!609984) (not d!87981) (not b!609958) (not b!609906) (not b!610008) (not b!609957) (not d!87965) (not bm!33109) (not b!609952) (not bm!33108) (not b!609881) (not b!609990) (not b!609865) (not d!88049) (not b!610041) (not b!610005) (not b!609862) (not b!610010))
(check-sat)

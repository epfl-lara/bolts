; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56148 () Bool)

(assert start!56148)

(declare-fun b!620319 () Bool)

(declare-datatypes ((Unit!20620 0))(
  ( (Unit!20621) )
))
(declare-fun e!355791 () Unit!20620)

(declare-fun Unit!20622 () Unit!20620)

(assert (=> b!620319 (= e!355791 Unit!20622)))

(assert (=> b!620319 false))

(declare-fun b!620320 () Bool)

(declare-fun res!399836 () Bool)

(declare-fun e!355782 () Bool)

(assert (=> b!620320 (=> (not res!399836) (not e!355782))))

(declare-datatypes ((array!37581 0))(
  ( (array!37582 (arr!18033 (Array (_ BitVec 32) (_ BitVec 64))) (size!18397 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37581)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!620320 (= res!399836 (validKeyInArray!0 (select (arr!18033 a!2986) j!136)))))

(declare-fun b!620321 () Bool)

(declare-fun e!355793 () Unit!20620)

(declare-fun Unit!20623 () Unit!20620)

(assert (=> b!620321 (= e!355793 Unit!20623)))

(declare-fun b!620322 () Bool)

(declare-fun e!355790 () Bool)

(declare-fun lt!286764 () array!37581)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!37581 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!620322 (= e!355790 (arrayContainsKey!0 lt!286764 (select (arr!18033 a!2986) j!136) index!984))))

(declare-fun res!399826 () Bool)

(assert (=> start!56148 (=> (not res!399826) (not e!355782))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56148 (= res!399826 (validMask!0 mask!3053))))

(assert (=> start!56148 e!355782))

(assert (=> start!56148 true))

(declare-fun array_inv!13807 (array!37581) Bool)

(assert (=> start!56148 (array_inv!13807 a!2986)))

(declare-fun b!620323 () Bool)

(declare-fun res!399829 () Bool)

(declare-fun e!355795 () Bool)

(assert (=> b!620323 (=> (not res!399829) (not e!355795))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!620323 (= res!399829 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18033 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!620324 () Bool)

(declare-fun res!399823 () Bool)

(assert (=> b!620324 (= res!399823 (arrayContainsKey!0 lt!286764 (select (arr!18033 a!2986) j!136) j!136))))

(assert (=> b!620324 (=> (not res!399823) (not e!355790))))

(declare-fun e!355792 () Bool)

(assert (=> b!620324 (= e!355792 e!355790)))

(declare-fun b!620325 () Bool)

(declare-fun res!399825 () Bool)

(assert (=> b!620325 (= res!399825 (bvsge j!136 index!984))))

(assert (=> b!620325 (=> res!399825 e!355792)))

(declare-fun e!355784 () Bool)

(assert (=> b!620325 (= e!355784 e!355792)))

(declare-fun b!620326 () Bool)

(declare-fun res!399821 () Bool)

(assert (=> b!620326 (=> (not res!399821) (not e!355782))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!620326 (= res!399821 (validKeyInArray!0 k!1786))))

(declare-fun b!620327 () Bool)

(assert (=> b!620327 false))

(declare-fun lt!286765 () Unit!20620)

(declare-datatypes ((List!12127 0))(
  ( (Nil!12124) (Cons!12123 (h!13168 (_ BitVec 64)) (t!18363 List!12127)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37581 (_ BitVec 64) (_ BitVec 32) List!12127) Unit!20620)

(assert (=> b!620327 (= lt!286765 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!286764 (select (arr!18033 a!2986) j!136) j!136 Nil!12124))))

(declare-fun arrayNoDuplicates!0 (array!37581 (_ BitVec 32) List!12127) Bool)

(assert (=> b!620327 (arrayNoDuplicates!0 lt!286764 j!136 Nil!12124)))

(declare-fun lt!286758 () Unit!20620)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37581 (_ BitVec 32) (_ BitVec 32)) Unit!20620)

(assert (=> b!620327 (= lt!286758 (lemmaNoDuplicateFromThenFromBigger!0 lt!286764 #b00000000000000000000000000000000 j!136))))

(assert (=> b!620327 (arrayNoDuplicates!0 lt!286764 #b00000000000000000000000000000000 Nil!12124)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun lt!286769 () Unit!20620)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37581 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12127) Unit!20620)

(assert (=> b!620327 (= lt!286769 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12124))))

(assert (=> b!620327 (arrayContainsKey!0 lt!286764 (select (arr!18033 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!286762 () Unit!20620)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37581 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20620)

(assert (=> b!620327 (= lt!286762 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!286764 (select (arr!18033 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!355786 () Unit!20620)

(declare-fun Unit!20624 () Unit!20620)

(assert (=> b!620327 (= e!355786 Unit!20624)))

(declare-fun b!620328 () Bool)

(declare-fun e!355787 () Bool)

(declare-datatypes ((SeekEntryResult!6480 0))(
  ( (MissingZero!6480 (index!28203 (_ BitVec 32))) (Found!6480 (index!28204 (_ BitVec 32))) (Intermediate!6480 (undefined!7292 Bool) (index!28205 (_ BitVec 32)) (x!57009 (_ BitVec 32))) (Undefined!6480) (MissingVacant!6480 (index!28206 (_ BitVec 32))) )
))
(declare-fun lt!286774 () SeekEntryResult!6480)

(declare-fun lt!286768 () SeekEntryResult!6480)

(assert (=> b!620328 (= e!355787 (= lt!286774 lt!286768))))

(declare-fun b!620329 () Bool)

(declare-fun Unit!20625 () Unit!20620)

(assert (=> b!620329 (= e!355791 Unit!20625)))

(declare-fun b!620330 () Bool)

(declare-fun e!355789 () Bool)

(assert (=> b!620330 (= e!355789 (not true))))

(declare-fun lt!286767 () Unit!20620)

(declare-fun e!355783 () Unit!20620)

(assert (=> b!620330 (= lt!286767 e!355783)))

(declare-fun c!70618 () Bool)

(declare-fun lt!286761 () SeekEntryResult!6480)

(assert (=> b!620330 (= c!70618 (= lt!286761 (Found!6480 index!984)))))

(declare-fun lt!286773 () Unit!20620)

(assert (=> b!620330 (= lt!286773 e!355791)))

(declare-fun c!70617 () Bool)

(assert (=> b!620330 (= c!70617 (= lt!286761 Undefined!6480))))

(declare-fun lt!286772 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37581 (_ BitVec 32)) SeekEntryResult!6480)

(assert (=> b!620330 (= lt!286761 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!286772 lt!286764 mask!3053))))

(assert (=> b!620330 e!355787))

(declare-fun res!399833 () Bool)

(assert (=> b!620330 (=> (not res!399833) (not e!355787))))

(declare-fun lt!286757 () (_ BitVec 32))

(assert (=> b!620330 (= res!399833 (= lt!286768 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!286757 vacantSpotIndex!68 lt!286772 lt!286764 mask!3053)))))

(assert (=> b!620330 (= lt!286768 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!286757 vacantSpotIndex!68 (select (arr!18033 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!620330 (= lt!286772 (select (store (arr!18033 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!286763 () Unit!20620)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37581 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20620)

(assert (=> b!620330 (= lt!286763 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!286757 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!620330 (= lt!286757 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!620331 () Bool)

(declare-fun res!399830 () Bool)

(assert (=> b!620331 (=> (not res!399830) (not e!355782))))

(assert (=> b!620331 (= res!399830 (and (= (size!18397 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18397 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18397 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!620332 () Bool)

(declare-fun res!399824 () Bool)

(assert (=> b!620332 (=> (not res!399824) (not e!355795))))

(assert (=> b!620332 (= res!399824 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12124))))

(declare-fun b!620333 () Bool)

(declare-fun e!355794 () Bool)

(assert (=> b!620333 (= e!355794 e!355789)))

(declare-fun res!399828 () Bool)

(assert (=> b!620333 (=> (not res!399828) (not e!355789))))

(assert (=> b!620333 (= res!399828 (and (= lt!286774 (Found!6480 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18033 a!2986) index!984) (select (arr!18033 a!2986) j!136))) (not (= (select (arr!18033 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!620333 (= lt!286774 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18033 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!620334 () Bool)

(declare-fun Unit!20626 () Unit!20620)

(assert (=> b!620334 (= e!355783 Unit!20626)))

(declare-fun res!399835 () Bool)

(assert (=> b!620334 (= res!399835 (= (select (store (arr!18033 a!2986) i!1108 k!1786) index!984) (select (arr!18033 a!2986) j!136)))))

(assert (=> b!620334 (=> (not res!399835) (not e!355784))))

(assert (=> b!620334 e!355784))

(declare-fun c!70616 () Bool)

(assert (=> b!620334 (= c!70616 (bvslt j!136 index!984))))

(declare-fun lt!286776 () Unit!20620)

(assert (=> b!620334 (= lt!286776 e!355786)))

(declare-fun c!70619 () Bool)

(assert (=> b!620334 (= c!70619 (bvslt index!984 j!136))))

(declare-fun lt!286766 () Unit!20620)

(assert (=> b!620334 (= lt!286766 e!355793)))

(assert (=> b!620334 false))

(declare-fun b!620335 () Bool)

(declare-fun Unit!20627 () Unit!20620)

(assert (=> b!620335 (= e!355783 Unit!20627)))

(declare-fun b!620336 () Bool)

(declare-fun res!399834 () Bool)

(assert (=> b!620336 (=> (not res!399834) (not e!355795))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37581 (_ BitVec 32)) Bool)

(assert (=> b!620336 (= res!399834 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!620337 () Bool)

(declare-fun res!399827 () Bool)

(assert (=> b!620337 (=> (not res!399827) (not e!355782))))

(assert (=> b!620337 (= res!399827 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!620338 () Bool)

(assert (=> b!620338 (= e!355795 e!355794)))

(declare-fun res!399831 () Bool)

(assert (=> b!620338 (=> (not res!399831) (not e!355794))))

(assert (=> b!620338 (= res!399831 (= (select (store (arr!18033 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!620338 (= lt!286764 (array!37582 (store (arr!18033 a!2986) i!1108 k!1786) (size!18397 a!2986)))))

(declare-fun b!620339 () Bool)

(assert (=> b!620339 (= e!355782 e!355795)))

(declare-fun res!399832 () Bool)

(assert (=> b!620339 (=> (not res!399832) (not e!355795))))

(declare-fun lt!286770 () SeekEntryResult!6480)

(assert (=> b!620339 (= res!399832 (or (= lt!286770 (MissingZero!6480 i!1108)) (= lt!286770 (MissingVacant!6480 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37581 (_ BitVec 32)) SeekEntryResult!6480)

(assert (=> b!620339 (= lt!286770 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!620340 () Bool)

(declare-fun e!355785 () Bool)

(assert (=> b!620340 (= e!355785 (arrayContainsKey!0 lt!286764 (select (arr!18033 a!2986) j!136) index!984))))

(declare-fun b!620341 () Bool)

(declare-fun Unit!20628 () Unit!20620)

(assert (=> b!620341 (= e!355786 Unit!20628)))

(declare-fun b!620342 () Bool)

(assert (=> b!620342 false))

(declare-fun lt!286759 () Unit!20620)

(assert (=> b!620342 (= lt!286759 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!286764 (select (arr!18033 a!2986) j!136) index!984 Nil!12124))))

(assert (=> b!620342 (arrayNoDuplicates!0 lt!286764 index!984 Nil!12124)))

(declare-fun lt!286775 () Unit!20620)

(assert (=> b!620342 (= lt!286775 (lemmaNoDuplicateFromThenFromBigger!0 lt!286764 #b00000000000000000000000000000000 index!984))))

(assert (=> b!620342 (arrayNoDuplicates!0 lt!286764 #b00000000000000000000000000000000 Nil!12124)))

(declare-fun lt!286771 () Unit!20620)

(assert (=> b!620342 (= lt!286771 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12124))))

(assert (=> b!620342 (arrayContainsKey!0 lt!286764 (select (arr!18033 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!286760 () Unit!20620)

(assert (=> b!620342 (= lt!286760 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!286764 (select (arr!18033 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!620342 e!355785))

(declare-fun res!399822 () Bool)

(assert (=> b!620342 (=> (not res!399822) (not e!355785))))

(assert (=> b!620342 (= res!399822 (arrayContainsKey!0 lt!286764 (select (arr!18033 a!2986) j!136) j!136))))

(declare-fun Unit!20629 () Unit!20620)

(assert (=> b!620342 (= e!355793 Unit!20629)))

(assert (= (and start!56148 res!399826) b!620331))

(assert (= (and b!620331 res!399830) b!620320))

(assert (= (and b!620320 res!399836) b!620326))

(assert (= (and b!620326 res!399821) b!620337))

(assert (= (and b!620337 res!399827) b!620339))

(assert (= (and b!620339 res!399832) b!620336))

(assert (= (and b!620336 res!399834) b!620332))

(assert (= (and b!620332 res!399824) b!620323))

(assert (= (and b!620323 res!399829) b!620338))

(assert (= (and b!620338 res!399831) b!620333))

(assert (= (and b!620333 res!399828) b!620330))

(assert (= (and b!620330 res!399833) b!620328))

(assert (= (and b!620330 c!70617) b!620319))

(assert (= (and b!620330 (not c!70617)) b!620329))

(assert (= (and b!620330 c!70618) b!620334))

(assert (= (and b!620330 (not c!70618)) b!620335))

(assert (= (and b!620334 res!399835) b!620325))

(assert (= (and b!620325 (not res!399825)) b!620324))

(assert (= (and b!620324 res!399823) b!620322))

(assert (= (and b!620334 c!70616) b!620327))

(assert (= (and b!620334 (not c!70616)) b!620341))

(assert (= (and b!620334 c!70619) b!620342))

(assert (= (and b!620334 (not c!70619)) b!620321))

(assert (= (and b!620342 res!399822) b!620340))

(declare-fun m!596289 () Bool)

(assert (=> b!620340 m!596289))

(assert (=> b!620340 m!596289))

(declare-fun m!596291 () Bool)

(assert (=> b!620340 m!596291))

(declare-fun m!596293 () Bool)

(assert (=> b!620323 m!596293))

(assert (=> b!620320 m!596289))

(assert (=> b!620320 m!596289))

(declare-fun m!596295 () Bool)

(assert (=> b!620320 m!596295))

(declare-fun m!596297 () Bool)

(assert (=> b!620334 m!596297))

(declare-fun m!596299 () Bool)

(assert (=> b!620334 m!596299))

(assert (=> b!620334 m!596289))

(declare-fun m!596301 () Bool)

(assert (=> b!620339 m!596301))

(assert (=> b!620327 m!596289))

(declare-fun m!596303 () Bool)

(assert (=> b!620327 m!596303))

(assert (=> b!620327 m!596289))

(assert (=> b!620327 m!596289))

(declare-fun m!596305 () Bool)

(assert (=> b!620327 m!596305))

(declare-fun m!596307 () Bool)

(assert (=> b!620327 m!596307))

(assert (=> b!620327 m!596289))

(declare-fun m!596309 () Bool)

(assert (=> b!620327 m!596309))

(declare-fun m!596311 () Bool)

(assert (=> b!620327 m!596311))

(declare-fun m!596313 () Bool)

(assert (=> b!620327 m!596313))

(declare-fun m!596315 () Bool)

(assert (=> b!620327 m!596315))

(declare-fun m!596317 () Bool)

(assert (=> b!620336 m!596317))

(declare-fun m!596319 () Bool)

(assert (=> b!620342 m!596319))

(assert (=> b!620342 m!596289))

(assert (=> b!620342 m!596289))

(declare-fun m!596321 () Bool)

(assert (=> b!620342 m!596321))

(assert (=> b!620342 m!596289))

(declare-fun m!596323 () Bool)

(assert (=> b!620342 m!596323))

(assert (=> b!620342 m!596307))

(assert (=> b!620342 m!596289))

(declare-fun m!596325 () Bool)

(assert (=> b!620342 m!596325))

(assert (=> b!620342 m!596289))

(declare-fun m!596327 () Bool)

(assert (=> b!620342 m!596327))

(declare-fun m!596329 () Bool)

(assert (=> b!620342 m!596329))

(assert (=> b!620342 m!596311))

(assert (=> b!620324 m!596289))

(assert (=> b!620324 m!596289))

(assert (=> b!620324 m!596323))

(declare-fun m!596331 () Bool)

(assert (=> b!620337 m!596331))

(declare-fun m!596333 () Bool)

(assert (=> b!620333 m!596333))

(assert (=> b!620333 m!596289))

(assert (=> b!620333 m!596289))

(declare-fun m!596335 () Bool)

(assert (=> b!620333 m!596335))

(declare-fun m!596337 () Bool)

(assert (=> start!56148 m!596337))

(declare-fun m!596339 () Bool)

(assert (=> start!56148 m!596339))

(declare-fun m!596341 () Bool)

(assert (=> b!620330 m!596341))

(declare-fun m!596343 () Bool)

(assert (=> b!620330 m!596343))

(assert (=> b!620330 m!596289))

(assert (=> b!620330 m!596297))

(assert (=> b!620330 m!596289))

(declare-fun m!596345 () Bool)

(assert (=> b!620330 m!596345))

(declare-fun m!596347 () Bool)

(assert (=> b!620330 m!596347))

(declare-fun m!596349 () Bool)

(assert (=> b!620330 m!596349))

(declare-fun m!596351 () Bool)

(assert (=> b!620330 m!596351))

(declare-fun m!596353 () Bool)

(assert (=> b!620326 m!596353))

(declare-fun m!596355 () Bool)

(assert (=> b!620332 m!596355))

(assert (=> b!620338 m!596297))

(declare-fun m!596357 () Bool)

(assert (=> b!620338 m!596357))

(assert (=> b!620322 m!596289))

(assert (=> b!620322 m!596289))

(assert (=> b!620322 m!596291))

(push 1)


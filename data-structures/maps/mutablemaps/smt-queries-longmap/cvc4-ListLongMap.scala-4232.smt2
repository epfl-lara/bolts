; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58348 () Bool)

(assert start!58348)

(declare-fun b!643993 () Bool)

(declare-fun res!417282 () Bool)

(declare-fun e!368961 () Bool)

(assert (=> b!643993 (=> (not res!417282) (not e!368961))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!643993 (= res!417282 (validKeyInArray!0 k!1786))))

(declare-fun b!643994 () Bool)

(declare-fun e!368971 () Bool)

(declare-fun e!368969 () Bool)

(assert (=> b!643994 (= e!368971 (not e!368969))))

(declare-fun res!417291 () Bool)

(assert (=> b!643994 (=> res!417291 e!368969)))

(declare-datatypes ((SeekEntryResult!6857 0))(
  ( (MissingZero!6857 (index!29759 (_ BitVec 32))) (Found!6857 (index!29760 (_ BitVec 32))) (Intermediate!6857 (undefined!7669 Bool) (index!29761 (_ BitVec 32)) (x!58554 (_ BitVec 32))) (Undefined!6857) (MissingVacant!6857 (index!29762 (_ BitVec 32))) )
))
(declare-fun lt!298500 () SeekEntryResult!6857)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!643994 (= res!417291 (not (= lt!298500 (Found!6857 index!984))))))

(declare-datatypes ((Unit!21814 0))(
  ( (Unit!21815) )
))
(declare-fun lt!298499 () Unit!21814)

(declare-fun e!368967 () Unit!21814)

(assert (=> b!643994 (= lt!298499 e!368967)))

(declare-fun c!73727 () Bool)

(assert (=> b!643994 (= c!73727 (= lt!298500 Undefined!6857))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!298506 () (_ BitVec 64))

(declare-datatypes ((array!38401 0))(
  ( (array!38402 (arr!18410 (Array (_ BitVec 32) (_ BitVec 64))) (size!18774 (_ BitVec 32))) )
))
(declare-fun lt!298505 () array!38401)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38401 (_ BitVec 32)) SeekEntryResult!6857)

(assert (=> b!643994 (= lt!298500 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!298506 lt!298505 mask!3053))))

(declare-fun e!368966 () Bool)

(assert (=> b!643994 e!368966))

(declare-fun res!417285 () Bool)

(assert (=> b!643994 (=> (not res!417285) (not e!368966))))

(declare-fun lt!298495 () SeekEntryResult!6857)

(declare-fun lt!298504 () (_ BitVec 32))

(assert (=> b!643994 (= res!417285 (= lt!298495 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!298504 vacantSpotIndex!68 lt!298506 lt!298505 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun a!2986 () array!38401)

(assert (=> b!643994 (= lt!298495 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!298504 vacantSpotIndex!68 (select (arr!18410 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!643994 (= lt!298506 (select (store (arr!18410 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!298503 () Unit!21814)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38401 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21814)

(assert (=> b!643994 (= lt!298503 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!298504 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!643994 (= lt!298504 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!643995 () Bool)

(declare-fun res!417276 () Bool)

(declare-fun e!368965 () Bool)

(assert (=> b!643995 (=> (not res!417276) (not e!368965))))

(declare-datatypes ((List!12504 0))(
  ( (Nil!12501) (Cons!12500 (h!13545 (_ BitVec 64)) (t!18740 List!12504)) )
))
(declare-fun arrayNoDuplicates!0 (array!38401 (_ BitVec 32) List!12504) Bool)

(assert (=> b!643995 (= res!417276 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12501))))

(declare-fun res!417284 () Bool)

(assert (=> start!58348 (=> (not res!417284) (not e!368961))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58348 (= res!417284 (validMask!0 mask!3053))))

(assert (=> start!58348 e!368961))

(assert (=> start!58348 true))

(declare-fun array_inv!14184 (array!38401) Bool)

(assert (=> start!58348 (array_inv!14184 a!2986)))

(declare-fun b!643996 () Bool)

(declare-fun Unit!21816 () Unit!21814)

(assert (=> b!643996 (= e!368967 Unit!21816)))

(declare-fun b!643997 () Bool)

(declare-fun res!417286 () Bool)

(assert (=> b!643997 (=> (not res!417286) (not e!368965))))

(assert (=> b!643997 (= res!417286 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18410 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!368964 () Bool)

(declare-fun b!643998 () Bool)

(declare-fun arrayContainsKey!0 (array!38401 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!643998 (= e!368964 (arrayContainsKey!0 lt!298505 (select (arr!18410 a!2986) j!136) index!984))))

(declare-fun b!643999 () Bool)

(declare-fun e!368957 () Bool)

(assert (=> b!643999 (= e!368957 (bvsge (bvadd #b00000000000000000000000000000001 index!984) #b00000000000000000000000000000000))))

(assert (=> b!643999 e!368964))

(declare-fun res!417290 () Bool)

(assert (=> b!643999 (=> (not res!417290) (not e!368964))))

(assert (=> b!643999 (= res!417290 (arrayContainsKey!0 lt!298505 (select (arr!18410 a!2986) j!136) j!136))))

(declare-fun b!644000 () Bool)

(declare-fun res!417287 () Bool)

(assert (=> b!644000 (=> (not res!417287) (not e!368961))))

(assert (=> b!644000 (= res!417287 (and (= (size!18774 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18774 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18774 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!644001 () Bool)

(declare-fun res!417289 () Bool)

(assert (=> b!644001 (=> (not res!417289) (not e!368965))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38401 (_ BitVec 32)) Bool)

(assert (=> b!644001 (= res!417289 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!644002 () Bool)

(declare-fun e!368958 () Bool)

(declare-fun e!368962 () Bool)

(assert (=> b!644002 (= e!368958 e!368962)))

(declare-fun res!417281 () Bool)

(assert (=> b!644002 (=> (not res!417281) (not e!368962))))

(assert (=> b!644002 (= res!417281 (arrayContainsKey!0 lt!298505 (select (arr!18410 a!2986) j!136) j!136))))

(declare-fun b!644003 () Bool)

(declare-fun e!368960 () Bool)

(assert (=> b!644003 (= e!368960 e!368971)))

(declare-fun res!417292 () Bool)

(assert (=> b!644003 (=> (not res!417292) (not e!368971))))

(declare-fun lt!298502 () SeekEntryResult!6857)

(assert (=> b!644003 (= res!417292 (and (= lt!298502 (Found!6857 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18410 a!2986) index!984) (select (arr!18410 a!2986) j!136))) (not (= (select (arr!18410 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!644003 (= lt!298502 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18410 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!644004 () Bool)

(declare-fun res!417277 () Bool)

(assert (=> b!644004 (=> (not res!417277) (not e!368961))))

(assert (=> b!644004 (= res!417277 (validKeyInArray!0 (select (arr!18410 a!2986) j!136)))))

(declare-fun b!644005 () Bool)

(assert (=> b!644005 (= e!368966 (= lt!298502 lt!298495))))

(declare-fun b!644006 () Bool)

(declare-fun e!368968 () Unit!21814)

(declare-fun Unit!21817 () Unit!21814)

(assert (=> b!644006 (= e!368968 Unit!21817)))

(declare-fun lt!298494 () Unit!21814)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38401 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21814)

(assert (=> b!644006 (= lt!298494 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!298505 (select (arr!18410 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!644006 (arrayContainsKey!0 lt!298505 (select (arr!18410 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!298493 () Unit!21814)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38401 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12504) Unit!21814)

(assert (=> b!644006 (= lt!298493 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12501))))

(assert (=> b!644006 (arrayNoDuplicates!0 lt!298505 #b00000000000000000000000000000000 Nil!12501)))

(declare-fun lt!298496 () Unit!21814)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38401 (_ BitVec 32) (_ BitVec 32)) Unit!21814)

(assert (=> b!644006 (= lt!298496 (lemmaNoDuplicateFromThenFromBigger!0 lt!298505 #b00000000000000000000000000000000 j!136))))

(assert (=> b!644006 (arrayNoDuplicates!0 lt!298505 j!136 Nil!12501)))

(declare-fun lt!298498 () Unit!21814)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38401 (_ BitVec 64) (_ BitVec 32) List!12504) Unit!21814)

(assert (=> b!644006 (= lt!298498 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!298505 (select (arr!18410 a!2986) j!136) j!136 Nil!12501))))

(assert (=> b!644006 false))

(declare-fun b!644007 () Bool)

(assert (=> b!644007 (= e!368962 (arrayContainsKey!0 lt!298505 (select (arr!18410 a!2986) j!136) index!984))))

(declare-fun b!644008 () Bool)

(declare-fun res!417275 () Bool)

(assert (=> b!644008 (=> (not res!417275) (not e!368961))))

(assert (=> b!644008 (= res!417275 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!644009 () Bool)

(declare-fun e!368970 () Bool)

(assert (=> b!644009 (= e!368970 e!368958)))

(declare-fun res!417280 () Bool)

(assert (=> b!644009 (=> res!417280 e!368958)))

(declare-fun lt!298492 () (_ BitVec 64))

(assert (=> b!644009 (= res!417280 (or (not (= (select (arr!18410 a!2986) j!136) lt!298506)) (not (= (select (arr!18410 a!2986) j!136) lt!298492)) (bvsge j!136 index!984)))))

(declare-fun b!644010 () Bool)

(declare-fun Unit!21818 () Unit!21814)

(assert (=> b!644010 (= e!368968 Unit!21818)))

(declare-fun b!644011 () Bool)

(assert (=> b!644011 (= e!368961 e!368965)))

(declare-fun res!417278 () Bool)

(assert (=> b!644011 (=> (not res!417278) (not e!368965))))

(declare-fun lt!298497 () SeekEntryResult!6857)

(assert (=> b!644011 (= res!417278 (or (= lt!298497 (MissingZero!6857 i!1108)) (= lt!298497 (MissingVacant!6857 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38401 (_ BitVec 32)) SeekEntryResult!6857)

(assert (=> b!644011 (= lt!298497 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!644012 () Bool)

(declare-fun Unit!21819 () Unit!21814)

(assert (=> b!644012 (= e!368967 Unit!21819)))

(assert (=> b!644012 false))

(declare-fun b!644013 () Bool)

(declare-fun e!368963 () Bool)

(assert (=> b!644013 (= e!368963 e!368957)))

(declare-fun res!417283 () Bool)

(assert (=> b!644013 (=> res!417283 e!368957)))

(assert (=> b!644013 (= res!417283 (bvsge index!984 j!136))))

(declare-fun lt!298501 () Unit!21814)

(assert (=> b!644013 (= lt!298501 e!368968)))

(declare-fun c!73726 () Bool)

(assert (=> b!644013 (= c!73726 (bvslt j!136 index!984))))

(declare-fun b!644014 () Bool)

(assert (=> b!644014 (= e!368965 e!368960)))

(declare-fun res!417293 () Bool)

(assert (=> b!644014 (=> (not res!417293) (not e!368960))))

(assert (=> b!644014 (= res!417293 (= (select (store (arr!18410 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!644014 (= lt!298505 (array!38402 (store (arr!18410 a!2986) i!1108 k!1786) (size!18774 a!2986)))))

(declare-fun b!644015 () Bool)

(assert (=> b!644015 (= e!368969 e!368963)))

(declare-fun res!417279 () Bool)

(assert (=> b!644015 (=> res!417279 e!368963)))

(assert (=> b!644015 (= res!417279 (or (not (= (select (arr!18410 a!2986) j!136) lt!298506)) (not (= (select (arr!18410 a!2986) j!136) lt!298492))))))

(assert (=> b!644015 e!368970))

(declare-fun res!417288 () Bool)

(assert (=> b!644015 (=> (not res!417288) (not e!368970))))

(assert (=> b!644015 (= res!417288 (= lt!298492 (select (arr!18410 a!2986) j!136)))))

(assert (=> b!644015 (= lt!298492 (select (store (arr!18410 a!2986) i!1108 k!1786) index!984))))

(assert (= (and start!58348 res!417284) b!644000))

(assert (= (and b!644000 res!417287) b!644004))

(assert (= (and b!644004 res!417277) b!643993))

(assert (= (and b!643993 res!417282) b!644008))

(assert (= (and b!644008 res!417275) b!644011))

(assert (= (and b!644011 res!417278) b!644001))

(assert (= (and b!644001 res!417289) b!643995))

(assert (= (and b!643995 res!417276) b!643997))

(assert (= (and b!643997 res!417286) b!644014))

(assert (= (and b!644014 res!417293) b!644003))

(assert (= (and b!644003 res!417292) b!643994))

(assert (= (and b!643994 res!417285) b!644005))

(assert (= (and b!643994 c!73727) b!644012))

(assert (= (and b!643994 (not c!73727)) b!643996))

(assert (= (and b!643994 (not res!417291)) b!644015))

(assert (= (and b!644015 res!417288) b!644009))

(assert (= (and b!644009 (not res!417280)) b!644002))

(assert (= (and b!644002 res!417281) b!644007))

(assert (= (and b!644015 (not res!417279)) b!644013))

(assert (= (and b!644013 c!73726) b!644006))

(assert (= (and b!644013 (not c!73726)) b!644010))

(assert (= (and b!644013 (not res!417283)) b!643999))

(assert (= (and b!643999 res!417290) b!643998))

(declare-fun m!617703 () Bool)

(assert (=> b!644002 m!617703))

(assert (=> b!644002 m!617703))

(declare-fun m!617705 () Bool)

(assert (=> b!644002 m!617705))

(declare-fun m!617707 () Bool)

(assert (=> b!644014 m!617707))

(declare-fun m!617709 () Bool)

(assert (=> b!644014 m!617709))

(assert (=> b!644004 m!617703))

(assert (=> b!644004 m!617703))

(declare-fun m!617711 () Bool)

(assert (=> b!644004 m!617711))

(declare-fun m!617713 () Bool)

(assert (=> b!643993 m!617713))

(declare-fun m!617715 () Bool)

(assert (=> b!643997 m!617715))

(assert (=> b!644009 m!617703))

(declare-fun m!617717 () Bool)

(assert (=> start!58348 m!617717))

(declare-fun m!617719 () Bool)

(assert (=> start!58348 m!617719))

(declare-fun m!617721 () Bool)

(assert (=> b!643995 m!617721))

(declare-fun m!617723 () Bool)

(assert (=> b!643994 m!617723))

(declare-fun m!617725 () Bool)

(assert (=> b!643994 m!617725))

(assert (=> b!643994 m!617703))

(assert (=> b!643994 m!617707))

(assert (=> b!643994 m!617703))

(declare-fun m!617727 () Bool)

(assert (=> b!643994 m!617727))

(declare-fun m!617729 () Bool)

(assert (=> b!643994 m!617729))

(declare-fun m!617731 () Bool)

(assert (=> b!643994 m!617731))

(declare-fun m!617733 () Bool)

(assert (=> b!643994 m!617733))

(assert (=> b!643998 m!617703))

(assert (=> b!643998 m!617703))

(declare-fun m!617735 () Bool)

(assert (=> b!643998 m!617735))

(assert (=> b!644007 m!617703))

(assert (=> b!644007 m!617703))

(assert (=> b!644007 m!617735))

(assert (=> b!643999 m!617703))

(assert (=> b!643999 m!617703))

(assert (=> b!643999 m!617705))

(declare-fun m!617737 () Bool)

(assert (=> b!644001 m!617737))

(assert (=> b!644006 m!617703))

(declare-fun m!617739 () Bool)

(assert (=> b!644006 m!617739))

(assert (=> b!644006 m!617703))

(assert (=> b!644006 m!617703))

(declare-fun m!617741 () Bool)

(assert (=> b!644006 m!617741))

(declare-fun m!617743 () Bool)

(assert (=> b!644006 m!617743))

(assert (=> b!644006 m!617703))

(declare-fun m!617745 () Bool)

(assert (=> b!644006 m!617745))

(declare-fun m!617747 () Bool)

(assert (=> b!644006 m!617747))

(declare-fun m!617749 () Bool)

(assert (=> b!644006 m!617749))

(declare-fun m!617751 () Bool)

(assert (=> b!644006 m!617751))

(declare-fun m!617753 () Bool)

(assert (=> b!644003 m!617753))

(assert (=> b!644003 m!617703))

(assert (=> b!644003 m!617703))

(declare-fun m!617755 () Bool)

(assert (=> b!644003 m!617755))

(declare-fun m!617757 () Bool)

(assert (=> b!644008 m!617757))

(declare-fun m!617759 () Bool)

(assert (=> b!644011 m!617759))

(assert (=> b!644015 m!617703))

(assert (=> b!644015 m!617707))

(declare-fun m!617761 () Bool)

(assert (=> b!644015 m!617761))

(push 1)


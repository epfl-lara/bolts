; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56138 () Bool)

(assert start!56138)

(declare-fun b!619959 () Bool)

(declare-fun res!399582 () Bool)

(declare-fun e!355578 () Bool)

(assert (=> b!619959 (=> (not res!399582) (not e!355578))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!37571 0))(
  ( (array!37572 (arr!18028 (Array (_ BitVec 32) (_ BitVec 64))) (size!18392 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37571)

(assert (=> b!619959 (= res!399582 (and (= (size!18392 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18392 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18392 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!619960 () Bool)

(declare-datatypes ((Unit!20570 0))(
  ( (Unit!20571) )
))
(declare-fun e!355581 () Unit!20570)

(declare-fun Unit!20572 () Unit!20570)

(assert (=> b!619960 (= e!355581 Unit!20572)))

(declare-fun b!619961 () Bool)

(declare-fun res!399586 () Bool)

(declare-fun e!355574 () Bool)

(assert (=> b!619961 (=> (not res!399586) (not e!355574))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37571 (_ BitVec 32)) Bool)

(assert (=> b!619961 (= res!399586 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!619963 () Bool)

(declare-fun e!355573 () Bool)

(assert (=> b!619963 (= e!355573 (not true))))

(declare-fun lt!286458 () Unit!20570)

(declare-fun e!355584 () Unit!20570)

(assert (=> b!619963 (= lt!286458 e!355584)))

(declare-fun c!70557 () Bool)

(declare-datatypes ((SeekEntryResult!6475 0))(
  ( (MissingZero!6475 (index!28183 (_ BitVec 32))) (Found!6475 (index!28184 (_ BitVec 32))) (Intermediate!6475 (undefined!7287 Bool) (index!28185 (_ BitVec 32)) (x!56988 (_ BitVec 32))) (Undefined!6475) (MissingVacant!6475 (index!28186 (_ BitVec 32))) )
))
(declare-fun lt!286464 () SeekEntryResult!6475)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!619963 (= c!70557 (= lt!286464 (Found!6475 index!984)))))

(declare-fun lt!286469 () Unit!20570)

(declare-fun e!355583 () Unit!20570)

(assert (=> b!619963 (= lt!286469 e!355583)))

(declare-fun c!70558 () Bool)

(assert (=> b!619963 (= c!70558 (= lt!286464 Undefined!6475))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!286463 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!286457 () array!37571)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37571 (_ BitVec 32)) SeekEntryResult!6475)

(assert (=> b!619963 (= lt!286464 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!286463 lt!286457 mask!3053))))

(declare-fun e!355577 () Bool)

(assert (=> b!619963 e!355577))

(declare-fun res!399594 () Bool)

(assert (=> b!619963 (=> (not res!399594) (not e!355577))))

(declare-fun lt!286472 () (_ BitVec 32))

(declare-fun lt!286459 () SeekEntryResult!6475)

(assert (=> b!619963 (= res!399594 (= lt!286459 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!286472 vacantSpotIndex!68 lt!286463 lt!286457 mask!3053)))))

(assert (=> b!619963 (= lt!286459 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!286472 vacantSpotIndex!68 (select (arr!18028 a!2986) j!136) a!2986 mask!3053))))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!619963 (= lt!286463 (select (store (arr!18028 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!286475 () Unit!20570)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37571 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20570)

(assert (=> b!619963 (= lt!286475 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!286472 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!619963 (= lt!286472 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!619964 () Bool)

(declare-fun e!355579 () Bool)

(assert (=> b!619964 (= e!355574 e!355579)))

(declare-fun res!399588 () Bool)

(assert (=> b!619964 (=> (not res!399588) (not e!355579))))

(assert (=> b!619964 (= res!399588 (= (select (store (arr!18028 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!619964 (= lt!286457 (array!37572 (store (arr!18028 a!2986) i!1108 k0!1786) (size!18392 a!2986)))))

(declare-fun b!619965 () Bool)

(declare-fun e!355585 () Unit!20570)

(declare-fun Unit!20573 () Unit!20570)

(assert (=> b!619965 (= e!355585 Unit!20573)))

(declare-fun b!619966 () Bool)

(declare-fun res!399585 () Bool)

(assert (=> b!619966 (=> (not res!399585) (not e!355574))))

(declare-datatypes ((List!12122 0))(
  ( (Nil!12119) (Cons!12118 (h!13163 (_ BitVec 64)) (t!18358 List!12122)) )
))
(declare-fun arrayNoDuplicates!0 (array!37571 (_ BitVec 32) List!12122) Bool)

(assert (=> b!619966 (= res!399585 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12119))))

(declare-fun b!619967 () Bool)

(declare-fun res!399584 () Bool)

(assert (=> b!619967 (=> (not res!399584) (not e!355574))))

(assert (=> b!619967 (= res!399584 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18028 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!619968 () Bool)

(declare-fun Unit!20574 () Unit!20570)

(assert (=> b!619968 (= e!355584 Unit!20574)))

(declare-fun b!619969 () Bool)

(declare-fun Unit!20575 () Unit!20570)

(assert (=> b!619969 (= e!355583 Unit!20575)))

(declare-fun e!355572 () Bool)

(declare-fun b!619970 () Bool)

(declare-fun arrayContainsKey!0 (array!37571 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!619970 (= e!355572 (arrayContainsKey!0 lt!286457 (select (arr!18028 a!2986) j!136) index!984))))

(declare-fun b!619971 () Bool)

(declare-fun Unit!20576 () Unit!20570)

(assert (=> b!619971 (= e!355583 Unit!20576)))

(assert (=> b!619971 false))

(declare-fun b!619972 () Bool)

(declare-fun res!399581 () Bool)

(assert (=> b!619972 (=> (not res!399581) (not e!355578))))

(assert (=> b!619972 (= res!399581 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun res!399587 () Bool)

(assert (=> start!56138 (=> (not res!399587) (not e!355578))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56138 (= res!399587 (validMask!0 mask!3053))))

(assert (=> start!56138 e!355578))

(assert (=> start!56138 true))

(declare-fun array_inv!13802 (array!37571) Bool)

(assert (=> start!56138 (array_inv!13802 a!2986)))

(declare-fun res!399583 () Bool)

(declare-fun b!619962 () Bool)

(assert (=> b!619962 (= res!399583 (arrayContainsKey!0 lt!286457 (select (arr!18028 a!2986) j!136) j!136))))

(declare-fun e!355575 () Bool)

(assert (=> b!619962 (=> (not res!399583) (not e!355575))))

(declare-fun e!355582 () Bool)

(assert (=> b!619962 (= e!355582 e!355575)))

(declare-fun b!619973 () Bool)

(assert (=> b!619973 (= e!355578 e!355574)))

(declare-fun res!399589 () Bool)

(assert (=> b!619973 (=> (not res!399589) (not e!355574))))

(declare-fun lt!286467 () SeekEntryResult!6475)

(assert (=> b!619973 (= res!399589 (or (= lt!286467 (MissingZero!6475 i!1108)) (= lt!286467 (MissingVacant!6475 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37571 (_ BitVec 32)) SeekEntryResult!6475)

(assert (=> b!619973 (= lt!286467 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!619974 () Bool)

(assert (=> b!619974 false))

(declare-fun lt!286473 () Unit!20570)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37571 (_ BitVec 64) (_ BitVec 32) List!12122) Unit!20570)

(assert (=> b!619974 (= lt!286473 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!286457 (select (arr!18028 a!2986) j!136) j!136 Nil!12119))))

(assert (=> b!619974 (arrayNoDuplicates!0 lt!286457 j!136 Nil!12119)))

(declare-fun lt!286468 () Unit!20570)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37571 (_ BitVec 32) (_ BitVec 32)) Unit!20570)

(assert (=> b!619974 (= lt!286468 (lemmaNoDuplicateFromThenFromBigger!0 lt!286457 #b00000000000000000000000000000000 j!136))))

(assert (=> b!619974 (arrayNoDuplicates!0 lt!286457 #b00000000000000000000000000000000 Nil!12119)))

(declare-fun lt!286461 () Unit!20570)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37571 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12122) Unit!20570)

(assert (=> b!619974 (= lt!286461 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12119))))

(assert (=> b!619974 (arrayContainsKey!0 lt!286457 (select (arr!18028 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!286470 () Unit!20570)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37571 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20570)

(assert (=> b!619974 (= lt!286470 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!286457 (select (arr!18028 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20577 () Unit!20570)

(assert (=> b!619974 (= e!355581 Unit!20577)))

(declare-fun b!619975 () Bool)

(declare-fun res!399590 () Bool)

(assert (=> b!619975 (=> (not res!399590) (not e!355578))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!619975 (= res!399590 (validKeyInArray!0 k0!1786))))

(declare-fun b!619976 () Bool)

(declare-fun res!399595 () Bool)

(assert (=> b!619976 (=> (not res!399595) (not e!355578))))

(assert (=> b!619976 (= res!399595 (validKeyInArray!0 (select (arr!18028 a!2986) j!136)))))

(declare-fun b!619977 () Bool)

(declare-fun lt!286466 () SeekEntryResult!6475)

(assert (=> b!619977 (= e!355577 (= lt!286466 lt!286459))))

(declare-fun b!619978 () Bool)

(assert (=> b!619978 false))

(declare-fun lt!286476 () Unit!20570)

(assert (=> b!619978 (= lt!286476 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!286457 (select (arr!18028 a!2986) j!136) index!984 Nil!12119))))

(assert (=> b!619978 (arrayNoDuplicates!0 lt!286457 index!984 Nil!12119)))

(declare-fun lt!286462 () Unit!20570)

(assert (=> b!619978 (= lt!286462 (lemmaNoDuplicateFromThenFromBigger!0 lt!286457 #b00000000000000000000000000000000 index!984))))

(assert (=> b!619978 (arrayNoDuplicates!0 lt!286457 #b00000000000000000000000000000000 Nil!12119)))

(declare-fun lt!286471 () Unit!20570)

(assert (=> b!619978 (= lt!286471 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12119))))

(assert (=> b!619978 (arrayContainsKey!0 lt!286457 (select (arr!18028 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!286465 () Unit!20570)

(assert (=> b!619978 (= lt!286465 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!286457 (select (arr!18028 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!619978 e!355572))

(declare-fun res!399592 () Bool)

(assert (=> b!619978 (=> (not res!399592) (not e!355572))))

(assert (=> b!619978 (= res!399592 (arrayContainsKey!0 lt!286457 (select (arr!18028 a!2986) j!136) j!136))))

(declare-fun Unit!20578 () Unit!20570)

(assert (=> b!619978 (= e!355585 Unit!20578)))

(declare-fun b!619979 () Bool)

(assert (=> b!619979 (= e!355575 (arrayContainsKey!0 lt!286457 (select (arr!18028 a!2986) j!136) index!984))))

(declare-fun b!619980 () Bool)

(declare-fun Unit!20579 () Unit!20570)

(assert (=> b!619980 (= e!355584 Unit!20579)))

(declare-fun res!399593 () Bool)

(assert (=> b!619980 (= res!399593 (= (select (store (arr!18028 a!2986) i!1108 k0!1786) index!984) (select (arr!18028 a!2986) j!136)))))

(declare-fun e!355576 () Bool)

(assert (=> b!619980 (=> (not res!399593) (not e!355576))))

(assert (=> b!619980 e!355576))

(declare-fun c!70556 () Bool)

(assert (=> b!619980 (= c!70556 (bvslt j!136 index!984))))

(declare-fun lt!286460 () Unit!20570)

(assert (=> b!619980 (= lt!286460 e!355581)))

(declare-fun c!70559 () Bool)

(assert (=> b!619980 (= c!70559 (bvslt index!984 j!136))))

(declare-fun lt!286474 () Unit!20570)

(assert (=> b!619980 (= lt!286474 e!355585)))

(assert (=> b!619980 false))

(declare-fun b!619981 () Bool)

(assert (=> b!619981 (= e!355579 e!355573)))

(declare-fun res!399596 () Bool)

(assert (=> b!619981 (=> (not res!399596) (not e!355573))))

(assert (=> b!619981 (= res!399596 (and (= lt!286466 (Found!6475 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18028 a!2986) index!984) (select (arr!18028 a!2986) j!136))) (not (= (select (arr!18028 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!619981 (= lt!286466 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18028 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!619982 () Bool)

(declare-fun res!399591 () Bool)

(assert (=> b!619982 (= res!399591 (bvsge j!136 index!984))))

(assert (=> b!619982 (=> res!399591 e!355582)))

(assert (=> b!619982 (= e!355576 e!355582)))

(assert (= (and start!56138 res!399587) b!619959))

(assert (= (and b!619959 res!399582) b!619976))

(assert (= (and b!619976 res!399595) b!619975))

(assert (= (and b!619975 res!399590) b!619972))

(assert (= (and b!619972 res!399581) b!619973))

(assert (= (and b!619973 res!399589) b!619961))

(assert (= (and b!619961 res!399586) b!619966))

(assert (= (and b!619966 res!399585) b!619967))

(assert (= (and b!619967 res!399584) b!619964))

(assert (= (and b!619964 res!399588) b!619981))

(assert (= (and b!619981 res!399596) b!619963))

(assert (= (and b!619963 res!399594) b!619977))

(assert (= (and b!619963 c!70558) b!619971))

(assert (= (and b!619963 (not c!70558)) b!619969))

(assert (= (and b!619963 c!70557) b!619980))

(assert (= (and b!619963 (not c!70557)) b!619968))

(assert (= (and b!619980 res!399593) b!619982))

(assert (= (and b!619982 (not res!399591)) b!619962))

(assert (= (and b!619962 res!399583) b!619979))

(assert (= (and b!619980 c!70556) b!619974))

(assert (= (and b!619980 (not c!70556)) b!619960))

(assert (= (and b!619980 c!70559) b!619978))

(assert (= (and b!619980 (not c!70559)) b!619965))

(assert (= (and b!619978 res!399592) b!619970))

(declare-fun m!595939 () Bool)

(assert (=> b!619972 m!595939))

(declare-fun m!595941 () Bool)

(assert (=> b!619973 m!595941))

(declare-fun m!595943 () Bool)

(assert (=> b!619976 m!595943))

(assert (=> b!619976 m!595943))

(declare-fun m!595945 () Bool)

(assert (=> b!619976 m!595945))

(declare-fun m!595947 () Bool)

(assert (=> b!619961 m!595947))

(declare-fun m!595949 () Bool)

(assert (=> b!619978 m!595949))

(assert (=> b!619978 m!595943))

(declare-fun m!595951 () Bool)

(assert (=> b!619978 m!595951))

(assert (=> b!619978 m!595943))

(declare-fun m!595953 () Bool)

(assert (=> b!619978 m!595953))

(assert (=> b!619978 m!595943))

(declare-fun m!595955 () Bool)

(assert (=> b!619978 m!595955))

(assert (=> b!619978 m!595943))

(declare-fun m!595957 () Bool)

(assert (=> b!619978 m!595957))

(declare-fun m!595959 () Bool)

(assert (=> b!619978 m!595959))

(assert (=> b!619978 m!595943))

(declare-fun m!595961 () Bool)

(assert (=> b!619978 m!595961))

(declare-fun m!595963 () Bool)

(assert (=> b!619978 m!595963))

(declare-fun m!595965 () Bool)

(assert (=> b!619967 m!595965))

(assert (=> b!619979 m!595943))

(assert (=> b!619979 m!595943))

(declare-fun m!595967 () Bool)

(assert (=> b!619979 m!595967))

(declare-fun m!595969 () Bool)

(assert (=> b!619963 m!595969))

(declare-fun m!595971 () Bool)

(assert (=> b!619963 m!595971))

(assert (=> b!619963 m!595943))

(assert (=> b!619963 m!595943))

(declare-fun m!595973 () Bool)

(assert (=> b!619963 m!595973))

(declare-fun m!595975 () Bool)

(assert (=> b!619963 m!595975))

(declare-fun m!595977 () Bool)

(assert (=> b!619963 m!595977))

(declare-fun m!595979 () Bool)

(assert (=> b!619963 m!595979))

(declare-fun m!595981 () Bool)

(assert (=> b!619963 m!595981))

(declare-fun m!595983 () Bool)

(assert (=> b!619975 m!595983))

(assert (=> b!619980 m!595977))

(declare-fun m!595985 () Bool)

(assert (=> b!619980 m!595985))

(assert (=> b!619980 m!595943))

(assert (=> b!619974 m!595949))

(declare-fun m!595987 () Bool)

(assert (=> b!619974 m!595987))

(assert (=> b!619974 m!595943))

(declare-fun m!595989 () Bool)

(assert (=> b!619974 m!595989))

(assert (=> b!619974 m!595943))

(assert (=> b!619974 m!595943))

(declare-fun m!595991 () Bool)

(assert (=> b!619974 m!595991))

(declare-fun m!595993 () Bool)

(assert (=> b!619974 m!595993))

(assert (=> b!619974 m!595943))

(declare-fun m!595995 () Bool)

(assert (=> b!619974 m!595995))

(assert (=> b!619974 m!595963))

(declare-fun m!595997 () Bool)

(assert (=> b!619981 m!595997))

(assert (=> b!619981 m!595943))

(assert (=> b!619981 m!595943))

(declare-fun m!595999 () Bool)

(assert (=> b!619981 m!595999))

(assert (=> b!619962 m!595943))

(assert (=> b!619962 m!595943))

(assert (=> b!619962 m!595961))

(assert (=> b!619970 m!595943))

(assert (=> b!619970 m!595943))

(assert (=> b!619970 m!595967))

(declare-fun m!596001 () Bool)

(assert (=> start!56138 m!596001))

(declare-fun m!596003 () Bool)

(assert (=> start!56138 m!596003))

(declare-fun m!596005 () Bool)

(assert (=> b!619966 m!596005))

(assert (=> b!619964 m!595977))

(declare-fun m!596007 () Bool)

(assert (=> b!619964 m!596007))

(check-sat (not b!619961) (not b!619978) (not b!619963) (not b!619975) (not b!619972) (not b!619962) (not b!619974) (not b!619981) (not b!619970) (not start!56138) (not b!619966) (not b!619976) (not b!619973) (not b!619979))
(check-sat)

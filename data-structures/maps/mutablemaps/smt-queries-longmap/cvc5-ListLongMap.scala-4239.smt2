; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58554 () Bool)

(assert start!58554)

(declare-fun b!645964 () Bool)

(declare-fun res!418610 () Bool)

(declare-fun e!370265 () Bool)

(assert (=> b!645964 (=> (not res!418610) (not e!370265))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38445 0))(
  ( (array!38446 (arr!18429 (Array (_ BitVec 32) (_ BitVec 64))) (size!18793 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38445)

(assert (=> b!645964 (= res!418610 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18429 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!645965 () Bool)

(declare-fun res!418611 () Bool)

(assert (=> b!645965 (=> (not res!418611) (not e!370265))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38445 (_ BitVec 32)) Bool)

(assert (=> b!645965 (= res!418611 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!645966 () Bool)

(declare-fun res!418607 () Bool)

(declare-fun e!370274 () Bool)

(assert (=> b!645966 (=> (not res!418607) (not e!370274))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!645966 (= res!418607 (and (= (size!18793 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18793 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18793 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!645967 () Bool)

(declare-fun res!418612 () Bool)

(assert (=> b!645967 (=> (not res!418612) (not e!370265))))

(declare-datatypes ((List!12523 0))(
  ( (Nil!12520) (Cons!12519 (h!13564 (_ BitVec 64)) (t!18759 List!12523)) )
))
(declare-fun arrayNoDuplicates!0 (array!38445 (_ BitVec 32) List!12523) Bool)

(assert (=> b!645967 (= res!418612 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12520))))

(declare-fun b!645968 () Bool)

(declare-fun e!370269 () Bool)

(declare-fun e!370267 () Bool)

(assert (=> b!645968 (= e!370269 (not e!370267))))

(declare-fun res!418604 () Bool)

(assert (=> b!645968 (=> res!418604 e!370267)))

(declare-datatypes ((SeekEntryResult!6876 0))(
  ( (MissingZero!6876 (index!29841 (_ BitVec 32))) (Found!6876 (index!29842 (_ BitVec 32))) (Intermediate!6876 (undefined!7688 Bool) (index!29843 (_ BitVec 32)) (x!58647 (_ BitVec 32))) (Undefined!6876) (MissingVacant!6876 (index!29844 (_ BitVec 32))) )
))
(declare-fun lt!299681 () SeekEntryResult!6876)

(assert (=> b!645968 (= res!418604 (not (= lt!299681 (Found!6876 index!984))))))

(declare-datatypes ((Unit!21928 0))(
  ( (Unit!21929) )
))
(declare-fun lt!299674 () Unit!21928)

(declare-fun e!370272 () Unit!21928)

(assert (=> b!645968 (= lt!299674 e!370272)))

(declare-fun c!74051 () Bool)

(assert (=> b!645968 (= c!74051 (= lt!299681 Undefined!6876))))

(declare-fun lt!299678 () array!38445)

(declare-fun lt!299669 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38445 (_ BitVec 32)) SeekEntryResult!6876)

(assert (=> b!645968 (= lt!299681 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!299669 lt!299678 mask!3053))))

(declare-fun e!370271 () Bool)

(assert (=> b!645968 e!370271))

(declare-fun res!418608 () Bool)

(assert (=> b!645968 (=> (not res!418608) (not e!370271))))

(declare-fun lt!299668 () SeekEntryResult!6876)

(declare-fun lt!299677 () (_ BitVec 32))

(assert (=> b!645968 (= res!418608 (= lt!299668 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!299677 vacantSpotIndex!68 lt!299669 lt!299678 mask!3053)))))

(assert (=> b!645968 (= lt!299668 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!299677 vacantSpotIndex!68 (select (arr!18429 a!2986) j!136) a!2986 mask!3053))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!645968 (= lt!299669 (select (store (arr!18429 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!299676 () Unit!21928)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38445 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21928)

(assert (=> b!645968 (= lt!299676 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!299677 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!645968 (= lt!299677 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!645969 () Bool)

(declare-fun e!370266 () Bool)

(declare-fun e!370276 () Bool)

(assert (=> b!645969 (= e!370266 e!370276)))

(declare-fun res!418606 () Bool)

(assert (=> b!645969 (=> res!418606 e!370276)))

(declare-fun lt!299680 () (_ BitVec 64))

(assert (=> b!645969 (= res!418606 (or (not (= (select (arr!18429 a!2986) j!136) lt!299669)) (not (= (select (arr!18429 a!2986) j!136) lt!299680)) (bvsge j!136 index!984)))))

(declare-fun b!645970 () Bool)

(declare-fun e!370270 () Unit!21928)

(declare-fun Unit!21930 () Unit!21928)

(assert (=> b!645970 (= e!370270 Unit!21930)))

(declare-fun b!645971 () Bool)

(declare-fun e!370264 () Bool)

(declare-fun e!370275 () Bool)

(assert (=> b!645971 (= e!370264 e!370275)))

(declare-fun res!418601 () Bool)

(assert (=> b!645971 (=> res!418601 e!370275)))

(assert (=> b!645971 (= res!418601 (bvsge index!984 j!136))))

(declare-fun lt!299670 () Unit!21928)

(assert (=> b!645971 (= lt!299670 e!370270)))

(declare-fun c!74050 () Bool)

(assert (=> b!645971 (= c!74050 (bvslt j!136 index!984))))

(declare-fun b!645973 () Bool)

(declare-fun Unit!21931 () Unit!21928)

(assert (=> b!645973 (= e!370272 Unit!21931)))

(declare-fun b!645974 () Bool)

(assert (=> b!645974 (= e!370275 true)))

(declare-fun arrayContainsKey!0 (array!38445 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!645974 (arrayContainsKey!0 lt!299678 (select (arr!18429 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!299672 () Unit!21928)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38445 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21928)

(assert (=> b!645974 (= lt!299672 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!299678 (select (arr!18429 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!370268 () Bool)

(assert (=> b!645974 e!370268))

(declare-fun res!418613 () Bool)

(assert (=> b!645974 (=> (not res!418613) (not e!370268))))

(assert (=> b!645974 (= res!418613 (arrayContainsKey!0 lt!299678 (select (arr!18429 a!2986) j!136) j!136))))

(declare-fun b!645975 () Bool)

(assert (=> b!645975 (= e!370268 (arrayContainsKey!0 lt!299678 (select (arr!18429 a!2986) j!136) index!984))))

(declare-fun b!645976 () Bool)

(declare-fun Unit!21932 () Unit!21928)

(assert (=> b!645976 (= e!370272 Unit!21932)))

(assert (=> b!645976 false))

(declare-fun b!645977 () Bool)

(declare-fun res!418614 () Bool)

(assert (=> b!645977 (=> (not res!418614) (not e!370274))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!645977 (= res!418614 (validKeyInArray!0 k!1786))))

(declare-fun b!645978 () Bool)

(declare-fun e!370263 () Bool)

(assert (=> b!645978 (= e!370276 e!370263)))

(declare-fun res!418605 () Bool)

(assert (=> b!645978 (=> (not res!418605) (not e!370263))))

(assert (=> b!645978 (= res!418605 (arrayContainsKey!0 lt!299678 (select (arr!18429 a!2986) j!136) j!136))))

(declare-fun b!645972 () Bool)

(declare-fun e!370273 () Bool)

(assert (=> b!645972 (= e!370265 e!370273)))

(declare-fun res!418616 () Bool)

(assert (=> b!645972 (=> (not res!418616) (not e!370273))))

(assert (=> b!645972 (= res!418616 (= (select (store (arr!18429 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!645972 (= lt!299678 (array!38446 (store (arr!18429 a!2986) i!1108 k!1786) (size!18793 a!2986)))))

(declare-fun res!418609 () Bool)

(assert (=> start!58554 (=> (not res!418609) (not e!370274))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58554 (= res!418609 (validMask!0 mask!3053))))

(assert (=> start!58554 e!370274))

(assert (=> start!58554 true))

(declare-fun array_inv!14203 (array!38445) Bool)

(assert (=> start!58554 (array_inv!14203 a!2986)))

(declare-fun b!645979 () Bool)

(assert (=> b!645979 (= e!370263 (arrayContainsKey!0 lt!299678 (select (arr!18429 a!2986) j!136) index!984))))

(declare-fun b!645980 () Bool)

(declare-fun res!418599 () Bool)

(assert (=> b!645980 (=> (not res!418599) (not e!370274))))

(assert (=> b!645980 (= res!418599 (validKeyInArray!0 (select (arr!18429 a!2986) j!136)))))

(declare-fun b!645981 () Bool)

(assert (=> b!645981 (= e!370267 e!370264)))

(declare-fun res!418602 () Bool)

(assert (=> b!645981 (=> res!418602 e!370264)))

(assert (=> b!645981 (= res!418602 (or (not (= (select (arr!18429 a!2986) j!136) lt!299669)) (not (= (select (arr!18429 a!2986) j!136) lt!299680))))))

(assert (=> b!645981 e!370266))

(declare-fun res!418600 () Bool)

(assert (=> b!645981 (=> (not res!418600) (not e!370266))))

(assert (=> b!645981 (= res!418600 (= lt!299680 (select (arr!18429 a!2986) j!136)))))

(assert (=> b!645981 (= lt!299680 (select (store (arr!18429 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!645982 () Bool)

(assert (=> b!645982 (= e!370274 e!370265)))

(declare-fun res!418598 () Bool)

(assert (=> b!645982 (=> (not res!418598) (not e!370265))))

(declare-fun lt!299675 () SeekEntryResult!6876)

(assert (=> b!645982 (= res!418598 (or (= lt!299675 (MissingZero!6876 i!1108)) (= lt!299675 (MissingVacant!6876 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38445 (_ BitVec 32)) SeekEntryResult!6876)

(assert (=> b!645982 (= lt!299675 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!645983 () Bool)

(declare-fun lt!299682 () SeekEntryResult!6876)

(assert (=> b!645983 (= e!370271 (= lt!299682 lt!299668))))

(declare-fun b!645984 () Bool)

(declare-fun res!418603 () Bool)

(assert (=> b!645984 (=> (not res!418603) (not e!370274))))

(assert (=> b!645984 (= res!418603 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!645985 () Bool)

(assert (=> b!645985 (= e!370273 e!370269)))

(declare-fun res!418615 () Bool)

(assert (=> b!645985 (=> (not res!418615) (not e!370269))))

(assert (=> b!645985 (= res!418615 (and (= lt!299682 (Found!6876 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18429 a!2986) index!984) (select (arr!18429 a!2986) j!136))) (not (= (select (arr!18429 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!645985 (= lt!299682 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18429 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!645986 () Bool)

(declare-fun Unit!21933 () Unit!21928)

(assert (=> b!645986 (= e!370270 Unit!21933)))

(declare-fun lt!299667 () Unit!21928)

(assert (=> b!645986 (= lt!299667 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!299678 (select (arr!18429 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!645986 (arrayContainsKey!0 lt!299678 (select (arr!18429 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!299673 () Unit!21928)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38445 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12523) Unit!21928)

(assert (=> b!645986 (= lt!299673 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12520))))

(assert (=> b!645986 (arrayNoDuplicates!0 lt!299678 #b00000000000000000000000000000000 Nil!12520)))

(declare-fun lt!299671 () Unit!21928)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38445 (_ BitVec 32) (_ BitVec 32)) Unit!21928)

(assert (=> b!645986 (= lt!299671 (lemmaNoDuplicateFromThenFromBigger!0 lt!299678 #b00000000000000000000000000000000 j!136))))

(assert (=> b!645986 (arrayNoDuplicates!0 lt!299678 j!136 Nil!12520)))

(declare-fun lt!299679 () Unit!21928)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38445 (_ BitVec 64) (_ BitVec 32) List!12523) Unit!21928)

(assert (=> b!645986 (= lt!299679 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!299678 (select (arr!18429 a!2986) j!136) j!136 Nil!12520))))

(assert (=> b!645986 false))

(assert (= (and start!58554 res!418609) b!645966))

(assert (= (and b!645966 res!418607) b!645980))

(assert (= (and b!645980 res!418599) b!645977))

(assert (= (and b!645977 res!418614) b!645984))

(assert (= (and b!645984 res!418603) b!645982))

(assert (= (and b!645982 res!418598) b!645965))

(assert (= (and b!645965 res!418611) b!645967))

(assert (= (and b!645967 res!418612) b!645964))

(assert (= (and b!645964 res!418610) b!645972))

(assert (= (and b!645972 res!418616) b!645985))

(assert (= (and b!645985 res!418615) b!645968))

(assert (= (and b!645968 res!418608) b!645983))

(assert (= (and b!645968 c!74051) b!645976))

(assert (= (and b!645968 (not c!74051)) b!645973))

(assert (= (and b!645968 (not res!418604)) b!645981))

(assert (= (and b!645981 res!418600) b!645969))

(assert (= (and b!645969 (not res!418606)) b!645978))

(assert (= (and b!645978 res!418605) b!645979))

(assert (= (and b!645981 (not res!418602)) b!645971))

(assert (= (and b!645971 c!74050) b!645986))

(assert (= (and b!645971 (not c!74050)) b!645970))

(assert (= (and b!645971 (not res!418601)) b!645974))

(assert (= (and b!645974 res!418613) b!645975))

(declare-fun m!619521 () Bool)

(assert (=> b!645978 m!619521))

(assert (=> b!645978 m!619521))

(declare-fun m!619523 () Bool)

(assert (=> b!645978 m!619523))

(declare-fun m!619525 () Bool)

(assert (=> b!645977 m!619525))

(assert (=> b!645975 m!619521))

(assert (=> b!645975 m!619521))

(declare-fun m!619527 () Bool)

(assert (=> b!645975 m!619527))

(assert (=> b!645974 m!619521))

(assert (=> b!645974 m!619521))

(declare-fun m!619529 () Bool)

(assert (=> b!645974 m!619529))

(assert (=> b!645974 m!619521))

(declare-fun m!619531 () Bool)

(assert (=> b!645974 m!619531))

(assert (=> b!645974 m!619521))

(assert (=> b!645974 m!619523))

(declare-fun m!619533 () Bool)

(assert (=> b!645982 m!619533))

(declare-fun m!619535 () Bool)

(assert (=> b!645984 m!619535))

(assert (=> b!645981 m!619521))

(declare-fun m!619537 () Bool)

(assert (=> b!645981 m!619537))

(declare-fun m!619539 () Bool)

(assert (=> b!645981 m!619539))

(declare-fun m!619541 () Bool)

(assert (=> b!645968 m!619541))

(assert (=> b!645968 m!619521))

(declare-fun m!619543 () Bool)

(assert (=> b!645968 m!619543))

(assert (=> b!645968 m!619537))

(declare-fun m!619545 () Bool)

(assert (=> b!645968 m!619545))

(declare-fun m!619547 () Bool)

(assert (=> b!645968 m!619547))

(declare-fun m!619549 () Bool)

(assert (=> b!645968 m!619549))

(assert (=> b!645968 m!619521))

(declare-fun m!619551 () Bool)

(assert (=> b!645968 m!619551))

(declare-fun m!619553 () Bool)

(assert (=> b!645986 m!619553))

(declare-fun m!619555 () Bool)

(assert (=> b!645986 m!619555))

(assert (=> b!645986 m!619521))

(declare-fun m!619557 () Bool)

(assert (=> b!645986 m!619557))

(assert (=> b!645986 m!619521))

(declare-fun m!619559 () Bool)

(assert (=> b!645986 m!619559))

(assert (=> b!645986 m!619521))

(declare-fun m!619561 () Bool)

(assert (=> b!645986 m!619561))

(assert (=> b!645986 m!619521))

(declare-fun m!619563 () Bool)

(assert (=> b!645986 m!619563))

(declare-fun m!619565 () Bool)

(assert (=> b!645986 m!619565))

(assert (=> b!645980 m!619521))

(assert (=> b!645980 m!619521))

(declare-fun m!619567 () Bool)

(assert (=> b!645980 m!619567))

(declare-fun m!619569 () Bool)

(assert (=> b!645967 m!619569))

(assert (=> b!645972 m!619537))

(declare-fun m!619571 () Bool)

(assert (=> b!645972 m!619571))

(declare-fun m!619573 () Bool)

(assert (=> start!58554 m!619573))

(declare-fun m!619575 () Bool)

(assert (=> start!58554 m!619575))

(declare-fun m!619577 () Bool)

(assert (=> b!645964 m!619577))

(declare-fun m!619579 () Bool)

(assert (=> b!645965 m!619579))

(assert (=> b!645969 m!619521))

(declare-fun m!619581 () Bool)

(assert (=> b!645985 m!619581))

(assert (=> b!645985 m!619521))

(assert (=> b!645985 m!619521))

(declare-fun m!619583 () Bool)

(assert (=> b!645985 m!619583))

(assert (=> b!645979 m!619521))

(assert (=> b!645979 m!619521))

(assert (=> b!645979 m!619527))

(push 1)


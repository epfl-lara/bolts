; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58354 () Bool)

(assert start!58354)

(declare-fun b!644200 () Bool)

(declare-fun res!417461 () Bool)

(declare-fun e!369102 () Bool)

(assert (=> b!644200 (=> (not res!417461) (not e!369102))))

(declare-datatypes ((array!38407 0))(
  ( (array!38408 (arr!18413 (Array (_ BitVec 32) (_ BitVec 64))) (size!18777 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38407)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38407 (_ BitVec 32)) Bool)

(assert (=> b!644200 (= res!417461 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!644201 () Bool)

(declare-fun e!369095 () Bool)

(declare-fun e!369100 () Bool)

(assert (=> b!644201 (= e!369095 e!369100)))

(declare-fun res!417463 () Bool)

(assert (=> b!644201 (=> (not res!417463) (not e!369100))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6860 0))(
  ( (MissingZero!6860 (index!29771 (_ BitVec 32))) (Found!6860 (index!29772 (_ BitVec 32))) (Intermediate!6860 (undefined!7672 Bool) (index!29773 (_ BitVec 32)) (x!58565 (_ BitVec 32))) (Undefined!6860) (MissingVacant!6860 (index!29774 (_ BitVec 32))) )
))
(declare-fun lt!298638 () SeekEntryResult!6860)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!644201 (= res!417463 (and (= lt!298638 (Found!6860 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18413 a!2986) index!984) (select (arr!18413 a!2986) j!136))) (not (= (select (arr!18413 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38407 (_ BitVec 32)) SeekEntryResult!6860)

(assert (=> b!644201 (= lt!298638 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18413 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!644202 () Bool)

(declare-datatypes ((Unit!21832 0))(
  ( (Unit!21833) )
))
(declare-fun e!369097 () Unit!21832)

(declare-fun Unit!21834 () Unit!21832)

(assert (=> b!644202 (= e!369097 Unit!21834)))

(assert (=> b!644202 false))

(declare-fun b!644203 () Bool)

(declare-fun e!369101 () Bool)

(assert (=> b!644203 (= e!369100 (not e!369101))))

(declare-fun res!417455 () Bool)

(assert (=> b!644203 (=> res!417455 e!369101)))

(declare-fun lt!298629 () SeekEntryResult!6860)

(assert (=> b!644203 (= res!417455 (not (= lt!298629 (Found!6860 index!984))))))

(declare-fun lt!298632 () Unit!21832)

(assert (=> b!644203 (= lt!298632 e!369097)))

(declare-fun c!73744 () Bool)

(assert (=> b!644203 (= c!73744 (= lt!298629 Undefined!6860))))

(declare-fun lt!298628 () (_ BitVec 64))

(declare-fun lt!298637 () array!38407)

(assert (=> b!644203 (= lt!298629 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!298628 lt!298637 mask!3053))))

(declare-fun e!369106 () Bool)

(assert (=> b!644203 e!369106))

(declare-fun res!417450 () Bool)

(assert (=> b!644203 (=> (not res!417450) (not e!369106))))

(declare-fun lt!298627 () (_ BitVec 32))

(declare-fun lt!298640 () SeekEntryResult!6860)

(assert (=> b!644203 (= res!417450 (= lt!298640 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!298627 vacantSpotIndex!68 lt!298628 lt!298637 mask!3053)))))

(assert (=> b!644203 (= lt!298640 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!298627 vacantSpotIndex!68 (select (arr!18413 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!644203 (= lt!298628 (select (store (arr!18413 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!298636 () Unit!21832)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38407 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21832)

(assert (=> b!644203 (= lt!298636 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!298627 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!644203 (= lt!298627 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!644204 () Bool)

(declare-fun e!369096 () Bool)

(declare-fun e!369104 () Bool)

(assert (=> b!644204 (= e!369096 e!369104)))

(declare-fun res!417459 () Bool)

(assert (=> b!644204 (=> res!417459 e!369104)))

(assert (=> b!644204 (= res!417459 (bvsge index!984 j!136))))

(declare-fun lt!298634 () Unit!21832)

(declare-fun e!369098 () Unit!21832)

(assert (=> b!644204 (= lt!298634 e!369098)))

(declare-fun c!73745 () Bool)

(assert (=> b!644204 (= c!73745 (bvslt j!136 index!984))))

(declare-fun b!644205 () Bool)

(assert (=> b!644205 (= e!369106 (= lt!298638 lt!298640))))

(declare-fun b!644206 () Bool)

(declare-fun Unit!21835 () Unit!21832)

(assert (=> b!644206 (= e!369097 Unit!21835)))

(declare-fun b!644207 () Bool)

(declare-fun res!417453 () Bool)

(declare-fun e!369105 () Bool)

(assert (=> b!644207 (=> (not res!417453) (not e!369105))))

(declare-fun arrayContainsKey!0 (array!38407 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!644207 (= res!417453 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!644208 () Bool)

(declare-fun e!369099 () Bool)

(declare-fun e!369103 () Bool)

(assert (=> b!644208 (= e!369099 e!369103)))

(declare-fun res!417462 () Bool)

(assert (=> b!644208 (=> (not res!417462) (not e!369103))))

(assert (=> b!644208 (= res!417462 (arrayContainsKey!0 lt!298637 (select (arr!18413 a!2986) j!136) j!136))))

(declare-fun b!644209 () Bool)

(declare-fun res!417451 () Bool)

(assert (=> b!644209 (=> (not res!417451) (not e!369102))))

(assert (=> b!644209 (= res!417451 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18413 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!644210 () Bool)

(declare-fun Unit!21836 () Unit!21832)

(assert (=> b!644210 (= e!369098 Unit!21836)))

(declare-fun lt!298635 () Unit!21832)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38407 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21832)

(assert (=> b!644210 (= lt!298635 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!298637 (select (arr!18413 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!644210 (arrayContainsKey!0 lt!298637 (select (arr!18413 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!298633 () Unit!21832)

(declare-datatypes ((List!12507 0))(
  ( (Nil!12504) (Cons!12503 (h!13548 (_ BitVec 64)) (t!18743 List!12507)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38407 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12507) Unit!21832)

(assert (=> b!644210 (= lt!298633 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12504))))

(declare-fun arrayNoDuplicates!0 (array!38407 (_ BitVec 32) List!12507) Bool)

(assert (=> b!644210 (arrayNoDuplicates!0 lt!298637 #b00000000000000000000000000000000 Nil!12504)))

(declare-fun lt!298630 () Unit!21832)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38407 (_ BitVec 32) (_ BitVec 32)) Unit!21832)

(assert (=> b!644210 (= lt!298630 (lemmaNoDuplicateFromThenFromBigger!0 lt!298637 #b00000000000000000000000000000000 j!136))))

(assert (=> b!644210 (arrayNoDuplicates!0 lt!298637 j!136 Nil!12504)))

(declare-fun lt!298639 () Unit!21832)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38407 (_ BitVec 64) (_ BitVec 32) List!12507) Unit!21832)

(assert (=> b!644210 (= lt!298639 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!298637 (select (arr!18413 a!2986) j!136) j!136 Nil!12504))))

(assert (=> b!644210 false))

(declare-fun res!417464 () Bool)

(assert (=> start!58354 (=> (not res!417464) (not e!369105))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58354 (= res!417464 (validMask!0 mask!3053))))

(assert (=> start!58354 e!369105))

(assert (=> start!58354 true))

(declare-fun array_inv!14187 (array!38407) Bool)

(assert (=> start!58354 (array_inv!14187 a!2986)))

(declare-fun b!644211 () Bool)

(assert (=> b!644211 (= e!369104 true)))

(declare-fun e!369092 () Bool)

(assert (=> b!644211 e!369092))

(declare-fun res!417449 () Bool)

(assert (=> b!644211 (=> (not res!417449) (not e!369092))))

(assert (=> b!644211 (= res!417449 (arrayContainsKey!0 lt!298637 (select (arr!18413 a!2986) j!136) j!136))))

(declare-fun b!644212 () Bool)

(declare-fun res!417447 () Bool)

(assert (=> b!644212 (=> (not res!417447) (not e!369102))))

(assert (=> b!644212 (= res!417447 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12504))))

(declare-fun b!644213 () Bool)

(declare-fun Unit!21837 () Unit!21832)

(assert (=> b!644213 (= e!369098 Unit!21837)))

(declare-fun b!644214 () Bool)

(assert (=> b!644214 (= e!369105 e!369102)))

(declare-fun res!417452 () Bool)

(assert (=> b!644214 (=> (not res!417452) (not e!369102))))

(declare-fun lt!298631 () SeekEntryResult!6860)

(assert (=> b!644214 (= res!417452 (or (= lt!298631 (MissingZero!6860 i!1108)) (= lt!298631 (MissingVacant!6860 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38407 (_ BitVec 32)) SeekEntryResult!6860)

(assert (=> b!644214 (= lt!298631 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!644215 () Bool)

(declare-fun e!369093 () Bool)

(assert (=> b!644215 (= e!369093 e!369099)))

(declare-fun res!417454 () Bool)

(assert (=> b!644215 (=> res!417454 e!369099)))

(declare-fun lt!298641 () (_ BitVec 64))

(assert (=> b!644215 (= res!417454 (or (not (= (select (arr!18413 a!2986) j!136) lt!298628)) (not (= (select (arr!18413 a!2986) j!136) lt!298641)) (bvsge j!136 index!984)))))

(declare-fun b!644216 () Bool)

(assert (=> b!644216 (= e!369102 e!369095)))

(declare-fun res!417446 () Bool)

(assert (=> b!644216 (=> (not res!417446) (not e!369095))))

(assert (=> b!644216 (= res!417446 (= (select (store (arr!18413 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!644216 (= lt!298637 (array!38408 (store (arr!18413 a!2986) i!1108 k!1786) (size!18777 a!2986)))))

(declare-fun b!644217 () Bool)

(assert (=> b!644217 (= e!369101 e!369096)))

(declare-fun res!417456 () Bool)

(assert (=> b!644217 (=> res!417456 e!369096)))

(assert (=> b!644217 (= res!417456 (or (not (= (select (arr!18413 a!2986) j!136) lt!298628)) (not (= (select (arr!18413 a!2986) j!136) lt!298641))))))

(assert (=> b!644217 e!369093))

(declare-fun res!417458 () Bool)

(assert (=> b!644217 (=> (not res!417458) (not e!369093))))

(assert (=> b!644217 (= res!417458 (= lt!298641 (select (arr!18413 a!2986) j!136)))))

(assert (=> b!644217 (= lt!298641 (select (store (arr!18413 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!644218 () Bool)

(assert (=> b!644218 (= e!369092 (arrayContainsKey!0 lt!298637 (select (arr!18413 a!2986) j!136) index!984))))

(declare-fun b!644219 () Bool)

(declare-fun res!417448 () Bool)

(assert (=> b!644219 (=> (not res!417448) (not e!369105))))

(assert (=> b!644219 (= res!417448 (and (= (size!18777 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18777 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18777 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!644220 () Bool)

(declare-fun res!417457 () Bool)

(assert (=> b!644220 (=> (not res!417457) (not e!369105))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!644220 (= res!417457 (validKeyInArray!0 (select (arr!18413 a!2986) j!136)))))

(declare-fun b!644221 () Bool)

(assert (=> b!644221 (= e!369103 (arrayContainsKey!0 lt!298637 (select (arr!18413 a!2986) j!136) index!984))))

(declare-fun b!644222 () Bool)

(declare-fun res!417460 () Bool)

(assert (=> b!644222 (=> (not res!417460) (not e!369105))))

(assert (=> b!644222 (= res!417460 (validKeyInArray!0 k!1786))))

(assert (= (and start!58354 res!417464) b!644219))

(assert (= (and b!644219 res!417448) b!644220))

(assert (= (and b!644220 res!417457) b!644222))

(assert (= (and b!644222 res!417460) b!644207))

(assert (= (and b!644207 res!417453) b!644214))

(assert (= (and b!644214 res!417452) b!644200))

(assert (= (and b!644200 res!417461) b!644212))

(assert (= (and b!644212 res!417447) b!644209))

(assert (= (and b!644209 res!417451) b!644216))

(assert (= (and b!644216 res!417446) b!644201))

(assert (= (and b!644201 res!417463) b!644203))

(assert (= (and b!644203 res!417450) b!644205))

(assert (= (and b!644203 c!73744) b!644202))

(assert (= (and b!644203 (not c!73744)) b!644206))

(assert (= (and b!644203 (not res!417455)) b!644217))

(assert (= (and b!644217 res!417458) b!644215))

(assert (= (and b!644215 (not res!417454)) b!644208))

(assert (= (and b!644208 res!417462) b!644221))

(assert (= (and b!644217 (not res!417456)) b!644204))

(assert (= (and b!644204 c!73745) b!644210))

(assert (= (and b!644204 (not c!73745)) b!644213))

(assert (= (and b!644204 (not res!417459)) b!644211))

(assert (= (and b!644211 res!417449) b!644218))

(declare-fun m!617883 () Bool)

(assert (=> b!644211 m!617883))

(assert (=> b!644211 m!617883))

(declare-fun m!617885 () Bool)

(assert (=> b!644211 m!617885))

(assert (=> b!644218 m!617883))

(assert (=> b!644218 m!617883))

(declare-fun m!617887 () Bool)

(assert (=> b!644218 m!617887))

(declare-fun m!617889 () Bool)

(assert (=> b!644200 m!617889))

(assert (=> b!644221 m!617883))

(assert (=> b!644221 m!617883))

(assert (=> b!644221 m!617887))

(declare-fun m!617891 () Bool)

(assert (=> b!644201 m!617891))

(assert (=> b!644201 m!617883))

(assert (=> b!644201 m!617883))

(declare-fun m!617893 () Bool)

(assert (=> b!644201 m!617893))

(declare-fun m!617895 () Bool)

(assert (=> b!644222 m!617895))

(assert (=> b!644217 m!617883))

(declare-fun m!617897 () Bool)

(assert (=> b!644217 m!617897))

(declare-fun m!617899 () Bool)

(assert (=> b!644217 m!617899))

(declare-fun m!617901 () Bool)

(assert (=> b!644214 m!617901))

(declare-fun m!617903 () Bool)

(assert (=> b!644209 m!617903))

(declare-fun m!617905 () Bool)

(assert (=> b!644203 m!617905))

(declare-fun m!617907 () Bool)

(assert (=> b!644203 m!617907))

(assert (=> b!644203 m!617883))

(assert (=> b!644203 m!617897))

(declare-fun m!617909 () Bool)

(assert (=> b!644203 m!617909))

(assert (=> b!644203 m!617883))

(declare-fun m!617911 () Bool)

(assert (=> b!644203 m!617911))

(declare-fun m!617913 () Bool)

(assert (=> b!644203 m!617913))

(declare-fun m!617915 () Bool)

(assert (=> b!644203 m!617915))

(assert (=> b!644208 m!617883))

(assert (=> b!644208 m!617883))

(assert (=> b!644208 m!617885))

(assert (=> b!644220 m!617883))

(assert (=> b!644220 m!617883))

(declare-fun m!617917 () Bool)

(assert (=> b!644220 m!617917))

(assert (=> b!644210 m!617883))

(declare-fun m!617919 () Bool)

(assert (=> b!644210 m!617919))

(assert (=> b!644210 m!617883))

(assert (=> b!644210 m!617883))

(declare-fun m!617921 () Bool)

(assert (=> b!644210 m!617921))

(declare-fun m!617923 () Bool)

(assert (=> b!644210 m!617923))

(assert (=> b!644210 m!617883))

(declare-fun m!617925 () Bool)

(assert (=> b!644210 m!617925))

(declare-fun m!617927 () Bool)

(assert (=> b!644210 m!617927))

(declare-fun m!617929 () Bool)

(assert (=> b!644210 m!617929))

(declare-fun m!617931 () Bool)

(assert (=> b!644210 m!617931))

(assert (=> b!644215 m!617883))

(assert (=> b!644216 m!617897))

(declare-fun m!617933 () Bool)

(assert (=> b!644216 m!617933))

(declare-fun m!617935 () Bool)

(assert (=> b!644207 m!617935))

(declare-fun m!617937 () Bool)

(assert (=> b!644212 m!617937))

(declare-fun m!617939 () Bool)

(assert (=> start!58354 m!617939))

(declare-fun m!617941 () Bool)

(assert (=> start!58354 m!617941))

(push 1)


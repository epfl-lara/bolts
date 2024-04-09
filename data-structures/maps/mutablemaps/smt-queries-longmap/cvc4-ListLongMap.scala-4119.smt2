; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56224 () Bool)

(assert start!56224)

(declare-fun b!623055 () Bool)

(declare-fun e!357388 () Bool)

(declare-fun e!357379 () Bool)

(assert (=> b!623055 (= e!357388 e!357379)))

(declare-fun res!401651 () Bool)

(assert (=> b!623055 (=> (not res!401651) (not e!357379))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!37657 0))(
  ( (array!37658 (arr!18071 (Array (_ BitVec 32) (_ BitVec 64))) (size!18435 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37657)

(assert (=> b!623055 (= res!401651 (= (select (store (arr!18071 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!289045 () array!37657)

(assert (=> b!623055 (= lt!289045 (array!37658 (store (arr!18071 a!2986) i!1108 k!1786) (size!18435 a!2986)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun res!401653 () Bool)

(declare-fun b!623056 () Bool)

(declare-fun arrayContainsKey!0 (array!37657 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!623056 (= res!401653 (arrayContainsKey!0 lt!289045 (select (arr!18071 a!2986) j!136) j!136))))

(declare-fun e!357380 () Bool)

(assert (=> b!623056 (=> (not res!401653) (not e!357380))))

(declare-fun e!357381 () Bool)

(assert (=> b!623056 (= e!357381 e!357380)))

(declare-fun b!623057 () Bool)

(assert (=> b!623057 false))

(declare-datatypes ((Unit!21000 0))(
  ( (Unit!21001) )
))
(declare-fun lt!289054 () Unit!21000)

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((List!12165 0))(
  ( (Nil!12162) (Cons!12161 (h!13206 (_ BitVec 64)) (t!18401 List!12165)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37657 (_ BitVec 64) (_ BitVec 32) List!12165) Unit!21000)

(assert (=> b!623057 (= lt!289054 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!289045 (select (arr!18071 a!2986) j!136) index!984 Nil!12162))))

(declare-fun arrayNoDuplicates!0 (array!37657 (_ BitVec 32) List!12165) Bool)

(assert (=> b!623057 (arrayNoDuplicates!0 lt!289045 index!984 Nil!12162)))

(declare-fun lt!289042 () Unit!21000)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37657 (_ BitVec 32) (_ BitVec 32)) Unit!21000)

(assert (=> b!623057 (= lt!289042 (lemmaNoDuplicateFromThenFromBigger!0 lt!289045 #b00000000000000000000000000000000 index!984))))

(assert (=> b!623057 (arrayNoDuplicates!0 lt!289045 #b00000000000000000000000000000000 Nil!12162)))

(declare-fun lt!289048 () Unit!21000)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37657 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12165) Unit!21000)

(assert (=> b!623057 (= lt!289048 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12162))))

(assert (=> b!623057 (arrayContainsKey!0 lt!289045 (select (arr!18071 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!289052 () Unit!21000)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37657 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21000)

(assert (=> b!623057 (= lt!289052 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!289045 (select (arr!18071 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!357386 () Bool)

(assert (=> b!623057 e!357386))

(declare-fun res!401650 () Bool)

(assert (=> b!623057 (=> (not res!401650) (not e!357386))))

(assert (=> b!623057 (= res!401650 (arrayContainsKey!0 lt!289045 (select (arr!18071 a!2986) j!136) j!136))))

(declare-fun e!357390 () Unit!21000)

(declare-fun Unit!21002 () Unit!21000)

(assert (=> b!623057 (= e!357390 Unit!21002)))

(declare-fun res!401652 () Bool)

(declare-fun e!357389 () Bool)

(assert (=> start!56224 (=> (not res!401652) (not e!357389))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56224 (= res!401652 (validMask!0 mask!3053))))

(assert (=> start!56224 e!357389))

(assert (=> start!56224 true))

(declare-fun array_inv!13845 (array!37657) Bool)

(assert (=> start!56224 (array_inv!13845 a!2986)))

(declare-fun b!623058 () Bool)

(declare-fun res!401655 () Bool)

(assert (=> b!623058 (=> (not res!401655) (not e!357389))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!623058 (= res!401655 (validKeyInArray!0 k!1786))))

(declare-fun b!623059 () Bool)

(assert (=> b!623059 (= e!357386 (arrayContainsKey!0 lt!289045 (select (arr!18071 a!2986) j!136) index!984))))

(declare-fun b!623060 () Bool)

(declare-fun Unit!21003 () Unit!21000)

(assert (=> b!623060 (= e!357390 Unit!21003)))

(declare-fun b!623061 () Bool)

(declare-fun e!357378 () Unit!21000)

(declare-fun Unit!21004 () Unit!21000)

(assert (=> b!623061 (= e!357378 Unit!21004)))

(declare-fun b!623062 () Bool)

(declare-fun e!357384 () Bool)

(assert (=> b!623062 (= e!357384 (not true))))

(declare-fun lt!289049 () Unit!21000)

(declare-fun e!357391 () Unit!21000)

(assert (=> b!623062 (= lt!289049 e!357391)))

(declare-fun c!71074 () Bool)

(declare-datatypes ((SeekEntryResult!6518 0))(
  ( (MissingZero!6518 (index!28355 (_ BitVec 32))) (Found!6518 (index!28356 (_ BitVec 32))) (Intermediate!6518 (undefined!7330 Bool) (index!28357 (_ BitVec 32)) (x!57143 (_ BitVec 32))) (Undefined!6518) (MissingVacant!6518 (index!28358 (_ BitVec 32))) )
))
(declare-fun lt!289044 () SeekEntryResult!6518)

(assert (=> b!623062 (= c!71074 (= lt!289044 (Found!6518 index!984)))))

(declare-fun lt!289047 () Unit!21000)

(assert (=> b!623062 (= lt!289047 e!357378)))

(declare-fun c!71075 () Bool)

(assert (=> b!623062 (= c!71075 (= lt!289044 Undefined!6518))))

(declare-fun lt!289053 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37657 (_ BitVec 32)) SeekEntryResult!6518)

(assert (=> b!623062 (= lt!289044 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!289053 lt!289045 mask!3053))))

(declare-fun e!357383 () Bool)

(assert (=> b!623062 e!357383))

(declare-fun res!401657 () Bool)

(assert (=> b!623062 (=> (not res!401657) (not e!357383))))

(declare-fun lt!289046 () SeekEntryResult!6518)

(declare-fun lt!289050 () (_ BitVec 32))

(assert (=> b!623062 (= res!401657 (= lt!289046 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!289050 vacantSpotIndex!68 lt!289053 lt!289045 mask!3053)))))

(assert (=> b!623062 (= lt!289046 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!289050 vacantSpotIndex!68 (select (arr!18071 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!623062 (= lt!289053 (select (store (arr!18071 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!289038 () Unit!21000)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37657 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21000)

(assert (=> b!623062 (= lt!289038 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!289050 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!623062 (= lt!289050 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!623063 () Bool)

(declare-fun res!401646 () Bool)

(assert (=> b!623063 (=> (not res!401646) (not e!357389))))

(assert (=> b!623063 (= res!401646 (and (= (size!18435 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18435 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18435 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!623064 () Bool)

(declare-fun res!401654 () Bool)

(assert (=> b!623064 (=> (not res!401654) (not e!357389))))

(assert (=> b!623064 (= res!401654 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!623065 () Bool)

(declare-fun res!401649 () Bool)

(assert (=> b!623065 (=> (not res!401649) (not e!357388))))

(assert (=> b!623065 (= res!401649 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18071 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!623066 () Bool)

(declare-fun res!401648 () Bool)

(assert (=> b!623066 (= res!401648 (bvsge j!136 index!984))))

(assert (=> b!623066 (=> res!401648 e!357381)))

(declare-fun e!357382 () Bool)

(assert (=> b!623066 (= e!357382 e!357381)))

(declare-fun b!623067 () Bool)

(assert (=> b!623067 (= e!357380 (arrayContainsKey!0 lt!289045 (select (arr!18071 a!2986) j!136) index!984))))

(declare-fun b!623068 () Bool)

(declare-fun Unit!21005 () Unit!21000)

(assert (=> b!623068 (= e!357391 Unit!21005)))

(declare-fun res!401658 () Bool)

(assert (=> b!623068 (= res!401658 (= (select (store (arr!18071 a!2986) i!1108 k!1786) index!984) (select (arr!18071 a!2986) j!136)))))

(assert (=> b!623068 (=> (not res!401658) (not e!357382))))

(assert (=> b!623068 e!357382))

(declare-fun c!71072 () Bool)

(assert (=> b!623068 (= c!71072 (bvslt j!136 index!984))))

(declare-fun lt!289037 () Unit!21000)

(declare-fun e!357387 () Unit!21000)

(assert (=> b!623068 (= lt!289037 e!357387)))

(declare-fun c!71073 () Bool)

(assert (=> b!623068 (= c!71073 (bvslt index!984 j!136))))

(declare-fun lt!289040 () Unit!21000)

(assert (=> b!623068 (= lt!289040 e!357390)))

(assert (=> b!623068 false))

(declare-fun b!623069 () Bool)

(declare-fun Unit!21006 () Unit!21000)

(assert (=> b!623069 (= e!357378 Unit!21006)))

(assert (=> b!623069 false))

(declare-fun b!623070 () Bool)

(assert (=> b!623070 (= e!357389 e!357388)))

(declare-fun res!401656 () Bool)

(assert (=> b!623070 (=> (not res!401656) (not e!357388))))

(declare-fun lt!289051 () SeekEntryResult!6518)

(assert (=> b!623070 (= res!401656 (or (= lt!289051 (MissingZero!6518 i!1108)) (= lt!289051 (MissingVacant!6518 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37657 (_ BitVec 32)) SeekEntryResult!6518)

(assert (=> b!623070 (= lt!289051 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!623071 () Bool)

(declare-fun Unit!21007 () Unit!21000)

(assert (=> b!623071 (= e!357391 Unit!21007)))

(declare-fun b!623072 () Bool)

(declare-fun res!401660 () Bool)

(assert (=> b!623072 (=> (not res!401660) (not e!357388))))

(assert (=> b!623072 (= res!401660 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12162))))

(declare-fun b!623073 () Bool)

(declare-fun Unit!21008 () Unit!21000)

(assert (=> b!623073 (= e!357387 Unit!21008)))

(declare-fun b!623074 () Bool)

(assert (=> b!623074 false))

(declare-fun lt!289039 () Unit!21000)

(assert (=> b!623074 (= lt!289039 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!289045 (select (arr!18071 a!2986) j!136) j!136 Nil!12162))))

(assert (=> b!623074 (arrayNoDuplicates!0 lt!289045 j!136 Nil!12162)))

(declare-fun lt!289056 () Unit!21000)

(assert (=> b!623074 (= lt!289056 (lemmaNoDuplicateFromThenFromBigger!0 lt!289045 #b00000000000000000000000000000000 j!136))))

(assert (=> b!623074 (arrayNoDuplicates!0 lt!289045 #b00000000000000000000000000000000 Nil!12162)))

(declare-fun lt!289043 () Unit!21000)

(assert (=> b!623074 (= lt!289043 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12162))))

(assert (=> b!623074 (arrayContainsKey!0 lt!289045 (select (arr!18071 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!289041 () Unit!21000)

(assert (=> b!623074 (= lt!289041 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!289045 (select (arr!18071 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!21009 () Unit!21000)

(assert (=> b!623074 (= e!357387 Unit!21009)))

(declare-fun b!623075 () Bool)

(assert (=> b!623075 (= e!357379 e!357384)))

(declare-fun res!401659 () Bool)

(assert (=> b!623075 (=> (not res!401659) (not e!357384))))

(declare-fun lt!289055 () SeekEntryResult!6518)

(assert (=> b!623075 (= res!401659 (and (= lt!289055 (Found!6518 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18071 a!2986) index!984) (select (arr!18071 a!2986) j!136))) (not (= (select (arr!18071 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!623075 (= lt!289055 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18071 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!623076 () Bool)

(declare-fun res!401645 () Bool)

(assert (=> b!623076 (=> (not res!401645) (not e!357389))))

(assert (=> b!623076 (= res!401645 (validKeyInArray!0 (select (arr!18071 a!2986) j!136)))))

(declare-fun b!623077 () Bool)

(declare-fun res!401647 () Bool)

(assert (=> b!623077 (=> (not res!401647) (not e!357388))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37657 (_ BitVec 32)) Bool)

(assert (=> b!623077 (= res!401647 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!623078 () Bool)

(assert (=> b!623078 (= e!357383 (= lt!289055 lt!289046))))

(assert (= (and start!56224 res!401652) b!623063))

(assert (= (and b!623063 res!401646) b!623076))

(assert (= (and b!623076 res!401645) b!623058))

(assert (= (and b!623058 res!401655) b!623064))

(assert (= (and b!623064 res!401654) b!623070))

(assert (= (and b!623070 res!401656) b!623077))

(assert (= (and b!623077 res!401647) b!623072))

(assert (= (and b!623072 res!401660) b!623065))

(assert (= (and b!623065 res!401649) b!623055))

(assert (= (and b!623055 res!401651) b!623075))

(assert (= (and b!623075 res!401659) b!623062))

(assert (= (and b!623062 res!401657) b!623078))

(assert (= (and b!623062 c!71075) b!623069))

(assert (= (and b!623062 (not c!71075)) b!623061))

(assert (= (and b!623062 c!71074) b!623068))

(assert (= (and b!623062 (not c!71074)) b!623071))

(assert (= (and b!623068 res!401658) b!623066))

(assert (= (and b!623066 (not res!401648)) b!623056))

(assert (= (and b!623056 res!401653) b!623067))

(assert (= (and b!623068 c!71072) b!623074))

(assert (= (and b!623068 (not c!71072)) b!623073))

(assert (= (and b!623068 c!71073) b!623057))

(assert (= (and b!623068 (not c!71073)) b!623060))

(assert (= (and b!623057 res!401650) b!623059))

(declare-fun m!598949 () Bool)

(assert (=> b!623072 m!598949))

(declare-fun m!598951 () Bool)

(assert (=> b!623065 m!598951))

(declare-fun m!598953 () Bool)

(assert (=> b!623075 m!598953))

(declare-fun m!598955 () Bool)

(assert (=> b!623075 m!598955))

(assert (=> b!623075 m!598955))

(declare-fun m!598957 () Bool)

(assert (=> b!623075 m!598957))

(assert (=> b!623067 m!598955))

(assert (=> b!623067 m!598955))

(declare-fun m!598959 () Bool)

(assert (=> b!623067 m!598959))

(declare-fun m!598961 () Bool)

(assert (=> b!623062 m!598961))

(declare-fun m!598963 () Bool)

(assert (=> b!623062 m!598963))

(assert (=> b!623062 m!598955))

(declare-fun m!598965 () Bool)

(assert (=> b!623062 m!598965))

(assert (=> b!623062 m!598955))

(declare-fun m!598967 () Bool)

(assert (=> b!623062 m!598967))

(declare-fun m!598969 () Bool)

(assert (=> b!623062 m!598969))

(declare-fun m!598971 () Bool)

(assert (=> b!623062 m!598971))

(declare-fun m!598973 () Bool)

(assert (=> b!623062 m!598973))

(assert (=> b!623076 m!598955))

(assert (=> b!623076 m!598955))

(declare-fun m!598975 () Bool)

(assert (=> b!623076 m!598975))

(assert (=> b!623068 m!598965))

(declare-fun m!598977 () Bool)

(assert (=> b!623068 m!598977))

(assert (=> b!623068 m!598955))

(assert (=> b!623059 m!598955))

(assert (=> b!623059 m!598955))

(assert (=> b!623059 m!598959))

(assert (=> b!623057 m!598955))

(declare-fun m!598979 () Bool)

(assert (=> b!623057 m!598979))

(assert (=> b!623057 m!598955))

(declare-fun m!598981 () Bool)

(assert (=> b!623057 m!598981))

(declare-fun m!598983 () Bool)

(assert (=> b!623057 m!598983))

(declare-fun m!598985 () Bool)

(assert (=> b!623057 m!598985))

(assert (=> b!623057 m!598955))

(assert (=> b!623057 m!598955))

(declare-fun m!598987 () Bool)

(assert (=> b!623057 m!598987))

(assert (=> b!623057 m!598955))

(declare-fun m!598989 () Bool)

(assert (=> b!623057 m!598989))

(declare-fun m!598991 () Bool)

(assert (=> b!623057 m!598991))

(declare-fun m!598993 () Bool)

(assert (=> b!623057 m!598993))

(declare-fun m!598995 () Bool)

(assert (=> b!623070 m!598995))

(declare-fun m!598997 () Bool)

(assert (=> b!623064 m!598997))

(declare-fun m!598999 () Bool)

(assert (=> start!56224 m!598999))

(declare-fun m!599001 () Bool)

(assert (=> start!56224 m!599001))

(assert (=> b!623074 m!598955))

(declare-fun m!599003 () Bool)

(assert (=> b!623074 m!599003))

(assert (=> b!623074 m!598955))

(assert (=> b!623074 m!598955))

(declare-fun m!599005 () Bool)

(assert (=> b!623074 m!599005))

(declare-fun m!599007 () Bool)

(assert (=> b!623074 m!599007))

(declare-fun m!599009 () Bool)

(assert (=> b!623074 m!599009))

(assert (=> b!623074 m!598991))

(assert (=> b!623074 m!598955))

(declare-fun m!599011 () Bool)

(assert (=> b!623074 m!599011))

(assert (=> b!623074 m!598993))

(declare-fun m!599013 () Bool)

(assert (=> b!623058 m!599013))

(declare-fun m!599015 () Bool)

(assert (=> b!623077 m!599015))

(assert (=> b!623056 m!598955))

(assert (=> b!623056 m!598955))

(assert (=> b!623056 m!598981))

(assert (=> b!623055 m!598965))

(declare-fun m!599017 () Bool)

(assert (=> b!623055 m!599017))

(push 1)


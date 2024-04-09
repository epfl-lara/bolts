; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56112 () Bool)

(assert start!56112)

(declare-fun b!618989 () Bool)

(assert (=> b!618989 false))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!37545 0))(
  ( (array!37546 (arr!18015 (Array (_ BitVec 32) (_ BitVec 64))) (size!18379 (_ BitVec 32))) )
))
(declare-fun lt!285685 () array!37545)

(declare-datatypes ((Unit!20440 0))(
  ( (Unit!20441) )
))
(declare-fun lt!285683 () Unit!20440)

(declare-fun a!2986 () array!37545)

(declare-datatypes ((List!12109 0))(
  ( (Nil!12106) (Cons!12105 (h!13150 (_ BitVec 64)) (t!18345 List!12109)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37545 (_ BitVec 64) (_ BitVec 32) List!12109) Unit!20440)

(assert (=> b!618989 (= lt!285683 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!285685 (select (arr!18015 a!2986) j!136) j!136 Nil!12106))))

(declare-fun arrayNoDuplicates!0 (array!37545 (_ BitVec 32) List!12109) Bool)

(assert (=> b!618989 (arrayNoDuplicates!0 lt!285685 j!136 Nil!12106)))

(declare-fun lt!285693 () Unit!20440)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37545 (_ BitVec 32) (_ BitVec 32)) Unit!20440)

(assert (=> b!618989 (= lt!285693 (lemmaNoDuplicateFromThenFromBigger!0 lt!285685 #b00000000000000000000000000000000 j!136))))

(assert (=> b!618989 (arrayNoDuplicates!0 lt!285685 #b00000000000000000000000000000000 Nil!12106)))

(declare-fun lt!285689 () Unit!20440)

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37545 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12109) Unit!20440)

(assert (=> b!618989 (= lt!285689 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12106))))

(declare-fun arrayContainsKey!0 (array!37545 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!618989 (arrayContainsKey!0 lt!285685 (select (arr!18015 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!285695 () Unit!20440)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37545 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20440)

(assert (=> b!618989 (= lt!285695 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!285685 (select (arr!18015 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!354995 () Unit!20440)

(declare-fun Unit!20442 () Unit!20440)

(assert (=> b!618989 (= e!354995 Unit!20442)))

(declare-fun b!618990 () Bool)

(declare-fun e!354998 () Unit!20440)

(declare-fun Unit!20443 () Unit!20440)

(assert (=> b!618990 (= e!354998 Unit!20443)))

(declare-fun b!618991 () Bool)

(declare-fun e!354992 () Bool)

(declare-fun e!354996 () Bool)

(assert (=> b!618991 (= e!354992 e!354996)))

(declare-fun res!398924 () Bool)

(assert (=> b!618991 (=> (not res!398924) (not e!354996))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!618991 (= res!398924 (= (select (store (arr!18015 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!618991 (= lt!285685 (array!37546 (store (arr!18015 a!2986) i!1108 k!1786) (size!18379 a!2986)))))

(declare-fun b!618992 () Bool)

(declare-fun res!398929 () Bool)

(declare-fun e!355000 () Bool)

(assert (=> b!618992 (=> (not res!398929) (not e!355000))))

(declare-fun mask!3053 () (_ BitVec 32))

(assert (=> b!618992 (= res!398929 (and (= (size!18379 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18379 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18379 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!618993 () Bool)

(declare-fun e!354997 () Bool)

(assert (=> b!618993 (= e!354996 e!354997)))

(declare-fun res!398933 () Bool)

(assert (=> b!618993 (=> (not res!398933) (not e!354997))))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6462 0))(
  ( (MissingZero!6462 (index!28131 (_ BitVec 32))) (Found!6462 (index!28132 (_ BitVec 32))) (Intermediate!6462 (undefined!7274 Bool) (index!28133 (_ BitVec 32)) (x!56943 (_ BitVec 32))) (Undefined!6462) (MissingVacant!6462 (index!28134 (_ BitVec 32))) )
))
(declare-fun lt!285679 () SeekEntryResult!6462)

(assert (=> b!618993 (= res!398933 (and (= lt!285679 (Found!6462 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18015 a!2986) index!984) (select (arr!18015 a!2986) j!136))) (not (= (select (arr!18015 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37545 (_ BitVec 32)) SeekEntryResult!6462)

(assert (=> b!618993 (= lt!285679 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18015 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!618994 () Bool)

(declare-fun e!354994 () Bool)

(assert (=> b!618994 (= e!354994 (arrayContainsKey!0 lt!285685 (select (arr!18015 a!2986) j!136) index!984))))

(declare-fun res!398936 () Bool)

(assert (=> start!56112 (=> (not res!398936) (not e!355000))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56112 (= res!398936 (validMask!0 mask!3053))))

(assert (=> start!56112 e!355000))

(assert (=> start!56112 true))

(declare-fun array_inv!13789 (array!37545) Bool)

(assert (=> start!56112 (array_inv!13789 a!2986)))

(declare-fun b!618995 () Bool)

(declare-fun e!354999 () Unit!20440)

(declare-fun Unit!20444 () Unit!20440)

(assert (=> b!618995 (= e!354999 Unit!20444)))

(declare-fun b!618996 () Bool)

(declare-fun e!355002 () Unit!20440)

(declare-fun Unit!20445 () Unit!20440)

(assert (=> b!618996 (= e!355002 Unit!20445)))

(declare-fun b!618997 () Bool)

(declare-fun res!398928 () Bool)

(assert (=> b!618997 (=> (not res!398928) (not e!355000))))

(assert (=> b!618997 (= res!398928 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!398926 () Bool)

(declare-fun b!618998 () Bool)

(assert (=> b!618998 (= res!398926 (arrayContainsKey!0 lt!285685 (select (arr!18015 a!2986) j!136) j!136))))

(assert (=> b!618998 (=> (not res!398926) (not e!354994))))

(declare-fun e!355003 () Bool)

(assert (=> b!618998 (= e!355003 e!354994)))

(declare-fun b!618999 () Bool)

(declare-fun res!398937 () Bool)

(assert (=> b!618999 (=> (not res!398937) (not e!354992))))

(assert (=> b!618999 (= res!398937 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18015 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!619000 () Bool)

(assert (=> b!619000 (= e!355000 e!354992)))

(declare-fun res!398925 () Bool)

(assert (=> b!619000 (=> (not res!398925) (not e!354992))))

(declare-fun lt!285688 () SeekEntryResult!6462)

(assert (=> b!619000 (= res!398925 (or (= lt!285688 (MissingZero!6462 i!1108)) (= lt!285688 (MissingVacant!6462 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37545 (_ BitVec 32)) SeekEntryResult!6462)

(assert (=> b!619000 (= lt!285688 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!619001 () Bool)

(declare-fun res!398923 () Bool)

(assert (=> b!619001 (=> (not res!398923) (not e!355000))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!619001 (= res!398923 (validKeyInArray!0 k!1786))))

(declare-fun b!619002 () Bool)

(declare-fun e!355004 () Bool)

(assert (=> b!619002 (= e!355004 true)))

(assert (=> b!619002 (= (select (store (arr!18015 a!2986) i!1108 k!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!619003 () Bool)

(declare-fun Unit!20446 () Unit!20440)

(assert (=> b!619003 (= e!354998 Unit!20446)))

(declare-fun res!398938 () Bool)

(assert (=> b!619003 (= res!398938 (= (select (store (arr!18015 a!2986) i!1108 k!1786) index!984) (select (arr!18015 a!2986) j!136)))))

(declare-fun e!355001 () Bool)

(assert (=> b!619003 (=> (not res!398938) (not e!355001))))

(assert (=> b!619003 e!355001))

(declare-fun c!70401 () Bool)

(assert (=> b!619003 (= c!70401 (bvslt j!136 index!984))))

(declare-fun lt!285680 () Unit!20440)

(assert (=> b!619003 (= lt!285680 e!354995)))

(declare-fun c!70403 () Bool)

(assert (=> b!619003 (= c!70403 (bvslt index!984 j!136))))

(declare-fun lt!285677 () Unit!20440)

(assert (=> b!619003 (= lt!285677 e!354999)))

(assert (=> b!619003 false))

(declare-fun e!355005 () Bool)

(declare-fun b!619004 () Bool)

(assert (=> b!619004 (= e!355005 (arrayContainsKey!0 lt!285685 (select (arr!18015 a!2986) j!136) index!984))))

(declare-fun b!619005 () Bool)

(declare-fun res!398932 () Bool)

(assert (=> b!619005 (=> (not res!398932) (not e!354992))))

(assert (=> b!619005 (= res!398932 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12106))))

(declare-fun b!619006 () Bool)

(assert (=> b!619006 (= e!354997 (not e!355004))))

(declare-fun res!398930 () Bool)

(assert (=> b!619006 (=> res!398930 e!355004)))

(declare-fun lt!285690 () SeekEntryResult!6462)

(assert (=> b!619006 (= res!398930 (not (= lt!285690 (MissingVacant!6462 vacantSpotIndex!68))))))

(declare-fun lt!285682 () Unit!20440)

(assert (=> b!619006 (= lt!285682 e!354998)))

(declare-fun c!70400 () Bool)

(assert (=> b!619006 (= c!70400 (= lt!285690 (Found!6462 index!984)))))

(declare-fun lt!285691 () Unit!20440)

(assert (=> b!619006 (= lt!285691 e!355002)))

(declare-fun c!70402 () Bool)

(assert (=> b!619006 (= c!70402 (= lt!285690 Undefined!6462))))

(declare-fun lt!285684 () (_ BitVec 64))

(assert (=> b!619006 (= lt!285690 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!285684 lt!285685 mask!3053))))

(declare-fun e!354993 () Bool)

(assert (=> b!619006 e!354993))

(declare-fun res!398939 () Bool)

(assert (=> b!619006 (=> (not res!398939) (not e!354993))))

(declare-fun lt!285687 () SeekEntryResult!6462)

(declare-fun lt!285678 () (_ BitVec 32))

(assert (=> b!619006 (= res!398939 (= lt!285687 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!285678 vacantSpotIndex!68 lt!285684 lt!285685 mask!3053)))))

(assert (=> b!619006 (= lt!285687 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!285678 vacantSpotIndex!68 (select (arr!18015 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!619006 (= lt!285684 (select (store (arr!18015 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!285696 () Unit!20440)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37545 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20440)

(assert (=> b!619006 (= lt!285696 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!285678 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!619006 (= lt!285678 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!619007 () Bool)

(declare-fun res!398931 () Bool)

(assert (=> b!619007 (=> (not res!398931) (not e!355000))))

(assert (=> b!619007 (= res!398931 (validKeyInArray!0 (select (arr!18015 a!2986) j!136)))))

(declare-fun b!619008 () Bool)

(assert (=> b!619008 false))

(declare-fun lt!285692 () Unit!20440)

(assert (=> b!619008 (= lt!285692 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!285685 (select (arr!18015 a!2986) j!136) index!984 Nil!12106))))

(assert (=> b!619008 (arrayNoDuplicates!0 lt!285685 index!984 Nil!12106)))

(declare-fun lt!285694 () Unit!20440)

(assert (=> b!619008 (= lt!285694 (lemmaNoDuplicateFromThenFromBigger!0 lt!285685 #b00000000000000000000000000000000 index!984))))

(assert (=> b!619008 (arrayNoDuplicates!0 lt!285685 #b00000000000000000000000000000000 Nil!12106)))

(declare-fun lt!285681 () Unit!20440)

(assert (=> b!619008 (= lt!285681 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12106))))

(assert (=> b!619008 (arrayContainsKey!0 lt!285685 (select (arr!18015 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!285686 () Unit!20440)

(assert (=> b!619008 (= lt!285686 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!285685 (select (arr!18015 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!619008 e!355005))

(declare-fun res!398927 () Bool)

(assert (=> b!619008 (=> (not res!398927) (not e!355005))))

(assert (=> b!619008 (= res!398927 (arrayContainsKey!0 lt!285685 (select (arr!18015 a!2986) j!136) j!136))))

(declare-fun Unit!20447 () Unit!20440)

(assert (=> b!619008 (= e!354999 Unit!20447)))

(declare-fun b!619009 () Bool)

(declare-fun Unit!20448 () Unit!20440)

(assert (=> b!619009 (= e!355002 Unit!20448)))

(assert (=> b!619009 false))

(declare-fun b!619010 () Bool)

(assert (=> b!619010 (= e!354993 (= lt!285679 lt!285687))))

(declare-fun b!619011 () Bool)

(declare-fun res!398935 () Bool)

(assert (=> b!619011 (= res!398935 (bvsge j!136 index!984))))

(assert (=> b!619011 (=> res!398935 e!355003)))

(assert (=> b!619011 (= e!355001 e!355003)))

(declare-fun b!619012 () Bool)

(declare-fun Unit!20449 () Unit!20440)

(assert (=> b!619012 (= e!354995 Unit!20449)))

(declare-fun b!619013 () Bool)

(declare-fun res!398934 () Bool)

(assert (=> b!619013 (=> (not res!398934) (not e!354992))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37545 (_ BitVec 32)) Bool)

(assert (=> b!619013 (= res!398934 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!56112 res!398936) b!618992))

(assert (= (and b!618992 res!398929) b!619007))

(assert (= (and b!619007 res!398931) b!619001))

(assert (= (and b!619001 res!398923) b!618997))

(assert (= (and b!618997 res!398928) b!619000))

(assert (= (and b!619000 res!398925) b!619013))

(assert (= (and b!619013 res!398934) b!619005))

(assert (= (and b!619005 res!398932) b!618999))

(assert (= (and b!618999 res!398937) b!618991))

(assert (= (and b!618991 res!398924) b!618993))

(assert (= (and b!618993 res!398933) b!619006))

(assert (= (and b!619006 res!398939) b!619010))

(assert (= (and b!619006 c!70402) b!619009))

(assert (= (and b!619006 (not c!70402)) b!618996))

(assert (= (and b!619006 c!70400) b!619003))

(assert (= (and b!619006 (not c!70400)) b!618990))

(assert (= (and b!619003 res!398938) b!619011))

(assert (= (and b!619011 (not res!398935)) b!618998))

(assert (= (and b!618998 res!398926) b!618994))

(assert (= (and b!619003 c!70401) b!618989))

(assert (= (and b!619003 (not c!70401)) b!619012))

(assert (= (and b!619003 c!70403) b!619008))

(assert (= (and b!619003 (not c!70403)) b!618995))

(assert (= (and b!619008 res!398927) b!619004))

(assert (= (and b!619006 (not res!398930)) b!619002))

(declare-fun m!595029 () Bool)

(assert (=> b!618999 m!595029))

(declare-fun m!595031 () Bool)

(assert (=> b!619008 m!595031))

(assert (=> b!619008 m!595031))

(declare-fun m!595033 () Bool)

(assert (=> b!619008 m!595033))

(declare-fun m!595035 () Bool)

(assert (=> b!619008 m!595035))

(declare-fun m!595037 () Bool)

(assert (=> b!619008 m!595037))

(assert (=> b!619008 m!595031))

(declare-fun m!595039 () Bool)

(assert (=> b!619008 m!595039))

(declare-fun m!595041 () Bool)

(assert (=> b!619008 m!595041))

(assert (=> b!619008 m!595031))

(declare-fun m!595043 () Bool)

(assert (=> b!619008 m!595043))

(assert (=> b!619008 m!595031))

(declare-fun m!595045 () Bool)

(assert (=> b!619008 m!595045))

(declare-fun m!595047 () Bool)

(assert (=> b!619008 m!595047))

(declare-fun m!595049 () Bool)

(assert (=> b!619003 m!595049))

(declare-fun m!595051 () Bool)

(assert (=> b!619003 m!595051))

(assert (=> b!619003 m!595031))

(assert (=> b!618994 m!595031))

(assert (=> b!618994 m!595031))

(declare-fun m!595053 () Bool)

(assert (=> b!618994 m!595053))

(declare-fun m!595055 () Bool)

(assert (=> b!618993 m!595055))

(assert (=> b!618993 m!595031))

(assert (=> b!618993 m!595031))

(declare-fun m!595057 () Bool)

(assert (=> b!618993 m!595057))

(assert (=> b!618991 m!595049))

(declare-fun m!595059 () Bool)

(assert (=> b!618991 m!595059))

(declare-fun m!595061 () Bool)

(assert (=> b!619013 m!595061))

(assert (=> b!618989 m!595031))

(declare-fun m!595063 () Bool)

(assert (=> b!618989 m!595063))

(declare-fun m!595065 () Bool)

(assert (=> b!618989 m!595065))

(assert (=> b!618989 m!595031))

(declare-fun m!595067 () Bool)

(assert (=> b!618989 m!595067))

(assert (=> b!618989 m!595035))

(declare-fun m!595069 () Bool)

(assert (=> b!618989 m!595069))

(assert (=> b!618989 m!595047))

(assert (=> b!618989 m!595031))

(assert (=> b!618989 m!595031))

(declare-fun m!595071 () Bool)

(assert (=> b!618989 m!595071))

(declare-fun m!595073 () Bool)

(assert (=> b!619005 m!595073))

(declare-fun m!595075 () Bool)

(assert (=> b!619006 m!595075))

(declare-fun m!595077 () Bool)

(assert (=> b!619006 m!595077))

(assert (=> b!619006 m!595031))

(assert (=> b!619006 m!595049))

(declare-fun m!595079 () Bool)

(assert (=> b!619006 m!595079))

(declare-fun m!595081 () Bool)

(assert (=> b!619006 m!595081))

(declare-fun m!595083 () Bool)

(assert (=> b!619006 m!595083))

(assert (=> b!619006 m!595031))

(declare-fun m!595085 () Bool)

(assert (=> b!619006 m!595085))

(declare-fun m!595087 () Bool)

(assert (=> b!619001 m!595087))

(declare-fun m!595089 () Bool)

(assert (=> start!56112 m!595089))

(declare-fun m!595091 () Bool)

(assert (=> start!56112 m!595091))

(assert (=> b!619002 m!595049))

(assert (=> b!619002 m!595051))

(assert (=> b!619004 m!595031))

(assert (=> b!619004 m!595031))

(assert (=> b!619004 m!595053))

(declare-fun m!595093 () Bool)

(assert (=> b!618997 m!595093))

(assert (=> b!618998 m!595031))

(assert (=> b!618998 m!595031))

(assert (=> b!618998 m!595033))

(assert (=> b!619007 m!595031))

(assert (=> b!619007 m!595031))

(declare-fun m!595095 () Bool)

(assert (=> b!619007 m!595095))

(declare-fun m!595097 () Bool)

(assert (=> b!619000 m!595097))

(push 1)


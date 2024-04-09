; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59112 () Bool)

(assert start!59112)

(declare-fun b!651730 () Bool)

(declare-datatypes ((Unit!22252 0))(
  ( (Unit!22253) )
))
(declare-fun e!374037 () Unit!22252)

(declare-fun Unit!22254 () Unit!22252)

(assert (=> b!651730 (= e!374037 Unit!22254)))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!38568 0))(
  ( (array!38569 (arr!18483 (Array (_ BitVec 32) (_ BitVec 64))) (size!18847 (_ BitVec 32))) )
))
(declare-fun lt!303174 () array!38568)

(declare-fun lt!303179 () Unit!22252)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!38568)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38568 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22252)

(assert (=> b!651730 (= lt!303179 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!303174 (select (arr!18483 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun arrayContainsKey!0 (array!38568 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!651730 (arrayContainsKey!0 lt!303174 (select (arr!18483 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun lt!303170 () Unit!22252)

(declare-datatypes ((List!12577 0))(
  ( (Nil!12574) (Cons!12573 (h!13618 (_ BitVec 64)) (t!18813 List!12577)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38568 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12577) Unit!22252)

(assert (=> b!651730 (= lt!303170 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12574))))

(declare-fun arrayNoDuplicates!0 (array!38568 (_ BitVec 32) List!12577) Bool)

(assert (=> b!651730 (arrayNoDuplicates!0 lt!303174 #b00000000000000000000000000000000 Nil!12574)))

(declare-fun lt!303167 () Unit!22252)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38568 (_ BitVec 32) (_ BitVec 32)) Unit!22252)

(assert (=> b!651730 (= lt!303167 (lemmaNoDuplicateFromThenFromBigger!0 lt!303174 #b00000000000000000000000000000000 j!136))))

(assert (=> b!651730 (arrayNoDuplicates!0 lt!303174 j!136 Nil!12574)))

(declare-fun lt!303166 () Unit!22252)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38568 (_ BitVec 64) (_ BitVec 32) List!12577) Unit!22252)

(assert (=> b!651730 (= lt!303166 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!303174 (select (arr!18483 a!2986) j!136) j!136 Nil!12574))))

(assert (=> b!651730 false))

(declare-fun b!651731 () Bool)

(declare-fun e!374042 () Bool)

(declare-fun e!374046 () Bool)

(assert (=> b!651731 (= e!374042 e!374046)))

(declare-fun res!422676 () Bool)

(assert (=> b!651731 (=> res!422676 e!374046)))

(declare-fun lt!303168 () (_ BitVec 64))

(declare-fun lt!303171 () (_ BitVec 64))

(assert (=> b!651731 (= res!422676 (or (not (= (select (arr!18483 a!2986) j!136) lt!303171)) (not (= (select (arr!18483 a!2986) j!136) lt!303168))))))

(declare-fun e!374034 () Bool)

(assert (=> b!651731 e!374034))

(declare-fun res!422669 () Bool)

(assert (=> b!651731 (=> (not res!422669) (not e!374034))))

(assert (=> b!651731 (= res!422669 (= lt!303168 (select (arr!18483 a!2986) j!136)))))

(assert (=> b!651731 (= lt!303168 (select (store (arr!18483 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!651732 () Bool)

(declare-fun e!374044 () Unit!22252)

(declare-fun Unit!22255 () Unit!22252)

(assert (=> b!651732 (= e!374044 Unit!22255)))

(assert (=> b!651732 false))

(declare-fun b!651733 () Bool)

(declare-fun e!374039 () Bool)

(assert (=> b!651733 (= e!374039 (arrayContainsKey!0 lt!303174 (select (arr!18483 a!2986) j!136) index!984))))

(declare-fun b!651734 () Bool)

(declare-fun e!374036 () Bool)

(declare-fun e!374041 () Bool)

(assert (=> b!651734 (= e!374036 e!374041)))

(declare-fun res!422662 () Bool)

(assert (=> b!651734 (=> (not res!422662) (not e!374041))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!651734 (= res!422662 (= (select (store (arr!18483 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!651734 (= lt!303174 (array!38569 (store (arr!18483 a!2986) i!1108 k!1786) (size!18847 a!2986)))))

(declare-fun b!651736 () Bool)

(declare-fun res!422668 () Bool)

(declare-fun e!374038 () Bool)

(assert (=> b!651736 (=> (not res!422668) (not e!374038))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!651736 (= res!422668 (validKeyInArray!0 (select (arr!18483 a!2986) j!136)))))

(declare-fun b!651737 () Bool)

(declare-fun res!422663 () Bool)

(assert (=> b!651737 (=> (not res!422663) (not e!374038))))

(assert (=> b!651737 (= res!422663 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!651738 () Bool)

(declare-fun e!374047 () Bool)

(assert (=> b!651738 (= e!374047 e!374039)))

(declare-fun res!422674 () Bool)

(assert (=> b!651738 (=> (not res!422674) (not e!374039))))

(assert (=> b!651738 (= res!422674 (arrayContainsKey!0 lt!303174 (select (arr!18483 a!2986) j!136) j!136))))

(declare-fun b!651739 () Bool)

(declare-fun e!374035 () Bool)

(assert (=> b!651739 (= e!374046 e!374035)))

(declare-fun res!422672 () Bool)

(assert (=> b!651739 (=> res!422672 e!374035)))

(assert (=> b!651739 (= res!422672 (bvsge index!984 j!136))))

(declare-fun lt!303169 () Unit!22252)

(assert (=> b!651739 (= lt!303169 e!374037)))

(declare-fun c!74903 () Bool)

(assert (=> b!651739 (= c!74903 (bvslt j!136 index!984))))

(declare-fun b!651740 () Bool)

(declare-fun Unit!22256 () Unit!22252)

(assert (=> b!651740 (= e!374044 Unit!22256)))

(declare-fun e!374033 () Bool)

(declare-fun b!651741 () Bool)

(assert (=> b!651741 (= e!374033 (arrayContainsKey!0 lt!303174 (select (arr!18483 a!2986) j!136) index!984))))

(declare-fun b!651742 () Bool)

(declare-fun res!422667 () Bool)

(assert (=> b!651742 (=> (not res!422667) (not e!374038))))

(assert (=> b!651742 (= res!422667 (validKeyInArray!0 k!1786))))

(declare-fun b!651743 () Bool)

(declare-fun e!374040 () Bool)

(assert (=> b!651743 (= e!374040 (not e!374042))))

(declare-fun res!422678 () Bool)

(assert (=> b!651743 (=> res!422678 e!374042)))

(declare-datatypes ((SeekEntryResult!6930 0))(
  ( (MissingZero!6930 (index!30072 (_ BitVec 32))) (Found!6930 (index!30073 (_ BitVec 32))) (Intermediate!6930 (undefined!7742 Bool) (index!30074 (_ BitVec 32)) (x!58890 (_ BitVec 32))) (Undefined!6930) (MissingVacant!6930 (index!30075 (_ BitVec 32))) )
))
(declare-fun lt!303180 () SeekEntryResult!6930)

(assert (=> b!651743 (= res!422678 (not (= lt!303180 (Found!6930 index!984))))))

(declare-fun lt!303173 () Unit!22252)

(assert (=> b!651743 (= lt!303173 e!374044)))

(declare-fun c!74902 () Bool)

(assert (=> b!651743 (= c!74902 (= lt!303180 Undefined!6930))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38568 (_ BitVec 32)) SeekEntryResult!6930)

(assert (=> b!651743 (= lt!303180 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!303171 lt!303174 mask!3053))))

(declare-fun e!374045 () Bool)

(assert (=> b!651743 e!374045))

(declare-fun res!422677 () Bool)

(assert (=> b!651743 (=> (not res!422677) (not e!374045))))

(declare-fun lt!303178 () SeekEntryResult!6930)

(declare-fun lt!303176 () (_ BitVec 32))

(assert (=> b!651743 (= res!422677 (= lt!303178 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!303176 vacantSpotIndex!68 lt!303171 lt!303174 mask!3053)))))

(assert (=> b!651743 (= lt!303178 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!303176 vacantSpotIndex!68 (select (arr!18483 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!651743 (= lt!303171 (select (store (arr!18483 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!303175 () Unit!22252)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38568 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22252)

(assert (=> b!651743 (= lt!303175 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!303176 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!651743 (= lt!303176 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!651744 () Bool)

(declare-fun res!422665 () Bool)

(assert (=> b!651744 (=> (not res!422665) (not e!374036))))

(assert (=> b!651744 (= res!422665 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18483 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!651735 () Bool)

(assert (=> b!651735 (= e!374035 true)))

(assert (=> b!651735 (arrayNoDuplicates!0 lt!303174 index!984 Nil!12574)))

(declare-fun lt!303177 () Unit!22252)

(assert (=> b!651735 (= lt!303177 (lemmaNoDuplicateFromThenFromBigger!0 lt!303174 #b00000000000000000000000000000000 index!984))))

(assert (=> b!651735 (arrayNoDuplicates!0 lt!303174 #b00000000000000000000000000000000 Nil!12574)))

(declare-fun lt!303163 () Unit!22252)

(assert (=> b!651735 (= lt!303163 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12574))))

(assert (=> b!651735 (arrayContainsKey!0 lt!303174 (select (arr!18483 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!303164 () Unit!22252)

(assert (=> b!651735 (= lt!303164 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!303174 (select (arr!18483 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!651735 e!374033))

(declare-fun res!422664 () Bool)

(assert (=> b!651735 (=> (not res!422664) (not e!374033))))

(assert (=> b!651735 (= res!422664 (arrayContainsKey!0 lt!303174 (select (arr!18483 a!2986) j!136) j!136))))

(declare-fun res!422661 () Bool)

(assert (=> start!59112 (=> (not res!422661) (not e!374038))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59112 (= res!422661 (validMask!0 mask!3053))))

(assert (=> start!59112 e!374038))

(assert (=> start!59112 true))

(declare-fun array_inv!14257 (array!38568) Bool)

(assert (=> start!59112 (array_inv!14257 a!2986)))

(declare-fun b!651745 () Bool)

(assert (=> b!651745 (= e!374041 e!374040)))

(declare-fun res!422673 () Bool)

(assert (=> b!651745 (=> (not res!422673) (not e!374040))))

(declare-fun lt!303172 () SeekEntryResult!6930)

(assert (=> b!651745 (= res!422673 (and (= lt!303172 (Found!6930 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18483 a!2986) index!984) (select (arr!18483 a!2986) j!136))) (not (= (select (arr!18483 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!651745 (= lt!303172 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18483 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!651746 () Bool)

(declare-fun res!422670 () Bool)

(assert (=> b!651746 (=> (not res!422670) (not e!374038))))

(assert (=> b!651746 (= res!422670 (and (= (size!18847 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18847 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18847 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!651747 () Bool)

(declare-fun res!422660 () Bool)

(assert (=> b!651747 (=> (not res!422660) (not e!374036))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38568 (_ BitVec 32)) Bool)

(assert (=> b!651747 (= res!422660 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!651748 () Bool)

(assert (=> b!651748 (= e!374038 e!374036)))

(declare-fun res!422666 () Bool)

(assert (=> b!651748 (=> (not res!422666) (not e!374036))))

(declare-fun lt!303165 () SeekEntryResult!6930)

(assert (=> b!651748 (= res!422666 (or (= lt!303165 (MissingZero!6930 i!1108)) (= lt!303165 (MissingVacant!6930 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38568 (_ BitVec 32)) SeekEntryResult!6930)

(assert (=> b!651748 (= lt!303165 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!651749 () Bool)

(declare-fun res!422675 () Bool)

(assert (=> b!651749 (=> (not res!422675) (not e!374036))))

(assert (=> b!651749 (= res!422675 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12574))))

(declare-fun b!651750 () Bool)

(assert (=> b!651750 (= e!374034 e!374047)))

(declare-fun res!422671 () Bool)

(assert (=> b!651750 (=> res!422671 e!374047)))

(assert (=> b!651750 (= res!422671 (or (not (= (select (arr!18483 a!2986) j!136) lt!303171)) (not (= (select (arr!18483 a!2986) j!136) lt!303168)) (bvsge j!136 index!984)))))

(declare-fun b!651751 () Bool)

(assert (=> b!651751 (= e!374045 (= lt!303172 lt!303178))))

(declare-fun b!651752 () Bool)

(declare-fun Unit!22257 () Unit!22252)

(assert (=> b!651752 (= e!374037 Unit!22257)))

(assert (= (and start!59112 res!422661) b!651746))

(assert (= (and b!651746 res!422670) b!651736))

(assert (= (and b!651736 res!422668) b!651742))

(assert (= (and b!651742 res!422667) b!651737))

(assert (= (and b!651737 res!422663) b!651748))

(assert (= (and b!651748 res!422666) b!651747))

(assert (= (and b!651747 res!422660) b!651749))

(assert (= (and b!651749 res!422675) b!651744))

(assert (= (and b!651744 res!422665) b!651734))

(assert (= (and b!651734 res!422662) b!651745))

(assert (= (and b!651745 res!422673) b!651743))

(assert (= (and b!651743 res!422677) b!651751))

(assert (= (and b!651743 c!74902) b!651732))

(assert (= (and b!651743 (not c!74902)) b!651740))

(assert (= (and b!651743 (not res!422678)) b!651731))

(assert (= (and b!651731 res!422669) b!651750))

(assert (= (and b!651750 (not res!422671)) b!651738))

(assert (= (and b!651738 res!422674) b!651733))

(assert (= (and b!651731 (not res!422676)) b!651739))

(assert (= (and b!651739 c!74903) b!651730))

(assert (= (and b!651739 (not c!74903)) b!651752))

(assert (= (and b!651739 (not res!422672)) b!651735))

(assert (= (and b!651735 res!422664) b!651741))

(declare-fun m!624951 () Bool)

(assert (=> b!651731 m!624951))

(declare-fun m!624953 () Bool)

(assert (=> b!651731 m!624953))

(declare-fun m!624955 () Bool)

(assert (=> b!651731 m!624955))

(assert (=> b!651741 m!624951))

(assert (=> b!651741 m!624951))

(declare-fun m!624957 () Bool)

(assert (=> b!651741 m!624957))

(declare-fun m!624959 () Bool)

(assert (=> b!651749 m!624959))

(declare-fun m!624961 () Bool)

(assert (=> b!651748 m!624961))

(assert (=> b!651736 m!624951))

(assert (=> b!651736 m!624951))

(declare-fun m!624963 () Bool)

(assert (=> b!651736 m!624963))

(declare-fun m!624965 () Bool)

(assert (=> b!651737 m!624965))

(assert (=> b!651750 m!624951))

(declare-fun m!624967 () Bool)

(assert (=> b!651744 m!624967))

(declare-fun m!624969 () Bool)

(assert (=> b!651742 m!624969))

(declare-fun m!624971 () Bool)

(assert (=> b!651743 m!624971))

(declare-fun m!624973 () Bool)

(assert (=> b!651743 m!624973))

(assert (=> b!651743 m!624953))

(declare-fun m!624975 () Bool)

(assert (=> b!651743 m!624975))

(declare-fun m!624977 () Bool)

(assert (=> b!651743 m!624977))

(declare-fun m!624979 () Bool)

(assert (=> b!651743 m!624979))

(assert (=> b!651743 m!624951))

(assert (=> b!651743 m!624951))

(declare-fun m!624981 () Bool)

(assert (=> b!651743 m!624981))

(assert (=> b!651738 m!624951))

(assert (=> b!651738 m!624951))

(declare-fun m!624983 () Bool)

(assert (=> b!651738 m!624983))

(assert (=> b!651735 m!624951))

(declare-fun m!624985 () Bool)

(assert (=> b!651735 m!624985))

(assert (=> b!651735 m!624951))

(declare-fun m!624987 () Bool)

(assert (=> b!651735 m!624987))

(assert (=> b!651735 m!624951))

(assert (=> b!651735 m!624983))

(assert (=> b!651735 m!624951))

(declare-fun m!624989 () Bool)

(assert (=> b!651735 m!624989))

(declare-fun m!624991 () Bool)

(assert (=> b!651735 m!624991))

(declare-fun m!624993 () Bool)

(assert (=> b!651735 m!624993))

(declare-fun m!624995 () Bool)

(assert (=> b!651735 m!624995))

(assert (=> b!651733 m!624951))

(assert (=> b!651733 m!624951))

(assert (=> b!651733 m!624957))

(declare-fun m!624997 () Bool)

(assert (=> start!59112 m!624997))

(declare-fun m!624999 () Bool)

(assert (=> start!59112 m!624999))

(assert (=> b!651730 m!624951))

(declare-fun m!625001 () Bool)

(assert (=> b!651730 m!625001))

(assert (=> b!651730 m!624951))

(assert (=> b!651730 m!624951))

(declare-fun m!625003 () Bool)

(assert (=> b!651730 m!625003))

(assert (=> b!651730 m!624951))

(declare-fun m!625005 () Bool)

(assert (=> b!651730 m!625005))

(declare-fun m!625007 () Bool)

(assert (=> b!651730 m!625007))

(assert (=> b!651730 m!624993))

(declare-fun m!625009 () Bool)

(assert (=> b!651730 m!625009))

(assert (=> b!651730 m!624995))

(declare-fun m!625011 () Bool)

(assert (=> b!651747 m!625011))

(assert (=> b!651734 m!624953))

(declare-fun m!625013 () Bool)

(assert (=> b!651734 m!625013))

(declare-fun m!625015 () Bool)

(assert (=> b!651745 m!625015))

(assert (=> b!651745 m!624951))

(assert (=> b!651745 m!624951))

(declare-fun m!625017 () Bool)

(assert (=> b!651745 m!625017))

(push 1)


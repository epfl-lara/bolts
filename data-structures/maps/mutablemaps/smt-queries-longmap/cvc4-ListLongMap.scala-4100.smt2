; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56110 () Bool)

(assert start!56110)

(declare-fun b!618914 () Bool)

(declare-fun res!398880 () Bool)

(declare-fun e!354960 () Bool)

(assert (=> b!618914 (=> (not res!398880) (not e!354960))))

(declare-datatypes ((array!37543 0))(
  ( (array!37544 (arr!18014 (Array (_ BitVec 32) (_ BitVec 64))) (size!18378 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37543)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37543 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!618914 (= res!398880 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!618915 () Bool)

(declare-fun res!398885 () Bool)

(assert (=> b!618915 (=> (not res!398885) (not e!354960))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!618915 (= res!398885 (validKeyInArray!0 (select (arr!18014 a!2986) j!136)))))

(declare-fun b!618916 () Bool)

(declare-datatypes ((Unit!20430 0))(
  ( (Unit!20431) )
))
(declare-fun e!354957 () Unit!20430)

(declare-fun Unit!20432 () Unit!20430)

(assert (=> b!618916 (= e!354957 Unit!20432)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun res!398878 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!618916 (= res!398878 (= (select (store (arr!18014 a!2986) i!1108 k!1786) index!984) (select (arr!18014 a!2986) j!136)))))

(declare-fun e!354958 () Bool)

(assert (=> b!618916 (=> (not res!398878) (not e!354958))))

(assert (=> b!618916 e!354958))

(declare-fun c!70389 () Bool)

(assert (=> b!618916 (= c!70389 (bvslt j!136 index!984))))

(declare-fun lt!285626 () Unit!20430)

(declare-fun e!354948 () Unit!20430)

(assert (=> b!618916 (= lt!285626 e!354948)))

(declare-fun c!70391 () Bool)

(assert (=> b!618916 (= c!70391 (bvslt index!984 j!136))))

(declare-fun lt!285633 () Unit!20430)

(declare-fun e!354954 () Unit!20430)

(assert (=> b!618916 (= lt!285633 e!354954)))

(assert (=> b!618916 false))

(declare-fun b!618917 () Bool)

(declare-fun res!398874 () Bool)

(assert (=> b!618917 (=> (not res!398874) (not e!354960))))

(declare-fun mask!3053 () (_ BitVec 32))

(assert (=> b!618917 (= res!398874 (and (= (size!18378 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18378 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18378 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!618918 () Bool)

(declare-fun e!354961 () Bool)

(assert (=> b!618918 (= e!354960 e!354961)))

(declare-fun res!398886 () Bool)

(assert (=> b!618918 (=> (not res!398886) (not e!354961))))

(declare-datatypes ((SeekEntryResult!6461 0))(
  ( (MissingZero!6461 (index!28127 (_ BitVec 32))) (Found!6461 (index!28128 (_ BitVec 32))) (Intermediate!6461 (undefined!7273 Bool) (index!28129 (_ BitVec 32)) (x!56934 (_ BitVec 32))) (Undefined!6461) (MissingVacant!6461 (index!28130 (_ BitVec 32))) )
))
(declare-fun lt!285627 () SeekEntryResult!6461)

(assert (=> b!618918 (= res!398886 (or (= lt!285627 (MissingZero!6461 i!1108)) (= lt!285627 (MissingVacant!6461 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37543 (_ BitVec 32)) SeekEntryResult!6461)

(assert (=> b!618918 (= lt!285627 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!618920 () Bool)

(declare-fun res!398883 () Bool)

(assert (=> b!618920 (=> (not res!398883) (not e!354961))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!618920 (= res!398883 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18014 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!618921 () Bool)

(declare-fun Unit!20433 () Unit!20430)

(assert (=> b!618921 (= e!354957 Unit!20433)))

(declare-fun b!618922 () Bool)

(declare-fun res!398887 () Bool)

(assert (=> b!618922 (=> (not res!398887) (not e!354961))))

(declare-datatypes ((List!12108 0))(
  ( (Nil!12105) (Cons!12104 (h!13149 (_ BitVec 64)) (t!18344 List!12108)) )
))
(declare-fun arrayNoDuplicates!0 (array!37543 (_ BitVec 32) List!12108) Bool)

(assert (=> b!618922 (= res!398887 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12105))))

(declare-fun b!618923 () Bool)

(declare-fun e!354947 () Bool)

(declare-fun lt!285622 () array!37543)

(assert (=> b!618923 (= e!354947 (arrayContainsKey!0 lt!285622 (select (arr!18014 a!2986) j!136) index!984))))

(declare-fun b!618924 () Bool)

(declare-fun e!354950 () Bool)

(assert (=> b!618924 (= e!354950 true)))

(assert (=> b!618924 (= (select (store (arr!18014 a!2986) i!1108 k!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!618925 () Bool)

(declare-fun e!354949 () Bool)

(declare-fun e!354955 () Bool)

(assert (=> b!618925 (= e!354949 e!354955)))

(declare-fun res!398881 () Bool)

(assert (=> b!618925 (=> (not res!398881) (not e!354955))))

(declare-fun lt!285628 () SeekEntryResult!6461)

(assert (=> b!618925 (= res!398881 (and (= lt!285628 (Found!6461 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18014 a!2986) index!984) (select (arr!18014 a!2986) j!136))) (not (= (select (arr!18014 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37543 (_ BitVec 32)) SeekEntryResult!6461)

(assert (=> b!618925 (= lt!285628 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18014 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!618926 () Bool)

(assert (=> b!618926 (= e!354955 (not e!354950))))

(declare-fun res!398876 () Bool)

(assert (=> b!618926 (=> res!398876 e!354950)))

(declare-fun lt!285617 () SeekEntryResult!6461)

(assert (=> b!618926 (= res!398876 (not (= lt!285617 (MissingVacant!6461 vacantSpotIndex!68))))))

(declare-fun lt!285625 () Unit!20430)

(assert (=> b!618926 (= lt!285625 e!354957)))

(declare-fun c!70388 () Bool)

(assert (=> b!618926 (= c!70388 (= lt!285617 (Found!6461 index!984)))))

(declare-fun lt!285629 () Unit!20430)

(declare-fun e!354952 () Unit!20430)

(assert (=> b!618926 (= lt!285629 e!354952)))

(declare-fun c!70390 () Bool)

(assert (=> b!618926 (= c!70390 (= lt!285617 Undefined!6461))))

(declare-fun lt!285635 () (_ BitVec 64))

(assert (=> b!618926 (= lt!285617 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!285635 lt!285622 mask!3053))))

(declare-fun e!354956 () Bool)

(assert (=> b!618926 e!354956))

(declare-fun res!398877 () Bool)

(assert (=> b!618926 (=> (not res!398877) (not e!354956))))

(declare-fun lt!285634 () SeekEntryResult!6461)

(declare-fun lt!285636 () (_ BitVec 32))

(assert (=> b!618926 (= res!398877 (= lt!285634 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!285636 vacantSpotIndex!68 lt!285635 lt!285622 mask!3053)))))

(assert (=> b!618926 (= lt!285634 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!285636 vacantSpotIndex!68 (select (arr!18014 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!618926 (= lt!285635 (select (store (arr!18014 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!285618 () Unit!20430)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37543 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20430)

(assert (=> b!618926 (= lt!285618 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!285636 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!618926 (= lt!285636 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!618927 () Bool)

(declare-fun res!398872 () Bool)

(assert (=> b!618927 (= res!398872 (arrayContainsKey!0 lt!285622 (select (arr!18014 a!2986) j!136) j!136))))

(assert (=> b!618927 (=> (not res!398872) (not e!354947))))

(declare-fun e!354953 () Bool)

(assert (=> b!618927 (= e!354953 e!354947)))

(declare-fun b!618928 () Bool)

(assert (=> b!618928 false))

(declare-fun lt!285631 () Unit!20430)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37543 (_ BitVec 64) (_ BitVec 32) List!12108) Unit!20430)

(assert (=> b!618928 (= lt!285631 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!285622 (select (arr!18014 a!2986) j!136) index!984 Nil!12105))))

(assert (=> b!618928 (arrayNoDuplicates!0 lt!285622 index!984 Nil!12105)))

(declare-fun lt!285624 () Unit!20430)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37543 (_ BitVec 32) (_ BitVec 32)) Unit!20430)

(assert (=> b!618928 (= lt!285624 (lemmaNoDuplicateFromThenFromBigger!0 lt!285622 #b00000000000000000000000000000000 index!984))))

(assert (=> b!618928 (arrayNoDuplicates!0 lt!285622 #b00000000000000000000000000000000 Nil!12105)))

(declare-fun lt!285623 () Unit!20430)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37543 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12108) Unit!20430)

(assert (=> b!618928 (= lt!285623 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12105))))

(assert (=> b!618928 (arrayContainsKey!0 lt!285622 (select (arr!18014 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!285630 () Unit!20430)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37543 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20430)

(assert (=> b!618928 (= lt!285630 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!285622 (select (arr!18014 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!354959 () Bool)

(assert (=> b!618928 e!354959))

(declare-fun res!398873 () Bool)

(assert (=> b!618928 (=> (not res!398873) (not e!354959))))

(assert (=> b!618928 (= res!398873 (arrayContainsKey!0 lt!285622 (select (arr!18014 a!2986) j!136) j!136))))

(declare-fun Unit!20434 () Unit!20430)

(assert (=> b!618928 (= e!354954 Unit!20434)))

(declare-fun b!618929 () Bool)

(declare-fun Unit!20435 () Unit!20430)

(assert (=> b!618929 (= e!354952 Unit!20435)))

(assert (=> b!618929 false))

(declare-fun b!618930 () Bool)

(assert (=> b!618930 false))

(declare-fun lt!285632 () Unit!20430)

(assert (=> b!618930 (= lt!285632 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!285622 (select (arr!18014 a!2986) j!136) j!136 Nil!12105))))

(assert (=> b!618930 (arrayNoDuplicates!0 lt!285622 j!136 Nil!12105)))

(declare-fun lt!285619 () Unit!20430)

(assert (=> b!618930 (= lt!285619 (lemmaNoDuplicateFromThenFromBigger!0 lt!285622 #b00000000000000000000000000000000 j!136))))

(assert (=> b!618930 (arrayNoDuplicates!0 lt!285622 #b00000000000000000000000000000000 Nil!12105)))

(declare-fun lt!285620 () Unit!20430)

(assert (=> b!618930 (= lt!285620 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12105))))

(assert (=> b!618930 (arrayContainsKey!0 lt!285622 (select (arr!18014 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!285621 () Unit!20430)

(assert (=> b!618930 (= lt!285621 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!285622 (select (arr!18014 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20436 () Unit!20430)

(assert (=> b!618930 (= e!354948 Unit!20436)))

(declare-fun b!618931 () Bool)

(declare-fun res!398884 () Bool)

(assert (=> b!618931 (=> (not res!398884) (not e!354961))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37543 (_ BitVec 32)) Bool)

(assert (=> b!618931 (= res!398884 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!618932 () Bool)

(assert (=> b!618932 (= e!354961 e!354949)))

(declare-fun res!398882 () Bool)

(assert (=> b!618932 (=> (not res!398882) (not e!354949))))

(assert (=> b!618932 (= res!398882 (= (select (store (arr!18014 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!618932 (= lt!285622 (array!37544 (store (arr!18014 a!2986) i!1108 k!1786) (size!18378 a!2986)))))

(declare-fun b!618933 () Bool)

(declare-fun Unit!20437 () Unit!20430)

(assert (=> b!618933 (= e!354948 Unit!20437)))

(declare-fun b!618934 () Bool)

(declare-fun Unit!20438 () Unit!20430)

(assert (=> b!618934 (= e!354952 Unit!20438)))

(declare-fun b!618935 () Bool)

(declare-fun Unit!20439 () Unit!20430)

(assert (=> b!618935 (= e!354954 Unit!20439)))

(declare-fun b!618936 () Bool)

(assert (=> b!618936 (= e!354959 (arrayContainsKey!0 lt!285622 (select (arr!18014 a!2986) j!136) index!984))))

(declare-fun b!618919 () Bool)

(declare-fun res!398888 () Bool)

(assert (=> b!618919 (= res!398888 (bvsge j!136 index!984))))

(assert (=> b!618919 (=> res!398888 e!354953)))

(assert (=> b!618919 (= e!354958 e!354953)))

(declare-fun res!398879 () Bool)

(assert (=> start!56110 (=> (not res!398879) (not e!354960))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56110 (= res!398879 (validMask!0 mask!3053))))

(assert (=> start!56110 e!354960))

(assert (=> start!56110 true))

(declare-fun array_inv!13788 (array!37543) Bool)

(assert (=> start!56110 (array_inv!13788 a!2986)))

(declare-fun b!618937 () Bool)

(assert (=> b!618937 (= e!354956 (= lt!285628 lt!285634))))

(declare-fun b!618938 () Bool)

(declare-fun res!398875 () Bool)

(assert (=> b!618938 (=> (not res!398875) (not e!354960))))

(assert (=> b!618938 (= res!398875 (validKeyInArray!0 k!1786))))

(assert (= (and start!56110 res!398879) b!618917))

(assert (= (and b!618917 res!398874) b!618915))

(assert (= (and b!618915 res!398885) b!618938))

(assert (= (and b!618938 res!398875) b!618914))

(assert (= (and b!618914 res!398880) b!618918))

(assert (= (and b!618918 res!398886) b!618931))

(assert (= (and b!618931 res!398884) b!618922))

(assert (= (and b!618922 res!398887) b!618920))

(assert (= (and b!618920 res!398883) b!618932))

(assert (= (and b!618932 res!398882) b!618925))

(assert (= (and b!618925 res!398881) b!618926))

(assert (= (and b!618926 res!398877) b!618937))

(assert (= (and b!618926 c!70390) b!618929))

(assert (= (and b!618926 (not c!70390)) b!618934))

(assert (= (and b!618926 c!70388) b!618916))

(assert (= (and b!618926 (not c!70388)) b!618921))

(assert (= (and b!618916 res!398878) b!618919))

(assert (= (and b!618919 (not res!398888)) b!618927))

(assert (= (and b!618927 res!398872) b!618923))

(assert (= (and b!618916 c!70389) b!618930))

(assert (= (and b!618916 (not c!70389)) b!618933))

(assert (= (and b!618916 c!70391) b!618928))

(assert (= (and b!618916 (not c!70391)) b!618935))

(assert (= (and b!618928 res!398873) b!618936))

(assert (= (and b!618926 (not res!398876)) b!618924))

(declare-fun m!594959 () Bool)

(assert (=> b!618920 m!594959))

(declare-fun m!594961 () Bool)

(assert (=> b!618938 m!594961))

(declare-fun m!594963 () Bool)

(assert (=> b!618918 m!594963))

(declare-fun m!594965 () Bool)

(assert (=> b!618931 m!594965))

(declare-fun m!594967 () Bool)

(assert (=> b!618932 m!594967))

(declare-fun m!594969 () Bool)

(assert (=> b!618932 m!594969))

(declare-fun m!594971 () Bool)

(assert (=> b!618914 m!594971))

(assert (=> b!618924 m!594967))

(declare-fun m!594973 () Bool)

(assert (=> b!618924 m!594973))

(declare-fun m!594975 () Bool)

(assert (=> b!618928 m!594975))

(declare-fun m!594977 () Bool)

(assert (=> b!618928 m!594977))

(declare-fun m!594979 () Bool)

(assert (=> b!618928 m!594979))

(assert (=> b!618928 m!594977))

(declare-fun m!594981 () Bool)

(assert (=> b!618928 m!594981))

(assert (=> b!618928 m!594977))

(declare-fun m!594983 () Bool)

(assert (=> b!618928 m!594983))

(assert (=> b!618928 m!594977))

(declare-fun m!594985 () Bool)

(assert (=> b!618928 m!594985))

(declare-fun m!594987 () Bool)

(assert (=> b!618928 m!594987))

(declare-fun m!594989 () Bool)

(assert (=> b!618928 m!594989))

(assert (=> b!618928 m!594977))

(declare-fun m!594991 () Bool)

(assert (=> b!618928 m!594991))

(declare-fun m!594993 () Bool)

(assert (=> b!618925 m!594993))

(assert (=> b!618925 m!594977))

(assert (=> b!618925 m!594977))

(declare-fun m!594995 () Bool)

(assert (=> b!618925 m!594995))

(assert (=> b!618916 m!594967))

(assert (=> b!618916 m!594973))

(assert (=> b!618916 m!594977))

(assert (=> b!618927 m!594977))

(assert (=> b!618927 m!594977))

(assert (=> b!618927 m!594991))

(assert (=> b!618923 m!594977))

(assert (=> b!618923 m!594977))

(declare-fun m!594997 () Bool)

(assert (=> b!618923 m!594997))

(assert (=> b!618915 m!594977))

(assert (=> b!618915 m!594977))

(declare-fun m!594999 () Bool)

(assert (=> b!618915 m!594999))

(declare-fun m!595001 () Bool)

(assert (=> b!618922 m!595001))

(assert (=> b!618936 m!594977))

(assert (=> b!618936 m!594977))

(assert (=> b!618936 m!594997))

(assert (=> b!618930 m!594975))

(assert (=> b!618930 m!594977))

(declare-fun m!595003 () Bool)

(assert (=> b!618930 m!595003))

(declare-fun m!595005 () Bool)

(assert (=> b!618930 m!595005))

(assert (=> b!618930 m!594977))

(declare-fun m!595007 () Bool)

(assert (=> b!618930 m!595007))

(assert (=> b!618930 m!594977))

(declare-fun m!595009 () Bool)

(assert (=> b!618930 m!595009))

(assert (=> b!618930 m!594987))

(declare-fun m!595011 () Bool)

(assert (=> b!618930 m!595011))

(assert (=> b!618930 m!594977))

(declare-fun m!595013 () Bool)

(assert (=> start!56110 m!595013))

(declare-fun m!595015 () Bool)

(assert (=> start!56110 m!595015))

(declare-fun m!595017 () Bool)

(assert (=> b!618926 m!595017))

(declare-fun m!595019 () Bool)

(assert (=> b!618926 m!595019))

(assert (=> b!618926 m!594977))

(declare-fun m!595021 () Bool)

(assert (=> b!618926 m!595021))

(assert (=> b!618926 m!594967))

(declare-fun m!595023 () Bool)

(assert (=> b!618926 m!595023))

(assert (=> b!618926 m!594977))

(declare-fun m!595025 () Bool)

(assert (=> b!618926 m!595025))

(declare-fun m!595027 () Bool)

(assert (=> b!618926 m!595027))

(push 1)


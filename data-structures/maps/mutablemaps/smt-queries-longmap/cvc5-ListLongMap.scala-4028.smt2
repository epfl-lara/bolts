; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54882 () Bool)

(assert start!54882)

(declare-fun b!599885 () Bool)

(declare-fun res!384985 () Bool)

(declare-fun e!342978 () Bool)

(assert (=> b!599885 (=> (not res!384985) (not e!342978))))

(declare-datatypes ((array!37080 0))(
  ( (array!37081 (arr!17796 (Array (_ BitVec 32) (_ BitVec 64))) (size!18160 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37080)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37080 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!599885 (= res!384985 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!599886 () Bool)

(declare-fun e!342982 () Bool)

(declare-fun e!342973 () Bool)

(assert (=> b!599886 (= e!342982 e!342973)))

(declare-fun res!384980 () Bool)

(assert (=> b!599886 (=> res!384980 e!342973)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!272870 () (_ BitVec 64))

(declare-fun lt!272879 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!599886 (= res!384980 (or (not (= (select (arr!17796 a!2986) j!136) lt!272870)) (not (= (select (arr!17796 a!2986) j!136) lt!272879)) (bvsge j!136 index!984)))))

(declare-fun e!342981 () Bool)

(assert (=> b!599886 e!342981))

(declare-fun res!384993 () Bool)

(assert (=> b!599886 (=> (not res!384993) (not e!342981))))

(assert (=> b!599886 (= res!384993 (= lt!272879 (select (arr!17796 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!599886 (= lt!272879 (select (store (arr!17796 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!599887 () Bool)

(declare-datatypes ((Unit!18916 0))(
  ( (Unit!18917) )
))
(declare-fun e!342979 () Unit!18916)

(declare-fun Unit!18918 () Unit!18916)

(assert (=> b!599887 (= e!342979 Unit!18918)))

(assert (=> b!599887 false))

(declare-fun b!599888 () Bool)

(declare-fun e!342976 () Bool)

(declare-fun e!342974 () Bool)

(assert (=> b!599888 (= e!342976 e!342974)))

(declare-fun res!384991 () Bool)

(assert (=> b!599888 (=> (not res!384991) (not e!342974))))

(declare-datatypes ((SeekEntryResult!6243 0))(
  ( (MissingZero!6243 (index!27228 (_ BitVec 32))) (Found!6243 (index!27229 (_ BitVec 32))) (Intermediate!6243 (undefined!7055 Bool) (index!27230 (_ BitVec 32)) (x!56059 (_ BitVec 32))) (Undefined!6243) (MissingVacant!6243 (index!27231 (_ BitVec 32))) )
))
(declare-fun lt!272877 () SeekEntryResult!6243)

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!599888 (= res!384991 (and (= lt!272877 (Found!6243 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17796 a!2986) index!984) (select (arr!17796 a!2986) j!136))) (not (= (select (arr!17796 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37080 (_ BitVec 32)) SeekEntryResult!6243)

(assert (=> b!599888 (= lt!272877 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17796 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!599889 () Bool)

(declare-fun res!384996 () Bool)

(assert (=> b!599889 (=> (not res!384996) (not e!342978))))

(assert (=> b!599889 (= res!384996 (and (= (size!18160 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18160 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18160 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!599890 () Bool)

(declare-fun e!342980 () Bool)

(assert (=> b!599890 (= e!342981 e!342980)))

(declare-fun res!384992 () Bool)

(assert (=> b!599890 (=> res!384992 e!342980)))

(assert (=> b!599890 (= res!384992 (or (not (= (select (arr!17796 a!2986) j!136) lt!272870)) (not (= (select (arr!17796 a!2986) j!136) lt!272879)) (bvsge j!136 index!984)))))

(declare-fun b!599891 () Bool)

(declare-fun e!342975 () Bool)

(assert (=> b!599891 (= e!342980 e!342975)))

(declare-fun res!384987 () Bool)

(assert (=> b!599891 (=> (not res!384987) (not e!342975))))

(declare-fun lt!272878 () array!37080)

(assert (=> b!599891 (= res!384987 (arrayContainsKey!0 lt!272878 (select (arr!17796 a!2986) j!136) j!136))))

(declare-fun b!599892 () Bool)

(declare-fun Unit!18919 () Unit!18916)

(assert (=> b!599892 (= e!342979 Unit!18919)))

(declare-fun b!599893 () Bool)

(declare-fun e!342985 () Bool)

(declare-fun lt!272880 () SeekEntryResult!6243)

(assert (=> b!599893 (= e!342985 (= lt!272877 lt!272880))))

(declare-fun b!599894 () Bool)

(declare-fun res!384979 () Bool)

(assert (=> b!599894 (=> (not res!384979) (not e!342978))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!599894 (= res!384979 (validKeyInArray!0 (select (arr!17796 a!2986) j!136)))))

(declare-fun b!599895 () Bool)

(declare-fun res!384986 () Bool)

(declare-fun e!342984 () Bool)

(assert (=> b!599895 (=> (not res!384986) (not e!342984))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37080 (_ BitVec 32)) Bool)

(assert (=> b!599895 (= res!384986 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!599896 () Bool)

(assert (=> b!599896 (= e!342975 (arrayContainsKey!0 lt!272878 (select (arr!17796 a!2986) j!136) index!984))))

(declare-fun b!599897 () Bool)

(assert (=> b!599897 (= e!342984 e!342976)))

(declare-fun res!384994 () Bool)

(assert (=> b!599897 (=> (not res!384994) (not e!342976))))

(assert (=> b!599897 (= res!384994 (= (select (store (arr!17796 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!599897 (= lt!272878 (array!37081 (store (arr!17796 a!2986) i!1108 k!1786) (size!18160 a!2986)))))

(declare-fun b!599898 () Bool)

(declare-fun res!384981 () Bool)

(declare-fun e!342977 () Bool)

(assert (=> b!599898 (=> res!384981 e!342977)))

(declare-datatypes ((List!11890 0))(
  ( (Nil!11887) (Cons!11886 (h!12931 (_ BitVec 64)) (t!18126 List!11890)) )
))
(declare-fun contains!2975 (List!11890 (_ BitVec 64)) Bool)

(assert (=> b!599898 (= res!384981 (contains!2975 Nil!11887 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!599899 () Bool)

(declare-fun res!384990 () Bool)

(assert (=> b!599899 (=> res!384990 e!342977)))

(declare-fun noDuplicate!289 (List!11890) Bool)

(assert (=> b!599899 (= res!384990 (not (noDuplicate!289 Nil!11887)))))

(declare-fun b!599900 () Bool)

(assert (=> b!599900 (= e!342978 e!342984)))

(declare-fun res!384984 () Bool)

(assert (=> b!599900 (=> (not res!384984) (not e!342984))))

(declare-fun lt!272875 () SeekEntryResult!6243)

(assert (=> b!599900 (= res!384984 (or (= lt!272875 (MissingZero!6243 i!1108)) (= lt!272875 (MissingVacant!6243 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37080 (_ BitVec 32)) SeekEntryResult!6243)

(assert (=> b!599900 (= lt!272875 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!599901 () Bool)

(assert (=> b!599901 (= e!342973 e!342977)))

(declare-fun res!384988 () Bool)

(assert (=> b!599901 (=> res!384988 e!342977)))

(assert (=> b!599901 (= res!384988 (or (bvsge (size!18160 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 j!136) (size!18160 a!2986))))))

(declare-fun arrayNoDuplicates!0 (array!37080 (_ BitVec 32) List!11890) Bool)

(assert (=> b!599901 (arrayNoDuplicates!0 lt!272878 j!136 Nil!11887)))

(declare-fun lt!272874 () Unit!18916)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37080 (_ BitVec 32) (_ BitVec 32)) Unit!18916)

(assert (=> b!599901 (= lt!272874 (lemmaNoDuplicateFromThenFromBigger!0 lt!272878 #b00000000000000000000000000000000 j!136))))

(assert (=> b!599901 (arrayNoDuplicates!0 lt!272878 #b00000000000000000000000000000000 Nil!11887)))

(declare-fun lt!272869 () Unit!18916)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37080 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11890) Unit!18916)

(assert (=> b!599901 (= lt!272869 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11887))))

(assert (=> b!599901 (arrayContainsKey!0 lt!272878 (select (arr!17796 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!272876 () Unit!18916)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37080 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18916)

(assert (=> b!599901 (= lt!272876 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!272878 (select (arr!17796 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun res!384997 () Bool)

(assert (=> start!54882 (=> (not res!384997) (not e!342978))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54882 (= res!384997 (validMask!0 mask!3053))))

(assert (=> start!54882 e!342978))

(assert (=> start!54882 true))

(declare-fun array_inv!13570 (array!37080) Bool)

(assert (=> start!54882 (array_inv!13570 a!2986)))

(declare-fun b!599902 () Bool)

(assert (=> b!599902 (= e!342977 true)))

(declare-fun lt!272871 () Bool)

(assert (=> b!599902 (= lt!272871 (contains!2975 Nil!11887 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!599903 () Bool)

(declare-fun res!384989 () Bool)

(assert (=> b!599903 (=> (not res!384989) (not e!342978))))

(assert (=> b!599903 (= res!384989 (validKeyInArray!0 k!1786))))

(declare-fun b!599904 () Bool)

(declare-fun res!384998 () Bool)

(assert (=> b!599904 (=> (not res!384998) (not e!342984))))

(assert (=> b!599904 (= res!384998 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17796 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!599905 () Bool)

(declare-fun res!384995 () Bool)

(assert (=> b!599905 (=> (not res!384995) (not e!342984))))

(assert (=> b!599905 (= res!384995 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11887))))

(declare-fun b!599906 () Bool)

(assert (=> b!599906 (= e!342974 (not e!342982))))

(declare-fun res!384983 () Bool)

(assert (=> b!599906 (=> res!384983 e!342982)))

(declare-fun lt!272873 () SeekEntryResult!6243)

(assert (=> b!599906 (= res!384983 (not (= lt!272873 (Found!6243 index!984))))))

(declare-fun lt!272867 () Unit!18916)

(assert (=> b!599906 (= lt!272867 e!342979)))

(declare-fun c!67820 () Bool)

(assert (=> b!599906 (= c!67820 (= lt!272873 Undefined!6243))))

(assert (=> b!599906 (= lt!272873 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!272870 lt!272878 mask!3053))))

(assert (=> b!599906 e!342985))

(declare-fun res!384982 () Bool)

(assert (=> b!599906 (=> (not res!384982) (not e!342985))))

(declare-fun lt!272872 () (_ BitVec 32))

(assert (=> b!599906 (= res!384982 (= lt!272880 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!272872 vacantSpotIndex!68 lt!272870 lt!272878 mask!3053)))))

(assert (=> b!599906 (= lt!272880 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!272872 vacantSpotIndex!68 (select (arr!17796 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!599906 (= lt!272870 (select (store (arr!17796 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!272868 () Unit!18916)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37080 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18916)

(assert (=> b!599906 (= lt!272868 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!272872 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!599906 (= lt!272872 (nextIndex!0 index!984 x!910 mask!3053))))

(assert (= (and start!54882 res!384997) b!599889))

(assert (= (and b!599889 res!384996) b!599894))

(assert (= (and b!599894 res!384979) b!599903))

(assert (= (and b!599903 res!384989) b!599885))

(assert (= (and b!599885 res!384985) b!599900))

(assert (= (and b!599900 res!384984) b!599895))

(assert (= (and b!599895 res!384986) b!599905))

(assert (= (and b!599905 res!384995) b!599904))

(assert (= (and b!599904 res!384998) b!599897))

(assert (= (and b!599897 res!384994) b!599888))

(assert (= (and b!599888 res!384991) b!599906))

(assert (= (and b!599906 res!384982) b!599893))

(assert (= (and b!599906 c!67820) b!599887))

(assert (= (and b!599906 (not c!67820)) b!599892))

(assert (= (and b!599906 (not res!384983)) b!599886))

(assert (= (and b!599886 res!384993) b!599890))

(assert (= (and b!599890 (not res!384992)) b!599891))

(assert (= (and b!599891 res!384987) b!599896))

(assert (= (and b!599886 (not res!384980)) b!599901))

(assert (= (and b!599901 (not res!384988)) b!599899))

(assert (= (and b!599899 (not res!384990)) b!599898))

(assert (= (and b!599898 (not res!384981)) b!599902))

(declare-fun m!577167 () Bool)

(assert (=> b!599897 m!577167))

(declare-fun m!577169 () Bool)

(assert (=> b!599897 m!577169))

(declare-fun m!577171 () Bool)

(assert (=> b!599896 m!577171))

(assert (=> b!599896 m!577171))

(declare-fun m!577173 () Bool)

(assert (=> b!599896 m!577173))

(assert (=> b!599894 m!577171))

(assert (=> b!599894 m!577171))

(declare-fun m!577175 () Bool)

(assert (=> b!599894 m!577175))

(declare-fun m!577177 () Bool)

(assert (=> b!599895 m!577177))

(declare-fun m!577179 () Bool)

(assert (=> b!599906 m!577179))

(assert (=> b!599906 m!577171))

(assert (=> b!599906 m!577167))

(assert (=> b!599906 m!577171))

(declare-fun m!577181 () Bool)

(assert (=> b!599906 m!577181))

(declare-fun m!577183 () Bool)

(assert (=> b!599906 m!577183))

(declare-fun m!577185 () Bool)

(assert (=> b!599906 m!577185))

(declare-fun m!577187 () Bool)

(assert (=> b!599906 m!577187))

(declare-fun m!577189 () Bool)

(assert (=> b!599906 m!577189))

(declare-fun m!577191 () Bool)

(assert (=> b!599888 m!577191))

(assert (=> b!599888 m!577171))

(assert (=> b!599888 m!577171))

(declare-fun m!577193 () Bool)

(assert (=> b!599888 m!577193))

(declare-fun m!577195 () Bool)

(assert (=> b!599898 m!577195))

(declare-fun m!577197 () Bool)

(assert (=> start!54882 m!577197))

(declare-fun m!577199 () Bool)

(assert (=> start!54882 m!577199))

(declare-fun m!577201 () Bool)

(assert (=> b!599904 m!577201))

(declare-fun m!577203 () Bool)

(assert (=> b!599885 m!577203))

(declare-fun m!577205 () Bool)

(assert (=> b!599905 m!577205))

(assert (=> b!599901 m!577171))

(declare-fun m!577207 () Bool)

(assert (=> b!599901 m!577207))

(assert (=> b!599901 m!577171))

(declare-fun m!577209 () Bool)

(assert (=> b!599901 m!577209))

(declare-fun m!577211 () Bool)

(assert (=> b!599901 m!577211))

(assert (=> b!599901 m!577171))

(declare-fun m!577213 () Bool)

(assert (=> b!599901 m!577213))

(declare-fun m!577215 () Bool)

(assert (=> b!599901 m!577215))

(declare-fun m!577217 () Bool)

(assert (=> b!599901 m!577217))

(assert (=> b!599891 m!577171))

(assert (=> b!599891 m!577171))

(declare-fun m!577219 () Bool)

(assert (=> b!599891 m!577219))

(declare-fun m!577221 () Bool)

(assert (=> b!599900 m!577221))

(declare-fun m!577223 () Bool)

(assert (=> b!599899 m!577223))

(assert (=> b!599890 m!577171))

(declare-fun m!577225 () Bool)

(assert (=> b!599903 m!577225))

(declare-fun m!577227 () Bool)

(assert (=> b!599902 m!577227))

(assert (=> b!599886 m!577171))

(assert (=> b!599886 m!577167))

(declare-fun m!577229 () Bool)

(assert (=> b!599886 m!577229))

(push 1)


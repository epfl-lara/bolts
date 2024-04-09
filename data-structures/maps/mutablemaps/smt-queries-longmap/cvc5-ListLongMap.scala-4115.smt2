; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56196 () Bool)

(assert start!56196)

(declare-fun b!622047 () Bool)

(declare-fun res!400982 () Bool)

(declare-fun e!356802 () Bool)

(assert (=> b!622047 (=> (not res!400982) (not e!356802))))

(declare-datatypes ((array!37629 0))(
  ( (array!37630 (arr!18057 (Array (_ BitVec 32) (_ BitVec 64))) (size!18421 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37629)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!622047 (= res!400982 (validKeyInArray!0 (select (arr!18057 a!2986) j!136)))))

(declare-fun b!622048 () Bool)

(declare-fun e!356800 () Bool)

(assert (=> b!622048 (= e!356802 e!356800)))

(declare-fun res!400986 () Bool)

(assert (=> b!622048 (=> (not res!400986) (not e!356800))))

(declare-datatypes ((SeekEntryResult!6504 0))(
  ( (MissingZero!6504 (index!28299 (_ BitVec 32))) (Found!6504 (index!28300 (_ BitVec 32))) (Intermediate!6504 (undefined!7316 Bool) (index!28301 (_ BitVec 32)) (x!57097 (_ BitVec 32))) (Undefined!6504) (MissingVacant!6504 (index!28302 (_ BitVec 32))) )
))
(declare-fun lt!288215 () SeekEntryResult!6504)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!622048 (= res!400986 (or (= lt!288215 (MissingZero!6504 i!1108)) (= lt!288215 (MissingVacant!6504 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37629 (_ BitVec 32)) SeekEntryResult!6504)

(assert (=> b!622048 (= lt!288215 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!400975 () Bool)

(assert (=> start!56196 (=> (not res!400975) (not e!356802))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56196 (= res!400975 (validMask!0 mask!3053))))

(assert (=> start!56196 e!356802))

(assert (=> start!56196 true))

(declare-fun array_inv!13831 (array!37629) Bool)

(assert (=> start!56196 (array_inv!13831 a!2986)))

(declare-fun b!622049 () Bool)

(declare-fun res!400981 () Bool)

(assert (=> b!622049 (=> (not res!400981) (not e!356802))))

(assert (=> b!622049 (= res!400981 (and (= (size!18421 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18421 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18421 a!2986)) (not (= i!1108 j!136))))))

(declare-fun lt!288207 () array!37629)

(declare-fun b!622050 () Bool)

(declare-fun e!356801 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!37629 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!622050 (= e!356801 (arrayContainsKey!0 lt!288207 (select (arr!18057 a!2986) j!136) index!984))))

(declare-fun b!622051 () Bool)

(declare-datatypes ((Unit!20860 0))(
  ( (Unit!20861) )
))
(declare-fun e!356790 () Unit!20860)

(declare-fun Unit!20862 () Unit!20860)

(assert (=> b!622051 (= e!356790 Unit!20862)))

(declare-fun res!400976 () Bool)

(assert (=> b!622051 (= res!400976 (= (select (store (arr!18057 a!2986) i!1108 k!1786) index!984) (select (arr!18057 a!2986) j!136)))))

(declare-fun e!356799 () Bool)

(assert (=> b!622051 (=> (not res!400976) (not e!356799))))

(assert (=> b!622051 e!356799))

(declare-fun c!70906 () Bool)

(assert (=> b!622051 (= c!70906 (bvslt j!136 index!984))))

(declare-fun lt!288204 () Unit!20860)

(declare-fun e!356803 () Unit!20860)

(assert (=> b!622051 (= lt!288204 e!356803)))

(declare-fun c!70907 () Bool)

(assert (=> b!622051 (= c!70907 (bvslt index!984 j!136))))

(declare-fun lt!288206 () Unit!20860)

(declare-fun e!356794 () Unit!20860)

(assert (=> b!622051 (= lt!288206 e!356794)))

(assert (=> b!622051 false))

(declare-fun b!622052 () Bool)

(declare-fun e!356791 () Bool)

(assert (=> b!622052 (= e!356791 (arrayContainsKey!0 lt!288207 (select (arr!18057 a!2986) j!136) index!984))))

(declare-fun b!622053 () Bool)

(declare-fun e!356795 () Bool)

(assert (=> b!622053 (= e!356795 (not true))))

(declare-fun lt!288198 () Unit!20860)

(assert (=> b!622053 (= lt!288198 e!356790)))

(declare-fun c!70905 () Bool)

(declare-fun lt!288203 () SeekEntryResult!6504)

(assert (=> b!622053 (= c!70905 (= lt!288203 (Found!6504 index!984)))))

(declare-fun lt!288208 () Unit!20860)

(declare-fun e!356796 () Unit!20860)

(assert (=> b!622053 (= lt!288208 e!356796)))

(declare-fun c!70904 () Bool)

(assert (=> b!622053 (= c!70904 (= lt!288203 Undefined!6504))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!288199 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37629 (_ BitVec 32)) SeekEntryResult!6504)

(assert (=> b!622053 (= lt!288203 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!288199 lt!288207 mask!3053))))

(declare-fun e!356797 () Bool)

(assert (=> b!622053 e!356797))

(declare-fun res!400978 () Bool)

(assert (=> b!622053 (=> (not res!400978) (not e!356797))))

(declare-fun lt!288212 () SeekEntryResult!6504)

(declare-fun lt!288205 () (_ BitVec 32))

(assert (=> b!622053 (= res!400978 (= lt!288212 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!288205 vacantSpotIndex!68 lt!288199 lt!288207 mask!3053)))))

(assert (=> b!622053 (= lt!288212 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!288205 vacantSpotIndex!68 (select (arr!18057 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!622053 (= lt!288199 (select (store (arr!18057 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!288211 () Unit!20860)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37629 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20860)

(assert (=> b!622053 (= lt!288211 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!288205 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!622053 (= lt!288205 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!622054 () Bool)

(declare-fun Unit!20863 () Unit!20860)

(assert (=> b!622054 (= e!356794 Unit!20863)))

(declare-fun b!622055 () Bool)

(declare-fun Unit!20864 () Unit!20860)

(assert (=> b!622055 (= e!356796 Unit!20864)))

(assert (=> b!622055 false))

(declare-fun b!622056 () Bool)

(declare-fun res!400984 () Bool)

(assert (=> b!622056 (= res!400984 (bvsge j!136 index!984))))

(declare-fun e!356793 () Bool)

(assert (=> b!622056 (=> res!400984 e!356793)))

(assert (=> b!622056 (= e!356799 e!356793)))

(declare-fun b!622057 () Bool)

(assert (=> b!622057 false))

(declare-fun lt!288202 () Unit!20860)

(declare-datatypes ((List!12151 0))(
  ( (Nil!12148) (Cons!12147 (h!13192 (_ BitVec 64)) (t!18387 List!12151)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37629 (_ BitVec 64) (_ BitVec 32) List!12151) Unit!20860)

(assert (=> b!622057 (= lt!288202 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!288207 (select (arr!18057 a!2986) j!136) j!136 Nil!12148))))

(declare-fun arrayNoDuplicates!0 (array!37629 (_ BitVec 32) List!12151) Bool)

(assert (=> b!622057 (arrayNoDuplicates!0 lt!288207 j!136 Nil!12148)))

(declare-fun lt!288210 () Unit!20860)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37629 (_ BitVec 32) (_ BitVec 32)) Unit!20860)

(assert (=> b!622057 (= lt!288210 (lemmaNoDuplicateFromThenFromBigger!0 lt!288207 #b00000000000000000000000000000000 j!136))))

(assert (=> b!622057 (arrayNoDuplicates!0 lt!288207 #b00000000000000000000000000000000 Nil!12148)))

(declare-fun lt!288201 () Unit!20860)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37629 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12151) Unit!20860)

(assert (=> b!622057 (= lt!288201 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12148))))

(assert (=> b!622057 (arrayContainsKey!0 lt!288207 (select (arr!18057 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!288216 () Unit!20860)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37629 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20860)

(assert (=> b!622057 (= lt!288216 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!288207 (select (arr!18057 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20865 () Unit!20860)

(assert (=> b!622057 (= e!356803 Unit!20865)))

(declare-fun b!622058 () Bool)

(declare-fun res!400974 () Bool)

(assert (=> b!622058 (=> (not res!400974) (not e!356800))))

(assert (=> b!622058 (= res!400974 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12148))))

(declare-fun b!622059 () Bool)

(declare-fun res!400977 () Bool)

(assert (=> b!622059 (=> (not res!400977) (not e!356800))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37629 (_ BitVec 32)) Bool)

(assert (=> b!622059 (= res!400977 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!622060 () Bool)

(declare-fun res!400980 () Bool)

(assert (=> b!622060 (=> (not res!400980) (not e!356800))))

(assert (=> b!622060 (= res!400980 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18057 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!622061 () Bool)

(declare-fun Unit!20866 () Unit!20860)

(assert (=> b!622061 (= e!356803 Unit!20866)))

(declare-fun b!622062 () Bool)

(declare-fun Unit!20867 () Unit!20860)

(assert (=> b!622062 (= e!356796 Unit!20867)))

(declare-fun b!622063 () Bool)

(assert (=> b!622063 false))

(declare-fun lt!288213 () Unit!20860)

(assert (=> b!622063 (= lt!288213 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!288207 (select (arr!18057 a!2986) j!136) index!984 Nil!12148))))

(assert (=> b!622063 (arrayNoDuplicates!0 lt!288207 index!984 Nil!12148)))

(declare-fun lt!288200 () Unit!20860)

(assert (=> b!622063 (= lt!288200 (lemmaNoDuplicateFromThenFromBigger!0 lt!288207 #b00000000000000000000000000000000 index!984))))

(assert (=> b!622063 (arrayNoDuplicates!0 lt!288207 #b00000000000000000000000000000000 Nil!12148)))

(declare-fun lt!288214 () Unit!20860)

(assert (=> b!622063 (= lt!288214 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12148))))

(assert (=> b!622063 (arrayContainsKey!0 lt!288207 (select (arr!18057 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!288209 () Unit!20860)

(assert (=> b!622063 (= lt!288209 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!288207 (select (arr!18057 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!622063 e!356801))

(declare-fun res!400988 () Bool)

(assert (=> b!622063 (=> (not res!400988) (not e!356801))))

(assert (=> b!622063 (= res!400988 (arrayContainsKey!0 lt!288207 (select (arr!18057 a!2986) j!136) j!136))))

(declare-fun Unit!20868 () Unit!20860)

(assert (=> b!622063 (= e!356794 Unit!20868)))

(declare-fun b!622064 () Bool)

(declare-fun e!356798 () Bool)

(assert (=> b!622064 (= e!356798 e!356795)))

(declare-fun res!400985 () Bool)

(assert (=> b!622064 (=> (not res!400985) (not e!356795))))

(declare-fun lt!288197 () SeekEntryResult!6504)

(assert (=> b!622064 (= res!400985 (and (= lt!288197 (Found!6504 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18057 a!2986) index!984) (select (arr!18057 a!2986) j!136))) (not (= (select (arr!18057 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!622064 (= lt!288197 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18057 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!622065 () Bool)

(declare-fun res!400983 () Bool)

(assert (=> b!622065 (=> (not res!400983) (not e!356802))))

(assert (=> b!622065 (= res!400983 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!622066 () Bool)

(declare-fun res!400987 () Bool)

(assert (=> b!622066 (=> (not res!400987) (not e!356802))))

(assert (=> b!622066 (= res!400987 (validKeyInArray!0 k!1786))))

(declare-fun b!622067 () Bool)

(declare-fun res!400979 () Bool)

(assert (=> b!622067 (= res!400979 (arrayContainsKey!0 lt!288207 (select (arr!18057 a!2986) j!136) j!136))))

(assert (=> b!622067 (=> (not res!400979) (not e!356791))))

(assert (=> b!622067 (= e!356793 e!356791)))

(declare-fun b!622068 () Bool)

(declare-fun Unit!20869 () Unit!20860)

(assert (=> b!622068 (= e!356790 Unit!20869)))

(declare-fun b!622069 () Bool)

(assert (=> b!622069 (= e!356797 (= lt!288197 lt!288212))))

(declare-fun b!622070 () Bool)

(assert (=> b!622070 (= e!356800 e!356798)))

(declare-fun res!400973 () Bool)

(assert (=> b!622070 (=> (not res!400973) (not e!356798))))

(assert (=> b!622070 (= res!400973 (= (select (store (arr!18057 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!622070 (= lt!288207 (array!37630 (store (arr!18057 a!2986) i!1108 k!1786) (size!18421 a!2986)))))

(assert (= (and start!56196 res!400975) b!622049))

(assert (= (and b!622049 res!400981) b!622047))

(assert (= (and b!622047 res!400982) b!622066))

(assert (= (and b!622066 res!400987) b!622065))

(assert (= (and b!622065 res!400983) b!622048))

(assert (= (and b!622048 res!400986) b!622059))

(assert (= (and b!622059 res!400977) b!622058))

(assert (= (and b!622058 res!400974) b!622060))

(assert (= (and b!622060 res!400980) b!622070))

(assert (= (and b!622070 res!400973) b!622064))

(assert (= (and b!622064 res!400985) b!622053))

(assert (= (and b!622053 res!400978) b!622069))

(assert (= (and b!622053 c!70904) b!622055))

(assert (= (and b!622053 (not c!70904)) b!622062))

(assert (= (and b!622053 c!70905) b!622051))

(assert (= (and b!622053 (not c!70905)) b!622068))

(assert (= (and b!622051 res!400976) b!622056))

(assert (= (and b!622056 (not res!400984)) b!622067))

(assert (= (and b!622067 res!400979) b!622052))

(assert (= (and b!622051 c!70906) b!622057))

(assert (= (and b!622051 (not c!70906)) b!622061))

(assert (= (and b!622051 c!70907) b!622063))

(assert (= (and b!622051 (not c!70907)) b!622054))

(assert (= (and b!622063 res!400988) b!622050))

(declare-fun m!597969 () Bool)

(assert (=> b!622058 m!597969))

(declare-fun m!597971 () Bool)

(assert (=> b!622048 m!597971))

(declare-fun m!597973 () Bool)

(assert (=> b!622065 m!597973))

(declare-fun m!597975 () Bool)

(assert (=> b!622064 m!597975))

(declare-fun m!597977 () Bool)

(assert (=> b!622064 m!597977))

(assert (=> b!622064 m!597977))

(declare-fun m!597979 () Bool)

(assert (=> b!622064 m!597979))

(declare-fun m!597981 () Bool)

(assert (=> b!622059 m!597981))

(assert (=> b!622052 m!597977))

(assert (=> b!622052 m!597977))

(declare-fun m!597983 () Bool)

(assert (=> b!622052 m!597983))

(assert (=> b!622067 m!597977))

(assert (=> b!622067 m!597977))

(declare-fun m!597985 () Bool)

(assert (=> b!622067 m!597985))

(declare-fun m!597987 () Bool)

(assert (=> b!622053 m!597987))

(declare-fun m!597989 () Bool)

(assert (=> b!622053 m!597989))

(declare-fun m!597991 () Bool)

(assert (=> b!622053 m!597991))

(assert (=> b!622053 m!597977))

(declare-fun m!597993 () Bool)

(assert (=> b!622053 m!597993))

(declare-fun m!597995 () Bool)

(assert (=> b!622053 m!597995))

(assert (=> b!622053 m!597977))

(declare-fun m!597997 () Bool)

(assert (=> b!622053 m!597997))

(declare-fun m!597999 () Bool)

(assert (=> b!622053 m!597999))

(assert (=> b!622047 m!597977))

(assert (=> b!622047 m!597977))

(declare-fun m!598001 () Bool)

(assert (=> b!622047 m!598001))

(assert (=> b!622063 m!597977))

(declare-fun m!598003 () Bool)

(assert (=> b!622063 m!598003))

(assert (=> b!622063 m!597977))

(declare-fun m!598005 () Bool)

(assert (=> b!622063 m!598005))

(declare-fun m!598007 () Bool)

(assert (=> b!622063 m!598007))

(assert (=> b!622063 m!597977))

(assert (=> b!622063 m!597985))

(assert (=> b!622063 m!597977))

(declare-fun m!598009 () Bool)

(assert (=> b!622063 m!598009))

(assert (=> b!622063 m!597977))

(declare-fun m!598011 () Bool)

(assert (=> b!622063 m!598011))

(declare-fun m!598013 () Bool)

(assert (=> b!622063 m!598013))

(declare-fun m!598015 () Bool)

(assert (=> b!622063 m!598015))

(declare-fun m!598017 () Bool)

(assert (=> b!622060 m!598017))

(declare-fun m!598019 () Bool)

(assert (=> start!56196 m!598019))

(declare-fun m!598021 () Bool)

(assert (=> start!56196 m!598021))

(assert (=> b!622057 m!597977))

(assert (=> b!622057 m!598005))

(declare-fun m!598023 () Bool)

(assert (=> b!622057 m!598023))

(assert (=> b!622057 m!597977))

(declare-fun m!598025 () Bool)

(assert (=> b!622057 m!598025))

(assert (=> b!622057 m!597977))

(declare-fun m!598027 () Bool)

(assert (=> b!622057 m!598027))

(assert (=> b!622057 m!597977))

(declare-fun m!598029 () Bool)

(assert (=> b!622057 m!598029))

(declare-fun m!598031 () Bool)

(assert (=> b!622057 m!598031))

(assert (=> b!622057 m!598015))

(assert (=> b!622070 m!597995))

(declare-fun m!598033 () Bool)

(assert (=> b!622070 m!598033))

(declare-fun m!598035 () Bool)

(assert (=> b!622066 m!598035))

(assert (=> b!622051 m!597995))

(declare-fun m!598037 () Bool)

(assert (=> b!622051 m!598037))

(assert (=> b!622051 m!597977))

(assert (=> b!622050 m!597977))

(assert (=> b!622050 m!597977))

(assert (=> b!622050 m!597983))

(push 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55552 () Bool)

(assert start!55552)

(declare-fun b!606981 () Bool)

(declare-fun res!390015 () Bool)

(declare-fun e!347597 () Bool)

(assert (=> b!606981 (=> (not res!390015) (not e!347597))))

(declare-datatypes ((array!37246 0))(
  ( (array!37247 (arr!17870 (Array (_ BitVec 32) (_ BitVec 64))) (size!18234 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37246)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37246 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!606981 (= res!390015 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!606982 () Bool)

(declare-fun e!347591 () Bool)

(declare-fun e!347599 () Bool)

(assert (=> b!606982 (= e!347591 e!347599)))

(declare-fun res!390034 () Bool)

(assert (=> b!606982 (=> (not res!390034) (not e!347599))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!606982 (= res!390034 (= (select (store (arr!17870 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!277128 () array!37246)

(assert (=> b!606982 (= lt!277128 (array!37247 (store (arr!17870 a!2986) i!1108 k!1786) (size!18234 a!2986)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun b!606983 () Bool)

(declare-fun e!347594 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!606983 (= e!347594 (arrayContainsKey!0 lt!277128 (select (arr!17870 a!2986) j!136) index!984))))

(declare-fun b!606984 () Bool)

(declare-fun e!347589 () Bool)

(assert (=> b!606984 (= e!347589 e!347594)))

(declare-fun res!390029 () Bool)

(assert (=> b!606984 (=> (not res!390029) (not e!347594))))

(assert (=> b!606984 (= res!390029 (arrayContainsKey!0 lt!277128 (select (arr!17870 a!2986) j!136) j!136))))

(declare-fun b!606985 () Bool)

(assert (=> b!606985 (= e!347597 e!347591)))

(declare-fun res!390017 () Bool)

(assert (=> b!606985 (=> (not res!390017) (not e!347591))))

(declare-datatypes ((SeekEntryResult!6317 0))(
  ( (MissingZero!6317 (index!27542 (_ BitVec 32))) (Found!6317 (index!27543 (_ BitVec 32))) (Intermediate!6317 (undefined!7129 Bool) (index!27544 (_ BitVec 32)) (x!56379 (_ BitVec 32))) (Undefined!6317) (MissingVacant!6317 (index!27545 (_ BitVec 32))) )
))
(declare-fun lt!277122 () SeekEntryResult!6317)

(assert (=> b!606985 (= res!390017 (or (= lt!277122 (MissingZero!6317 i!1108)) (= lt!277122 (MissingVacant!6317 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37246 (_ BitVec 32)) SeekEntryResult!6317)

(assert (=> b!606985 (= lt!277122 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!606986 () Bool)

(declare-fun e!347600 () Bool)

(assert (=> b!606986 (= e!347599 e!347600)))

(declare-fun res!390023 () Bool)

(assert (=> b!606986 (=> (not res!390023) (not e!347600))))

(declare-fun lt!277132 () SeekEntryResult!6317)

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!606986 (= res!390023 (and (= lt!277132 (Found!6317 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17870 a!2986) index!984) (select (arr!17870 a!2986) j!136))) (not (= (select (arr!17870 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37246 (_ BitVec 32)) SeekEntryResult!6317)

(assert (=> b!606986 (= lt!277132 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17870 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!606987 () Bool)

(declare-fun res!390021 () Bool)

(assert (=> b!606987 (=> (not res!390021) (not e!347591))))

(assert (=> b!606987 (= res!390021 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17870 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!606988 () Bool)

(declare-datatypes ((Unit!19330 0))(
  ( (Unit!19331) )
))
(declare-fun e!347602 () Unit!19330)

(declare-fun Unit!19332 () Unit!19330)

(assert (=> b!606988 (= e!347602 Unit!19332)))

(declare-fun b!606989 () Bool)

(declare-fun e!347593 () Bool)

(declare-fun e!347590 () Bool)

(assert (=> b!606989 (= e!347593 e!347590)))

(declare-fun res!390014 () Bool)

(assert (=> b!606989 (=> res!390014 e!347590)))

(assert (=> b!606989 (= res!390014 (or (bvsge (size!18234 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18234 a!2986))))))

(assert (=> b!606989 (arrayContainsKey!0 lt!277128 (select (arr!17870 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!277123 () Unit!19330)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37246 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19330)

(assert (=> b!606989 (= lt!277123 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!277128 (select (arr!17870 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!347595 () Bool)

(assert (=> b!606989 e!347595))

(declare-fun res!390016 () Bool)

(assert (=> b!606989 (=> (not res!390016) (not e!347595))))

(assert (=> b!606989 (= res!390016 (arrayContainsKey!0 lt!277128 (select (arr!17870 a!2986) j!136) j!136))))

(declare-fun b!606990 () Bool)

(declare-fun e!347598 () Bool)

(declare-fun lt!277127 () SeekEntryResult!6317)

(assert (=> b!606990 (= e!347598 (= lt!277132 lt!277127))))

(declare-fun b!606991 () Bool)

(declare-fun res!390033 () Bool)

(assert (=> b!606991 (=> (not res!390033) (not e!347597))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!606991 (= res!390033 (validKeyInArray!0 (select (arr!17870 a!2986) j!136)))))

(declare-fun b!606993 () Bool)

(assert (=> b!606993 (= e!347595 (arrayContainsKey!0 lt!277128 (select (arr!17870 a!2986) j!136) index!984))))

(declare-fun b!606994 () Bool)

(declare-fun res!390022 () Bool)

(assert (=> b!606994 (=> res!390022 e!347590)))

(declare-datatypes ((List!11964 0))(
  ( (Nil!11961) (Cons!11960 (h!13005 (_ BitVec 64)) (t!18200 List!11964)) )
))
(declare-fun contains!3010 (List!11964 (_ BitVec 64)) Bool)

(assert (=> b!606994 (= res!390022 (contains!3010 Nil!11961 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!606995 () Bool)

(declare-fun e!347588 () Bool)

(assert (=> b!606995 (= e!347588 e!347589)))

(declare-fun res!390032 () Bool)

(assert (=> b!606995 (=> res!390032 e!347589)))

(declare-fun lt!277135 () (_ BitVec 64))

(declare-fun lt!277131 () (_ BitVec 64))

(assert (=> b!606995 (= res!390032 (or (not (= (select (arr!17870 a!2986) j!136) lt!277131)) (not (= (select (arr!17870 a!2986) j!136) lt!277135)) (bvsge j!136 index!984)))))

(declare-fun b!606996 () Bool)

(declare-fun e!347601 () Bool)

(assert (=> b!606996 (= e!347600 (not e!347601))))

(declare-fun res!390024 () Bool)

(assert (=> b!606996 (=> res!390024 e!347601)))

(declare-fun lt!277129 () SeekEntryResult!6317)

(assert (=> b!606996 (= res!390024 (not (= lt!277129 (Found!6317 index!984))))))

(declare-fun lt!277134 () Unit!19330)

(assert (=> b!606996 (= lt!277134 e!347602)))

(declare-fun c!68852 () Bool)

(assert (=> b!606996 (= c!68852 (= lt!277129 Undefined!6317))))

(assert (=> b!606996 (= lt!277129 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!277131 lt!277128 mask!3053))))

(assert (=> b!606996 e!347598))

(declare-fun res!390030 () Bool)

(assert (=> b!606996 (=> (not res!390030) (not e!347598))))

(declare-fun lt!277137 () (_ BitVec 32))

(assert (=> b!606996 (= res!390030 (= lt!277127 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!277137 vacantSpotIndex!68 lt!277131 lt!277128 mask!3053)))))

(assert (=> b!606996 (= lt!277127 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!277137 vacantSpotIndex!68 (select (arr!17870 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!606996 (= lt!277131 (select (store (arr!17870 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!277125 () Unit!19330)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37246 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19330)

(assert (=> b!606996 (= lt!277125 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!277137 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!606996 (= lt!277137 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!606997 () Bool)

(declare-fun e!347596 () Bool)

(assert (=> b!606997 (= e!347601 e!347596)))

(declare-fun res!390026 () Bool)

(assert (=> b!606997 (=> res!390026 e!347596)))

(assert (=> b!606997 (= res!390026 (or (not (= (select (arr!17870 a!2986) j!136) lt!277131)) (not (= (select (arr!17870 a!2986) j!136) lt!277135))))))

(assert (=> b!606997 e!347588))

(declare-fun res!390019 () Bool)

(assert (=> b!606997 (=> (not res!390019) (not e!347588))))

(assert (=> b!606997 (= res!390019 (= lt!277135 (select (arr!17870 a!2986) j!136)))))

(assert (=> b!606997 (= lt!277135 (select (store (arr!17870 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!606998 () Bool)

(declare-fun res!390018 () Bool)

(assert (=> b!606998 (=> (not res!390018) (not e!347597))))

(assert (=> b!606998 (= res!390018 (validKeyInArray!0 k!1786))))

(declare-fun b!606999 () Bool)

(declare-fun Unit!19333 () Unit!19330)

(assert (=> b!606999 (= e!347602 Unit!19333)))

(assert (=> b!606999 false))

(declare-fun b!607000 () Bool)

(declare-fun res!390025 () Bool)

(assert (=> b!607000 (=> res!390025 e!347590)))

(assert (=> b!607000 (= res!390025 (contains!3010 Nil!11961 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!607001 () Bool)

(declare-fun e!347587 () Unit!19330)

(declare-fun Unit!19334 () Unit!19330)

(assert (=> b!607001 (= e!347587 Unit!19334)))

(declare-fun lt!277124 () Unit!19330)

(assert (=> b!607001 (= lt!277124 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!277128 (select (arr!17870 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!607001 (arrayContainsKey!0 lt!277128 (select (arr!17870 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!277121 () Unit!19330)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37246 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11964) Unit!19330)

(assert (=> b!607001 (= lt!277121 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11961))))

(declare-fun arrayNoDuplicates!0 (array!37246 (_ BitVec 32) List!11964) Bool)

(assert (=> b!607001 (arrayNoDuplicates!0 lt!277128 #b00000000000000000000000000000000 Nil!11961)))

(declare-fun lt!277133 () Unit!19330)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37246 (_ BitVec 32) (_ BitVec 32)) Unit!19330)

(assert (=> b!607001 (= lt!277133 (lemmaNoDuplicateFromThenFromBigger!0 lt!277128 #b00000000000000000000000000000000 j!136))))

(assert (=> b!607001 (arrayNoDuplicates!0 lt!277128 j!136 Nil!11961)))

(declare-fun lt!277130 () Unit!19330)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37246 (_ BitVec 64) (_ BitVec 32) List!11964) Unit!19330)

(assert (=> b!607001 (= lt!277130 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!277128 (select (arr!17870 a!2986) j!136) j!136 Nil!11961))))

(assert (=> b!607001 false))

(declare-fun b!607002 () Bool)

(assert (=> b!607002 (= e!347590 true)))

(declare-fun lt!277136 () Bool)

(assert (=> b!607002 (= lt!277136 (contains!3010 Nil!11961 k!1786))))

(declare-fun res!390013 () Bool)

(assert (=> start!55552 (=> (not res!390013) (not e!347597))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55552 (= res!390013 (validMask!0 mask!3053))))

(assert (=> start!55552 e!347597))

(assert (=> start!55552 true))

(declare-fun array_inv!13644 (array!37246) Bool)

(assert (=> start!55552 (array_inv!13644 a!2986)))

(declare-fun b!606992 () Bool)

(assert (=> b!606992 (= e!347596 e!347593)))

(declare-fun res!390028 () Bool)

(assert (=> b!606992 (=> res!390028 e!347593)))

(assert (=> b!606992 (= res!390028 (bvsge index!984 j!136))))

(declare-fun lt!277126 () Unit!19330)

(assert (=> b!606992 (= lt!277126 e!347587)))

(declare-fun c!68851 () Bool)

(assert (=> b!606992 (= c!68851 (bvslt j!136 index!984))))

(declare-fun b!607003 () Bool)

(declare-fun res!390031 () Bool)

(assert (=> b!607003 (=> res!390031 e!347590)))

(declare-fun noDuplicate!312 (List!11964) Bool)

(assert (=> b!607003 (= res!390031 (not (noDuplicate!312 Nil!11961)))))

(declare-fun b!607004 () Bool)

(declare-fun res!390020 () Bool)

(assert (=> b!607004 (=> (not res!390020) (not e!347591))))

(assert (=> b!607004 (= res!390020 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11961))))

(declare-fun b!607005 () Bool)

(declare-fun res!390035 () Bool)

(assert (=> b!607005 (=> (not res!390035) (not e!347591))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37246 (_ BitVec 32)) Bool)

(assert (=> b!607005 (= res!390035 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!607006 () Bool)

(declare-fun res!390027 () Bool)

(assert (=> b!607006 (=> (not res!390027) (not e!347597))))

(assert (=> b!607006 (= res!390027 (and (= (size!18234 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18234 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18234 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!607007 () Bool)

(declare-fun Unit!19335 () Unit!19330)

(assert (=> b!607007 (= e!347587 Unit!19335)))

(assert (= (and start!55552 res!390013) b!607006))

(assert (= (and b!607006 res!390027) b!606991))

(assert (= (and b!606991 res!390033) b!606998))

(assert (= (and b!606998 res!390018) b!606981))

(assert (= (and b!606981 res!390015) b!606985))

(assert (= (and b!606985 res!390017) b!607005))

(assert (= (and b!607005 res!390035) b!607004))

(assert (= (and b!607004 res!390020) b!606987))

(assert (= (and b!606987 res!390021) b!606982))

(assert (= (and b!606982 res!390034) b!606986))

(assert (= (and b!606986 res!390023) b!606996))

(assert (= (and b!606996 res!390030) b!606990))

(assert (= (and b!606996 c!68852) b!606999))

(assert (= (and b!606996 (not c!68852)) b!606988))

(assert (= (and b!606996 (not res!390024)) b!606997))

(assert (= (and b!606997 res!390019) b!606995))

(assert (= (and b!606995 (not res!390032)) b!606984))

(assert (= (and b!606984 res!390029) b!606983))

(assert (= (and b!606997 (not res!390026)) b!606992))

(assert (= (and b!606992 c!68851) b!607001))

(assert (= (and b!606992 (not c!68851)) b!607007))

(assert (= (and b!606992 (not res!390028)) b!606989))

(assert (= (and b!606989 res!390016) b!606993))

(assert (= (and b!606989 (not res!390014)) b!607003))

(assert (= (and b!607003 (not res!390031)) b!606994))

(assert (= (and b!606994 (not res!390022)) b!607000))

(assert (= (and b!607000 (not res!390025)) b!607002))

(declare-fun m!583797 () Bool)

(assert (=> b!606983 m!583797))

(assert (=> b!606983 m!583797))

(declare-fun m!583799 () Bool)

(assert (=> b!606983 m!583799))

(assert (=> b!606993 m!583797))

(assert (=> b!606993 m!583797))

(assert (=> b!606993 m!583799))

(declare-fun m!583801 () Bool)

(assert (=> b!607004 m!583801))

(declare-fun m!583803 () Bool)

(assert (=> b!606986 m!583803))

(assert (=> b!606986 m!583797))

(assert (=> b!606986 m!583797))

(declare-fun m!583805 () Bool)

(assert (=> b!606986 m!583805))

(declare-fun m!583807 () Bool)

(assert (=> b!606987 m!583807))

(declare-fun m!583809 () Bool)

(assert (=> b!607005 m!583809))

(declare-fun m!583811 () Bool)

(assert (=> b!606981 m!583811))

(declare-fun m!583813 () Bool)

(assert (=> b!606985 m!583813))

(assert (=> b!606984 m!583797))

(assert (=> b!606984 m!583797))

(declare-fun m!583815 () Bool)

(assert (=> b!606984 m!583815))

(declare-fun m!583817 () Bool)

(assert (=> start!55552 m!583817))

(declare-fun m!583819 () Bool)

(assert (=> start!55552 m!583819))

(declare-fun m!583821 () Bool)

(assert (=> b!606994 m!583821))

(declare-fun m!583823 () Bool)

(assert (=> b!606996 m!583823))

(assert (=> b!606996 m!583797))

(declare-fun m!583825 () Bool)

(assert (=> b!606996 m!583825))

(declare-fun m!583827 () Bool)

(assert (=> b!606996 m!583827))

(assert (=> b!606996 m!583797))

(declare-fun m!583829 () Bool)

(assert (=> b!606996 m!583829))

(declare-fun m!583831 () Bool)

(assert (=> b!606996 m!583831))

(declare-fun m!583833 () Bool)

(assert (=> b!606996 m!583833))

(declare-fun m!583835 () Bool)

(assert (=> b!606996 m!583835))

(assert (=> b!606982 m!583825))

(declare-fun m!583837 () Bool)

(assert (=> b!606982 m!583837))

(declare-fun m!583839 () Bool)

(assert (=> b!607000 m!583839))

(assert (=> b!606995 m!583797))

(assert (=> b!607001 m!583797))

(assert (=> b!607001 m!583797))

(declare-fun m!583841 () Bool)

(assert (=> b!607001 m!583841))

(declare-fun m!583843 () Bool)

(assert (=> b!607001 m!583843))

(assert (=> b!607001 m!583797))

(declare-fun m!583845 () Bool)

(assert (=> b!607001 m!583845))

(declare-fun m!583847 () Bool)

(assert (=> b!607001 m!583847))

(declare-fun m!583849 () Bool)

(assert (=> b!607001 m!583849))

(declare-fun m!583851 () Bool)

(assert (=> b!607001 m!583851))

(assert (=> b!607001 m!583797))

(declare-fun m!583853 () Bool)

(assert (=> b!607001 m!583853))

(declare-fun m!583855 () Bool)

(assert (=> b!606998 m!583855))

(declare-fun m!583857 () Bool)

(assert (=> b!607002 m!583857))

(assert (=> b!606991 m!583797))

(assert (=> b!606991 m!583797))

(declare-fun m!583859 () Bool)

(assert (=> b!606991 m!583859))

(declare-fun m!583861 () Bool)

(assert (=> b!607003 m!583861))

(assert (=> b!606997 m!583797))

(assert (=> b!606997 m!583825))

(declare-fun m!583863 () Bool)

(assert (=> b!606997 m!583863))

(assert (=> b!606989 m!583797))

(assert (=> b!606989 m!583797))

(declare-fun m!583865 () Bool)

(assert (=> b!606989 m!583865))

(assert (=> b!606989 m!583797))

(declare-fun m!583867 () Bool)

(assert (=> b!606989 m!583867))

(assert (=> b!606989 m!583797))

(assert (=> b!606989 m!583815))

(push 1)


; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!55556 () Bool)

(assert start!55556)

(declare-fun b!607143 () Bool)

(declare-fun res!390159 () Bool)

(declare-fun e!347685 () Bool)

(assert (=> b!607143 (=> (not res!390159) (not e!347685))))

(declare-datatypes ((array!37250 0))(
  ( (array!37251 (arr!17872 (Array (_ BitVec 32) (_ BitVec 64))) (size!18236 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37250)

(declare-datatypes ((List!11966 0))(
  ( (Nil!11963) (Cons!11962 (h!13007 (_ BitVec 64)) (t!18202 List!11966)) )
))
(declare-fun arrayNoDuplicates!0 (array!37250 (_ BitVec 32) List!11966) Bool)

(assert (=> b!607143 (= res!390159 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11963))))

(declare-fun b!607144 () Bool)

(declare-fun e!347684 () Bool)

(assert (=> b!607144 (= e!347684 e!347685)))

(declare-fun res!390173 () Bool)

(assert (=> b!607144 (=> (not res!390173) (not e!347685))))

(declare-datatypes ((SeekEntryResult!6319 0))(
  ( (MissingZero!6319 (index!27550 (_ BitVec 32))) (Found!6319 (index!27551 (_ BitVec 32))) (Intermediate!6319 (undefined!7131 Bool) (index!27552 (_ BitVec 32)) (x!56389 (_ BitVec 32))) (Undefined!6319) (MissingVacant!6319 (index!27553 (_ BitVec 32))) )
))
(declare-fun lt!277233 () SeekEntryResult!6319)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!607144 (= res!390173 (or (= lt!277233 (MissingZero!6319 i!1108)) (= lt!277233 (MissingVacant!6319 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37250 (_ BitVec 32)) SeekEntryResult!6319)

(assert (=> b!607144 (= lt!277233 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!607145 () Bool)

(declare-fun e!347692 () Bool)

(assert (=> b!607145 (= e!347692 true)))

(declare-fun lt!277229 () Bool)

(declare-fun contains!3012 (List!11966 (_ BitVec 64)) Bool)

(assert (=> b!607145 (= lt!277229 (contains!3012 Nil!11963 k0!1786))))

(declare-fun b!607146 () Bool)

(declare-datatypes ((Unit!19342 0))(
  ( (Unit!19343) )
))
(declare-fun e!347696 () Unit!19342)

(declare-fun Unit!19344 () Unit!19342)

(assert (=> b!607146 (= e!347696 Unit!19344)))

(declare-fun b!607147 () Bool)

(declare-fun e!347694 () Bool)

(declare-fun e!347689 () Bool)

(assert (=> b!607147 (= e!347694 e!347689)))

(declare-fun res!390157 () Bool)

(assert (=> b!607147 (=> (not res!390157) (not e!347689))))

(declare-fun lt!277236 () SeekEntryResult!6319)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!607147 (= res!390157 (and (= lt!277236 (Found!6319 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17872 a!2986) index!984) (select (arr!17872 a!2986) j!136))) (not (= (select (arr!17872 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37250 (_ BitVec 32)) SeekEntryResult!6319)

(assert (=> b!607147 (= lt!277236 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17872 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!607148 () Bool)

(declare-fun res!390166 () Bool)

(assert (=> b!607148 (=> (not res!390166) (not e!347684))))

(declare-fun arrayContainsKey!0 (array!37250 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!607148 (= res!390166 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!607149 () Bool)

(declare-fun e!347698 () Unit!19342)

(declare-fun Unit!19345 () Unit!19342)

(assert (=> b!607149 (= e!347698 Unit!19345)))

(assert (=> b!607149 false))

(declare-fun b!607150 () Bool)

(declare-fun res!390168 () Bool)

(assert (=> b!607150 (=> (not res!390168) (not e!347684))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!607150 (= res!390168 (validKeyInArray!0 k0!1786))))

(declare-fun b!607151 () Bool)

(declare-fun e!347688 () Bool)

(declare-fun e!347691 () Bool)

(assert (=> b!607151 (= e!347688 e!347691)))

(declare-fun res!390151 () Bool)

(assert (=> b!607151 (=> res!390151 e!347691)))

(declare-fun lt!277225 () (_ BitVec 64))

(declare-fun lt!277227 () (_ BitVec 64))

(assert (=> b!607151 (= res!390151 (or (not (= (select (arr!17872 a!2986) j!136) lt!277227)) (not (= (select (arr!17872 a!2986) j!136) lt!277225)) (bvsge j!136 index!984)))))

(declare-fun b!607152 () Bool)

(declare-fun res!390165 () Bool)

(assert (=> b!607152 (=> res!390165 e!347692)))

(assert (=> b!607152 (= res!390165 (contains!3012 Nil!11963 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!607153 () Bool)

(declare-fun e!347693 () Bool)

(declare-fun e!347683 () Bool)

(assert (=> b!607153 (= e!347693 e!347683)))

(declare-fun res!390167 () Bool)

(assert (=> b!607153 (=> res!390167 e!347683)))

(assert (=> b!607153 (= res!390167 (or (not (= (select (arr!17872 a!2986) j!136) lt!277227)) (not (= (select (arr!17872 a!2986) j!136) lt!277225))))))

(assert (=> b!607153 e!347688))

(declare-fun res!390160 () Bool)

(assert (=> b!607153 (=> (not res!390160) (not e!347688))))

(assert (=> b!607153 (= res!390160 (= lt!277225 (select (arr!17872 a!2986) j!136)))))

(assert (=> b!607153 (= lt!277225 (select (store (arr!17872 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!607154 () Bool)

(declare-fun e!347686 () Bool)

(assert (=> b!607154 (= e!347683 e!347686)))

(declare-fun res!390153 () Bool)

(assert (=> b!607154 (=> res!390153 e!347686)))

(assert (=> b!607154 (= res!390153 (bvsge index!984 j!136))))

(declare-fun lt!277223 () Unit!19342)

(assert (=> b!607154 (= lt!277223 e!347696)))

(declare-fun c!68863 () Bool)

(assert (=> b!607154 (= c!68863 (bvslt j!136 index!984))))

(declare-fun b!607155 () Bool)

(assert (=> b!607155 (= e!347689 (not e!347693))))

(declare-fun res!390172 () Bool)

(assert (=> b!607155 (=> res!390172 e!347693)))

(declare-fun lt!277235 () SeekEntryResult!6319)

(assert (=> b!607155 (= res!390172 (not (= lt!277235 (Found!6319 index!984))))))

(declare-fun lt!277224 () Unit!19342)

(assert (=> b!607155 (= lt!277224 e!347698)))

(declare-fun c!68864 () Bool)

(assert (=> b!607155 (= c!68864 (= lt!277235 Undefined!6319))))

(declare-fun lt!277234 () array!37250)

(assert (=> b!607155 (= lt!277235 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!277227 lt!277234 mask!3053))))

(declare-fun e!347695 () Bool)

(assert (=> b!607155 e!347695))

(declare-fun res!390171 () Bool)

(assert (=> b!607155 (=> (not res!390171) (not e!347695))))

(declare-fun lt!277237 () (_ BitVec 32))

(declare-fun lt!277232 () SeekEntryResult!6319)

(assert (=> b!607155 (= res!390171 (= lt!277232 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!277237 vacantSpotIndex!68 lt!277227 lt!277234 mask!3053)))))

(assert (=> b!607155 (= lt!277232 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!277237 vacantSpotIndex!68 (select (arr!17872 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!607155 (= lt!277227 (select (store (arr!17872 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!277226 () Unit!19342)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37250 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19342)

(assert (=> b!607155 (= lt!277226 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!277237 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!607155 (= lt!277237 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!607156 () Bool)

(declare-fun res!390158 () Bool)

(assert (=> b!607156 (=> (not res!390158) (not e!347685))))

(assert (=> b!607156 (= res!390158 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17872 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!607157 () Bool)

(declare-fun res!390156 () Bool)

(assert (=> b!607157 (=> (not res!390156) (not e!347684))))

(assert (=> b!607157 (= res!390156 (validKeyInArray!0 (select (arr!17872 a!2986) j!136)))))

(declare-fun e!347687 () Bool)

(declare-fun b!607159 () Bool)

(assert (=> b!607159 (= e!347687 (arrayContainsKey!0 lt!277234 (select (arr!17872 a!2986) j!136) index!984))))

(declare-fun b!607160 () Bool)

(assert (=> b!607160 (= e!347686 e!347692)))

(declare-fun res!390152 () Bool)

(assert (=> b!607160 (=> res!390152 e!347692)))

(assert (=> b!607160 (= res!390152 (or (bvsge (size!18236 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18236 a!2986))))))

(assert (=> b!607160 (arrayContainsKey!0 lt!277234 (select (arr!17872 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!277230 () Unit!19342)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37250 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19342)

(assert (=> b!607160 (= lt!277230 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!277234 (select (arr!17872 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!347697 () Bool)

(assert (=> b!607160 e!347697))

(declare-fun res!390162 () Bool)

(assert (=> b!607160 (=> (not res!390162) (not e!347697))))

(assert (=> b!607160 (= res!390162 (arrayContainsKey!0 lt!277234 (select (arr!17872 a!2986) j!136) j!136))))

(declare-fun b!607161 () Bool)

(assert (=> b!607161 (= e!347685 e!347694)))

(declare-fun res!390155 () Bool)

(assert (=> b!607161 (=> (not res!390155) (not e!347694))))

(assert (=> b!607161 (= res!390155 (= (select (store (arr!17872 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!607161 (= lt!277234 (array!37251 (store (arr!17872 a!2986) i!1108 k0!1786) (size!18236 a!2986)))))

(declare-fun b!607162 () Bool)

(assert (=> b!607162 (= e!347695 (= lt!277236 lt!277232))))

(declare-fun b!607163 () Bool)

(assert (=> b!607163 (= e!347697 (arrayContainsKey!0 lt!277234 (select (arr!17872 a!2986) j!136) index!984))))

(declare-fun b!607164 () Bool)

(declare-fun res!390161 () Bool)

(assert (=> b!607164 (=> res!390161 e!347692)))

(declare-fun noDuplicate!314 (List!11966) Bool)

(assert (=> b!607164 (= res!390161 (not (noDuplicate!314 Nil!11963)))))

(declare-fun b!607165 () Bool)

(declare-fun res!390169 () Bool)

(assert (=> b!607165 (=> res!390169 e!347692)))

(assert (=> b!607165 (= res!390169 (contains!3012 Nil!11963 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!607166 () Bool)

(declare-fun Unit!19346 () Unit!19342)

(assert (=> b!607166 (= e!347696 Unit!19346)))

(declare-fun lt!277231 () Unit!19342)

(assert (=> b!607166 (= lt!277231 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!277234 (select (arr!17872 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!607166 (arrayContainsKey!0 lt!277234 (select (arr!17872 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!277228 () Unit!19342)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37250 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11966) Unit!19342)

(assert (=> b!607166 (= lt!277228 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11963))))

(assert (=> b!607166 (arrayNoDuplicates!0 lt!277234 #b00000000000000000000000000000000 Nil!11963)))

(declare-fun lt!277239 () Unit!19342)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37250 (_ BitVec 32) (_ BitVec 32)) Unit!19342)

(assert (=> b!607166 (= lt!277239 (lemmaNoDuplicateFromThenFromBigger!0 lt!277234 #b00000000000000000000000000000000 j!136))))

(assert (=> b!607166 (arrayNoDuplicates!0 lt!277234 j!136 Nil!11963)))

(declare-fun lt!277238 () Unit!19342)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37250 (_ BitVec 64) (_ BitVec 32) List!11966) Unit!19342)

(assert (=> b!607166 (= lt!277238 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!277234 (select (arr!17872 a!2986) j!136) j!136 Nil!11963))))

(assert (=> b!607166 false))

(declare-fun b!607167 () Bool)

(assert (=> b!607167 (= e!347691 e!347687)))

(declare-fun res!390163 () Bool)

(assert (=> b!607167 (=> (not res!390163) (not e!347687))))

(assert (=> b!607167 (= res!390163 (arrayContainsKey!0 lt!277234 (select (arr!17872 a!2986) j!136) j!136))))

(declare-fun b!607168 () Bool)

(declare-fun res!390154 () Bool)

(assert (=> b!607168 (=> (not res!390154) (not e!347684))))

(assert (=> b!607168 (= res!390154 (and (= (size!18236 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18236 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18236 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!607169 () Bool)

(declare-fun Unit!19347 () Unit!19342)

(assert (=> b!607169 (= e!347698 Unit!19347)))

(declare-fun res!390164 () Bool)

(assert (=> start!55556 (=> (not res!390164) (not e!347684))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55556 (= res!390164 (validMask!0 mask!3053))))

(assert (=> start!55556 e!347684))

(assert (=> start!55556 true))

(declare-fun array_inv!13646 (array!37250) Bool)

(assert (=> start!55556 (array_inv!13646 a!2986)))

(declare-fun b!607158 () Bool)

(declare-fun res!390170 () Bool)

(assert (=> b!607158 (=> (not res!390170) (not e!347685))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37250 (_ BitVec 32)) Bool)

(assert (=> b!607158 (= res!390170 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!55556 res!390164) b!607168))

(assert (= (and b!607168 res!390154) b!607157))

(assert (= (and b!607157 res!390156) b!607150))

(assert (= (and b!607150 res!390168) b!607148))

(assert (= (and b!607148 res!390166) b!607144))

(assert (= (and b!607144 res!390173) b!607158))

(assert (= (and b!607158 res!390170) b!607143))

(assert (= (and b!607143 res!390159) b!607156))

(assert (= (and b!607156 res!390158) b!607161))

(assert (= (and b!607161 res!390155) b!607147))

(assert (= (and b!607147 res!390157) b!607155))

(assert (= (and b!607155 res!390171) b!607162))

(assert (= (and b!607155 c!68864) b!607149))

(assert (= (and b!607155 (not c!68864)) b!607169))

(assert (= (and b!607155 (not res!390172)) b!607153))

(assert (= (and b!607153 res!390160) b!607151))

(assert (= (and b!607151 (not res!390151)) b!607167))

(assert (= (and b!607167 res!390163) b!607159))

(assert (= (and b!607153 (not res!390167)) b!607154))

(assert (= (and b!607154 c!68863) b!607166))

(assert (= (and b!607154 (not c!68863)) b!607146))

(assert (= (and b!607154 (not res!390153)) b!607160))

(assert (= (and b!607160 res!390162) b!607163))

(assert (= (and b!607160 (not res!390152)) b!607164))

(assert (= (and b!607164 (not res!390161)) b!607152))

(assert (= (and b!607152 (not res!390165)) b!607165))

(assert (= (and b!607165 (not res!390169)) b!607145))

(declare-fun m!583941 () Bool)

(assert (=> b!607160 m!583941))

(assert (=> b!607160 m!583941))

(declare-fun m!583943 () Bool)

(assert (=> b!607160 m!583943))

(assert (=> b!607160 m!583941))

(declare-fun m!583945 () Bool)

(assert (=> b!607160 m!583945))

(assert (=> b!607160 m!583941))

(declare-fun m!583947 () Bool)

(assert (=> b!607160 m!583947))

(declare-fun m!583949 () Bool)

(assert (=> b!607156 m!583949))

(declare-fun m!583951 () Bool)

(assert (=> b!607148 m!583951))

(declare-fun m!583953 () Bool)

(assert (=> b!607161 m!583953))

(declare-fun m!583955 () Bool)

(assert (=> b!607161 m!583955))

(assert (=> b!607153 m!583941))

(assert (=> b!607153 m!583953))

(declare-fun m!583957 () Bool)

(assert (=> b!607153 m!583957))

(declare-fun m!583959 () Bool)

(assert (=> b!607145 m!583959))

(declare-fun m!583961 () Bool)

(assert (=> b!607165 m!583961))

(declare-fun m!583963 () Bool)

(assert (=> b!607155 m!583963))

(declare-fun m!583965 () Bool)

(assert (=> b!607155 m!583965))

(declare-fun m!583967 () Bool)

(assert (=> b!607155 m!583967))

(assert (=> b!607155 m!583941))

(assert (=> b!607155 m!583953))

(assert (=> b!607155 m!583941))

(declare-fun m!583969 () Bool)

(assert (=> b!607155 m!583969))

(declare-fun m!583971 () Bool)

(assert (=> b!607155 m!583971))

(declare-fun m!583973 () Bool)

(assert (=> b!607155 m!583973))

(assert (=> b!607167 m!583941))

(assert (=> b!607167 m!583941))

(assert (=> b!607167 m!583947))

(declare-fun m!583975 () Bool)

(assert (=> b!607164 m!583975))

(declare-fun m!583977 () Bool)

(assert (=> b!607150 m!583977))

(assert (=> b!607151 m!583941))

(declare-fun m!583979 () Bool)

(assert (=> b!607143 m!583979))

(declare-fun m!583981 () Bool)

(assert (=> b!607147 m!583981))

(assert (=> b!607147 m!583941))

(assert (=> b!607147 m!583941))

(declare-fun m!583983 () Bool)

(assert (=> b!607147 m!583983))

(assert (=> b!607159 m!583941))

(assert (=> b!607159 m!583941))

(declare-fun m!583985 () Bool)

(assert (=> b!607159 m!583985))

(declare-fun m!583987 () Bool)

(assert (=> b!607144 m!583987))

(assert (=> b!607157 m!583941))

(assert (=> b!607157 m!583941))

(declare-fun m!583989 () Bool)

(assert (=> b!607157 m!583989))

(assert (=> b!607166 m!583941))

(assert (=> b!607166 m!583941))

(declare-fun m!583991 () Bool)

(assert (=> b!607166 m!583991))

(assert (=> b!607166 m!583941))

(declare-fun m!583993 () Bool)

(assert (=> b!607166 m!583993))

(declare-fun m!583995 () Bool)

(assert (=> b!607166 m!583995))

(assert (=> b!607166 m!583941))

(declare-fun m!583997 () Bool)

(assert (=> b!607166 m!583997))

(declare-fun m!583999 () Bool)

(assert (=> b!607166 m!583999))

(declare-fun m!584001 () Bool)

(assert (=> b!607166 m!584001))

(declare-fun m!584003 () Bool)

(assert (=> b!607166 m!584003))

(declare-fun m!584005 () Bool)

(assert (=> start!55556 m!584005))

(declare-fun m!584007 () Bool)

(assert (=> start!55556 m!584007))

(declare-fun m!584009 () Bool)

(assert (=> b!607152 m!584009))

(assert (=> b!607163 m!583941))

(assert (=> b!607163 m!583941))

(assert (=> b!607163 m!583985))

(declare-fun m!584011 () Bool)

(assert (=> b!607158 m!584011))

(check-sat (not b!607155) (not b!607163) (not b!607143) (not b!607166) (not b!607167) (not b!607150) (not b!607157) (not b!607160) (not b!607165) (not b!607159) (not b!607158) (not b!607148) (not b!607147) (not b!607152) (not b!607144) (not b!607164) (not start!55556) (not b!607145))
(check-sat)

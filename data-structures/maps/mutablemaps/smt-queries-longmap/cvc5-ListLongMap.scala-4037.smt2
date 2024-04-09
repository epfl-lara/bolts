; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55020 () Bool)

(assert start!55020)

(declare-fun b!601967 () Bool)

(declare-fun res!386619 () Bool)

(declare-fun e!344265 () Bool)

(assert (=> b!601967 (=> (not res!386619) (not e!344265))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37137 0))(
  ( (array!37138 (arr!17823 (Array (_ BitVec 32) (_ BitVec 64))) (size!18187 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37137)

(assert (=> b!601967 (= res!386619 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17823 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!601968 () Bool)

(declare-fun e!344266 () Bool)

(declare-fun e!344259 () Bool)

(assert (=> b!601968 (= e!344266 (not e!344259))))

(declare-fun res!386629 () Bool)

(assert (=> b!601968 (=> res!386629 e!344259)))

(declare-datatypes ((SeekEntryResult!6270 0))(
  ( (MissingZero!6270 (index!27339 (_ BitVec 32))) (Found!6270 (index!27340 (_ BitVec 32))) (Intermediate!6270 (undefined!7082 Bool) (index!27341 (_ BitVec 32)) (x!56167 (_ BitVec 32))) (Undefined!6270) (MissingVacant!6270 (index!27342 (_ BitVec 32))) )
))
(declare-fun lt!274184 () SeekEntryResult!6270)

(assert (=> b!601968 (= res!386629 (not (= lt!274184 (Found!6270 index!984))))))

(declare-datatypes ((Unit!19048 0))(
  ( (Unit!19049) )
))
(declare-fun lt!274187 () Unit!19048)

(declare-fun e!344267 () Unit!19048)

(assert (=> b!601968 (= lt!274187 e!344267)))

(declare-fun c!68045 () Bool)

(assert (=> b!601968 (= c!68045 (= lt!274184 Undefined!6270))))

(declare-fun lt!274189 () array!37137)

(declare-fun lt!274196 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37137 (_ BitVec 32)) SeekEntryResult!6270)

(assert (=> b!601968 (= lt!274184 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!274196 lt!274189 mask!3053))))

(declare-fun e!344268 () Bool)

(assert (=> b!601968 e!344268))

(declare-fun res!386614 () Bool)

(assert (=> b!601968 (=> (not res!386614) (not e!344268))))

(declare-fun lt!274186 () SeekEntryResult!6270)

(declare-fun lt!274190 () (_ BitVec 32))

(assert (=> b!601968 (= res!386614 (= lt!274186 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!274190 vacantSpotIndex!68 lt!274196 lt!274189 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!601968 (= lt!274186 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!274190 vacantSpotIndex!68 (select (arr!17823 a!2986) j!136) a!2986 mask!3053))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!601968 (= lt!274196 (select (store (arr!17823 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!274193 () Unit!19048)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37137 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19048)

(assert (=> b!601968 (= lt!274193 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!274190 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!601968 (= lt!274190 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!601969 () Bool)

(declare-fun e!344262 () Bool)

(assert (=> b!601969 (= e!344262 (bvslt index!984 (size!18187 a!2986)))))

(declare-fun arrayContainsKey!0 (array!37137 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!601969 (arrayContainsKey!0 lt!274189 (select (arr!17823 a!2986) j!136) j!136)))

(declare-fun b!601970 () Bool)

(declare-fun res!386613 () Bool)

(declare-fun e!344272 () Bool)

(assert (=> b!601970 (=> (not res!386613) (not e!344272))))

(assert (=> b!601970 (= res!386613 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!601971 () Bool)

(declare-fun e!344263 () Bool)

(assert (=> b!601971 (= e!344263 e!344262)))

(declare-fun res!386621 () Bool)

(assert (=> b!601971 (=> res!386621 e!344262)))

(assert (=> b!601971 (= res!386621 (bvsge index!984 j!136))))

(declare-fun lt!274191 () Unit!19048)

(declare-fun e!344261 () Unit!19048)

(assert (=> b!601971 (= lt!274191 e!344261)))

(declare-fun c!68044 () Bool)

(assert (=> b!601971 (= c!68044 (bvslt j!136 index!984))))

(declare-fun b!601972 () Bool)

(declare-fun e!344260 () Bool)

(declare-fun e!344264 () Bool)

(assert (=> b!601972 (= e!344260 e!344264)))

(declare-fun res!386618 () Bool)

(assert (=> b!601972 (=> res!386618 e!344264)))

(declare-fun lt!274195 () (_ BitVec 64))

(assert (=> b!601972 (= res!386618 (or (not (= (select (arr!17823 a!2986) j!136) lt!274196)) (not (= (select (arr!17823 a!2986) j!136) lt!274195)) (bvsge j!136 index!984)))))

(declare-fun b!601973 () Bool)

(declare-fun Unit!19050 () Unit!19048)

(assert (=> b!601973 (= e!344267 Unit!19050)))

(assert (=> b!601973 false))

(declare-fun b!601974 () Bool)

(declare-fun res!386616 () Bool)

(assert (=> b!601974 (=> (not res!386616) (not e!344272))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!601974 (= res!386616 (validKeyInArray!0 k!1786))))

(declare-fun b!601975 () Bool)

(declare-fun lt!274192 () SeekEntryResult!6270)

(assert (=> b!601975 (= e!344268 (= lt!274192 lt!274186))))

(declare-fun b!601976 () Bool)

(declare-fun Unit!19051 () Unit!19048)

(assert (=> b!601976 (= e!344267 Unit!19051)))

(declare-fun b!601977 () Bool)

(declare-fun res!386628 () Bool)

(assert (=> b!601977 (=> (not res!386628) (not e!344265))))

(declare-datatypes ((List!11917 0))(
  ( (Nil!11914) (Cons!11913 (h!12958 (_ BitVec 64)) (t!18153 List!11917)) )
))
(declare-fun arrayNoDuplicates!0 (array!37137 (_ BitVec 32) List!11917) Bool)

(assert (=> b!601977 (= res!386628 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11914))))

(declare-fun b!601978 () Bool)

(declare-fun e!344271 () Bool)

(assert (=> b!601978 (= e!344271 (arrayContainsKey!0 lt!274189 (select (arr!17823 a!2986) j!136) index!984))))

(declare-fun b!601979 () Bool)

(assert (=> b!601979 (= e!344264 e!344271)))

(declare-fun res!386622 () Bool)

(assert (=> b!601979 (=> (not res!386622) (not e!344271))))

(assert (=> b!601979 (= res!386622 (arrayContainsKey!0 lt!274189 (select (arr!17823 a!2986) j!136) j!136))))

(declare-fun b!601980 () Bool)

(declare-fun res!386627 () Bool)

(assert (=> b!601980 (=> (not res!386627) (not e!344265))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37137 (_ BitVec 32)) Bool)

(assert (=> b!601980 (= res!386627 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!601981 () Bool)

(assert (=> b!601981 (= e!344259 e!344263)))

(declare-fun res!386625 () Bool)

(assert (=> b!601981 (=> res!386625 e!344263)))

(assert (=> b!601981 (= res!386625 (or (not (= (select (arr!17823 a!2986) j!136) lt!274196)) (not (= (select (arr!17823 a!2986) j!136) lt!274195))))))

(assert (=> b!601981 e!344260))

(declare-fun res!386624 () Bool)

(assert (=> b!601981 (=> (not res!386624) (not e!344260))))

(assert (=> b!601981 (= res!386624 (= lt!274195 (select (arr!17823 a!2986) j!136)))))

(assert (=> b!601981 (= lt!274195 (select (store (arr!17823 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!601982 () Bool)

(declare-fun e!344269 () Bool)

(assert (=> b!601982 (= e!344269 e!344266)))

(declare-fun res!386623 () Bool)

(assert (=> b!601982 (=> (not res!386623) (not e!344266))))

(assert (=> b!601982 (= res!386623 (and (= lt!274192 (Found!6270 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17823 a!2986) index!984) (select (arr!17823 a!2986) j!136))) (not (= (select (arr!17823 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!601982 (= lt!274192 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17823 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!386620 () Bool)

(assert (=> start!55020 (=> (not res!386620) (not e!344272))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55020 (= res!386620 (validMask!0 mask!3053))))

(assert (=> start!55020 e!344272))

(assert (=> start!55020 true))

(declare-fun array_inv!13597 (array!37137) Bool)

(assert (=> start!55020 (array_inv!13597 a!2986)))

(declare-fun b!601983 () Bool)

(declare-fun Unit!19052 () Unit!19048)

(assert (=> b!601983 (= e!344261 Unit!19052)))

(declare-fun lt!274183 () Unit!19048)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37137 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19048)

(assert (=> b!601983 (= lt!274183 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!274189 (select (arr!17823 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!601983 (arrayContainsKey!0 lt!274189 (select (arr!17823 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!274194 () Unit!19048)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37137 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11917) Unit!19048)

(assert (=> b!601983 (= lt!274194 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11914))))

(assert (=> b!601983 (arrayNoDuplicates!0 lt!274189 #b00000000000000000000000000000000 Nil!11914)))

(declare-fun lt!274188 () Unit!19048)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37137 (_ BitVec 32) (_ BitVec 32)) Unit!19048)

(assert (=> b!601983 (= lt!274188 (lemmaNoDuplicateFromThenFromBigger!0 lt!274189 #b00000000000000000000000000000000 j!136))))

(assert (=> b!601983 (arrayNoDuplicates!0 lt!274189 j!136 Nil!11914)))

(declare-fun lt!274197 () Unit!19048)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37137 (_ BitVec 64) (_ BitVec 32) List!11917) Unit!19048)

(assert (=> b!601983 (= lt!274197 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!274189 (select (arr!17823 a!2986) j!136) j!136 Nil!11914))))

(assert (=> b!601983 false))

(declare-fun b!601984 () Bool)

(assert (=> b!601984 (= e!344265 e!344269)))

(declare-fun res!386626 () Bool)

(assert (=> b!601984 (=> (not res!386626) (not e!344269))))

(assert (=> b!601984 (= res!386626 (= (select (store (arr!17823 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!601984 (= lt!274189 (array!37138 (store (arr!17823 a!2986) i!1108 k!1786) (size!18187 a!2986)))))

(declare-fun b!601985 () Bool)

(declare-fun res!386615 () Bool)

(assert (=> b!601985 (=> (not res!386615) (not e!344272))))

(assert (=> b!601985 (= res!386615 (validKeyInArray!0 (select (arr!17823 a!2986) j!136)))))

(declare-fun b!601986 () Bool)

(assert (=> b!601986 (= e!344272 e!344265)))

(declare-fun res!386630 () Bool)

(assert (=> b!601986 (=> (not res!386630) (not e!344265))))

(declare-fun lt!274185 () SeekEntryResult!6270)

(assert (=> b!601986 (= res!386630 (or (= lt!274185 (MissingZero!6270 i!1108)) (= lt!274185 (MissingVacant!6270 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37137 (_ BitVec 32)) SeekEntryResult!6270)

(assert (=> b!601986 (= lt!274185 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!601987 () Bool)

(declare-fun Unit!19053 () Unit!19048)

(assert (=> b!601987 (= e!344261 Unit!19053)))

(declare-fun b!601988 () Bool)

(declare-fun res!386617 () Bool)

(assert (=> b!601988 (=> (not res!386617) (not e!344272))))

(assert (=> b!601988 (= res!386617 (and (= (size!18187 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18187 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18187 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!55020 res!386620) b!601988))

(assert (= (and b!601988 res!386617) b!601985))

(assert (= (and b!601985 res!386615) b!601974))

(assert (= (and b!601974 res!386616) b!601970))

(assert (= (and b!601970 res!386613) b!601986))

(assert (= (and b!601986 res!386630) b!601980))

(assert (= (and b!601980 res!386627) b!601977))

(assert (= (and b!601977 res!386628) b!601967))

(assert (= (and b!601967 res!386619) b!601984))

(assert (= (and b!601984 res!386626) b!601982))

(assert (= (and b!601982 res!386623) b!601968))

(assert (= (and b!601968 res!386614) b!601975))

(assert (= (and b!601968 c!68045) b!601973))

(assert (= (and b!601968 (not c!68045)) b!601976))

(assert (= (and b!601968 (not res!386629)) b!601981))

(assert (= (and b!601981 res!386624) b!601972))

(assert (= (and b!601972 (not res!386618)) b!601979))

(assert (= (and b!601979 res!386622) b!601978))

(assert (= (and b!601981 (not res!386625)) b!601971))

(assert (= (and b!601971 c!68044) b!601983))

(assert (= (and b!601971 (not c!68044)) b!601987))

(assert (= (and b!601971 (not res!386621)) b!601969))

(declare-fun m!579159 () Bool)

(assert (=> b!601979 m!579159))

(assert (=> b!601979 m!579159))

(declare-fun m!579161 () Bool)

(assert (=> b!601979 m!579161))

(declare-fun m!579163 () Bool)

(assert (=> b!601967 m!579163))

(assert (=> b!601969 m!579159))

(assert (=> b!601969 m!579159))

(assert (=> b!601969 m!579161))

(declare-fun m!579165 () Bool)

(assert (=> b!601968 m!579165))

(declare-fun m!579167 () Bool)

(assert (=> b!601968 m!579167))

(declare-fun m!579169 () Bool)

(assert (=> b!601968 m!579169))

(assert (=> b!601968 m!579159))

(declare-fun m!579171 () Bool)

(assert (=> b!601968 m!579171))

(declare-fun m!579173 () Bool)

(assert (=> b!601968 m!579173))

(assert (=> b!601968 m!579159))

(declare-fun m!579175 () Bool)

(assert (=> b!601968 m!579175))

(declare-fun m!579177 () Bool)

(assert (=> b!601968 m!579177))

(assert (=> b!601981 m!579159))

(assert (=> b!601981 m!579171))

(declare-fun m!579179 () Bool)

(assert (=> b!601981 m!579179))

(assert (=> b!601972 m!579159))

(assert (=> b!601985 m!579159))

(assert (=> b!601985 m!579159))

(declare-fun m!579181 () Bool)

(assert (=> b!601985 m!579181))

(declare-fun m!579183 () Bool)

(assert (=> b!601986 m!579183))

(assert (=> b!601983 m!579159))

(declare-fun m!579185 () Bool)

(assert (=> b!601983 m!579185))

(declare-fun m!579187 () Bool)

(assert (=> b!601983 m!579187))

(assert (=> b!601983 m!579159))

(declare-fun m!579189 () Bool)

(assert (=> b!601983 m!579189))

(declare-fun m!579191 () Bool)

(assert (=> b!601983 m!579191))

(assert (=> b!601983 m!579159))

(declare-fun m!579193 () Bool)

(assert (=> b!601983 m!579193))

(declare-fun m!579195 () Bool)

(assert (=> b!601983 m!579195))

(assert (=> b!601983 m!579159))

(declare-fun m!579197 () Bool)

(assert (=> b!601983 m!579197))

(declare-fun m!579199 () Bool)

(assert (=> b!601970 m!579199))

(declare-fun m!579201 () Bool)

(assert (=> b!601980 m!579201))

(declare-fun m!579203 () Bool)

(assert (=> b!601977 m!579203))

(declare-fun m!579205 () Bool)

(assert (=> b!601982 m!579205))

(assert (=> b!601982 m!579159))

(assert (=> b!601982 m!579159))

(declare-fun m!579207 () Bool)

(assert (=> b!601982 m!579207))

(declare-fun m!579209 () Bool)

(assert (=> start!55020 m!579209))

(declare-fun m!579211 () Bool)

(assert (=> start!55020 m!579211))

(declare-fun m!579213 () Bool)

(assert (=> b!601974 m!579213))

(assert (=> b!601978 m!579159))

(assert (=> b!601978 m!579159))

(declare-fun m!579215 () Bool)

(assert (=> b!601978 m!579215))

(assert (=> b!601984 m!579171))

(declare-fun m!579217 () Bool)

(assert (=> b!601984 m!579217))

(push 1)

(assert (not b!601974))

(assert (not b!601969))

(assert (not start!55020))

(assert (not b!601986))

(assert (not b!601982))

(assert (not b!601977))

(assert (not b!601985))

(assert (not b!601983))

(assert (not b!601978))

(assert (not b!601979))

(assert (not b!601968))

(assert (not b!601970))

(assert (not b!601980))

(check-sat)

(pop 1)

(push 1)

(check-sat)


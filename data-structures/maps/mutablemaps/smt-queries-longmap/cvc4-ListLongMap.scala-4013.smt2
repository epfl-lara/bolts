; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54562 () Bool)

(assert start!54562)

(declare-fun b!596248 () Bool)

(declare-fun res!382227 () Bool)

(declare-fun e!340662 () Bool)

(assert (=> b!596248 (=> (not res!382227) (not e!340662))))

(declare-datatypes ((array!36985 0))(
  ( (array!36986 (arr!17753 (Array (_ BitVec 32) (_ BitVec 64))) (size!18117 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36985)

(declare-datatypes ((List!11847 0))(
  ( (Nil!11844) (Cons!11843 (h!12888 (_ BitVec 64)) (t!18083 List!11847)) )
))
(declare-fun arrayNoDuplicates!0 (array!36985 (_ BitVec 32) List!11847) Bool)

(assert (=> b!596248 (= res!382227 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11844))))

(declare-fun b!596249 () Bool)

(declare-fun res!382215 () Bool)

(declare-fun e!340671 () Bool)

(assert (=> b!596249 (=> res!382215 e!340671)))

(declare-fun contains!2951 (List!11847 (_ BitVec 64)) Bool)

(assert (=> b!596249 (= res!382215 (contains!2951 Nil!11844 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!596250 () Bool)

(declare-fun e!340660 () Bool)

(declare-datatypes ((SeekEntryResult!6200 0))(
  ( (MissingZero!6200 (index!27047 (_ BitVec 32))) (Found!6200 (index!27048 (_ BitVec 32))) (Intermediate!6200 (undefined!7012 Bool) (index!27049 (_ BitVec 32)) (x!55869 (_ BitVec 32))) (Undefined!6200) (MissingVacant!6200 (index!27050 (_ BitVec 32))) )
))
(declare-fun lt!270860 () SeekEntryResult!6200)

(declare-fun lt!270856 () SeekEntryResult!6200)

(assert (=> b!596250 (= e!340660 (= lt!270860 lt!270856))))

(declare-fun b!596251 () Bool)

(declare-fun e!340667 () Bool)

(declare-fun e!340666 () Bool)

(assert (=> b!596251 (= e!340667 e!340666)))

(declare-fun res!382219 () Bool)

(assert (=> b!596251 (=> (not res!382219) (not e!340666))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!596251 (= res!382219 (and (= lt!270860 (Found!6200 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17753 a!2986) index!984) (select (arr!17753 a!2986) j!136))) (not (= (select (arr!17753 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36985 (_ BitVec 32)) SeekEntryResult!6200)

(assert (=> b!596251 (= lt!270860 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17753 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!596252 () Bool)

(declare-datatypes ((Unit!18744 0))(
  ( (Unit!18745) )
))
(declare-fun e!340663 () Unit!18744)

(declare-fun Unit!18746 () Unit!18744)

(assert (=> b!596252 (= e!340663 Unit!18746)))

(assert (=> b!596252 false))

(declare-fun b!596253 () Bool)

(declare-fun res!382214 () Bool)

(declare-fun e!340661 () Bool)

(assert (=> b!596253 (=> (not res!382214) (not e!340661))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!596253 (= res!382214 (validKeyInArray!0 k!1786))))

(declare-fun b!596254 () Bool)

(declare-fun res!382218 () Bool)

(assert (=> b!596254 (=> (not res!382218) (not e!340661))))

(declare-fun arrayContainsKey!0 (array!36985 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!596254 (= res!382218 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!596255 () Bool)

(declare-fun e!340665 () Bool)

(declare-fun e!340664 () Bool)

(assert (=> b!596255 (= e!340665 e!340664)))

(declare-fun res!382224 () Bool)

(assert (=> b!596255 (=> res!382224 e!340664)))

(declare-fun lt!270864 () (_ BitVec 64))

(declare-fun lt!270857 () (_ BitVec 64))

(assert (=> b!596255 (= res!382224 (or (not (= (select (arr!17753 a!2986) j!136) lt!270864)) (not (= (select (arr!17753 a!2986) j!136) lt!270857)) (bvsge j!136 index!984)))))

(declare-fun e!340669 () Bool)

(assert (=> b!596255 e!340669))

(declare-fun res!382216 () Bool)

(assert (=> b!596255 (=> (not res!382216) (not e!340669))))

(assert (=> b!596255 (= res!382216 (= lt!270857 (select (arr!17753 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!596255 (= lt!270857 (select (store (arr!17753 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!596256 () Bool)

(declare-fun e!340668 () Bool)

(assert (=> b!596256 (= e!340669 e!340668)))

(declare-fun res!382230 () Bool)

(assert (=> b!596256 (=> res!382230 e!340668)))

(assert (=> b!596256 (= res!382230 (or (not (= (select (arr!17753 a!2986) j!136) lt!270864)) (not (= (select (arr!17753 a!2986) j!136) lt!270857)) (bvsge j!136 index!984)))))

(declare-fun b!596257 () Bool)

(assert (=> b!596257 (= e!340662 e!340667)))

(declare-fun res!382232 () Bool)

(assert (=> b!596257 (=> (not res!382232) (not e!340667))))

(assert (=> b!596257 (= res!382232 (= (select (store (arr!17753 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!270858 () array!36985)

(assert (=> b!596257 (= lt!270858 (array!36986 (store (arr!17753 a!2986) i!1108 k!1786) (size!18117 a!2986)))))

(declare-fun b!596258 () Bool)

(declare-fun Unit!18747 () Unit!18744)

(assert (=> b!596258 (= e!340663 Unit!18747)))

(declare-fun b!596259 () Bool)

(declare-fun res!382222 () Bool)

(assert (=> b!596259 (=> res!382222 e!340671)))

(assert (=> b!596259 (= res!382222 (contains!2951 Nil!11844 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!596260 () Bool)

(declare-fun res!382217 () Bool)

(assert (=> b!596260 (=> (not res!382217) (not e!340662))))

(assert (=> b!596260 (= res!382217 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17753 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!382220 () Bool)

(assert (=> start!54562 (=> (not res!382220) (not e!340661))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54562 (= res!382220 (validMask!0 mask!3053))))

(assert (=> start!54562 e!340661))

(assert (=> start!54562 true))

(declare-fun array_inv!13527 (array!36985) Bool)

(assert (=> start!54562 (array_inv!13527 a!2986)))

(declare-fun b!596261 () Bool)

(assert (=> b!596261 (= e!340671 true)))

(declare-fun lt!270862 () Bool)

(assert (=> b!596261 (= lt!270862 (contains!2951 Nil!11844 k!1786))))

(declare-fun b!596262 () Bool)

(declare-fun res!382212 () Bool)

(assert (=> b!596262 (=> (not res!382212) (not e!340661))))

(assert (=> b!596262 (= res!382212 (validKeyInArray!0 (select (arr!17753 a!2986) j!136)))))

(declare-fun b!596263 () Bool)

(assert (=> b!596263 (= e!340661 e!340662)))

(declare-fun res!382221 () Bool)

(assert (=> b!596263 (=> (not res!382221) (not e!340662))))

(declare-fun lt!270859 () SeekEntryResult!6200)

(assert (=> b!596263 (= res!382221 (or (= lt!270859 (MissingZero!6200 i!1108)) (= lt!270859 (MissingVacant!6200 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36985 (_ BitVec 32)) SeekEntryResult!6200)

(assert (=> b!596263 (= lt!270859 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!596264 () Bool)

(declare-fun e!340672 () Bool)

(assert (=> b!596264 (= e!340672 (arrayContainsKey!0 lt!270858 (select (arr!17753 a!2986) j!136) index!984))))

(declare-fun b!596265 () Bool)

(assert (=> b!596265 (= e!340664 e!340671)))

(declare-fun res!382225 () Bool)

(assert (=> b!596265 (=> res!382225 e!340671)))

(assert (=> b!596265 (= res!382225 (or (bvsge (size!18117 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18117 a!2986))))))

(assert (=> b!596265 (arrayContainsKey!0 lt!270858 (select (arr!17753 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!270853 () Unit!18744)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36985 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18744)

(assert (=> b!596265 (= lt!270853 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!270858 (select (arr!17753 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!596266 () Bool)

(declare-fun res!382231 () Bool)

(assert (=> b!596266 (=> (not res!382231) (not e!340661))))

(assert (=> b!596266 (= res!382231 (and (= (size!18117 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18117 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18117 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!596267 () Bool)

(declare-fun res!382228 () Bool)

(assert (=> b!596267 (=> (not res!382228) (not e!340662))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36985 (_ BitVec 32)) Bool)

(assert (=> b!596267 (= res!382228 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!596268 () Bool)

(declare-fun res!382223 () Bool)

(assert (=> b!596268 (=> res!382223 e!340671)))

(declare-fun noDuplicate!267 (List!11847) Bool)

(assert (=> b!596268 (= res!382223 (not (noDuplicate!267 Nil!11844)))))

(declare-fun b!596269 () Bool)

(assert (=> b!596269 (= e!340666 (not e!340665))))

(declare-fun res!382213 () Bool)

(assert (=> b!596269 (=> res!382213 e!340665)))

(declare-fun lt!270854 () SeekEntryResult!6200)

(assert (=> b!596269 (= res!382213 (not (= lt!270854 (Found!6200 index!984))))))

(declare-fun lt!270861 () Unit!18744)

(assert (=> b!596269 (= lt!270861 e!340663)))

(declare-fun c!67385 () Bool)

(assert (=> b!596269 (= c!67385 (= lt!270854 Undefined!6200))))

(assert (=> b!596269 (= lt!270854 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!270864 lt!270858 mask!3053))))

(assert (=> b!596269 e!340660))

(declare-fun res!382229 () Bool)

(assert (=> b!596269 (=> (not res!382229) (not e!340660))))

(declare-fun lt!270855 () (_ BitVec 32))

(assert (=> b!596269 (= res!382229 (= lt!270856 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270855 vacantSpotIndex!68 lt!270864 lt!270858 mask!3053)))))

(assert (=> b!596269 (= lt!270856 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270855 vacantSpotIndex!68 (select (arr!17753 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!596269 (= lt!270864 (select (store (arr!17753 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!270863 () Unit!18744)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36985 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18744)

(assert (=> b!596269 (= lt!270863 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!270855 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!596269 (= lt!270855 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!596270 () Bool)

(assert (=> b!596270 (= e!340668 e!340672)))

(declare-fun res!382226 () Bool)

(assert (=> b!596270 (=> (not res!382226) (not e!340672))))

(assert (=> b!596270 (= res!382226 (arrayContainsKey!0 lt!270858 (select (arr!17753 a!2986) j!136) j!136))))

(assert (= (and start!54562 res!382220) b!596266))

(assert (= (and b!596266 res!382231) b!596262))

(assert (= (and b!596262 res!382212) b!596253))

(assert (= (and b!596253 res!382214) b!596254))

(assert (= (and b!596254 res!382218) b!596263))

(assert (= (and b!596263 res!382221) b!596267))

(assert (= (and b!596267 res!382228) b!596248))

(assert (= (and b!596248 res!382227) b!596260))

(assert (= (and b!596260 res!382217) b!596257))

(assert (= (and b!596257 res!382232) b!596251))

(assert (= (and b!596251 res!382219) b!596269))

(assert (= (and b!596269 res!382229) b!596250))

(assert (= (and b!596269 c!67385) b!596252))

(assert (= (and b!596269 (not c!67385)) b!596258))

(assert (= (and b!596269 (not res!382213)) b!596255))

(assert (= (and b!596255 res!382216) b!596256))

(assert (= (and b!596256 (not res!382230)) b!596270))

(assert (= (and b!596270 res!382226) b!596264))

(assert (= (and b!596255 (not res!382224)) b!596265))

(assert (= (and b!596265 (not res!382225)) b!596268))

(assert (= (and b!596268 (not res!382223)) b!596259))

(assert (= (and b!596259 (not res!382222)) b!596249))

(assert (= (and b!596249 (not res!382215)) b!596261))

(declare-fun m!573785 () Bool)

(assert (=> b!596256 m!573785))

(assert (=> b!596264 m!573785))

(assert (=> b!596264 m!573785))

(declare-fun m!573787 () Bool)

(assert (=> b!596264 m!573787))

(declare-fun m!573789 () Bool)

(assert (=> b!596257 m!573789))

(declare-fun m!573791 () Bool)

(assert (=> b!596257 m!573791))

(declare-fun m!573793 () Bool)

(assert (=> b!596267 m!573793))

(declare-fun m!573795 () Bool)

(assert (=> b!596249 m!573795))

(declare-fun m!573797 () Bool)

(assert (=> b!596254 m!573797))

(declare-fun m!573799 () Bool)

(assert (=> b!596268 m!573799))

(declare-fun m!573801 () Bool)

(assert (=> b!596260 m!573801))

(declare-fun m!573803 () Bool)

(assert (=> b!596248 m!573803))

(declare-fun m!573805 () Bool)

(assert (=> b!596263 m!573805))

(declare-fun m!573807 () Bool)

(assert (=> start!54562 m!573807))

(declare-fun m!573809 () Bool)

(assert (=> start!54562 m!573809))

(assert (=> b!596262 m!573785))

(assert (=> b!596262 m!573785))

(declare-fun m!573811 () Bool)

(assert (=> b!596262 m!573811))

(assert (=> b!596255 m!573785))

(assert (=> b!596255 m!573789))

(declare-fun m!573813 () Bool)

(assert (=> b!596255 m!573813))

(declare-fun m!573815 () Bool)

(assert (=> b!596269 m!573815))

(declare-fun m!573817 () Bool)

(assert (=> b!596269 m!573817))

(assert (=> b!596269 m!573785))

(assert (=> b!596269 m!573789))

(assert (=> b!596269 m!573785))

(declare-fun m!573819 () Bool)

(assert (=> b!596269 m!573819))

(declare-fun m!573821 () Bool)

(assert (=> b!596269 m!573821))

(declare-fun m!573823 () Bool)

(assert (=> b!596269 m!573823))

(declare-fun m!573825 () Bool)

(assert (=> b!596269 m!573825))

(declare-fun m!573827 () Bool)

(assert (=> b!596261 m!573827))

(declare-fun m!573829 () Bool)

(assert (=> b!596253 m!573829))

(declare-fun m!573831 () Bool)

(assert (=> b!596259 m!573831))

(assert (=> b!596270 m!573785))

(assert (=> b!596270 m!573785))

(declare-fun m!573833 () Bool)

(assert (=> b!596270 m!573833))

(declare-fun m!573835 () Bool)

(assert (=> b!596251 m!573835))

(assert (=> b!596251 m!573785))

(assert (=> b!596251 m!573785))

(declare-fun m!573837 () Bool)

(assert (=> b!596251 m!573837))

(assert (=> b!596265 m!573785))

(assert (=> b!596265 m!573785))

(declare-fun m!573839 () Bool)

(assert (=> b!596265 m!573839))

(assert (=> b!596265 m!573785))

(declare-fun m!573841 () Bool)

(assert (=> b!596265 m!573841))

(push 1)


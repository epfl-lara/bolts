; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!57734 () Bool)

(assert start!57734)

(declare-fun b!638261 () Bool)

(declare-datatypes ((Unit!21542 0))(
  ( (Unit!21543) )
))
(declare-fun e!365229 () Unit!21542)

(declare-fun Unit!21544 () Unit!21542)

(assert (=> b!638261 (= e!365229 Unit!21544)))

(declare-fun b!638262 () Bool)

(declare-fun e!365233 () Bool)

(declare-fun e!365231 () Bool)

(assert (=> b!638262 (= e!365233 e!365231)))

(declare-fun res!413255 () Bool)

(assert (=> b!638262 (=> res!413255 e!365231)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!295217 () (_ BitVec 64))

(declare-fun lt!295222 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38261 0))(
  ( (array!38262 (arr!18349 (Array (_ BitVec 32) (_ BitVec 64))) (size!18713 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38261)

(assert (=> b!638262 (= res!413255 (or (not (= (select (arr!18349 a!2986) j!136) lt!295217)) (not (= (select (arr!18349 a!2986) j!136) lt!295222)) (bvsge j!136 index!984)))))

(declare-fun b!638263 () Bool)

(declare-fun e!365222 () Bool)

(declare-fun e!365226 () Bool)

(assert (=> b!638263 (= e!365222 e!365226)))

(declare-fun res!413261 () Bool)

(assert (=> b!638263 (=> (not res!413261) (not e!365226))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!638263 (= res!413261 (= (select (store (arr!18349 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!295216 () array!38261)

(assert (=> b!638263 (= lt!295216 (array!38262 (store (arr!18349 a!2986) i!1108 k0!1786) (size!18713 a!2986)))))

(declare-fun b!638264 () Bool)

(declare-fun res!413259 () Bool)

(assert (=> b!638264 (=> (not res!413259) (not e!365222))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38261 (_ BitVec 32)) Bool)

(assert (=> b!638264 (= res!413259 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!638265 () Bool)

(declare-fun res!413253 () Bool)

(assert (=> b!638265 (=> (not res!413253) (not e!365222))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!638265 (= res!413253 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18349 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!638266 () Bool)

(declare-fun res!413260 () Bool)

(declare-fun e!365227 () Bool)

(assert (=> b!638266 (=> (not res!413260) (not e!365227))))

(declare-fun arrayContainsKey!0 (array!38261 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!638266 (= res!413260 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!638267 () Bool)

(declare-fun res!413262 () Bool)

(assert (=> b!638267 (=> (not res!413262) (not e!365227))))

(assert (=> b!638267 (= res!413262 (and (= (size!18713 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18713 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18713 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!638268 () Bool)

(declare-fun e!365230 () Bool)

(declare-fun e!365228 () Bool)

(assert (=> b!638268 (= e!365230 (not e!365228))))

(declare-fun res!413256 () Bool)

(assert (=> b!638268 (=> res!413256 e!365228)))

(declare-datatypes ((SeekEntryResult!6796 0))(
  ( (MissingZero!6796 (index!29497 (_ BitVec 32))) (Found!6796 (index!29498 (_ BitVec 32))) (Intermediate!6796 (undefined!7608 Bool) (index!29499 (_ BitVec 32)) (x!58279 (_ BitVec 32))) (Undefined!6796) (MissingVacant!6796 (index!29500 (_ BitVec 32))) )
))
(declare-fun lt!295221 () SeekEntryResult!6796)

(assert (=> b!638268 (= res!413256 (not (= lt!295221 (Found!6796 index!984))))))

(declare-fun lt!295223 () Unit!21542)

(assert (=> b!638268 (= lt!295223 e!365229)))

(declare-fun c!72872 () Bool)

(assert (=> b!638268 (= c!72872 (= lt!295221 Undefined!6796))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38261 (_ BitVec 32)) SeekEntryResult!6796)

(assert (=> b!638268 (= lt!295221 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!295217 lt!295216 mask!3053))))

(declare-fun e!365223 () Bool)

(assert (=> b!638268 e!365223))

(declare-fun res!413266 () Bool)

(assert (=> b!638268 (=> (not res!413266) (not e!365223))))

(declare-fun lt!295218 () SeekEntryResult!6796)

(declare-fun lt!295225 () (_ BitVec 32))

(assert (=> b!638268 (= res!413266 (= lt!295218 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295225 vacantSpotIndex!68 lt!295217 lt!295216 mask!3053)))))

(assert (=> b!638268 (= lt!295218 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295225 vacantSpotIndex!68 (select (arr!18349 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!638268 (= lt!295217 (select (store (arr!18349 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!295226 () Unit!21542)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38261 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21542)

(assert (=> b!638268 (= lt!295226 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!295225 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!638268 (= lt!295225 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!638270 () Bool)

(assert (=> b!638270 (= e!365227 e!365222)))

(declare-fun res!413263 () Bool)

(assert (=> b!638270 (=> (not res!413263) (not e!365222))))

(declare-fun lt!295224 () SeekEntryResult!6796)

(assert (=> b!638270 (= res!413263 (or (= lt!295224 (MissingZero!6796 i!1108)) (= lt!295224 (MissingVacant!6796 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38261 (_ BitVec 32)) SeekEntryResult!6796)

(assert (=> b!638270 (= lt!295224 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!638271 () Bool)

(declare-fun res!413267 () Bool)

(assert (=> b!638271 (=> (not res!413267) (not e!365222))))

(declare-datatypes ((List!12443 0))(
  ( (Nil!12440) (Cons!12439 (h!13484 (_ BitVec 64)) (t!18679 List!12443)) )
))
(declare-fun arrayNoDuplicates!0 (array!38261 (_ BitVec 32) List!12443) Bool)

(assert (=> b!638271 (= res!413267 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12440))))

(declare-fun b!638272 () Bool)

(declare-fun lt!295220 () SeekEntryResult!6796)

(assert (=> b!638272 (= e!365223 (= lt!295220 lt!295218))))

(declare-fun b!638273 () Bool)

(assert (=> b!638273 (= e!365226 e!365230)))

(declare-fun res!413264 () Bool)

(assert (=> b!638273 (=> (not res!413264) (not e!365230))))

(assert (=> b!638273 (= res!413264 (and (= lt!295220 (Found!6796 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18349 a!2986) index!984) (select (arr!18349 a!2986) j!136))) (not (= (select (arr!18349 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!638273 (= lt!295220 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18349 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!638274 () Bool)

(declare-fun e!365232 () Bool)

(assert (=> b!638274 (= e!365228 e!365232)))

(declare-fun res!413257 () Bool)

(assert (=> b!638274 (=> res!413257 e!365232)))

(assert (=> b!638274 (= res!413257 (or (not (= (select (arr!18349 a!2986) j!136) lt!295217)) (not (= (select (arr!18349 a!2986) j!136) lt!295222)) (bvsge j!136 index!984)))))

(assert (=> b!638274 e!365233))

(declare-fun res!413251 () Bool)

(assert (=> b!638274 (=> (not res!413251) (not e!365233))))

(assert (=> b!638274 (= res!413251 (= lt!295222 (select (arr!18349 a!2986) j!136)))))

(assert (=> b!638274 (= lt!295222 (select (store (arr!18349 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!638275 () Bool)

(declare-fun res!413265 () Bool)

(assert (=> b!638275 (=> (not res!413265) (not e!365227))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!638275 (= res!413265 (validKeyInArray!0 (select (arr!18349 a!2986) j!136)))))

(declare-fun b!638276 () Bool)

(declare-fun e!365224 () Bool)

(assert (=> b!638276 (= e!365231 e!365224)))

(declare-fun res!413254 () Bool)

(assert (=> b!638276 (=> (not res!413254) (not e!365224))))

(assert (=> b!638276 (= res!413254 (arrayContainsKey!0 lt!295216 (select (arr!18349 a!2986) j!136) j!136))))

(declare-fun b!638277 () Bool)

(declare-fun res!413258 () Bool)

(assert (=> b!638277 (=> (not res!413258) (not e!365227))))

(assert (=> b!638277 (= res!413258 (validKeyInArray!0 k0!1786))))

(declare-fun res!413252 () Bool)

(assert (=> start!57734 (=> (not res!413252) (not e!365227))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57734 (= res!413252 (validMask!0 mask!3053))))

(assert (=> start!57734 e!365227))

(assert (=> start!57734 true))

(declare-fun array_inv!14123 (array!38261) Bool)

(assert (=> start!57734 (array_inv!14123 a!2986)))

(declare-fun b!638269 () Bool)

(declare-fun Unit!21545 () Unit!21542)

(assert (=> b!638269 (= e!365229 Unit!21545)))

(assert (=> b!638269 false))

(declare-fun b!638278 () Bool)

(assert (=> b!638278 (= e!365232 true)))

(assert (=> b!638278 (arrayNoDuplicates!0 lt!295216 #b00000000000000000000000000000000 Nil!12440)))

(declare-fun lt!295227 () Unit!21542)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38261 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12443) Unit!21542)

(assert (=> b!638278 (= lt!295227 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12440))))

(assert (=> b!638278 (arrayContainsKey!0 lt!295216 (select (arr!18349 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!295219 () Unit!21542)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38261 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21542)

(assert (=> b!638278 (= lt!295219 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!295216 (select (arr!18349 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!638279 () Bool)

(assert (=> b!638279 (= e!365224 (arrayContainsKey!0 lt!295216 (select (arr!18349 a!2986) j!136) index!984))))

(assert (= (and start!57734 res!413252) b!638267))

(assert (= (and b!638267 res!413262) b!638275))

(assert (= (and b!638275 res!413265) b!638277))

(assert (= (and b!638277 res!413258) b!638266))

(assert (= (and b!638266 res!413260) b!638270))

(assert (= (and b!638270 res!413263) b!638264))

(assert (= (and b!638264 res!413259) b!638271))

(assert (= (and b!638271 res!413267) b!638265))

(assert (= (and b!638265 res!413253) b!638263))

(assert (= (and b!638263 res!413261) b!638273))

(assert (= (and b!638273 res!413264) b!638268))

(assert (= (and b!638268 res!413266) b!638272))

(assert (= (and b!638268 c!72872) b!638269))

(assert (= (and b!638268 (not c!72872)) b!638261))

(assert (= (and b!638268 (not res!413256)) b!638274))

(assert (= (and b!638274 res!413251) b!638262))

(assert (= (and b!638262 (not res!413255)) b!638276))

(assert (= (and b!638276 res!413254) b!638279))

(assert (= (and b!638274 (not res!413257)) b!638278))

(declare-fun m!612261 () Bool)

(assert (=> b!638266 m!612261))

(declare-fun m!612263 () Bool)

(assert (=> b!638270 m!612263))

(declare-fun m!612265 () Bool)

(assert (=> b!638262 m!612265))

(declare-fun m!612267 () Bool)

(assert (=> b!638271 m!612267))

(declare-fun m!612269 () Bool)

(assert (=> b!638264 m!612269))

(declare-fun m!612271 () Bool)

(assert (=> start!57734 m!612271))

(declare-fun m!612273 () Bool)

(assert (=> start!57734 m!612273))

(assert (=> b!638278 m!612265))

(assert (=> b!638278 m!612265))

(declare-fun m!612275 () Bool)

(assert (=> b!638278 m!612275))

(declare-fun m!612277 () Bool)

(assert (=> b!638278 m!612277))

(assert (=> b!638278 m!612265))

(declare-fun m!612279 () Bool)

(assert (=> b!638278 m!612279))

(declare-fun m!612281 () Bool)

(assert (=> b!638278 m!612281))

(declare-fun m!612283 () Bool)

(assert (=> b!638263 m!612283))

(declare-fun m!612285 () Bool)

(assert (=> b!638263 m!612285))

(assert (=> b!638275 m!612265))

(assert (=> b!638275 m!612265))

(declare-fun m!612287 () Bool)

(assert (=> b!638275 m!612287))

(declare-fun m!612289 () Bool)

(assert (=> b!638265 m!612289))

(assert (=> b!638274 m!612265))

(assert (=> b!638274 m!612283))

(declare-fun m!612291 () Bool)

(assert (=> b!638274 m!612291))

(declare-fun m!612293 () Bool)

(assert (=> b!638273 m!612293))

(assert (=> b!638273 m!612265))

(assert (=> b!638273 m!612265))

(declare-fun m!612295 () Bool)

(assert (=> b!638273 m!612295))

(declare-fun m!612297 () Bool)

(assert (=> b!638268 m!612297))

(declare-fun m!612299 () Bool)

(assert (=> b!638268 m!612299))

(declare-fun m!612301 () Bool)

(assert (=> b!638268 m!612301))

(declare-fun m!612303 () Bool)

(assert (=> b!638268 m!612303))

(assert (=> b!638268 m!612265))

(assert (=> b!638268 m!612283))

(declare-fun m!612305 () Bool)

(assert (=> b!638268 m!612305))

(assert (=> b!638268 m!612265))

(declare-fun m!612307 () Bool)

(assert (=> b!638268 m!612307))

(assert (=> b!638279 m!612265))

(assert (=> b!638279 m!612265))

(declare-fun m!612309 () Bool)

(assert (=> b!638279 m!612309))

(declare-fun m!612311 () Bool)

(assert (=> b!638277 m!612311))

(assert (=> b!638276 m!612265))

(assert (=> b!638276 m!612265))

(declare-fun m!612313 () Bool)

(assert (=> b!638276 m!612313))

(check-sat (not b!638278) (not b!638275) (not b!638271) (not b!638276) (not b!638266) (not b!638268) (not b!638273) (not start!57734) (not b!638279) (not b!638264) (not b!638270) (not b!638277))
(check-sat)

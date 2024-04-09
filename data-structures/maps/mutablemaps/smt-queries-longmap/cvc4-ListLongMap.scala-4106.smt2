; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56146 () Bool)

(assert start!56146)

(declare-fun b!620247 () Bool)

(declare-datatypes ((Unit!20610 0))(
  ( (Unit!20611) )
))
(declare-fun e!355742 () Unit!20610)

(declare-fun Unit!20612 () Unit!20610)

(assert (=> b!620247 (= e!355742 Unit!20612)))

(declare-fun b!620248 () Bool)

(declare-fun e!355741 () Bool)

(declare-datatypes ((SeekEntryResult!6479 0))(
  ( (MissingZero!6479 (index!28199 (_ BitVec 32))) (Found!6479 (index!28200 (_ BitVec 32))) (Intermediate!6479 (undefined!7291 Bool) (index!28201 (_ BitVec 32)) (x!57000 (_ BitVec 32))) (Undefined!6479) (MissingVacant!6479 (index!28202 (_ BitVec 32))) )
))
(declare-fun lt!286702 () SeekEntryResult!6479)

(declare-fun lt!286714 () SeekEntryResult!6479)

(assert (=> b!620248 (= e!355741 (= lt!286702 lt!286714))))

(declare-fun b!620249 () Bool)

(declare-fun e!355743 () Bool)

(declare-fun e!355749 () Bool)

(assert (=> b!620249 (= e!355743 e!355749)))

(declare-fun res!399782 () Bool)

(assert (=> b!620249 (=> (not res!399782) (not e!355749))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37579 0))(
  ( (array!37580 (arr!18032 (Array (_ BitVec 32) (_ BitVec 64))) (size!18396 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37579)

(assert (=> b!620249 (= res!399782 (and (= lt!286702 (Found!6479 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18032 a!2986) index!984) (select (arr!18032 a!2986) j!136))) (not (= (select (arr!18032 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37579 (_ BitVec 32)) SeekEntryResult!6479)

(assert (=> b!620249 (= lt!286702 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18032 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!620250 () Bool)

(declare-fun res!399780 () Bool)

(declare-fun e!355746 () Bool)

(assert (=> b!620250 (=> (not res!399780) (not e!355746))))

(assert (=> b!620250 (= res!399780 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18032 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!620251 () Bool)

(declare-fun res!399784 () Bool)

(declare-fun lt!286710 () array!37579)

(declare-fun arrayContainsKey!0 (array!37579 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!620251 (= res!399784 (arrayContainsKey!0 lt!286710 (select (arr!18032 a!2986) j!136) j!136))))

(declare-fun e!355740 () Bool)

(assert (=> b!620251 (=> (not res!399784) (not e!355740))))

(declare-fun e!355753 () Bool)

(assert (=> b!620251 (= e!355753 e!355740)))

(declare-fun b!620252 () Bool)

(declare-fun res!399778 () Bool)

(declare-fun e!355744 () Bool)

(assert (=> b!620252 (=> (not res!399778) (not e!355744))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!620252 (= res!399778 (and (= (size!18396 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18396 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18396 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!620253 () Bool)

(declare-fun e!355748 () Unit!20610)

(declare-fun Unit!20613 () Unit!20610)

(assert (=> b!620253 (= e!355748 Unit!20613)))

(declare-fun b!620254 () Bool)

(declare-fun res!399773 () Bool)

(assert (=> b!620254 (=> (not res!399773) (not e!355744))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!620254 (= res!399773 (validKeyInArray!0 k!1786))))

(declare-fun b!620255 () Bool)

(assert (=> b!620255 (= e!355740 (arrayContainsKey!0 lt!286710 (select (arr!18032 a!2986) j!136) index!984))))

(declare-fun e!355750 () Bool)

(declare-fun b!620256 () Bool)

(assert (=> b!620256 (= e!355750 (arrayContainsKey!0 lt!286710 (select (arr!18032 a!2986) j!136) index!984))))

(declare-fun b!620257 () Bool)

(declare-fun e!355752 () Unit!20610)

(declare-fun Unit!20614 () Unit!20610)

(assert (=> b!620257 (= e!355752 Unit!20614)))

(declare-fun b!620258 () Bool)

(assert (=> b!620258 false))

(declare-fun lt!286706 () Unit!20610)

(declare-datatypes ((List!12126 0))(
  ( (Nil!12123) (Cons!12122 (h!13167 (_ BitVec 64)) (t!18362 List!12126)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37579 (_ BitVec 64) (_ BitVec 32) List!12126) Unit!20610)

(assert (=> b!620258 (= lt!286706 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!286710 (select (arr!18032 a!2986) j!136) j!136 Nil!12123))))

(declare-fun arrayNoDuplicates!0 (array!37579 (_ BitVec 32) List!12126) Bool)

(assert (=> b!620258 (arrayNoDuplicates!0 lt!286710 j!136 Nil!12123)))

(declare-fun lt!286701 () Unit!20610)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37579 (_ BitVec 32) (_ BitVec 32)) Unit!20610)

(assert (=> b!620258 (= lt!286701 (lemmaNoDuplicateFromThenFromBigger!0 lt!286710 #b00000000000000000000000000000000 j!136))))

(assert (=> b!620258 (arrayNoDuplicates!0 lt!286710 #b00000000000000000000000000000000 Nil!12123)))

(declare-fun lt!286709 () Unit!20610)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37579 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12126) Unit!20610)

(assert (=> b!620258 (= lt!286709 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12123))))

(assert (=> b!620258 (arrayContainsKey!0 lt!286710 (select (arr!18032 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!286712 () Unit!20610)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37579 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20610)

(assert (=> b!620258 (= lt!286712 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!286710 (select (arr!18032 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20615 () Unit!20610)

(assert (=> b!620258 (= e!355752 Unit!20615)))

(declare-fun b!620259 () Bool)

(declare-fun e!355747 () Unit!20610)

(declare-fun Unit!20616 () Unit!20610)

(assert (=> b!620259 (= e!355747 Unit!20616)))

(assert (=> b!620259 false))

(declare-fun b!620260 () Bool)

(declare-fun lt!286697 () SeekEntryResult!6479)

(assert (=> b!620260 (= e!355749 (not (or (= lt!286697 (MissingVacant!6479 vacantSpotIndex!68)) (bvsge mask!3053 #b00000000000000000000000000000000))))))

(declare-fun lt!286716 () Unit!20610)

(assert (=> b!620260 (= lt!286716 e!355748)))

(declare-fun c!70606 () Bool)

(assert (=> b!620260 (= c!70606 (= lt!286697 (Found!6479 index!984)))))

(declare-fun lt!286704 () Unit!20610)

(assert (=> b!620260 (= lt!286704 e!355747)))

(declare-fun c!70605 () Bool)

(assert (=> b!620260 (= c!70605 (= lt!286697 Undefined!6479))))

(declare-fun lt!286699 () (_ BitVec 64))

(assert (=> b!620260 (= lt!286697 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!286699 lt!286710 mask!3053))))

(assert (=> b!620260 e!355741))

(declare-fun res!399786 () Bool)

(assert (=> b!620260 (=> (not res!399786) (not e!355741))))

(declare-fun lt!286705 () (_ BitVec 32))

(assert (=> b!620260 (= res!399786 (= lt!286714 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!286705 vacantSpotIndex!68 lt!286699 lt!286710 mask!3053)))))

(assert (=> b!620260 (= lt!286714 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!286705 vacantSpotIndex!68 (select (arr!18032 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!620260 (= lt!286699 (select (store (arr!18032 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!286698 () Unit!20610)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37579 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20610)

(assert (=> b!620260 (= lt!286698 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!286705 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!620260 (= lt!286705 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!620261 () Bool)

(declare-fun res!399788 () Bool)

(assert (=> b!620261 (= res!399788 (bvsge j!136 index!984))))

(assert (=> b!620261 (=> res!399788 e!355753)))

(declare-fun e!355751 () Bool)

(assert (=> b!620261 (= e!355751 e!355753)))

(declare-fun b!620262 () Bool)

(declare-fun res!399775 () Bool)

(assert (=> b!620262 (=> (not res!399775) (not e!355746))))

(assert (=> b!620262 (= res!399775 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12123))))

(declare-fun b!620263 () Bool)

(assert (=> b!620263 (= e!355744 e!355746)))

(declare-fun res!399785 () Bool)

(assert (=> b!620263 (=> (not res!399785) (not e!355746))))

(declare-fun lt!286711 () SeekEntryResult!6479)

(assert (=> b!620263 (= res!399785 (or (= lt!286711 (MissingZero!6479 i!1108)) (= lt!286711 (MissingVacant!6479 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37579 (_ BitVec 32)) SeekEntryResult!6479)

(assert (=> b!620263 (= lt!286711 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!620264 () Bool)

(declare-fun Unit!20617 () Unit!20610)

(assert (=> b!620264 (= e!355747 Unit!20617)))

(declare-fun b!620265 () Bool)

(declare-fun Unit!20618 () Unit!20610)

(assert (=> b!620265 (= e!355748 Unit!20618)))

(declare-fun res!399774 () Bool)

(assert (=> b!620265 (= res!399774 (= (select (store (arr!18032 a!2986) i!1108 k!1786) index!984) (select (arr!18032 a!2986) j!136)))))

(assert (=> b!620265 (=> (not res!399774) (not e!355751))))

(assert (=> b!620265 e!355751))

(declare-fun c!70607 () Bool)

(assert (=> b!620265 (= c!70607 (bvslt j!136 index!984))))

(declare-fun lt!286715 () Unit!20610)

(assert (=> b!620265 (= lt!286715 e!355752)))

(declare-fun c!70604 () Bool)

(assert (=> b!620265 (= c!70604 (bvslt index!984 j!136))))

(declare-fun lt!286703 () Unit!20610)

(assert (=> b!620265 (= lt!286703 e!355742)))

(assert (=> b!620265 false))

(declare-fun res!399776 () Bool)

(assert (=> start!56146 (=> (not res!399776) (not e!355744))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56146 (= res!399776 (validMask!0 mask!3053))))

(assert (=> start!56146 e!355744))

(assert (=> start!56146 true))

(declare-fun array_inv!13806 (array!37579) Bool)

(assert (=> start!56146 (array_inv!13806 a!2986)))

(declare-fun b!620266 () Bool)

(assert (=> b!620266 (= e!355746 e!355743)))

(declare-fun res!399783 () Bool)

(assert (=> b!620266 (=> (not res!399783) (not e!355743))))

(assert (=> b!620266 (= res!399783 (= (select (store (arr!18032 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!620266 (= lt!286710 (array!37580 (store (arr!18032 a!2986) i!1108 k!1786) (size!18396 a!2986)))))

(declare-fun b!620267 () Bool)

(declare-fun res!399779 () Bool)

(assert (=> b!620267 (=> (not res!399779) (not e!355744))))

(assert (=> b!620267 (= res!399779 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!620268 () Bool)

(assert (=> b!620268 false))

(declare-fun lt!286700 () Unit!20610)

(assert (=> b!620268 (= lt!286700 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!286710 (select (arr!18032 a!2986) j!136) index!984 Nil!12123))))

(assert (=> b!620268 (arrayNoDuplicates!0 lt!286710 index!984 Nil!12123)))

(declare-fun lt!286708 () Unit!20610)

(assert (=> b!620268 (= lt!286708 (lemmaNoDuplicateFromThenFromBigger!0 lt!286710 #b00000000000000000000000000000000 index!984))))

(assert (=> b!620268 (arrayNoDuplicates!0 lt!286710 #b00000000000000000000000000000000 Nil!12123)))

(declare-fun lt!286713 () Unit!20610)

(assert (=> b!620268 (= lt!286713 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12123))))

(assert (=> b!620268 (arrayContainsKey!0 lt!286710 (select (arr!18032 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!286707 () Unit!20610)

(assert (=> b!620268 (= lt!286707 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!286710 (select (arr!18032 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!620268 e!355750))

(declare-fun res!399777 () Bool)

(assert (=> b!620268 (=> (not res!399777) (not e!355750))))

(assert (=> b!620268 (= res!399777 (arrayContainsKey!0 lt!286710 (select (arr!18032 a!2986) j!136) j!136))))

(declare-fun Unit!20619 () Unit!20610)

(assert (=> b!620268 (= e!355742 Unit!20619)))

(declare-fun b!620269 () Bool)

(declare-fun res!399787 () Bool)

(assert (=> b!620269 (=> (not res!399787) (not e!355746))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37579 (_ BitVec 32)) Bool)

(assert (=> b!620269 (= res!399787 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!620270 () Bool)

(declare-fun res!399781 () Bool)

(assert (=> b!620270 (=> (not res!399781) (not e!355744))))

(assert (=> b!620270 (= res!399781 (validKeyInArray!0 (select (arr!18032 a!2986) j!136)))))

(assert (= (and start!56146 res!399776) b!620252))

(assert (= (and b!620252 res!399778) b!620270))

(assert (= (and b!620270 res!399781) b!620254))

(assert (= (and b!620254 res!399773) b!620267))

(assert (= (and b!620267 res!399779) b!620263))

(assert (= (and b!620263 res!399785) b!620269))

(assert (= (and b!620269 res!399787) b!620262))

(assert (= (and b!620262 res!399775) b!620250))

(assert (= (and b!620250 res!399780) b!620266))

(assert (= (and b!620266 res!399783) b!620249))

(assert (= (and b!620249 res!399782) b!620260))

(assert (= (and b!620260 res!399786) b!620248))

(assert (= (and b!620260 c!70605) b!620259))

(assert (= (and b!620260 (not c!70605)) b!620264))

(assert (= (and b!620260 c!70606) b!620265))

(assert (= (and b!620260 (not c!70606)) b!620253))

(assert (= (and b!620265 res!399774) b!620261))

(assert (= (and b!620261 (not res!399788)) b!620251))

(assert (= (and b!620251 res!399784) b!620255))

(assert (= (and b!620265 c!70607) b!620258))

(assert (= (and b!620265 (not c!70607)) b!620257))

(assert (= (and b!620265 c!70604) b!620268))

(assert (= (and b!620265 (not c!70604)) b!620247))

(assert (= (and b!620268 res!399777) b!620256))

(declare-fun m!596219 () Bool)

(assert (=> b!620249 m!596219))

(declare-fun m!596221 () Bool)

(assert (=> b!620249 m!596221))

(assert (=> b!620249 m!596221))

(declare-fun m!596223 () Bool)

(assert (=> b!620249 m!596223))

(declare-fun m!596225 () Bool)

(assert (=> b!620266 m!596225))

(declare-fun m!596227 () Bool)

(assert (=> b!620266 m!596227))

(assert (=> b!620265 m!596225))

(declare-fun m!596229 () Bool)

(assert (=> b!620265 m!596229))

(assert (=> b!620265 m!596221))

(declare-fun m!596231 () Bool)

(assert (=> b!620267 m!596231))

(assert (=> b!620258 m!596221))

(declare-fun m!596233 () Bool)

(assert (=> b!620258 m!596233))

(assert (=> b!620258 m!596221))

(assert (=> b!620258 m!596221))

(declare-fun m!596235 () Bool)

(assert (=> b!620258 m!596235))

(assert (=> b!620258 m!596221))

(declare-fun m!596237 () Bool)

(assert (=> b!620258 m!596237))

(declare-fun m!596239 () Bool)

(assert (=> b!620258 m!596239))

(declare-fun m!596241 () Bool)

(assert (=> b!620258 m!596241))

(declare-fun m!596243 () Bool)

(assert (=> b!620258 m!596243))

(declare-fun m!596245 () Bool)

(assert (=> b!620258 m!596245))

(assert (=> b!620270 m!596221))

(assert (=> b!620270 m!596221))

(declare-fun m!596247 () Bool)

(assert (=> b!620270 m!596247))

(declare-fun m!596249 () Bool)

(assert (=> b!620250 m!596249))

(declare-fun m!596251 () Bool)

(assert (=> b!620254 m!596251))

(assert (=> b!620255 m!596221))

(assert (=> b!620255 m!596221))

(declare-fun m!596253 () Bool)

(assert (=> b!620255 m!596253))

(assert (=> b!620251 m!596221))

(assert (=> b!620251 m!596221))

(declare-fun m!596255 () Bool)

(assert (=> b!620251 m!596255))

(declare-fun m!596257 () Bool)

(assert (=> start!56146 m!596257))

(declare-fun m!596259 () Bool)

(assert (=> start!56146 m!596259))

(declare-fun m!596261 () Bool)

(assert (=> b!620262 m!596261))

(assert (=> b!620268 m!596221))

(assert (=> b!620268 m!596255))

(assert (=> b!620268 m!596221))

(declare-fun m!596263 () Bool)

(assert (=> b!620268 m!596263))

(assert (=> b!620268 m!596221))

(declare-fun m!596265 () Bool)

(assert (=> b!620268 m!596265))

(assert (=> b!620268 m!596243))

(assert (=> b!620268 m!596245))

(declare-fun m!596267 () Bool)

(assert (=> b!620268 m!596267))

(declare-fun m!596269 () Bool)

(assert (=> b!620268 m!596269))

(assert (=> b!620268 m!596221))

(declare-fun m!596271 () Bool)

(assert (=> b!620268 m!596271))

(assert (=> b!620268 m!596221))

(assert (=> b!620260 m!596221))

(declare-fun m!596273 () Bool)

(assert (=> b!620260 m!596273))

(declare-fun m!596275 () Bool)

(assert (=> b!620260 m!596275))

(declare-fun m!596277 () Bool)

(assert (=> b!620260 m!596277))

(declare-fun m!596279 () Bool)

(assert (=> b!620260 m!596279))

(assert (=> b!620260 m!596221))

(assert (=> b!620260 m!596225))

(declare-fun m!596281 () Bool)

(assert (=> b!620260 m!596281))

(declare-fun m!596283 () Bool)

(assert (=> b!620260 m!596283))

(assert (=> b!620256 m!596221))

(assert (=> b!620256 m!596221))

(assert (=> b!620256 m!596253))

(declare-fun m!596285 () Bool)

(assert (=> b!620263 m!596285))

(declare-fun m!596287 () Bool)

(assert (=> b!620269 m!596287))

(push 1)


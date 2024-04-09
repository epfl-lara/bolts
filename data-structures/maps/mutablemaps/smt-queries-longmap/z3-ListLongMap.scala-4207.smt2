; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!57704 () Bool)

(assert start!57704)

(declare-fun b!637246 () Bool)

(declare-fun res!412343 () Bool)

(declare-fun e!364650 () Bool)

(assert (=> b!637246 (=> (not res!412343) (not e!364650))))

(declare-datatypes ((array!38231 0))(
  ( (array!38232 (arr!18334 (Array (_ BitVec 32) (_ BitVec 64))) (size!18698 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38231)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38231 (_ BitVec 32)) Bool)

(assert (=> b!637246 (= res!412343 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!637247 () Bool)

(declare-fun res!412334 () Bool)

(declare-fun e!364643 () Bool)

(assert (=> b!637247 (=> res!412334 e!364643)))

(declare-datatypes ((List!12428 0))(
  ( (Nil!12425) (Cons!12424 (h!13469 (_ BitVec 64)) (t!18664 List!12428)) )
))
(declare-fun noDuplicate!386 (List!12428) Bool)

(assert (=> b!637247 (= res!412334 (not (noDuplicate!386 Nil!12425)))))

(declare-fun b!637248 () Bool)

(declare-fun res!412333 () Bool)

(assert (=> b!637248 (=> (not res!412333) (not e!364650))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!637248 (= res!412333 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18334 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!637249 () Bool)

(assert (=> b!637249 (= e!364643 true)))

(declare-fun lt!294679 () Bool)

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun contains!3111 (List!12428 (_ BitVec 64)) Bool)

(assert (=> b!637249 (= lt!294679 (contains!3111 Nil!12425 k0!1786))))

(declare-fun b!637250 () Bool)

(declare-fun res!412344 () Bool)

(assert (=> b!637250 (=> res!412344 e!364643)))

(assert (=> b!637250 (= res!412344 (contains!3111 Nil!12425 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!637251 () Bool)

(declare-datatypes ((Unit!21482 0))(
  ( (Unit!21483) )
))
(declare-fun e!364644 () Unit!21482)

(declare-fun Unit!21484 () Unit!21482)

(assert (=> b!637251 (= e!364644 Unit!21484)))

(declare-fun b!637252 () Bool)

(declare-fun e!364654 () Bool)

(assert (=> b!637252 (= e!364654 e!364650)))

(declare-fun res!412337 () Bool)

(assert (=> b!637252 (=> (not res!412337) (not e!364650))))

(declare-datatypes ((SeekEntryResult!6781 0))(
  ( (MissingZero!6781 (index!29437 (_ BitVec 32))) (Found!6781 (index!29438 (_ BitVec 32))) (Intermediate!6781 (undefined!7593 Bool) (index!29439 (_ BitVec 32)) (x!58224 (_ BitVec 32))) (Undefined!6781) (MissingVacant!6781 (index!29440 (_ BitVec 32))) )
))
(declare-fun lt!294682 () SeekEntryResult!6781)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!637252 (= res!412337 (or (= lt!294682 (MissingZero!6781 i!1108)) (= lt!294682 (MissingVacant!6781 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38231 (_ BitVec 32)) SeekEntryResult!6781)

(assert (=> b!637252 (= lt!294682 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!637253 () Bool)

(declare-fun e!364652 () Bool)

(declare-fun e!364651 () Bool)

(assert (=> b!637253 (= e!364652 e!364651)))

(declare-fun res!412327 () Bool)

(assert (=> b!637253 (=> res!412327 e!364651)))

(declare-fun lt!294683 () (_ BitVec 64))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!294676 () (_ BitVec 64))

(assert (=> b!637253 (= res!412327 (or (not (= (select (arr!18334 a!2986) j!136) lt!294676)) (not (= (select (arr!18334 a!2986) j!136) lt!294683)) (bvsge j!136 index!984)))))

(declare-fun e!364649 () Bool)

(assert (=> b!637253 e!364649))

(declare-fun res!412326 () Bool)

(assert (=> b!637253 (=> (not res!412326) (not e!364649))))

(assert (=> b!637253 (= res!412326 (= lt!294683 (select (arr!18334 a!2986) j!136)))))

(assert (=> b!637253 (= lt!294683 (select (store (arr!18334 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!637254 () Bool)

(declare-fun res!412330 () Bool)

(assert (=> b!637254 (=> (not res!412330) (not e!364654))))

(declare-fun arrayContainsKey!0 (array!38231 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!637254 (= res!412330 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun res!412331 () Bool)

(assert (=> start!57704 (=> (not res!412331) (not e!364654))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57704 (= res!412331 (validMask!0 mask!3053))))

(assert (=> start!57704 e!364654))

(assert (=> start!57704 true))

(declare-fun array_inv!14108 (array!38231) Bool)

(assert (=> start!57704 (array_inv!14108 a!2986)))

(declare-fun b!637255 () Bool)

(declare-fun res!412336 () Bool)

(assert (=> b!637255 (=> (not res!412336) (not e!364654))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!637255 (= res!412336 (validKeyInArray!0 k0!1786))))

(declare-fun b!637256 () Bool)

(declare-fun e!364642 () Bool)

(assert (=> b!637256 (= e!364650 e!364642)))

(declare-fun res!412332 () Bool)

(assert (=> b!637256 (=> (not res!412332) (not e!364642))))

(assert (=> b!637256 (= res!412332 (= (select (store (arr!18334 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!294678 () array!38231)

(assert (=> b!637256 (= lt!294678 (array!38232 (store (arr!18334 a!2986) i!1108 k0!1786) (size!18698 a!2986)))))

(declare-fun b!637257 () Bool)

(declare-fun e!364653 () Bool)

(assert (=> b!637257 (= e!364642 e!364653)))

(declare-fun res!412328 () Bool)

(assert (=> b!637257 (=> (not res!412328) (not e!364653))))

(declare-fun lt!294686 () SeekEntryResult!6781)

(assert (=> b!637257 (= res!412328 (and (= lt!294686 (Found!6781 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18334 a!2986) index!984) (select (arr!18334 a!2986) j!136))) (not (= (select (arr!18334 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38231 (_ BitVec 32)) SeekEntryResult!6781)

(assert (=> b!637257 (= lt!294686 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18334 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!637258 () Bool)

(declare-fun res!412340 () Bool)

(assert (=> b!637258 (=> res!412340 e!364643)))

(assert (=> b!637258 (= res!412340 (contains!3111 Nil!12425 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!364647 () Bool)

(declare-fun b!637259 () Bool)

(assert (=> b!637259 (= e!364647 (arrayContainsKey!0 lt!294678 (select (arr!18334 a!2986) j!136) index!984))))

(declare-fun b!637260 () Bool)

(assert (=> b!637260 (= e!364653 (not e!364652))))

(declare-fun res!412342 () Bool)

(assert (=> b!637260 (=> res!412342 e!364652)))

(declare-fun lt!294687 () SeekEntryResult!6781)

(assert (=> b!637260 (= res!412342 (not (= lt!294687 (Found!6781 index!984))))))

(declare-fun lt!294680 () Unit!21482)

(assert (=> b!637260 (= lt!294680 e!364644)))

(declare-fun c!72827 () Bool)

(assert (=> b!637260 (= c!72827 (= lt!294687 Undefined!6781))))

(assert (=> b!637260 (= lt!294687 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!294676 lt!294678 mask!3053))))

(declare-fun e!364646 () Bool)

(assert (=> b!637260 e!364646))

(declare-fun res!412335 () Bool)

(assert (=> b!637260 (=> (not res!412335) (not e!364646))))

(declare-fun lt!294684 () SeekEntryResult!6781)

(declare-fun lt!294681 () (_ BitVec 32))

(assert (=> b!637260 (= res!412335 (= lt!294684 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294681 vacantSpotIndex!68 lt!294676 lt!294678 mask!3053)))))

(assert (=> b!637260 (= lt!294684 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294681 vacantSpotIndex!68 (select (arr!18334 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!637260 (= lt!294676 (select (store (arr!18334 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!294677 () Unit!21482)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38231 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21482)

(assert (=> b!637260 (= lt!294677 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!294681 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!637260 (= lt!294681 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!637261 () Bool)

(assert (=> b!637261 (= e!364646 (= lt!294686 lt!294684))))

(declare-fun b!637262 () Bool)

(declare-fun res!412329 () Bool)

(assert (=> b!637262 (=> (not res!412329) (not e!364654))))

(assert (=> b!637262 (= res!412329 (and (= (size!18698 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18698 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18698 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!637263 () Bool)

(declare-fun Unit!21485 () Unit!21482)

(assert (=> b!637263 (= e!364644 Unit!21485)))

(assert (=> b!637263 false))

(declare-fun b!637264 () Bool)

(declare-fun e!364648 () Bool)

(assert (=> b!637264 (= e!364648 e!364647)))

(declare-fun res!412341 () Bool)

(assert (=> b!637264 (=> (not res!412341) (not e!364647))))

(assert (=> b!637264 (= res!412341 (arrayContainsKey!0 lt!294678 (select (arr!18334 a!2986) j!136) j!136))))

(declare-fun b!637265 () Bool)

(declare-fun res!412338 () Bool)

(assert (=> b!637265 (=> (not res!412338) (not e!364650))))

(declare-fun arrayNoDuplicates!0 (array!38231 (_ BitVec 32) List!12428) Bool)

(assert (=> b!637265 (= res!412338 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12425))))

(declare-fun b!637266 () Bool)

(declare-fun res!412345 () Bool)

(assert (=> b!637266 (=> (not res!412345) (not e!364654))))

(assert (=> b!637266 (= res!412345 (validKeyInArray!0 (select (arr!18334 a!2986) j!136)))))

(declare-fun b!637267 () Bool)

(assert (=> b!637267 (= e!364649 e!364648)))

(declare-fun res!412346 () Bool)

(assert (=> b!637267 (=> res!412346 e!364648)))

(assert (=> b!637267 (= res!412346 (or (not (= (select (arr!18334 a!2986) j!136) lt!294676)) (not (= (select (arr!18334 a!2986) j!136) lt!294683)) (bvsge j!136 index!984)))))

(declare-fun b!637268 () Bool)

(assert (=> b!637268 (= e!364651 e!364643)))

(declare-fun res!412339 () Bool)

(assert (=> b!637268 (=> res!412339 e!364643)))

(assert (=> b!637268 (= res!412339 (or (bvsge (size!18698 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18698 a!2986))))))

(assert (=> b!637268 (arrayContainsKey!0 lt!294678 (select (arr!18334 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!294685 () Unit!21482)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38231 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21482)

(assert (=> b!637268 (= lt!294685 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!294678 (select (arr!18334 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (= (and start!57704 res!412331) b!637262))

(assert (= (and b!637262 res!412329) b!637266))

(assert (= (and b!637266 res!412345) b!637255))

(assert (= (and b!637255 res!412336) b!637254))

(assert (= (and b!637254 res!412330) b!637252))

(assert (= (and b!637252 res!412337) b!637246))

(assert (= (and b!637246 res!412343) b!637265))

(assert (= (and b!637265 res!412338) b!637248))

(assert (= (and b!637248 res!412333) b!637256))

(assert (= (and b!637256 res!412332) b!637257))

(assert (= (and b!637257 res!412328) b!637260))

(assert (= (and b!637260 res!412335) b!637261))

(assert (= (and b!637260 c!72827) b!637263))

(assert (= (and b!637260 (not c!72827)) b!637251))

(assert (= (and b!637260 (not res!412342)) b!637253))

(assert (= (and b!637253 res!412326) b!637267))

(assert (= (and b!637267 (not res!412346)) b!637264))

(assert (= (and b!637264 res!412341) b!637259))

(assert (= (and b!637253 (not res!412327)) b!637268))

(assert (= (and b!637268 (not res!412339)) b!637247))

(assert (= (and b!637247 (not res!412334)) b!637258))

(assert (= (and b!637258 (not res!412340)) b!637250))

(assert (= (and b!637250 (not res!412344)) b!637249))

(declare-fun m!611395 () Bool)

(assert (=> b!637247 m!611395))

(declare-fun m!611397 () Bool)

(assert (=> b!637248 m!611397))

(declare-fun m!611399 () Bool)

(assert (=> b!637265 m!611399))

(declare-fun m!611401 () Bool)

(assert (=> b!637254 m!611401))

(declare-fun m!611403 () Bool)

(assert (=> b!637246 m!611403))

(declare-fun m!611405 () Bool)

(assert (=> b!637252 m!611405))

(declare-fun m!611407 () Bool)

(assert (=> b!637264 m!611407))

(assert (=> b!637264 m!611407))

(declare-fun m!611409 () Bool)

(assert (=> b!637264 m!611409))

(assert (=> b!637253 m!611407))

(declare-fun m!611411 () Bool)

(assert (=> b!637253 m!611411))

(declare-fun m!611413 () Bool)

(assert (=> b!637253 m!611413))

(declare-fun m!611415 () Bool)

(assert (=> b!637249 m!611415))

(assert (=> b!637268 m!611407))

(assert (=> b!637268 m!611407))

(declare-fun m!611417 () Bool)

(assert (=> b!637268 m!611417))

(assert (=> b!637268 m!611407))

(declare-fun m!611419 () Bool)

(assert (=> b!637268 m!611419))

(declare-fun m!611421 () Bool)

(assert (=> b!637258 m!611421))

(assert (=> b!637267 m!611407))

(declare-fun m!611423 () Bool)

(assert (=> b!637260 m!611423))

(assert (=> b!637260 m!611407))

(assert (=> b!637260 m!611411))

(assert (=> b!637260 m!611407))

(declare-fun m!611425 () Bool)

(assert (=> b!637260 m!611425))

(declare-fun m!611427 () Bool)

(assert (=> b!637260 m!611427))

(declare-fun m!611429 () Bool)

(assert (=> b!637260 m!611429))

(declare-fun m!611431 () Bool)

(assert (=> b!637260 m!611431))

(declare-fun m!611433 () Bool)

(assert (=> b!637260 m!611433))

(assert (=> b!637266 m!611407))

(assert (=> b!637266 m!611407))

(declare-fun m!611435 () Bool)

(assert (=> b!637266 m!611435))

(assert (=> b!637256 m!611411))

(declare-fun m!611437 () Bool)

(assert (=> b!637256 m!611437))

(assert (=> b!637259 m!611407))

(assert (=> b!637259 m!611407))

(declare-fun m!611439 () Bool)

(assert (=> b!637259 m!611439))

(declare-fun m!611441 () Bool)

(assert (=> start!57704 m!611441))

(declare-fun m!611443 () Bool)

(assert (=> start!57704 m!611443))

(declare-fun m!611445 () Bool)

(assert (=> b!637257 m!611445))

(assert (=> b!637257 m!611407))

(assert (=> b!637257 m!611407))

(declare-fun m!611447 () Bool)

(assert (=> b!637257 m!611447))

(declare-fun m!611449 () Bool)

(assert (=> b!637255 m!611449))

(declare-fun m!611451 () Bool)

(assert (=> b!637250 m!611451))

(check-sat (not start!57704) (not b!637249) (not b!637255) (not b!637258) (not b!637264) (not b!637259) (not b!637266) (not b!637252) (not b!637265) (not b!637260) (not b!637246) (not b!637250) (not b!637268) (not b!637247) (not b!637254) (not b!637257))
(check-sat)

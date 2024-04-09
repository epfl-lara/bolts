; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56462 () Bool)

(assert start!56462)

(declare-fun b!625640 () Bool)

(declare-fun res!403833 () Bool)

(declare-fun e!358501 () Bool)

(assert (=> b!625640 (=> (not res!403833) (not e!358501))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!625640 (= res!403833 (validKeyInArray!0 k0!1786))))

(declare-fun b!625641 () Bool)

(declare-fun res!403834 () Bool)

(assert (=> b!625641 (=> (not res!403834) (not e!358501))))

(declare-datatypes ((array!37805 0))(
  ( (array!37806 (arr!18142 (Array (_ BitVec 32) (_ BitVec 64))) (size!18506 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37805)

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!625641 (= res!403834 (validKeyInArray!0 (select (arr!18142 a!2986) j!136)))))

(declare-fun b!625642 () Bool)

(declare-fun e!358503 () Bool)

(declare-fun e!358502 () Bool)

(assert (=> b!625642 (= e!358503 e!358502)))

(declare-fun res!403830 () Bool)

(assert (=> b!625642 (=> (not res!403830) (not e!358502))))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6589 0))(
  ( (MissingZero!6589 (index!28639 (_ BitVec 32))) (Found!6589 (index!28640 (_ BitVec 32))) (Intermediate!6589 (undefined!7401 Bool) (index!28641 (_ BitVec 32)) (x!57412 (_ BitVec 32))) (Undefined!6589) (MissingVacant!6589 (index!28642 (_ BitVec 32))) )
))
(declare-fun lt!289859 () SeekEntryResult!6589)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!625642 (= res!403830 (and (= lt!289859 (Found!6589 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (= (select (arr!18142 a!2986) index!984) (select (arr!18142 a!2986) j!136)) (= index!984 j!136)))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37805 (_ BitVec 32)) SeekEntryResult!6589)

(assert (=> b!625642 (= lt!289859 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18142 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun b!625643 () Bool)

(assert (=> b!625643 (= e!358502 (not (= lt!289859 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (store (arr!18142 a!2986) i!1108 k0!1786) j!136) (array!37806 (store (arr!18142 a!2986) i!1108 k0!1786) (size!18506 a!2986)) mask!3053))))))

(declare-fun b!625644 () Bool)

(declare-fun res!403829 () Bool)

(assert (=> b!625644 (=> (not res!403829) (not e!358503))))

(declare-datatypes ((List!12236 0))(
  ( (Nil!12233) (Cons!12232 (h!13277 (_ BitVec 64)) (t!18472 List!12236)) )
))
(declare-fun arrayNoDuplicates!0 (array!37805 (_ BitVec 32) List!12236) Bool)

(assert (=> b!625644 (= res!403829 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12233))))

(declare-fun res!403835 () Bool)

(assert (=> start!56462 (=> (not res!403835) (not e!358501))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56462 (= res!403835 (validMask!0 mask!3053))))

(assert (=> start!56462 e!358501))

(assert (=> start!56462 true))

(declare-fun array_inv!13916 (array!37805) Bool)

(assert (=> start!56462 (array_inv!13916 a!2986)))

(declare-fun b!625645 () Bool)

(declare-fun res!403826 () Bool)

(assert (=> b!625645 (=> (not res!403826) (not e!358501))))

(assert (=> b!625645 (= res!403826 (and (= (size!18506 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18506 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18506 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!625646 () Bool)

(declare-fun res!403831 () Bool)

(assert (=> b!625646 (=> (not res!403831) (not e!358501))))

(declare-fun arrayContainsKey!0 (array!37805 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!625646 (= res!403831 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!625647 () Bool)

(declare-fun res!403827 () Bool)

(assert (=> b!625647 (=> (not res!403827) (not e!358503))))

(assert (=> b!625647 (= res!403827 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18142 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18142 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!625648 () Bool)

(assert (=> b!625648 (= e!358501 e!358503)))

(declare-fun res!403828 () Bool)

(assert (=> b!625648 (=> (not res!403828) (not e!358503))))

(declare-fun lt!289860 () SeekEntryResult!6589)

(assert (=> b!625648 (= res!403828 (or (= lt!289860 (MissingZero!6589 i!1108)) (= lt!289860 (MissingVacant!6589 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37805 (_ BitVec 32)) SeekEntryResult!6589)

(assert (=> b!625648 (= lt!289860 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!625649 () Bool)

(declare-fun res!403832 () Bool)

(assert (=> b!625649 (=> (not res!403832) (not e!358503))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37805 (_ BitVec 32)) Bool)

(assert (=> b!625649 (= res!403832 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!56462 res!403835) b!625645))

(assert (= (and b!625645 res!403826) b!625641))

(assert (= (and b!625641 res!403834) b!625640))

(assert (= (and b!625640 res!403833) b!625646))

(assert (= (and b!625646 res!403831) b!625648))

(assert (= (and b!625648 res!403828) b!625649))

(assert (= (and b!625649 res!403832) b!625644))

(assert (= (and b!625644 res!403829) b!625647))

(assert (= (and b!625647 res!403827) b!625642))

(assert (= (and b!625642 res!403830) b!625643))

(declare-fun m!601247 () Bool)

(assert (=> b!625641 m!601247))

(assert (=> b!625641 m!601247))

(declare-fun m!601249 () Bool)

(assert (=> b!625641 m!601249))

(declare-fun m!601251 () Bool)

(assert (=> b!625643 m!601251))

(declare-fun m!601253 () Bool)

(assert (=> b!625643 m!601253))

(assert (=> b!625643 m!601253))

(declare-fun m!601255 () Bool)

(assert (=> b!625643 m!601255))

(declare-fun m!601257 () Bool)

(assert (=> b!625640 m!601257))

(declare-fun m!601259 () Bool)

(assert (=> b!625649 m!601259))

(declare-fun m!601261 () Bool)

(assert (=> b!625642 m!601261))

(assert (=> b!625642 m!601247))

(assert (=> b!625642 m!601247))

(declare-fun m!601263 () Bool)

(assert (=> b!625642 m!601263))

(declare-fun m!601265 () Bool)

(assert (=> b!625647 m!601265))

(assert (=> b!625647 m!601251))

(declare-fun m!601267 () Bool)

(assert (=> b!625647 m!601267))

(declare-fun m!601269 () Bool)

(assert (=> start!56462 m!601269))

(declare-fun m!601271 () Bool)

(assert (=> start!56462 m!601271))

(declare-fun m!601273 () Bool)

(assert (=> b!625644 m!601273))

(declare-fun m!601275 () Bool)

(assert (=> b!625648 m!601275))

(declare-fun m!601277 () Bool)

(assert (=> b!625646 m!601277))

(check-sat (not b!625649) (not b!625646) (not b!625644) (not b!625648) (not b!625641) (not b!625640) (not b!625642) (not start!56462) (not b!625643))
(check-sat)
(get-model)

(declare-fun d!88701 () Bool)

(assert (=> d!88701 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!56462 d!88701))

(declare-fun d!88703 () Bool)

(assert (=> d!88703 (= (array_inv!13916 a!2986) (bvsge (size!18506 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!56462 d!88703))

(declare-fun d!88705 () Bool)

(assert (=> d!88705 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!625640 d!88705))

(declare-fun d!88707 () Bool)

(assert (=> d!88707 (= (validKeyInArray!0 (select (arr!18142 a!2986) j!136)) (and (not (= (select (arr!18142 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18142 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!625641 d!88707))

(declare-fun d!88709 () Bool)

(declare-fun res!403870 () Bool)

(declare-fun e!358521 () Bool)

(assert (=> d!88709 (=> res!403870 e!358521)))

(assert (=> d!88709 (= res!403870 (= (select (arr!18142 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!88709 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!358521)))

(declare-fun b!625684 () Bool)

(declare-fun e!358522 () Bool)

(assert (=> b!625684 (= e!358521 e!358522)))

(declare-fun res!403871 () Bool)

(assert (=> b!625684 (=> (not res!403871) (not e!358522))))

(assert (=> b!625684 (= res!403871 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18506 a!2986)))))

(declare-fun b!625685 () Bool)

(assert (=> b!625685 (= e!358522 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!88709 (not res!403870)) b!625684))

(assert (= (and b!625684 res!403871) b!625685))

(declare-fun m!601311 () Bool)

(assert (=> d!88709 m!601311))

(declare-fun m!601313 () Bool)

(assert (=> b!625685 m!601313))

(assert (=> b!625646 d!88709))

(declare-fun b!625698 () Bool)

(declare-fun e!358529 () SeekEntryResult!6589)

(assert (=> b!625698 (= e!358529 Undefined!6589)))

(declare-fun b!625699 () Bool)

(declare-fun e!358531 () SeekEntryResult!6589)

(assert (=> b!625699 (= e!358531 (MissingVacant!6589 vacantSpotIndex!68))))

(declare-fun b!625700 () Bool)

(declare-fun e!358530 () SeekEntryResult!6589)

(assert (=> b!625700 (= e!358529 e!358530)))

(declare-fun c!71280 () Bool)

(declare-fun lt!289871 () (_ BitVec 64))

(assert (=> b!625700 (= c!71280 (= lt!289871 (select (arr!18142 a!2986) j!136)))))

(declare-fun b!625701 () Bool)

(assert (=> b!625701 (= e!358530 (Found!6589 index!984))))

(declare-fun lt!289872 () SeekEntryResult!6589)

(declare-fun d!88711 () Bool)

(get-info :version)

(assert (=> d!88711 (and (or ((_ is Undefined!6589) lt!289872) (not ((_ is Found!6589) lt!289872)) (and (bvsge (index!28640 lt!289872) #b00000000000000000000000000000000) (bvslt (index!28640 lt!289872) (size!18506 a!2986)))) (or ((_ is Undefined!6589) lt!289872) ((_ is Found!6589) lt!289872) (not ((_ is MissingVacant!6589) lt!289872)) (not (= (index!28642 lt!289872) vacantSpotIndex!68)) (and (bvsge (index!28642 lt!289872) #b00000000000000000000000000000000) (bvslt (index!28642 lt!289872) (size!18506 a!2986)))) (or ((_ is Undefined!6589) lt!289872) (ite ((_ is Found!6589) lt!289872) (= (select (arr!18142 a!2986) (index!28640 lt!289872)) (select (arr!18142 a!2986) j!136)) (and ((_ is MissingVacant!6589) lt!289872) (= (index!28642 lt!289872) vacantSpotIndex!68) (= (select (arr!18142 a!2986) (index!28642 lt!289872)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!88711 (= lt!289872 e!358529)))

(declare-fun c!71282 () Bool)

(assert (=> d!88711 (= c!71282 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!88711 (= lt!289871 (select (arr!18142 a!2986) index!984))))

(assert (=> d!88711 (validMask!0 mask!3053)))

(assert (=> d!88711 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18142 a!2986) j!136) a!2986 mask!3053) lt!289872)))

(declare-fun b!625702 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!625702 (= e!358531 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18142 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!625703 () Bool)

(declare-fun c!71281 () Bool)

(assert (=> b!625703 (= c!71281 (= lt!289871 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!625703 (= e!358530 e!358531)))

(assert (= (and d!88711 c!71282) b!625698))

(assert (= (and d!88711 (not c!71282)) b!625700))

(assert (= (and b!625700 c!71280) b!625701))

(assert (= (and b!625700 (not c!71280)) b!625703))

(assert (= (and b!625703 c!71281) b!625699))

(assert (= (and b!625703 (not c!71281)) b!625702))

(declare-fun m!601315 () Bool)

(assert (=> d!88711 m!601315))

(declare-fun m!601317 () Bool)

(assert (=> d!88711 m!601317))

(assert (=> d!88711 m!601261))

(assert (=> d!88711 m!601269))

(declare-fun m!601319 () Bool)

(assert (=> b!625702 m!601319))

(assert (=> b!625702 m!601319))

(assert (=> b!625702 m!601247))

(declare-fun m!601321 () Bool)

(assert (=> b!625702 m!601321))

(assert (=> b!625642 d!88711))

(declare-fun b!625704 () Bool)

(declare-fun e!358532 () SeekEntryResult!6589)

(assert (=> b!625704 (= e!358532 Undefined!6589)))

(declare-fun b!625705 () Bool)

(declare-fun e!358534 () SeekEntryResult!6589)

(assert (=> b!625705 (= e!358534 (MissingVacant!6589 vacantSpotIndex!68))))

(declare-fun b!625706 () Bool)

(declare-fun e!358533 () SeekEntryResult!6589)

(assert (=> b!625706 (= e!358532 e!358533)))

(declare-fun lt!289873 () (_ BitVec 64))

(declare-fun c!71283 () Bool)

(assert (=> b!625706 (= c!71283 (= lt!289873 (select (store (arr!18142 a!2986) i!1108 k0!1786) j!136)))))

(declare-fun b!625707 () Bool)

(assert (=> b!625707 (= e!358533 (Found!6589 index!984))))

(declare-fun d!88713 () Bool)

(declare-fun lt!289874 () SeekEntryResult!6589)

(assert (=> d!88713 (and (or ((_ is Undefined!6589) lt!289874) (not ((_ is Found!6589) lt!289874)) (and (bvsge (index!28640 lt!289874) #b00000000000000000000000000000000) (bvslt (index!28640 lt!289874) (size!18506 (array!37806 (store (arr!18142 a!2986) i!1108 k0!1786) (size!18506 a!2986)))))) (or ((_ is Undefined!6589) lt!289874) ((_ is Found!6589) lt!289874) (not ((_ is MissingVacant!6589) lt!289874)) (not (= (index!28642 lt!289874) vacantSpotIndex!68)) (and (bvsge (index!28642 lt!289874) #b00000000000000000000000000000000) (bvslt (index!28642 lt!289874) (size!18506 (array!37806 (store (arr!18142 a!2986) i!1108 k0!1786) (size!18506 a!2986)))))) (or ((_ is Undefined!6589) lt!289874) (ite ((_ is Found!6589) lt!289874) (= (select (arr!18142 (array!37806 (store (arr!18142 a!2986) i!1108 k0!1786) (size!18506 a!2986))) (index!28640 lt!289874)) (select (store (arr!18142 a!2986) i!1108 k0!1786) j!136)) (and ((_ is MissingVacant!6589) lt!289874) (= (index!28642 lt!289874) vacantSpotIndex!68) (= (select (arr!18142 (array!37806 (store (arr!18142 a!2986) i!1108 k0!1786) (size!18506 a!2986))) (index!28642 lt!289874)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!88713 (= lt!289874 e!358532)))

(declare-fun c!71285 () Bool)

(assert (=> d!88713 (= c!71285 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!88713 (= lt!289873 (select (arr!18142 (array!37806 (store (arr!18142 a!2986) i!1108 k0!1786) (size!18506 a!2986))) index!984))))

(assert (=> d!88713 (validMask!0 mask!3053)))

(assert (=> d!88713 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (store (arr!18142 a!2986) i!1108 k0!1786) j!136) (array!37806 (store (arr!18142 a!2986) i!1108 k0!1786) (size!18506 a!2986)) mask!3053) lt!289874)))

(declare-fun b!625708 () Bool)

(assert (=> b!625708 (= e!358534 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (store (arr!18142 a!2986) i!1108 k0!1786) j!136) (array!37806 (store (arr!18142 a!2986) i!1108 k0!1786) (size!18506 a!2986)) mask!3053))))

(declare-fun b!625709 () Bool)

(declare-fun c!71284 () Bool)

(assert (=> b!625709 (= c!71284 (= lt!289873 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!625709 (= e!358533 e!358534)))

(assert (= (and d!88713 c!71285) b!625704))

(assert (= (and d!88713 (not c!71285)) b!625706))

(assert (= (and b!625706 c!71283) b!625707))

(assert (= (and b!625706 (not c!71283)) b!625709))

(assert (= (and b!625709 c!71284) b!625705))

(assert (= (and b!625709 (not c!71284)) b!625708))

(declare-fun m!601323 () Bool)

(assert (=> d!88713 m!601323))

(declare-fun m!601325 () Bool)

(assert (=> d!88713 m!601325))

(declare-fun m!601327 () Bool)

(assert (=> d!88713 m!601327))

(assert (=> d!88713 m!601269))

(assert (=> b!625708 m!601319))

(assert (=> b!625708 m!601319))

(assert (=> b!625708 m!601253))

(declare-fun m!601329 () Bool)

(assert (=> b!625708 m!601329))

(assert (=> b!625643 d!88713))

(declare-fun b!625726 () Bool)

(declare-fun e!358547 () SeekEntryResult!6589)

(declare-fun e!358545 () SeekEntryResult!6589)

(assert (=> b!625726 (= e!358547 e!358545)))

(declare-fun lt!289882 () (_ BitVec 64))

(declare-fun lt!289881 () SeekEntryResult!6589)

(assert (=> b!625726 (= lt!289882 (select (arr!18142 a!2986) (index!28641 lt!289881)))))

(declare-fun c!71292 () Bool)

(assert (=> b!625726 (= c!71292 (= lt!289882 k0!1786))))

(declare-fun b!625727 () Bool)

(declare-fun e!358546 () SeekEntryResult!6589)

(assert (=> b!625727 (= e!358546 (MissingZero!6589 (index!28641 lt!289881)))))

(declare-fun b!625728 () Bool)

(assert (=> b!625728 (= e!358545 (Found!6589 (index!28641 lt!289881)))))

(declare-fun d!88715 () Bool)

(declare-fun lt!289883 () SeekEntryResult!6589)

(assert (=> d!88715 (and (or ((_ is Undefined!6589) lt!289883) (not ((_ is Found!6589) lt!289883)) (and (bvsge (index!28640 lt!289883) #b00000000000000000000000000000000) (bvslt (index!28640 lt!289883) (size!18506 a!2986)))) (or ((_ is Undefined!6589) lt!289883) ((_ is Found!6589) lt!289883) (not ((_ is MissingZero!6589) lt!289883)) (and (bvsge (index!28639 lt!289883) #b00000000000000000000000000000000) (bvslt (index!28639 lt!289883) (size!18506 a!2986)))) (or ((_ is Undefined!6589) lt!289883) ((_ is Found!6589) lt!289883) ((_ is MissingZero!6589) lt!289883) (not ((_ is MissingVacant!6589) lt!289883)) (and (bvsge (index!28642 lt!289883) #b00000000000000000000000000000000) (bvslt (index!28642 lt!289883) (size!18506 a!2986)))) (or ((_ is Undefined!6589) lt!289883) (ite ((_ is Found!6589) lt!289883) (= (select (arr!18142 a!2986) (index!28640 lt!289883)) k0!1786) (ite ((_ is MissingZero!6589) lt!289883) (= (select (arr!18142 a!2986) (index!28639 lt!289883)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!6589) lt!289883) (= (select (arr!18142 a!2986) (index!28642 lt!289883)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!88715 (= lt!289883 e!358547)))

(declare-fun c!71293 () Bool)

(assert (=> d!88715 (= c!71293 (and ((_ is Intermediate!6589) lt!289881) (undefined!7401 lt!289881)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37805 (_ BitVec 32)) SeekEntryResult!6589)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!88715 (= lt!289881 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!88715 (validMask!0 mask!3053)))

(assert (=> d!88715 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!289883)))

(declare-fun b!625729 () Bool)

(assert (=> b!625729 (= e!358547 Undefined!6589)))

(declare-fun b!625730 () Bool)

(declare-fun c!71294 () Bool)

(assert (=> b!625730 (= c!71294 (= lt!289882 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!625730 (= e!358545 e!358546)))

(declare-fun b!625731 () Bool)

(assert (=> b!625731 (= e!358546 (seekKeyOrZeroReturnVacant!0 (x!57412 lt!289881) (index!28641 lt!289881) (index!28641 lt!289881) k0!1786 a!2986 mask!3053))))

(assert (= (and d!88715 c!71293) b!625729))

(assert (= (and d!88715 (not c!71293)) b!625726))

(assert (= (and b!625726 c!71292) b!625728))

(assert (= (and b!625726 (not c!71292)) b!625730))

(assert (= (and b!625730 c!71294) b!625727))

(assert (= (and b!625730 (not c!71294)) b!625731))

(declare-fun m!601335 () Bool)

(assert (=> b!625726 m!601335))

(declare-fun m!601337 () Bool)

(assert (=> d!88715 m!601337))

(declare-fun m!601339 () Bool)

(assert (=> d!88715 m!601339))

(assert (=> d!88715 m!601269))

(declare-fun m!601341 () Bool)

(assert (=> d!88715 m!601341))

(assert (=> d!88715 m!601337))

(declare-fun m!601343 () Bool)

(assert (=> d!88715 m!601343))

(declare-fun m!601345 () Bool)

(assert (=> d!88715 m!601345))

(declare-fun m!601347 () Bool)

(assert (=> b!625731 m!601347))

(assert (=> b!625648 d!88715))

(declare-fun b!625779 () Bool)

(declare-fun e!358582 () Bool)

(declare-fun e!358581 () Bool)

(assert (=> b!625779 (= e!358582 e!358581)))

(declare-fun c!71309 () Bool)

(assert (=> b!625779 (= c!71309 (validKeyInArray!0 (select (arr!18142 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!625780 () Bool)

(declare-fun e!358583 () Bool)

(assert (=> b!625780 (= e!358581 e!358583)))

(declare-fun lt!289897 () (_ BitVec 64))

(assert (=> b!625780 (= lt!289897 (select (arr!18142 a!2986) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!21070 0))(
  ( (Unit!21071) )
))
(declare-fun lt!289898 () Unit!21070)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!37805 (_ BitVec 64) (_ BitVec 32)) Unit!21070)

(assert (=> b!625780 (= lt!289898 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!289897 #b00000000000000000000000000000000))))

(assert (=> b!625780 (arrayContainsKey!0 a!2986 lt!289897 #b00000000000000000000000000000000)))

(declare-fun lt!289896 () Unit!21070)

(assert (=> b!625780 (= lt!289896 lt!289898)))

(declare-fun res!403895 () Bool)

(assert (=> b!625780 (= res!403895 (= (seekEntryOrOpen!0 (select (arr!18142 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6589 #b00000000000000000000000000000000)))))

(assert (=> b!625780 (=> (not res!403895) (not e!358583))))

(declare-fun d!88731 () Bool)

(declare-fun res!403896 () Bool)

(assert (=> d!88731 (=> res!403896 e!358582)))

(assert (=> d!88731 (= res!403896 (bvsge #b00000000000000000000000000000000 (size!18506 a!2986)))))

(assert (=> d!88731 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!358582)))

(declare-fun b!625781 () Bool)

(declare-fun call!33218 () Bool)

(assert (=> b!625781 (= e!358583 call!33218)))

(declare-fun b!625782 () Bool)

(assert (=> b!625782 (= e!358581 call!33218)))

(declare-fun bm!33215 () Bool)

(assert (=> bm!33215 (= call!33218 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(assert (= (and d!88731 (not res!403896)) b!625779))

(assert (= (and b!625779 c!71309) b!625780))

(assert (= (and b!625779 (not c!71309)) b!625782))

(assert (= (and b!625780 res!403895) b!625781))

(assert (= (or b!625781 b!625782) bm!33215))

(assert (=> b!625779 m!601311))

(assert (=> b!625779 m!601311))

(declare-fun m!601369 () Bool)

(assert (=> b!625779 m!601369))

(assert (=> b!625780 m!601311))

(declare-fun m!601371 () Bool)

(assert (=> b!625780 m!601371))

(declare-fun m!601373 () Bool)

(assert (=> b!625780 m!601373))

(assert (=> b!625780 m!601311))

(declare-fun m!601375 () Bool)

(assert (=> b!625780 m!601375))

(declare-fun m!601377 () Bool)

(assert (=> bm!33215 m!601377))

(assert (=> b!625649 d!88731))

(declare-fun b!625803 () Bool)

(declare-fun e!358600 () Bool)

(declare-fun call!33223 () Bool)

(assert (=> b!625803 (= e!358600 call!33223)))

(declare-fun b!625804 () Bool)

(declare-fun e!358602 () Bool)

(assert (=> b!625804 (= e!358602 e!358600)))

(declare-fun c!71314 () Bool)

(assert (=> b!625804 (= c!71314 (validKeyInArray!0 (select (arr!18142 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!88739 () Bool)

(declare-fun res!403909 () Bool)

(declare-fun e!358601 () Bool)

(assert (=> d!88739 (=> res!403909 e!358601)))

(assert (=> d!88739 (= res!403909 (bvsge #b00000000000000000000000000000000 (size!18506 a!2986)))))

(assert (=> d!88739 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12233) e!358601)))

(declare-fun b!625805 () Bool)

(assert (=> b!625805 (= e!358601 e!358602)))

(declare-fun res!403910 () Bool)

(assert (=> b!625805 (=> (not res!403910) (not e!358602))))

(declare-fun e!358603 () Bool)

(assert (=> b!625805 (= res!403910 (not e!358603))))

(declare-fun res!403911 () Bool)

(assert (=> b!625805 (=> (not res!403911) (not e!358603))))

(assert (=> b!625805 (= res!403911 (validKeyInArray!0 (select (arr!18142 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!625806 () Bool)

(declare-fun contains!3080 (List!12236 (_ BitVec 64)) Bool)

(assert (=> b!625806 (= e!358603 (contains!3080 Nil!12233 (select (arr!18142 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!33220 () Bool)

(assert (=> bm!33220 (= call!33223 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!71314 (Cons!12232 (select (arr!18142 a!2986) #b00000000000000000000000000000000) Nil!12233) Nil!12233)))))

(declare-fun b!625807 () Bool)

(assert (=> b!625807 (= e!358600 call!33223)))

(assert (= (and d!88739 (not res!403909)) b!625805))

(assert (= (and b!625805 res!403911) b!625806))

(assert (= (and b!625805 res!403910) b!625804))

(assert (= (and b!625804 c!71314) b!625803))

(assert (= (and b!625804 (not c!71314)) b!625807))

(assert (= (or b!625803 b!625807) bm!33220))

(assert (=> b!625804 m!601311))

(assert (=> b!625804 m!601311))

(assert (=> b!625804 m!601369))

(assert (=> b!625805 m!601311))

(assert (=> b!625805 m!601311))

(assert (=> b!625805 m!601369))

(assert (=> b!625806 m!601311))

(assert (=> b!625806 m!601311))

(declare-fun m!601379 () Bool)

(assert (=> b!625806 m!601379))

(assert (=> bm!33220 m!601311))

(declare-fun m!601381 () Bool)

(assert (=> bm!33220 m!601381))

(assert (=> b!625644 d!88739))

(check-sat (not bm!33220) (not d!88715) (not b!625804) (not b!625805) (not b!625806) (not bm!33215) (not d!88711) (not b!625731) (not b!625685) (not d!88713) (not b!625779) (not b!625702) (not b!625780) (not b!625708))
(check-sat)

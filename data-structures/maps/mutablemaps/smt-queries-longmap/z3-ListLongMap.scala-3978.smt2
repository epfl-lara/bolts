; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53958 () Bool)

(assert start!53958)

(declare-fun b!588592 () Bool)

(declare-fun res!376352 () Bool)

(declare-fun e!336090 () Bool)

(assert (=> b!588592 (=> (not res!376352) (not e!336090))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-datatypes ((array!36756 0))(
  ( (array!36757 (arr!17647 (Array (_ BitVec 32) (_ BitVec 64))) (size!18011 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36756)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!588592 (= res!376352 (and (= (size!18011 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18011 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18011 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!588593 () Bool)

(declare-fun res!376355 () Bool)

(declare-fun e!336087 () Bool)

(assert (=> b!588593 (=> (not res!376355) (not e!336087))))

(declare-datatypes ((List!11741 0))(
  ( (Nil!11738) (Cons!11737 (h!12782 (_ BitVec 64)) (t!17977 List!11741)) )
))
(declare-fun arrayNoDuplicates!0 (array!36756 (_ BitVec 32) List!11741) Bool)

(assert (=> b!588593 (= res!376355 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11738))))

(declare-fun b!588594 () Bool)

(declare-fun e!336089 () Bool)

(declare-fun e!336091 () Bool)

(assert (=> b!588594 (= e!336089 e!336091)))

(declare-fun res!376359 () Bool)

(assert (=> b!588594 (=> (not res!376359) (not e!336091))))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6094 0))(
  ( (MissingZero!6094 (index!26606 (_ BitVec 32))) (Found!6094 (index!26607 (_ BitVec 32))) (Intermediate!6094 (undefined!6906 Bool) (index!26608 (_ BitVec 32)) (x!55431 (_ BitVec 32))) (Undefined!6094) (MissingVacant!6094 (index!26609 (_ BitVec 32))) )
))
(declare-fun lt!266932 () SeekEntryResult!6094)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!588594 (= res!376359 (and (= lt!266932 (Found!6094 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17647 a!2986) index!984) (select (arr!17647 a!2986) j!136))) (not (= (select (arr!17647 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36756 (_ BitVec 32)) SeekEntryResult!6094)

(assert (=> b!588594 (= lt!266932 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17647 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!588595 () Bool)

(declare-datatypes ((Unit!18320 0))(
  ( (Unit!18321) )
))
(declare-fun e!336085 () Unit!18320)

(declare-fun Unit!18322 () Unit!18320)

(assert (=> b!588595 (= e!336085 Unit!18322)))

(assert (=> b!588595 false))

(declare-fun b!588596 () Bool)

(assert (=> b!588596 (= e!336087 e!336089)))

(declare-fun res!376350 () Bool)

(assert (=> b!588596 (=> (not res!376350) (not e!336089))))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!588596 (= res!376350 (= (select (store (arr!17647 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!266931 () array!36756)

(assert (=> b!588596 (= lt!266931 (array!36757 (store (arr!17647 a!2986) i!1108 k0!1786) (size!18011 a!2986)))))

(declare-fun b!588597 () Bool)

(assert (=> b!588597 (= e!336091 (not (bvsge mask!3053 #b00000000000000000000000000000000)))))

(declare-fun lt!266934 () Unit!18320)

(assert (=> b!588597 (= lt!266934 e!336085)))

(declare-fun lt!266936 () (_ BitVec 64))

(declare-fun c!66488 () Bool)

(assert (=> b!588597 (= c!66488 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!266936 lt!266931 mask!3053) Undefined!6094))))

(declare-fun e!336088 () Bool)

(assert (=> b!588597 e!336088))

(declare-fun res!376357 () Bool)

(assert (=> b!588597 (=> (not res!376357) (not e!336088))))

(declare-fun lt!266929 () SeekEntryResult!6094)

(declare-fun lt!266933 () (_ BitVec 32))

(assert (=> b!588597 (= res!376357 (= lt!266929 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266933 vacantSpotIndex!68 lt!266936 lt!266931 mask!3053)))))

(assert (=> b!588597 (= lt!266929 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266933 vacantSpotIndex!68 (select (arr!17647 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!588597 (= lt!266936 (select (store (arr!17647 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!266935 () Unit!18320)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36756 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18320)

(assert (=> b!588597 (= lt!266935 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266933 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!588597 (= lt!266933 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!588598 () Bool)

(declare-fun Unit!18323 () Unit!18320)

(assert (=> b!588598 (= e!336085 Unit!18323)))

(declare-fun b!588599 () Bool)

(declare-fun res!376361 () Bool)

(assert (=> b!588599 (=> (not res!376361) (not e!336087))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36756 (_ BitVec 32)) Bool)

(assert (=> b!588599 (= res!376361 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!376356 () Bool)

(assert (=> start!53958 (=> (not res!376356) (not e!336090))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53958 (= res!376356 (validMask!0 mask!3053))))

(assert (=> start!53958 e!336090))

(assert (=> start!53958 true))

(declare-fun array_inv!13421 (array!36756) Bool)

(assert (=> start!53958 (array_inv!13421 a!2986)))

(declare-fun b!588600 () Bool)

(assert (=> b!588600 (= e!336090 e!336087)))

(declare-fun res!376358 () Bool)

(assert (=> b!588600 (=> (not res!376358) (not e!336087))))

(declare-fun lt!266930 () SeekEntryResult!6094)

(assert (=> b!588600 (= res!376358 (or (= lt!266930 (MissingZero!6094 i!1108)) (= lt!266930 (MissingVacant!6094 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36756 (_ BitVec 32)) SeekEntryResult!6094)

(assert (=> b!588600 (= lt!266930 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!588601 () Bool)

(assert (=> b!588601 (= e!336088 (= lt!266932 lt!266929))))

(declare-fun b!588602 () Bool)

(declare-fun res!376351 () Bool)

(assert (=> b!588602 (=> (not res!376351) (not e!336090))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!588602 (= res!376351 (validKeyInArray!0 (select (arr!17647 a!2986) j!136)))))

(declare-fun b!588603 () Bool)

(declare-fun res!376354 () Bool)

(assert (=> b!588603 (=> (not res!376354) (not e!336090))))

(assert (=> b!588603 (= res!376354 (validKeyInArray!0 k0!1786))))

(declare-fun b!588604 () Bool)

(declare-fun res!376353 () Bool)

(assert (=> b!588604 (=> (not res!376353) (not e!336087))))

(assert (=> b!588604 (= res!376353 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17647 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!588605 () Bool)

(declare-fun res!376360 () Bool)

(assert (=> b!588605 (=> (not res!376360) (not e!336090))))

(declare-fun arrayContainsKey!0 (array!36756 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!588605 (= res!376360 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!53958 res!376356) b!588592))

(assert (= (and b!588592 res!376352) b!588602))

(assert (= (and b!588602 res!376351) b!588603))

(assert (= (and b!588603 res!376354) b!588605))

(assert (= (and b!588605 res!376360) b!588600))

(assert (= (and b!588600 res!376358) b!588599))

(assert (= (and b!588599 res!376361) b!588593))

(assert (= (and b!588593 res!376355) b!588604))

(assert (= (and b!588604 res!376353) b!588596))

(assert (= (and b!588596 res!376350) b!588594))

(assert (= (and b!588594 res!376359) b!588597))

(assert (= (and b!588597 res!376357) b!588601))

(assert (= (and b!588597 c!66488) b!588595))

(assert (= (and b!588597 (not c!66488)) b!588598))

(declare-fun m!567203 () Bool)

(assert (=> b!588604 m!567203))

(declare-fun m!567205 () Bool)

(assert (=> b!588599 m!567205))

(declare-fun m!567207 () Bool)

(assert (=> b!588602 m!567207))

(assert (=> b!588602 m!567207))

(declare-fun m!567209 () Bool)

(assert (=> b!588602 m!567209))

(declare-fun m!567211 () Bool)

(assert (=> b!588603 m!567211))

(declare-fun m!567213 () Bool)

(assert (=> start!53958 m!567213))

(declare-fun m!567215 () Bool)

(assert (=> start!53958 m!567215))

(declare-fun m!567217 () Bool)

(assert (=> b!588594 m!567217))

(assert (=> b!588594 m!567207))

(assert (=> b!588594 m!567207))

(declare-fun m!567219 () Bool)

(assert (=> b!588594 m!567219))

(declare-fun m!567221 () Bool)

(assert (=> b!588600 m!567221))

(declare-fun m!567223 () Bool)

(assert (=> b!588596 m!567223))

(declare-fun m!567225 () Bool)

(assert (=> b!588596 m!567225))

(declare-fun m!567227 () Bool)

(assert (=> b!588605 m!567227))

(declare-fun m!567229 () Bool)

(assert (=> b!588593 m!567229))

(declare-fun m!567231 () Bool)

(assert (=> b!588597 m!567231))

(declare-fun m!567233 () Bool)

(assert (=> b!588597 m!567233))

(declare-fun m!567235 () Bool)

(assert (=> b!588597 m!567235))

(assert (=> b!588597 m!567207))

(assert (=> b!588597 m!567223))

(declare-fun m!567237 () Bool)

(assert (=> b!588597 m!567237))

(assert (=> b!588597 m!567207))

(declare-fun m!567239 () Bool)

(assert (=> b!588597 m!567239))

(declare-fun m!567241 () Bool)

(assert (=> b!588597 m!567241))

(check-sat (not b!588599) (not b!588600) (not b!588593) (not start!53958) (not b!588605) (not b!588603) (not b!588594) (not b!588602) (not b!588597))
(check-sat)

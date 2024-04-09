; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54506 () Bool)

(assert start!54506)

(declare-fun b!594316 () Bool)

(declare-fun res!380455 () Bool)

(declare-fun e!339568 () Bool)

(assert (=> b!594316 (=> (not res!380455) (not e!339568))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36929 0))(
  ( (array!36930 (arr!17725 (Array (_ BitVec 32) (_ BitVec 64))) (size!18089 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36929)

(assert (=> b!594316 (= res!380455 (and (= (size!18089 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18089 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18089 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!594317 () Bool)

(declare-fun res!380451 () Bool)

(declare-fun e!339579 () Bool)

(assert (=> b!594317 (=> (not res!380451) (not e!339579))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!594317 (= res!380451 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17725 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!594318 () Bool)

(declare-datatypes ((Unit!18632 0))(
  ( (Unit!18633) )
))
(declare-fun e!339569 () Unit!18632)

(declare-fun Unit!18634 () Unit!18632)

(assert (=> b!594318 (= e!339569 Unit!18634)))

(assert (=> b!594318 false))

(declare-fun b!594319 () Bool)

(declare-fun res!380454 () Bool)

(declare-fun e!339573 () Bool)

(assert (=> b!594319 (=> res!380454 e!339573)))

(declare-datatypes ((List!11819 0))(
  ( (Nil!11816) (Cons!11815 (h!12860 (_ BitVec 64)) (t!18055 List!11819)) )
))
(declare-fun contains!2923 (List!11819 (_ BitVec 64)) Bool)

(assert (=> b!594319 (= res!380454 (contains!2923 Nil!11816 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!594320 () Bool)

(declare-fun e!339574 () Bool)

(declare-fun e!339577 () Bool)

(assert (=> b!594320 (= e!339574 e!339577)))

(declare-fun res!380448 () Bool)

(assert (=> b!594320 (=> (not res!380448) (not e!339577))))

(declare-fun lt!269848 () array!36929)

(declare-fun arrayContainsKey!0 (array!36929 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!594320 (= res!380448 (arrayContainsKey!0 lt!269848 (select (arr!17725 a!2986) j!136) j!136))))

(declare-fun b!594321 () Bool)

(assert (=> b!594321 (= e!339577 (arrayContainsKey!0 lt!269848 (select (arr!17725 a!2986) j!136) index!984))))

(declare-fun b!594322 () Bool)

(declare-fun res!380464 () Bool)

(assert (=> b!594322 (=> (not res!380464) (not e!339579))))

(declare-fun arrayNoDuplicates!0 (array!36929 (_ BitVec 32) List!11819) Bool)

(assert (=> b!594322 (= res!380464 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11816))))

(declare-fun res!380460 () Bool)

(assert (=> start!54506 (=> (not res!380460) (not e!339568))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54506 (= res!380460 (validMask!0 mask!3053))))

(assert (=> start!54506 e!339568))

(assert (=> start!54506 true))

(declare-fun array_inv!13499 (array!36929) Bool)

(assert (=> start!54506 (array_inv!13499 a!2986)))

(declare-fun b!594323 () Bool)

(assert (=> b!594323 (= e!339573 true)))

(declare-fun lt!269851 () Bool)

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!594323 (= lt!269851 (contains!2923 Nil!11816 k0!1786))))

(declare-fun b!594324 () Bool)

(declare-fun res!380468 () Bool)

(assert (=> b!594324 (=> (not res!380468) (not e!339568))))

(assert (=> b!594324 (= res!380468 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!594325 () Bool)

(declare-fun e!339580 () Bool)

(declare-fun e!339572 () Bool)

(assert (=> b!594325 (= e!339580 (not e!339572))))

(declare-fun res!380463 () Bool)

(assert (=> b!594325 (=> res!380463 e!339572)))

(declare-datatypes ((SeekEntryResult!6172 0))(
  ( (MissingZero!6172 (index!26935 (_ BitVec 32))) (Found!6172 (index!26936 (_ BitVec 32))) (Intermediate!6172 (undefined!6984 Bool) (index!26937 (_ BitVec 32)) (x!55769 (_ BitVec 32))) (Undefined!6172) (MissingVacant!6172 (index!26938 (_ BitVec 32))) )
))
(declare-fun lt!269846 () SeekEntryResult!6172)

(assert (=> b!594325 (= res!380463 (not (= lt!269846 (Found!6172 index!984))))))

(declare-fun lt!269845 () Unit!18632)

(assert (=> b!594325 (= lt!269845 e!339569)))

(declare-fun c!67301 () Bool)

(assert (=> b!594325 (= c!67301 (= lt!269846 Undefined!6172))))

(declare-fun lt!269854 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36929 (_ BitVec 32)) SeekEntryResult!6172)

(assert (=> b!594325 (= lt!269846 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!269854 lt!269848 mask!3053))))

(declare-fun e!339575 () Bool)

(assert (=> b!594325 e!339575))

(declare-fun res!380450 () Bool)

(assert (=> b!594325 (=> (not res!380450) (not e!339575))))

(declare-fun lt!269856 () SeekEntryResult!6172)

(declare-fun lt!269847 () (_ BitVec 32))

(assert (=> b!594325 (= res!380450 (= lt!269856 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269847 vacantSpotIndex!68 lt!269854 lt!269848 mask!3053)))))

(assert (=> b!594325 (= lt!269856 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269847 vacantSpotIndex!68 (select (arr!17725 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!594325 (= lt!269854 (select (store (arr!17725 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!269852 () Unit!18632)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36929 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18632)

(assert (=> b!594325 (= lt!269852 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!269847 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!594325 (= lt!269847 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!594326 () Bool)

(declare-fun res!380452 () Bool)

(assert (=> b!594326 (=> (not res!380452) (not e!339568))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!594326 (= res!380452 (validKeyInArray!0 k0!1786))))

(declare-fun b!594327 () Bool)

(declare-fun lt!269850 () SeekEntryResult!6172)

(assert (=> b!594327 (= e!339575 (= lt!269850 lt!269856))))

(declare-fun b!594328 () Bool)

(declare-fun res!380453 () Bool)

(assert (=> b!594328 (=> res!380453 e!339573)))

(declare-fun noDuplicate!239 (List!11819) Bool)

(assert (=> b!594328 (= res!380453 (not (noDuplicate!239 Nil!11816)))))

(declare-fun b!594329 () Bool)

(assert (=> b!594329 (= e!339568 e!339579)))

(declare-fun res!380467 () Bool)

(assert (=> b!594329 (=> (not res!380467) (not e!339579))))

(declare-fun lt!269849 () SeekEntryResult!6172)

(assert (=> b!594329 (= res!380467 (or (= lt!269849 (MissingZero!6172 i!1108)) (= lt!269849 (MissingVacant!6172 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36929 (_ BitVec 32)) SeekEntryResult!6172)

(assert (=> b!594329 (= lt!269849 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!594330 () Bool)

(declare-fun e!339570 () Bool)

(assert (=> b!594330 (= e!339579 e!339570)))

(declare-fun res!380466 () Bool)

(assert (=> b!594330 (=> (not res!380466) (not e!339570))))

(assert (=> b!594330 (= res!380466 (= (select (store (arr!17725 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!594330 (= lt!269848 (array!36930 (store (arr!17725 a!2986) i!1108 k0!1786) (size!18089 a!2986)))))

(declare-fun b!594331 () Bool)

(assert (=> b!594331 (= e!339570 e!339580)))

(declare-fun res!380459 () Bool)

(assert (=> b!594331 (=> (not res!380459) (not e!339580))))

(assert (=> b!594331 (= res!380459 (and (= lt!269850 (Found!6172 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17725 a!2986) index!984) (select (arr!17725 a!2986) j!136))) (not (= (select (arr!17725 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!594331 (= lt!269850 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17725 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!594332 () Bool)

(declare-fun res!380461 () Bool)

(assert (=> b!594332 (=> (not res!380461) (not e!339579))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36929 (_ BitVec 32)) Bool)

(assert (=> b!594332 (= res!380461 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!594333 () Bool)

(declare-fun res!380462 () Bool)

(assert (=> b!594333 (=> (not res!380462) (not e!339568))))

(assert (=> b!594333 (= res!380462 (validKeyInArray!0 (select (arr!17725 a!2986) j!136)))))

(declare-fun b!594334 () Bool)

(declare-fun e!339571 () Bool)

(assert (=> b!594334 (= e!339571 e!339574)))

(declare-fun res!380457 () Bool)

(assert (=> b!594334 (=> res!380457 e!339574)))

(declare-fun lt!269853 () (_ BitVec 64))

(assert (=> b!594334 (= res!380457 (or (not (= (select (arr!17725 a!2986) j!136) lt!269854)) (not (= (select (arr!17725 a!2986) j!136) lt!269853)) (bvsge j!136 index!984)))))

(declare-fun b!594335 () Bool)

(declare-fun Unit!18635 () Unit!18632)

(assert (=> b!594335 (= e!339569 Unit!18635)))

(declare-fun b!594336 () Bool)

(declare-fun e!339578 () Bool)

(assert (=> b!594336 (= e!339578 e!339573)))

(declare-fun res!380456 () Bool)

(assert (=> b!594336 (=> res!380456 e!339573)))

(assert (=> b!594336 (= res!380456 (or (bvsge (size!18089 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18089 a!2986))))))

(assert (=> b!594336 (arrayContainsKey!0 lt!269848 (select (arr!17725 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!269855 () Unit!18632)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36929 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18632)

(assert (=> b!594336 (= lt!269855 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!269848 (select (arr!17725 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!594337 () Bool)

(assert (=> b!594337 (= e!339572 e!339578)))

(declare-fun res!380465 () Bool)

(assert (=> b!594337 (=> res!380465 e!339578)))

(assert (=> b!594337 (= res!380465 (or (not (= (select (arr!17725 a!2986) j!136) lt!269854)) (not (= (select (arr!17725 a!2986) j!136) lt!269853)) (bvsge j!136 index!984)))))

(assert (=> b!594337 e!339571))

(declare-fun res!380449 () Bool)

(assert (=> b!594337 (=> (not res!380449) (not e!339571))))

(assert (=> b!594337 (= res!380449 (= lt!269853 (select (arr!17725 a!2986) j!136)))))

(assert (=> b!594337 (= lt!269853 (select (store (arr!17725 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!594338 () Bool)

(declare-fun res!380458 () Bool)

(assert (=> b!594338 (=> res!380458 e!339573)))

(assert (=> b!594338 (= res!380458 (contains!2923 Nil!11816 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!54506 res!380460) b!594316))

(assert (= (and b!594316 res!380455) b!594333))

(assert (= (and b!594333 res!380462) b!594326))

(assert (= (and b!594326 res!380452) b!594324))

(assert (= (and b!594324 res!380468) b!594329))

(assert (= (and b!594329 res!380467) b!594332))

(assert (= (and b!594332 res!380461) b!594322))

(assert (= (and b!594322 res!380464) b!594317))

(assert (= (and b!594317 res!380451) b!594330))

(assert (= (and b!594330 res!380466) b!594331))

(assert (= (and b!594331 res!380459) b!594325))

(assert (= (and b!594325 res!380450) b!594327))

(assert (= (and b!594325 c!67301) b!594318))

(assert (= (and b!594325 (not c!67301)) b!594335))

(assert (= (and b!594325 (not res!380463)) b!594337))

(assert (= (and b!594337 res!380449) b!594334))

(assert (= (and b!594334 (not res!380457)) b!594320))

(assert (= (and b!594320 res!380448) b!594321))

(assert (= (and b!594337 (not res!380465)) b!594336))

(assert (= (and b!594336 (not res!380456)) b!594328))

(assert (= (and b!594328 (not res!380453)) b!594338))

(assert (= (and b!594338 (not res!380458)) b!594319))

(assert (= (and b!594319 (not res!380454)) b!594323))

(declare-fun m!572161 () Bool)

(assert (=> b!594334 m!572161))

(assert (=> b!594320 m!572161))

(assert (=> b!594320 m!572161))

(declare-fun m!572163 () Bool)

(assert (=> b!594320 m!572163))

(declare-fun m!572165 () Bool)

(assert (=> b!594325 m!572165))

(declare-fun m!572167 () Bool)

(assert (=> b!594325 m!572167))

(assert (=> b!594325 m!572161))

(declare-fun m!572169 () Bool)

(assert (=> b!594325 m!572169))

(declare-fun m!572171 () Bool)

(assert (=> b!594325 m!572171))

(declare-fun m!572173 () Bool)

(assert (=> b!594325 m!572173))

(assert (=> b!594325 m!572161))

(declare-fun m!572175 () Bool)

(assert (=> b!594325 m!572175))

(declare-fun m!572177 () Bool)

(assert (=> b!594325 m!572177))

(declare-fun m!572179 () Bool)

(assert (=> b!594332 m!572179))

(assert (=> b!594337 m!572161))

(assert (=> b!594337 m!572169))

(declare-fun m!572181 () Bool)

(assert (=> b!594337 m!572181))

(declare-fun m!572183 () Bool)

(assert (=> b!594317 m!572183))

(declare-fun m!572185 () Bool)

(assert (=> start!54506 m!572185))

(declare-fun m!572187 () Bool)

(assert (=> start!54506 m!572187))

(declare-fun m!572189 () Bool)

(assert (=> b!594331 m!572189))

(assert (=> b!594331 m!572161))

(assert (=> b!594331 m!572161))

(declare-fun m!572191 () Bool)

(assert (=> b!594331 m!572191))

(declare-fun m!572193 () Bool)

(assert (=> b!594324 m!572193))

(declare-fun m!572195 () Bool)

(assert (=> b!594338 m!572195))

(declare-fun m!572197 () Bool)

(assert (=> b!594328 m!572197))

(assert (=> b!594321 m!572161))

(assert (=> b!594321 m!572161))

(declare-fun m!572199 () Bool)

(assert (=> b!594321 m!572199))

(declare-fun m!572201 () Bool)

(assert (=> b!594322 m!572201))

(declare-fun m!572203 () Bool)

(assert (=> b!594319 m!572203))

(assert (=> b!594333 m!572161))

(assert (=> b!594333 m!572161))

(declare-fun m!572205 () Bool)

(assert (=> b!594333 m!572205))

(declare-fun m!572207 () Bool)

(assert (=> b!594329 m!572207))

(declare-fun m!572209 () Bool)

(assert (=> b!594326 m!572209))

(assert (=> b!594330 m!572169))

(declare-fun m!572211 () Bool)

(assert (=> b!594330 m!572211))

(assert (=> b!594336 m!572161))

(assert (=> b!594336 m!572161))

(declare-fun m!572213 () Bool)

(assert (=> b!594336 m!572213))

(assert (=> b!594336 m!572161))

(declare-fun m!572215 () Bool)

(assert (=> b!594336 m!572215))

(declare-fun m!572217 () Bool)

(assert (=> b!594323 m!572217))

(check-sat (not b!594324) (not b!594329) (not start!54506) (not b!594332) (not b!594321) (not b!594336) (not b!594328) (not b!594333) (not b!594331) (not b!594319) (not b!594326) (not b!594322) (not b!594320) (not b!594325) (not b!594338) (not b!594323))
(check-sat)

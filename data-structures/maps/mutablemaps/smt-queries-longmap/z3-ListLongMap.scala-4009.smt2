; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54536 () Bool)

(assert start!54536)

(declare-fun b!595351 () Bool)

(declare-fun res!381406 () Bool)

(declare-fun e!340164 () Bool)

(assert (=> b!595351 (=> res!381406 e!340164)))

(declare-datatypes ((List!11834 0))(
  ( (Nil!11831) (Cons!11830 (h!12875 (_ BitVec 64)) (t!18070 List!11834)) )
))
(declare-fun contains!2938 (List!11834 (_ BitVec 64)) Bool)

(assert (=> b!595351 (= res!381406 (contains!2938 Nil!11831 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!36959 0))(
  ( (array!36960 (arr!17740 (Array (_ BitVec 32) (_ BitVec 64))) (size!18104 (_ BitVec 32))) )
))
(declare-fun lt!270393 () array!36959)

(declare-fun e!340154 () Bool)

(declare-fun b!595352 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!36959)

(declare-fun arrayContainsKey!0 (array!36959 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!595352 (= e!340154 (arrayContainsKey!0 lt!270393 (select (arr!17740 a!2986) j!136) index!984))))

(declare-fun b!595353 () Bool)

(declare-fun res!381404 () Bool)

(declare-fun e!340157 () Bool)

(assert (=> b!595353 (=> (not res!381404) (not e!340157))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!595353 (= res!381404 (validKeyInArray!0 (select (arr!17740 a!2986) j!136)))))

(declare-fun b!595354 () Bool)

(declare-fun res!381401 () Bool)

(declare-fun e!340163 () Bool)

(assert (=> b!595354 (=> (not res!381401) (not e!340163))))

(declare-fun arrayNoDuplicates!0 (array!36959 (_ BitVec 32) List!11834) Bool)

(assert (=> b!595354 (= res!381401 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11831))))

(declare-fun b!595355 () Bool)

(declare-fun e!340162 () Bool)

(declare-fun e!340153 () Bool)

(assert (=> b!595355 (= e!340162 e!340153)))

(declare-fun res!381400 () Bool)

(assert (=> b!595355 (=> (not res!381400) (not e!340153))))

(declare-datatypes ((SeekEntryResult!6187 0))(
  ( (MissingZero!6187 (index!26995 (_ BitVec 32))) (Found!6187 (index!26996 (_ BitVec 32))) (Intermediate!6187 (undefined!6999 Bool) (index!26997 (_ BitVec 32)) (x!55824 (_ BitVec 32))) (Undefined!6187) (MissingVacant!6187 (index!26998 (_ BitVec 32))) )
))
(declare-fun lt!270394 () SeekEntryResult!6187)

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!595355 (= res!381400 (and (= lt!270394 (Found!6187 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17740 a!2986) index!984) (select (arr!17740 a!2986) j!136))) (not (= (select (arr!17740 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36959 (_ BitVec 32)) SeekEntryResult!6187)

(assert (=> b!595355 (= lt!270394 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17740 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!595356 () Bool)

(declare-fun e!340159 () Bool)

(declare-fun e!340160 () Bool)

(assert (=> b!595356 (= e!340159 e!340160)))

(declare-fun res!381411 () Bool)

(assert (=> b!595356 (=> res!381411 e!340160)))

(declare-fun lt!270385 () (_ BitVec 64))

(declare-fun lt!270392 () (_ BitVec 64))

(assert (=> b!595356 (= res!381411 (or (not (= (select (arr!17740 a!2986) j!136) lt!270385)) (not (= (select (arr!17740 a!2986) j!136) lt!270392)) (bvsge j!136 index!984)))))

(declare-fun e!340165 () Bool)

(assert (=> b!595356 e!340165))

(declare-fun res!381402 () Bool)

(assert (=> b!595356 (=> (not res!381402) (not e!340165))))

(assert (=> b!595356 (= res!381402 (= lt!270392 (select (arr!17740 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!595356 (= lt!270392 (select (store (arr!17740 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!595357 () Bool)

(assert (=> b!595357 (= e!340164 true)))

(declare-fun lt!270395 () Bool)

(assert (=> b!595357 (= lt!270395 (contains!2938 Nil!11831 k0!1786))))

(declare-fun b!595358 () Bool)

(declare-fun res!381408 () Bool)

(assert (=> b!595358 (=> res!381408 e!340164)))

(declare-fun noDuplicate!254 (List!11834) Bool)

(assert (=> b!595358 (= res!381408 (not (noDuplicate!254 Nil!11831)))))

(declare-fun b!595360 () Bool)

(declare-fun e!340155 () Bool)

(declare-fun lt!270391 () SeekEntryResult!6187)

(assert (=> b!595360 (= e!340155 (= lt!270394 lt!270391))))

(declare-fun b!595361 () Bool)

(declare-datatypes ((Unit!18692 0))(
  ( (Unit!18693) )
))
(declare-fun e!340158 () Unit!18692)

(declare-fun Unit!18694 () Unit!18692)

(assert (=> b!595361 (= e!340158 Unit!18694)))

(assert (=> b!595361 false))

(declare-fun b!595362 () Bool)

(assert (=> b!595362 (= e!340163 e!340162)))

(declare-fun res!381405 () Bool)

(assert (=> b!595362 (=> (not res!381405) (not e!340162))))

(assert (=> b!595362 (= res!381405 (= (select (store (arr!17740 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!595362 (= lt!270393 (array!36960 (store (arr!17740 a!2986) i!1108 k0!1786) (size!18104 a!2986)))))

(declare-fun b!595363 () Bool)

(declare-fun res!381395 () Bool)

(assert (=> b!595363 (=> (not res!381395) (not e!340157))))

(assert (=> b!595363 (= res!381395 (and (= (size!18104 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18104 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18104 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!595364 () Bool)

(declare-fun res!381399 () Bool)

(assert (=> b!595364 (=> res!381399 e!340164)))

(assert (=> b!595364 (= res!381399 (contains!2938 Nil!11831 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!595365 () Bool)

(declare-fun res!381396 () Bool)

(assert (=> b!595365 (=> (not res!381396) (not e!340163))))

(assert (=> b!595365 (= res!381396 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17740 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!595366 () Bool)

(declare-fun res!381398 () Bool)

(assert (=> b!595366 (=> (not res!381398) (not e!340157))))

(assert (=> b!595366 (= res!381398 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!595367 () Bool)

(assert (=> b!595367 (= e!340160 e!340164)))

(declare-fun res!381403 () Bool)

(assert (=> b!595367 (=> res!381403 e!340164)))

(assert (=> b!595367 (= res!381403 (or (bvsge (size!18104 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18104 a!2986))))))

(assert (=> b!595367 (arrayContainsKey!0 lt!270393 (select (arr!17740 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!270387 () Unit!18692)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36959 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18692)

(assert (=> b!595367 (= lt!270387 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!270393 (select (arr!17740 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!595368 () Bool)

(declare-fun res!381413 () Bool)

(assert (=> b!595368 (=> (not res!381413) (not e!340163))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36959 (_ BitVec 32)) Bool)

(assert (=> b!595368 (= res!381413 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!595369 () Bool)

(declare-fun e!340156 () Bool)

(assert (=> b!595369 (= e!340165 e!340156)))

(declare-fun res!381410 () Bool)

(assert (=> b!595369 (=> res!381410 e!340156)))

(assert (=> b!595369 (= res!381410 (or (not (= (select (arr!17740 a!2986) j!136) lt!270385)) (not (= (select (arr!17740 a!2986) j!136) lt!270392)) (bvsge j!136 index!984)))))

(declare-fun b!595359 () Bool)

(assert (=> b!595359 (= e!340153 (not e!340159))))

(declare-fun res!381394 () Bool)

(assert (=> b!595359 (=> res!381394 e!340159)))

(declare-fun lt!270396 () SeekEntryResult!6187)

(assert (=> b!595359 (= res!381394 (not (= lt!270396 (Found!6187 index!984))))))

(declare-fun lt!270386 () Unit!18692)

(assert (=> b!595359 (= lt!270386 e!340158)))

(declare-fun c!67346 () Bool)

(assert (=> b!595359 (= c!67346 (= lt!270396 Undefined!6187))))

(assert (=> b!595359 (= lt!270396 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!270385 lt!270393 mask!3053))))

(assert (=> b!595359 e!340155))

(declare-fun res!381397 () Bool)

(assert (=> b!595359 (=> (not res!381397) (not e!340155))))

(declare-fun lt!270389 () (_ BitVec 32))

(assert (=> b!595359 (= res!381397 (= lt!270391 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270389 vacantSpotIndex!68 lt!270385 lt!270393 mask!3053)))))

(assert (=> b!595359 (= lt!270391 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270389 vacantSpotIndex!68 (select (arr!17740 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!595359 (= lt!270385 (select (store (arr!17740 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!270388 () Unit!18692)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36959 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18692)

(assert (=> b!595359 (= lt!270388 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!270389 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!595359 (= lt!270389 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun res!381393 () Bool)

(assert (=> start!54536 (=> (not res!381393) (not e!340157))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54536 (= res!381393 (validMask!0 mask!3053))))

(assert (=> start!54536 e!340157))

(assert (=> start!54536 true))

(declare-fun array_inv!13514 (array!36959) Bool)

(assert (=> start!54536 (array_inv!13514 a!2986)))

(declare-fun b!595370 () Bool)

(declare-fun res!381409 () Bool)

(assert (=> b!595370 (=> (not res!381409) (not e!340157))))

(assert (=> b!595370 (= res!381409 (validKeyInArray!0 k0!1786))))

(declare-fun b!595371 () Bool)

(declare-fun Unit!18695 () Unit!18692)

(assert (=> b!595371 (= e!340158 Unit!18695)))

(declare-fun b!595372 () Bool)

(assert (=> b!595372 (= e!340157 e!340163)))

(declare-fun res!381412 () Bool)

(assert (=> b!595372 (=> (not res!381412) (not e!340163))))

(declare-fun lt!270390 () SeekEntryResult!6187)

(assert (=> b!595372 (= res!381412 (or (= lt!270390 (MissingZero!6187 i!1108)) (= lt!270390 (MissingVacant!6187 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36959 (_ BitVec 32)) SeekEntryResult!6187)

(assert (=> b!595372 (= lt!270390 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!595373 () Bool)

(assert (=> b!595373 (= e!340156 e!340154)))

(declare-fun res!381407 () Bool)

(assert (=> b!595373 (=> (not res!381407) (not e!340154))))

(assert (=> b!595373 (= res!381407 (arrayContainsKey!0 lt!270393 (select (arr!17740 a!2986) j!136) j!136))))

(assert (= (and start!54536 res!381393) b!595363))

(assert (= (and b!595363 res!381395) b!595353))

(assert (= (and b!595353 res!381404) b!595370))

(assert (= (and b!595370 res!381409) b!595366))

(assert (= (and b!595366 res!381398) b!595372))

(assert (= (and b!595372 res!381412) b!595368))

(assert (= (and b!595368 res!381413) b!595354))

(assert (= (and b!595354 res!381401) b!595365))

(assert (= (and b!595365 res!381396) b!595362))

(assert (= (and b!595362 res!381405) b!595355))

(assert (= (and b!595355 res!381400) b!595359))

(assert (= (and b!595359 res!381397) b!595360))

(assert (= (and b!595359 c!67346) b!595361))

(assert (= (and b!595359 (not c!67346)) b!595371))

(assert (= (and b!595359 (not res!381394)) b!595356))

(assert (= (and b!595356 res!381402) b!595369))

(assert (= (and b!595369 (not res!381410)) b!595373))

(assert (= (and b!595373 res!381407) b!595352))

(assert (= (and b!595356 (not res!381411)) b!595367))

(assert (= (and b!595367 (not res!381403)) b!595358))

(assert (= (and b!595358 (not res!381408)) b!595364))

(assert (= (and b!595364 (not res!381399)) b!595351))

(assert (= (and b!595351 (not res!381406)) b!595357))

(declare-fun m!573031 () Bool)

(assert (=> b!595370 m!573031))

(declare-fun m!573033 () Bool)

(assert (=> b!595357 m!573033))

(declare-fun m!573035 () Bool)

(assert (=> b!595355 m!573035))

(declare-fun m!573037 () Bool)

(assert (=> b!595355 m!573037))

(assert (=> b!595355 m!573037))

(declare-fun m!573039 () Bool)

(assert (=> b!595355 m!573039))

(declare-fun m!573041 () Bool)

(assert (=> b!595359 m!573041))

(declare-fun m!573043 () Bool)

(assert (=> b!595359 m!573043))

(declare-fun m!573045 () Bool)

(assert (=> b!595359 m!573045))

(declare-fun m!573047 () Bool)

(assert (=> b!595359 m!573047))

(assert (=> b!595359 m!573037))

(declare-fun m!573049 () Bool)

(assert (=> b!595359 m!573049))

(declare-fun m!573051 () Bool)

(assert (=> b!595359 m!573051))

(assert (=> b!595359 m!573037))

(declare-fun m!573053 () Bool)

(assert (=> b!595359 m!573053))

(assert (=> b!595362 m!573049))

(declare-fun m!573055 () Bool)

(assert (=> b!595362 m!573055))

(declare-fun m!573057 () Bool)

(assert (=> b!595364 m!573057))

(assert (=> b!595373 m!573037))

(assert (=> b!595373 m!573037))

(declare-fun m!573059 () Bool)

(assert (=> b!595373 m!573059))

(declare-fun m!573061 () Bool)

(assert (=> b!595366 m!573061))

(assert (=> b!595353 m!573037))

(assert (=> b!595353 m!573037))

(declare-fun m!573063 () Bool)

(assert (=> b!595353 m!573063))

(declare-fun m!573065 () Bool)

(assert (=> b!595354 m!573065))

(declare-fun m!573067 () Bool)

(assert (=> b!595372 m!573067))

(assert (=> b!595356 m!573037))

(assert (=> b!595356 m!573049))

(declare-fun m!573069 () Bool)

(assert (=> b!595356 m!573069))

(declare-fun m!573071 () Bool)

(assert (=> b!595358 m!573071))

(assert (=> b!595369 m!573037))

(declare-fun m!573073 () Bool)

(assert (=> b!595365 m!573073))

(assert (=> b!595352 m!573037))

(assert (=> b!595352 m!573037))

(declare-fun m!573075 () Bool)

(assert (=> b!595352 m!573075))

(declare-fun m!573077 () Bool)

(assert (=> start!54536 m!573077))

(declare-fun m!573079 () Bool)

(assert (=> start!54536 m!573079))

(declare-fun m!573081 () Bool)

(assert (=> b!595351 m!573081))

(assert (=> b!595367 m!573037))

(assert (=> b!595367 m!573037))

(declare-fun m!573083 () Bool)

(assert (=> b!595367 m!573083))

(assert (=> b!595367 m!573037))

(declare-fun m!573085 () Bool)

(assert (=> b!595367 m!573085))

(declare-fun m!573087 () Bool)

(assert (=> b!595368 m!573087))

(check-sat (not b!595351) (not b!595353) (not b!595366) (not b!595373) (not b!595370) (not start!54536) (not b!595367) (not b!595358) (not b!595352) (not b!595355) (not b!595364) (not b!595368) (not b!595372) (not b!595359) (not b!595354) (not b!595357))
(check-sat)

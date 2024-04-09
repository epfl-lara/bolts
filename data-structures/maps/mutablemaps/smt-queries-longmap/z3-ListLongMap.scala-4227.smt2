; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!58148 () Bool)

(assert start!58148)

(declare-fun b!642269 () Bool)

(declare-fun res!416156 () Bool)

(declare-fun e!367832 () Bool)

(assert (=> b!642269 (=> (not res!416156) (not e!367832))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38363 0))(
  ( (array!38364 (arr!18394 (Array (_ BitVec 32) (_ BitVec 64))) (size!18758 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38363)

(assert (=> b!642269 (= res!416156 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18394 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!416162 () Bool)

(declare-fun e!367830 () Bool)

(assert (=> start!58148 (=> (not res!416162) (not e!367830))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58148 (= res!416162 (validMask!0 mask!3053))))

(assert (=> start!58148 e!367830))

(assert (=> start!58148 true))

(declare-fun array_inv!14168 (array!38363) Bool)

(assert (=> start!58148 (array_inv!14168 a!2986)))

(declare-fun b!642270 () Bool)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun e!367828 () Bool)

(declare-fun lt!297494 () array!38363)

(declare-fun arrayContainsKey!0 (array!38363 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!642270 (= e!367828 (arrayContainsKey!0 lt!297494 (select (arr!18394 a!2986) j!136) index!984))))

(declare-fun b!642271 () Bool)

(declare-fun e!367831 () Bool)

(declare-fun e!367834 () Bool)

(assert (=> b!642271 (= e!367831 e!367834)))

(declare-fun res!416170 () Bool)

(assert (=> b!642271 (=> res!416170 e!367834)))

(declare-fun lt!297490 () (_ BitVec 64))

(declare-fun lt!297497 () (_ BitVec 64))

(assert (=> b!642271 (= res!416170 (or (not (= (select (arr!18394 a!2986) j!136) lt!297490)) (not (= (select (arr!18394 a!2986) j!136) lt!297497)) (bvsge j!136 index!984)))))

(declare-fun e!367833 () Bool)

(assert (=> b!642271 e!367833))

(declare-fun res!416161 () Bool)

(assert (=> b!642271 (=> (not res!416161) (not e!367833))))

(assert (=> b!642271 (= res!416161 (= lt!297497 (select (arr!18394 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!642271 (= lt!297497 (select (store (arr!18394 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!642272 () Bool)

(assert (=> b!642272 (= e!367834 false)))

(assert (=> b!642272 (not (= lt!297490 (select (arr!18394 a!2986) j!136)))))

(declare-datatypes ((Unit!21722 0))(
  ( (Unit!21723) )
))
(declare-fun lt!297488 () Unit!21722)

(declare-datatypes ((List!12488 0))(
  ( (Nil!12485) (Cons!12484 (h!13529 (_ BitVec 64)) (t!18724 List!12488)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38363 (_ BitVec 64) (_ BitVec 32) List!12488) Unit!21722)

(assert (=> b!642272 (= lt!297488 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!297494 (select (arr!18394 a!2986) j!136) j!136 Nil!12485))))

(declare-fun arrayNoDuplicates!0 (array!38363 (_ BitVec 32) List!12488) Bool)

(assert (=> b!642272 (arrayNoDuplicates!0 lt!297494 j!136 Nil!12485)))

(declare-fun lt!297493 () Unit!21722)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38363 (_ BitVec 32) (_ BitVec 32)) Unit!21722)

(assert (=> b!642272 (= lt!297493 (lemmaNoDuplicateFromThenFromBigger!0 lt!297494 #b00000000000000000000000000000000 j!136))))

(assert (=> b!642272 (arrayNoDuplicates!0 lt!297494 #b00000000000000000000000000000000 Nil!12485)))

(declare-fun lt!297499 () Unit!21722)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38363 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12488) Unit!21722)

(assert (=> b!642272 (= lt!297499 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12485))))

(assert (=> b!642272 (arrayContainsKey!0 lt!297494 (select (arr!18394 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!297501 () Unit!21722)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38363 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21722)

(assert (=> b!642272 (= lt!297501 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!297494 (select (arr!18394 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!642273 () Bool)

(declare-fun e!367825 () Bool)

(declare-datatypes ((SeekEntryResult!6841 0))(
  ( (MissingZero!6841 (index!29689 (_ BitVec 32))) (Found!6841 (index!29690 (_ BitVec 32))) (Intermediate!6841 (undefined!7653 Bool) (index!29691 (_ BitVec 32)) (x!58480 (_ BitVec 32))) (Undefined!6841) (MissingVacant!6841 (index!29692 (_ BitVec 32))) )
))
(declare-fun lt!297489 () SeekEntryResult!6841)

(declare-fun lt!297491 () SeekEntryResult!6841)

(assert (=> b!642273 (= e!367825 (= lt!297489 lt!297491))))

(declare-fun b!642274 () Bool)

(declare-fun res!416159 () Bool)

(assert (=> b!642274 (=> (not res!416159) (not e!367830))))

(assert (=> b!642274 (= res!416159 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!642275 () Bool)

(declare-fun e!367826 () Bool)

(assert (=> b!642275 (= e!367833 e!367826)))

(declare-fun res!416160 () Bool)

(assert (=> b!642275 (=> res!416160 e!367826)))

(assert (=> b!642275 (= res!416160 (or (not (= (select (arr!18394 a!2986) j!136) lt!297490)) (not (= (select (arr!18394 a!2986) j!136) lt!297497)) (bvsge j!136 index!984)))))

(declare-fun b!642276 () Bool)

(declare-fun res!416165 () Bool)

(assert (=> b!642276 (=> (not res!416165) (not e!367830))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!642276 (= res!416165 (validKeyInArray!0 (select (arr!18394 a!2986) j!136)))))

(declare-fun b!642277 () Bool)

(assert (=> b!642277 (= e!367826 e!367828)))

(declare-fun res!416155 () Bool)

(assert (=> b!642277 (=> (not res!416155) (not e!367828))))

(assert (=> b!642277 (= res!416155 (arrayContainsKey!0 lt!297494 (select (arr!18394 a!2986) j!136) j!136))))

(declare-fun b!642278 () Bool)

(declare-fun res!416167 () Bool)

(assert (=> b!642278 (=> (not res!416167) (not e!367830))))

(assert (=> b!642278 (= res!416167 (and (= (size!18758 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18758 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18758 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!642279 () Bool)

(declare-fun e!367827 () Bool)

(assert (=> b!642279 (= e!367832 e!367827)))

(declare-fun res!416166 () Bool)

(assert (=> b!642279 (=> (not res!416166) (not e!367827))))

(assert (=> b!642279 (= res!416166 (= (select (store (arr!18394 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!642279 (= lt!297494 (array!38364 (store (arr!18394 a!2986) i!1108 k0!1786) (size!18758 a!2986)))))

(declare-fun b!642280 () Bool)

(declare-fun res!416158 () Bool)

(assert (=> b!642280 (=> (not res!416158) (not e!367832))))

(assert (=> b!642280 (= res!416158 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12485))))

(declare-fun b!642281 () Bool)

(declare-fun res!416168 () Bool)

(assert (=> b!642281 (=> (not res!416168) (not e!367832))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38363 (_ BitVec 32)) Bool)

(assert (=> b!642281 (= res!416168 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!642282 () Bool)

(declare-fun res!416163 () Bool)

(assert (=> b!642282 (=> (not res!416163) (not e!367830))))

(assert (=> b!642282 (= res!416163 (validKeyInArray!0 k0!1786))))

(declare-fun b!642283 () Bool)

(declare-fun e!367829 () Bool)

(assert (=> b!642283 (= e!367827 e!367829)))

(declare-fun res!416171 () Bool)

(assert (=> b!642283 (=> (not res!416171) (not e!367829))))

(assert (=> b!642283 (= res!416171 (and (= lt!297489 (Found!6841 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18394 a!2986) index!984) (select (arr!18394 a!2986) j!136))) (not (= (select (arr!18394 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38363 (_ BitVec 32)) SeekEntryResult!6841)

(assert (=> b!642283 (= lt!297489 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18394 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!642284 () Bool)

(declare-fun e!367824 () Unit!21722)

(declare-fun Unit!21724 () Unit!21722)

(assert (=> b!642284 (= e!367824 Unit!21724)))

(declare-fun b!642285 () Bool)

(declare-fun Unit!21725 () Unit!21722)

(assert (=> b!642285 (= e!367824 Unit!21725)))

(assert (=> b!642285 false))

(declare-fun b!642286 () Bool)

(assert (=> b!642286 (= e!367829 (not e!367831))))

(declare-fun res!416169 () Bool)

(assert (=> b!642286 (=> res!416169 e!367831)))

(declare-fun lt!297500 () SeekEntryResult!6841)

(assert (=> b!642286 (= res!416169 (not (= lt!297500 (Found!6841 index!984))))))

(declare-fun lt!297495 () Unit!21722)

(assert (=> b!642286 (= lt!297495 e!367824)))

(declare-fun c!73424 () Bool)

(assert (=> b!642286 (= c!73424 (= lt!297500 Undefined!6841))))

(assert (=> b!642286 (= lt!297500 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!297490 lt!297494 mask!3053))))

(assert (=> b!642286 e!367825))

(declare-fun res!416164 () Bool)

(assert (=> b!642286 (=> (not res!416164) (not e!367825))))

(declare-fun lt!297496 () (_ BitVec 32))

(assert (=> b!642286 (= res!416164 (= lt!297491 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!297496 vacantSpotIndex!68 lt!297490 lt!297494 mask!3053)))))

(assert (=> b!642286 (= lt!297491 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!297496 vacantSpotIndex!68 (select (arr!18394 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!642286 (= lt!297490 (select (store (arr!18394 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!297498 () Unit!21722)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38363 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21722)

(assert (=> b!642286 (= lt!297498 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!297496 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!642286 (= lt!297496 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!642287 () Bool)

(assert (=> b!642287 (= e!367830 e!367832)))

(declare-fun res!416157 () Bool)

(assert (=> b!642287 (=> (not res!416157) (not e!367832))))

(declare-fun lt!297492 () SeekEntryResult!6841)

(assert (=> b!642287 (= res!416157 (or (= lt!297492 (MissingZero!6841 i!1108)) (= lt!297492 (MissingVacant!6841 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38363 (_ BitVec 32)) SeekEntryResult!6841)

(assert (=> b!642287 (= lt!297492 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(assert (= (and start!58148 res!416162) b!642278))

(assert (= (and b!642278 res!416167) b!642276))

(assert (= (and b!642276 res!416165) b!642282))

(assert (= (and b!642282 res!416163) b!642274))

(assert (= (and b!642274 res!416159) b!642287))

(assert (= (and b!642287 res!416157) b!642281))

(assert (= (and b!642281 res!416168) b!642280))

(assert (= (and b!642280 res!416158) b!642269))

(assert (= (and b!642269 res!416156) b!642279))

(assert (= (and b!642279 res!416166) b!642283))

(assert (= (and b!642283 res!416171) b!642286))

(assert (= (and b!642286 res!416164) b!642273))

(assert (= (and b!642286 c!73424) b!642285))

(assert (= (and b!642286 (not c!73424)) b!642284))

(assert (= (and b!642286 (not res!416169)) b!642271))

(assert (= (and b!642271 res!416161) b!642275))

(assert (= (and b!642275 (not res!416160)) b!642277))

(assert (= (and b!642277 res!416155) b!642270))

(assert (= (and b!642271 (not res!416170)) b!642272))

(declare-fun m!616119 () Bool)

(assert (=> b!642282 m!616119))

(declare-fun m!616121 () Bool)

(assert (=> b!642283 m!616121))

(declare-fun m!616123 () Bool)

(assert (=> b!642283 m!616123))

(assert (=> b!642283 m!616123))

(declare-fun m!616125 () Bool)

(assert (=> b!642283 m!616125))

(declare-fun m!616127 () Bool)

(assert (=> b!642272 m!616127))

(assert (=> b!642272 m!616123))

(assert (=> b!642272 m!616123))

(declare-fun m!616129 () Bool)

(assert (=> b!642272 m!616129))

(assert (=> b!642272 m!616123))

(declare-fun m!616131 () Bool)

(assert (=> b!642272 m!616131))

(declare-fun m!616133 () Bool)

(assert (=> b!642272 m!616133))

(assert (=> b!642272 m!616123))

(declare-fun m!616135 () Bool)

(assert (=> b!642272 m!616135))

(declare-fun m!616137 () Bool)

(assert (=> b!642272 m!616137))

(declare-fun m!616139 () Bool)

(assert (=> b!642272 m!616139))

(assert (=> b!642271 m!616123))

(declare-fun m!616141 () Bool)

(assert (=> b!642271 m!616141))

(declare-fun m!616143 () Bool)

(assert (=> b!642271 m!616143))

(assert (=> b!642270 m!616123))

(assert (=> b!642270 m!616123))

(declare-fun m!616145 () Bool)

(assert (=> b!642270 m!616145))

(declare-fun m!616147 () Bool)

(assert (=> b!642281 m!616147))

(declare-fun m!616149 () Bool)

(assert (=> start!58148 m!616149))

(declare-fun m!616151 () Bool)

(assert (=> start!58148 m!616151))

(declare-fun m!616153 () Bool)

(assert (=> b!642269 m!616153))

(assert (=> b!642279 m!616141))

(declare-fun m!616155 () Bool)

(assert (=> b!642279 m!616155))

(declare-fun m!616157 () Bool)

(assert (=> b!642286 m!616157))

(declare-fun m!616159 () Bool)

(assert (=> b!642286 m!616159))

(declare-fun m!616161 () Bool)

(assert (=> b!642286 m!616161))

(assert (=> b!642286 m!616123))

(declare-fun m!616163 () Bool)

(assert (=> b!642286 m!616163))

(assert (=> b!642286 m!616123))

(assert (=> b!642286 m!616141))

(declare-fun m!616165 () Bool)

(assert (=> b!642286 m!616165))

(declare-fun m!616167 () Bool)

(assert (=> b!642286 m!616167))

(assert (=> b!642275 m!616123))

(declare-fun m!616169 () Bool)

(assert (=> b!642287 m!616169))

(declare-fun m!616171 () Bool)

(assert (=> b!642274 m!616171))

(assert (=> b!642276 m!616123))

(assert (=> b!642276 m!616123))

(declare-fun m!616173 () Bool)

(assert (=> b!642276 m!616173))

(assert (=> b!642277 m!616123))

(assert (=> b!642277 m!616123))

(declare-fun m!616175 () Bool)

(assert (=> b!642277 m!616175))

(declare-fun m!616177 () Bool)

(assert (=> b!642280 m!616177))

(check-sat (not b!642286) (not start!58148) (not b!642272) (not b!642283) (not b!642270) (not b!642287) (not b!642281) (not b!642282) (not b!642276) (not b!642280) (not b!642274) (not b!642277))
(check-sat)

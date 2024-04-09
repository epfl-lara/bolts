; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54856 () Bool)

(assert start!54856)

(declare-fun b!599030 () Bool)

(declare-fun res!384203 () Bool)

(declare-fun e!342470 () Bool)

(assert (=> b!599030 (=> (not res!384203) (not e!342470))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!37054 0))(
  ( (array!37055 (arr!17783 (Array (_ BitVec 32) (_ BitVec 64))) (size!18147 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37054)

(assert (=> b!599030 (= res!384203 (and (= (size!18147 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18147 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18147 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!599032 () Bool)

(declare-fun res!384205 () Bool)

(declare-fun e!342467 () Bool)

(assert (=> b!599032 (=> (not res!384205) (not e!342467))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!599032 (= res!384205 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17783 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!599033 () Bool)

(declare-datatypes ((Unit!18864 0))(
  ( (Unit!18865) )
))
(declare-fun e!342475 () Unit!18864)

(declare-fun Unit!18866 () Unit!18864)

(assert (=> b!599033 (= e!342475 Unit!18866)))

(assert (=> b!599033 false))

(declare-fun b!599034 () Bool)

(declare-fun e!342478 () Bool)

(declare-fun e!342477 () Bool)

(assert (=> b!599034 (= e!342478 e!342477)))

(declare-fun res!384206 () Bool)

(assert (=> b!599034 (=> res!384206 e!342477)))

(declare-fun lt!272328 () (_ BitVec 64))

(declare-fun lt!272327 () (_ BitVec 64))

(assert (=> b!599034 (= res!384206 (or (not (= (select (arr!17783 a!2986) j!136) lt!272328)) (not (= (select (arr!17783 a!2986) j!136) lt!272327)) (bvsge j!136 index!984)))))

(declare-fun e!342474 () Bool)

(assert (=> b!599034 e!342474))

(declare-fun res!384210 () Bool)

(assert (=> b!599034 (=> (not res!384210) (not e!342474))))

(assert (=> b!599034 (= res!384210 (= lt!272327 (select (arr!17783 a!2986) j!136)))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!599034 (= lt!272327 (select (store (arr!17783 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!599035 () Bool)

(declare-fun Unit!18867 () Unit!18864)

(assert (=> b!599035 (= e!342475 Unit!18867)))

(declare-fun b!599036 () Bool)

(declare-fun res!384217 () Bool)

(assert (=> b!599036 (=> (not res!384217) (not e!342470))))

(declare-fun arrayContainsKey!0 (array!37054 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!599036 (= res!384217 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!599037 () Bool)

(declare-fun e!342471 () Bool)

(assert (=> b!599037 (= e!342467 e!342471)))

(declare-fun res!384216 () Bool)

(assert (=> b!599037 (=> (not res!384216) (not e!342471))))

(assert (=> b!599037 (= res!384216 (= (select (store (arr!17783 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!272332 () array!37054)

(assert (=> b!599037 (= lt!272332 (array!37055 (store (arr!17783 a!2986) i!1108 k!1786) (size!18147 a!2986)))))

(declare-fun b!599038 () Bool)

(declare-fun e!342476 () Bool)

(assert (=> b!599038 (= e!342476 (not e!342478))))

(declare-fun res!384214 () Bool)

(assert (=> b!599038 (=> res!384214 e!342478)))

(declare-datatypes ((SeekEntryResult!6230 0))(
  ( (MissingZero!6230 (index!27176 (_ BitVec 32))) (Found!6230 (index!27177 (_ BitVec 32))) (Intermediate!6230 (undefined!7042 Bool) (index!27178 (_ BitVec 32)) (x!56006 (_ BitVec 32))) (Undefined!6230) (MissingVacant!6230 (index!27179 (_ BitVec 32))) )
))
(declare-fun lt!272334 () SeekEntryResult!6230)

(assert (=> b!599038 (= res!384214 (not (= lt!272334 (Found!6230 index!984))))))

(declare-fun lt!272323 () Unit!18864)

(assert (=> b!599038 (= lt!272323 e!342475)))

(declare-fun c!67781 () Bool)

(assert (=> b!599038 (= c!67781 (= lt!272334 Undefined!6230))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37054 (_ BitVec 32)) SeekEntryResult!6230)

(assert (=> b!599038 (= lt!272334 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!272328 lt!272332 mask!3053))))

(declare-fun e!342473 () Bool)

(assert (=> b!599038 e!342473))

(declare-fun res!384204 () Bool)

(assert (=> b!599038 (=> (not res!384204) (not e!342473))))

(declare-fun lt!272330 () (_ BitVec 32))

(declare-fun lt!272331 () SeekEntryResult!6230)

(assert (=> b!599038 (= res!384204 (= lt!272331 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!272330 vacantSpotIndex!68 lt!272328 lt!272332 mask!3053)))))

(assert (=> b!599038 (= lt!272331 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!272330 vacantSpotIndex!68 (select (arr!17783 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!599038 (= lt!272328 (select (store (arr!17783 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!272325 () Unit!18864)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37054 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18864)

(assert (=> b!599038 (= lt!272325 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!272330 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!599038 (= lt!272330 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!599039 () Bool)

(declare-fun res!384213 () Bool)

(assert (=> b!599039 (=> (not res!384213) (not e!342470))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!599039 (= res!384213 (validKeyInArray!0 k!1786))))

(declare-fun b!599040 () Bool)

(declare-fun res!384215 () Bool)

(assert (=> b!599040 (=> (not res!384215) (not e!342467))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37054 (_ BitVec 32)) Bool)

(assert (=> b!599040 (= res!384215 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!599041 () Bool)

(declare-fun e!342468 () Bool)

(declare-fun e!342472 () Bool)

(assert (=> b!599041 (= e!342468 e!342472)))

(declare-fun res!384211 () Bool)

(assert (=> b!599041 (=> (not res!384211) (not e!342472))))

(assert (=> b!599041 (= res!384211 (arrayContainsKey!0 lt!272332 (select (arr!17783 a!2986) j!136) j!136))))

(declare-fun res!384207 () Bool)

(assert (=> start!54856 (=> (not res!384207) (not e!342470))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54856 (= res!384207 (validMask!0 mask!3053))))

(assert (=> start!54856 e!342470))

(assert (=> start!54856 true))

(declare-fun array_inv!13557 (array!37054) Bool)

(assert (=> start!54856 (array_inv!13557 a!2986)))

(declare-fun b!599031 () Bool)

(declare-fun lt!272333 () SeekEntryResult!6230)

(assert (=> b!599031 (= e!342473 (= lt!272333 lt!272331))))

(declare-fun b!599042 () Bool)

(assert (=> b!599042 (= e!342474 e!342468)))

(declare-fun res!384218 () Bool)

(assert (=> b!599042 (=> res!384218 e!342468)))

(assert (=> b!599042 (= res!384218 (or (not (= (select (arr!17783 a!2986) j!136) lt!272328)) (not (= (select (arr!17783 a!2986) j!136) lt!272327)) (bvsge j!136 index!984)))))

(declare-fun b!599043 () Bool)

(declare-fun res!384209 () Bool)

(assert (=> b!599043 (=> (not res!384209) (not e!342470))))

(assert (=> b!599043 (= res!384209 (validKeyInArray!0 (select (arr!17783 a!2986) j!136)))))

(declare-fun b!599044 () Bool)

(declare-fun res!384212 () Bool)

(assert (=> b!599044 (=> (not res!384212) (not e!342467))))

(declare-datatypes ((List!11877 0))(
  ( (Nil!11874) (Cons!11873 (h!12918 (_ BitVec 64)) (t!18113 List!11877)) )
))
(declare-fun arrayNoDuplicates!0 (array!37054 (_ BitVec 32) List!11877) Bool)

(assert (=> b!599044 (= res!384212 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11874))))

(declare-fun b!599045 () Bool)

(assert (=> b!599045 (= e!342472 (arrayContainsKey!0 lt!272332 (select (arr!17783 a!2986) j!136) index!984))))

(declare-fun b!599046 () Bool)

(assert (=> b!599046 (= e!342477 true)))

(assert (=> b!599046 (arrayNoDuplicates!0 lt!272332 #b00000000000000000000000000000000 Nil!11874)))

(declare-fun lt!272329 () Unit!18864)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37054 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11877) Unit!18864)

(assert (=> b!599046 (= lt!272329 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11874))))

(assert (=> b!599046 (arrayContainsKey!0 lt!272332 (select (arr!17783 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!272324 () Unit!18864)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37054 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18864)

(assert (=> b!599046 (= lt!272324 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!272332 (select (arr!17783 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!599047 () Bool)

(assert (=> b!599047 (= e!342470 e!342467)))

(declare-fun res!384208 () Bool)

(assert (=> b!599047 (=> (not res!384208) (not e!342467))))

(declare-fun lt!272326 () SeekEntryResult!6230)

(assert (=> b!599047 (= res!384208 (or (= lt!272326 (MissingZero!6230 i!1108)) (= lt!272326 (MissingVacant!6230 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37054 (_ BitVec 32)) SeekEntryResult!6230)

(assert (=> b!599047 (= lt!272326 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!599048 () Bool)

(assert (=> b!599048 (= e!342471 e!342476)))

(declare-fun res!384202 () Bool)

(assert (=> b!599048 (=> (not res!384202) (not e!342476))))

(assert (=> b!599048 (= res!384202 (and (= lt!272333 (Found!6230 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17783 a!2986) index!984) (select (arr!17783 a!2986) j!136))) (not (= (select (arr!17783 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!599048 (= lt!272333 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17783 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!54856 res!384207) b!599030))

(assert (= (and b!599030 res!384203) b!599043))

(assert (= (and b!599043 res!384209) b!599039))

(assert (= (and b!599039 res!384213) b!599036))

(assert (= (and b!599036 res!384217) b!599047))

(assert (= (and b!599047 res!384208) b!599040))

(assert (= (and b!599040 res!384215) b!599044))

(assert (= (and b!599044 res!384212) b!599032))

(assert (= (and b!599032 res!384205) b!599037))

(assert (= (and b!599037 res!384216) b!599048))

(assert (= (and b!599048 res!384202) b!599038))

(assert (= (and b!599038 res!384204) b!599031))

(assert (= (and b!599038 c!67781) b!599033))

(assert (= (and b!599038 (not c!67781)) b!599035))

(assert (= (and b!599038 (not res!384214)) b!599034))

(assert (= (and b!599034 res!384210) b!599042))

(assert (= (and b!599042 (not res!384218)) b!599041))

(assert (= (and b!599041 res!384211) b!599045))

(assert (= (and b!599034 (not res!384206)) b!599046))

(declare-fun m!576345 () Bool)

(assert (=> b!599043 m!576345))

(assert (=> b!599043 m!576345))

(declare-fun m!576347 () Bool)

(assert (=> b!599043 m!576347))

(declare-fun m!576349 () Bool)

(assert (=> b!599040 m!576349))

(assert (=> b!599041 m!576345))

(assert (=> b!599041 m!576345))

(declare-fun m!576351 () Bool)

(assert (=> b!599041 m!576351))

(declare-fun m!576353 () Bool)

(assert (=> b!599039 m!576353))

(declare-fun m!576355 () Bool)

(assert (=> b!599032 m!576355))

(assert (=> b!599034 m!576345))

(declare-fun m!576357 () Bool)

(assert (=> b!599034 m!576357))

(declare-fun m!576359 () Bool)

(assert (=> b!599034 m!576359))

(declare-fun m!576361 () Bool)

(assert (=> b!599046 m!576361))

(assert (=> b!599046 m!576345))

(declare-fun m!576363 () Bool)

(assert (=> b!599046 m!576363))

(declare-fun m!576365 () Bool)

(assert (=> b!599046 m!576365))

(assert (=> b!599046 m!576345))

(assert (=> b!599046 m!576345))

(declare-fun m!576367 () Bool)

(assert (=> b!599046 m!576367))

(declare-fun m!576369 () Bool)

(assert (=> start!54856 m!576369))

(declare-fun m!576371 () Bool)

(assert (=> start!54856 m!576371))

(declare-fun m!576373 () Bool)

(assert (=> b!599047 m!576373))

(declare-fun m!576375 () Bool)

(assert (=> b!599048 m!576375))

(assert (=> b!599048 m!576345))

(assert (=> b!599048 m!576345))

(declare-fun m!576377 () Bool)

(assert (=> b!599048 m!576377))

(declare-fun m!576379 () Bool)

(assert (=> b!599036 m!576379))

(declare-fun m!576381 () Bool)

(assert (=> b!599044 m!576381))

(declare-fun m!576383 () Bool)

(assert (=> b!599038 m!576383))

(assert (=> b!599038 m!576345))

(assert (=> b!599038 m!576357))

(declare-fun m!576385 () Bool)

(assert (=> b!599038 m!576385))

(declare-fun m!576387 () Bool)

(assert (=> b!599038 m!576387))

(declare-fun m!576389 () Bool)

(assert (=> b!599038 m!576389))

(declare-fun m!576391 () Bool)

(assert (=> b!599038 m!576391))

(assert (=> b!599038 m!576345))

(declare-fun m!576393 () Bool)

(assert (=> b!599038 m!576393))

(assert (=> b!599045 m!576345))

(assert (=> b!599045 m!576345))

(declare-fun m!576395 () Bool)

(assert (=> b!599045 m!576395))

(assert (=> b!599042 m!576345))

(assert (=> b!599037 m!576357))

(declare-fun m!576397 () Bool)

(assert (=> b!599037 m!576397))

(push 1)


; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54152 () Bool)

(assert start!54152)

(declare-fun b!591036 () Bool)

(declare-fun res!378185 () Bool)

(declare-fun e!337466 () Bool)

(assert (=> b!591036 (=> (not res!378185) (not e!337466))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36845 0))(
  ( (array!36846 (arr!17689 (Array (_ BitVec 32) (_ BitVec 64))) (size!18053 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36845)

(assert (=> b!591036 (= res!378185 (and (= (size!18053 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18053 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18053 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!591037 () Bool)

(declare-fun e!337472 () Bool)

(assert (=> b!591037 (= e!337466 e!337472)))

(declare-fun res!378180 () Bool)

(assert (=> b!591037 (=> (not res!378180) (not e!337472))))

(declare-datatypes ((SeekEntryResult!6136 0))(
  ( (MissingZero!6136 (index!26779 (_ BitVec 32))) (Found!6136 (index!26780 (_ BitVec 32))) (Intermediate!6136 (undefined!6948 Bool) (index!26781 (_ BitVec 32)) (x!55601 (_ BitVec 32))) (Undefined!6136) (MissingVacant!6136 (index!26782 (_ BitVec 32))) )
))
(declare-fun lt!268219 () SeekEntryResult!6136)

(assert (=> b!591037 (= res!378180 (or (= lt!268219 (MissingZero!6136 i!1108)) (= lt!268219 (MissingVacant!6136 i!1108))))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36845 (_ BitVec 32)) SeekEntryResult!6136)

(assert (=> b!591037 (= lt!268219 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!591038 () Bool)

(declare-fun e!337469 () Bool)

(declare-fun lt!268212 () SeekEntryResult!6136)

(declare-fun lt!268221 () SeekEntryResult!6136)

(assert (=> b!591038 (= e!337469 (= lt!268212 lt!268221))))

(declare-fun b!591039 () Bool)

(declare-fun res!378181 () Bool)

(assert (=> b!591039 (=> (not res!378181) (not e!337466))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!591039 (= res!378181 (validKeyInArray!0 k0!1786))))

(declare-fun b!591040 () Bool)

(declare-datatypes ((Unit!18488 0))(
  ( (Unit!18489) )
))
(declare-fun e!337470 () Unit!18488)

(declare-fun Unit!18490 () Unit!18488)

(assert (=> b!591040 (= e!337470 Unit!18490)))

(assert (=> b!591040 false))

(declare-fun b!591041 () Bool)

(declare-fun res!378176 () Bool)

(assert (=> b!591041 (=> (not res!378176) (not e!337472))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!591041 (= res!378176 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17689 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!378179 () Bool)

(assert (=> start!54152 (=> (not res!378179) (not e!337466))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54152 (= res!378179 (validMask!0 mask!3053))))

(assert (=> start!54152 e!337466))

(assert (=> start!54152 true))

(declare-fun array_inv!13463 (array!36845) Bool)

(assert (=> start!54152 (array_inv!13463 a!2986)))

(declare-fun b!591042 () Bool)

(declare-fun lt!268213 () array!36845)

(declare-fun e!337471 () Bool)

(declare-fun arrayContainsKey!0 (array!36845 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!591042 (= e!337471 (arrayContainsKey!0 lt!268213 (select (arr!17689 a!2986) j!136) index!984))))

(declare-fun b!591043 () Bool)

(declare-fun e!337468 () Bool)

(assert (=> b!591043 (= e!337468 e!337471)))

(declare-fun res!378182 () Bool)

(assert (=> b!591043 (=> (not res!378182) (not e!337471))))

(assert (=> b!591043 (= res!378182 (arrayContainsKey!0 lt!268213 (select (arr!17689 a!2986) j!136) j!136))))

(declare-fun b!591044 () Bool)

(declare-fun e!337467 () Bool)

(assert (=> b!591044 (= e!337472 e!337467)))

(declare-fun res!378191 () Bool)

(assert (=> b!591044 (=> (not res!378191) (not e!337467))))

(assert (=> b!591044 (= res!378191 (= (select (store (arr!17689 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!591044 (= lt!268213 (array!36846 (store (arr!17689 a!2986) i!1108 k0!1786) (size!18053 a!2986)))))

(declare-fun b!591045 () Bool)

(declare-fun e!337474 () Bool)

(declare-fun e!337473 () Bool)

(assert (=> b!591045 (= e!337474 (not e!337473))))

(declare-fun res!378186 () Bool)

(assert (=> b!591045 (=> res!378186 e!337473)))

(declare-fun lt!268217 () SeekEntryResult!6136)

(assert (=> b!591045 (= res!378186 (not (= lt!268217 (Found!6136 index!984))))))

(declare-fun lt!268214 () Unit!18488)

(assert (=> b!591045 (= lt!268214 e!337470)))

(declare-fun c!66797 () Bool)

(assert (=> b!591045 (= c!66797 (= lt!268217 Undefined!6136))))

(declare-fun lt!268216 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36845 (_ BitVec 32)) SeekEntryResult!6136)

(assert (=> b!591045 (= lt!268217 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!268216 lt!268213 mask!3053))))

(assert (=> b!591045 e!337469))

(declare-fun res!378190 () Bool)

(assert (=> b!591045 (=> (not res!378190) (not e!337469))))

(declare-fun lt!268218 () (_ BitVec 32))

(assert (=> b!591045 (= res!378190 (= lt!268221 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268218 vacantSpotIndex!68 lt!268216 lt!268213 mask!3053)))))

(assert (=> b!591045 (= lt!268221 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268218 vacantSpotIndex!68 (select (arr!17689 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!591045 (= lt!268216 (select (store (arr!17689 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!268215 () Unit!18488)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36845 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18488)

(assert (=> b!591045 (= lt!268215 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!268218 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!591045 (= lt!268218 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!591046 () Bool)

(assert (=> b!591046 (= e!337467 e!337474)))

(declare-fun res!378178 () Bool)

(assert (=> b!591046 (=> (not res!378178) (not e!337474))))

(assert (=> b!591046 (= res!378178 (and (= lt!268212 (Found!6136 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17689 a!2986) index!984) (select (arr!17689 a!2986) j!136))) (not (= (select (arr!17689 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!591046 (= lt!268212 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17689 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!591047 () Bool)

(declare-fun Unit!18491 () Unit!18488)

(assert (=> b!591047 (= e!337470 Unit!18491)))

(declare-fun b!591048 () Bool)

(declare-fun res!378177 () Bool)

(assert (=> b!591048 (=> (not res!378177) (not e!337472))))

(declare-datatypes ((List!11783 0))(
  ( (Nil!11780) (Cons!11779 (h!12824 (_ BitVec 64)) (t!18019 List!11783)) )
))
(declare-fun arrayNoDuplicates!0 (array!36845 (_ BitVec 32) List!11783) Bool)

(assert (=> b!591048 (= res!378177 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11780))))

(declare-fun b!591049 () Bool)

(declare-fun res!378184 () Bool)

(assert (=> b!591049 (=> (not res!378184) (not e!337466))))

(assert (=> b!591049 (= res!378184 (validKeyInArray!0 (select (arr!17689 a!2986) j!136)))))

(declare-fun b!591050 () Bool)

(assert (=> b!591050 (= e!337473 true)))

(declare-fun e!337464 () Bool)

(assert (=> b!591050 e!337464))

(declare-fun res!378187 () Bool)

(assert (=> b!591050 (=> (not res!378187) (not e!337464))))

(declare-fun lt!268220 () (_ BitVec 64))

(assert (=> b!591050 (= res!378187 (= lt!268220 (select (arr!17689 a!2986) j!136)))))

(assert (=> b!591050 (= lt!268220 (select (store (arr!17689 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!591051 () Bool)

(declare-fun res!378183 () Bool)

(assert (=> b!591051 (=> (not res!378183) (not e!337466))))

(assert (=> b!591051 (= res!378183 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!591052 () Bool)

(declare-fun res!378188 () Bool)

(assert (=> b!591052 (=> (not res!378188) (not e!337472))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36845 (_ BitVec 32)) Bool)

(assert (=> b!591052 (= res!378188 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!591053 () Bool)

(assert (=> b!591053 (= e!337464 e!337468)))

(declare-fun res!378189 () Bool)

(assert (=> b!591053 (=> res!378189 e!337468)))

(assert (=> b!591053 (= res!378189 (or (not (= (select (arr!17689 a!2986) j!136) lt!268216)) (not (= (select (arr!17689 a!2986) j!136) lt!268220)) (bvsge j!136 index!984)))))

(assert (= (and start!54152 res!378179) b!591036))

(assert (= (and b!591036 res!378185) b!591049))

(assert (= (and b!591049 res!378184) b!591039))

(assert (= (and b!591039 res!378181) b!591051))

(assert (= (and b!591051 res!378183) b!591037))

(assert (= (and b!591037 res!378180) b!591052))

(assert (= (and b!591052 res!378188) b!591048))

(assert (= (and b!591048 res!378177) b!591041))

(assert (= (and b!591041 res!378176) b!591044))

(assert (= (and b!591044 res!378191) b!591046))

(assert (= (and b!591046 res!378178) b!591045))

(assert (= (and b!591045 res!378190) b!591038))

(assert (= (and b!591045 c!66797) b!591040))

(assert (= (and b!591045 (not c!66797)) b!591047))

(assert (= (and b!591045 (not res!378186)) b!591050))

(assert (= (and b!591050 res!378187) b!591053))

(assert (= (and b!591053 (not res!378189)) b!591043))

(assert (= (and b!591043 res!378182) b!591042))

(declare-fun m!569347 () Bool)

(assert (=> b!591043 m!569347))

(assert (=> b!591043 m!569347))

(declare-fun m!569349 () Bool)

(assert (=> b!591043 m!569349))

(declare-fun m!569351 () Bool)

(assert (=> b!591045 m!569351))

(declare-fun m!569353 () Bool)

(assert (=> b!591045 m!569353))

(assert (=> b!591045 m!569347))

(declare-fun m!569355 () Bool)

(assert (=> b!591045 m!569355))

(declare-fun m!569357 () Bool)

(assert (=> b!591045 m!569357))

(declare-fun m!569359 () Bool)

(assert (=> b!591045 m!569359))

(assert (=> b!591045 m!569347))

(declare-fun m!569361 () Bool)

(assert (=> b!591045 m!569361))

(declare-fun m!569363 () Bool)

(assert (=> b!591045 m!569363))

(assert (=> b!591042 m!569347))

(assert (=> b!591042 m!569347))

(declare-fun m!569365 () Bool)

(assert (=> b!591042 m!569365))

(declare-fun m!569367 () Bool)

(assert (=> b!591051 m!569367))

(assert (=> b!591049 m!569347))

(assert (=> b!591049 m!569347))

(declare-fun m!569369 () Bool)

(assert (=> b!591049 m!569369))

(declare-fun m!569371 () Bool)

(assert (=> start!54152 m!569371))

(declare-fun m!569373 () Bool)

(assert (=> start!54152 m!569373))

(declare-fun m!569375 () Bool)

(assert (=> b!591046 m!569375))

(assert (=> b!591046 m!569347))

(assert (=> b!591046 m!569347))

(declare-fun m!569377 () Bool)

(assert (=> b!591046 m!569377))

(declare-fun m!569379 () Bool)

(assert (=> b!591048 m!569379))

(assert (=> b!591050 m!569347))

(assert (=> b!591050 m!569355))

(declare-fun m!569381 () Bool)

(assert (=> b!591050 m!569381))

(assert (=> b!591053 m!569347))

(assert (=> b!591044 m!569355))

(declare-fun m!569383 () Bool)

(assert (=> b!591044 m!569383))

(declare-fun m!569385 () Bool)

(assert (=> b!591041 m!569385))

(declare-fun m!569387 () Bool)

(assert (=> b!591039 m!569387))

(declare-fun m!569389 () Bool)

(assert (=> b!591052 m!569389))

(declare-fun m!569391 () Bool)

(assert (=> b!591037 m!569391))

(check-sat (not b!591051) (not b!591049) (not b!591039) (not b!591042) (not b!591037) (not b!591048) (not b!591043) (not b!591045) (not b!591046) (not start!54152) (not b!591052))
(check-sat)

; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53252 () Bool)

(assert start!53252)

(declare-fun b!578469 () Bool)

(declare-fun res!366443 () Bool)

(declare-fun e!332637 () Bool)

(assert (=> b!578469 (=> (not res!366443) (not e!332637))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36107 0))(
  ( (array!36108 (arr!17324 (Array (_ BitVec 32) (_ BitVec 64))) (size!17688 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36107)

(assert (=> b!578469 (= res!366443 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17324 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17324 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!578470 () Bool)

(declare-fun res!366437 () Bool)

(assert (=> b!578470 (=> (not res!366437) (not e!332637))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36107 (_ BitVec 32)) Bool)

(assert (=> b!578470 (= res!366437 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!578471 () Bool)

(declare-fun res!366436 () Bool)

(declare-fun e!332638 () Bool)

(assert (=> b!578471 (=> (not res!366436) (not e!332638))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!578471 (= res!366436 (validKeyInArray!0 (select (arr!17324 a!2986) j!136)))))

(declare-fun b!578472 () Bool)

(declare-fun res!366435 () Bool)

(assert (=> b!578472 (=> (not res!366435) (not e!332638))))

(assert (=> b!578472 (= res!366435 (validKeyInArray!0 k!1786))))

(declare-fun b!578473 () Bool)

(assert (=> b!578473 (= e!332637 false)))

(declare-datatypes ((SeekEntryResult!5771 0))(
  ( (MissingZero!5771 (index!25311 (_ BitVec 32))) (Found!5771 (index!25312 (_ BitVec 32))) (Intermediate!5771 (undefined!6583 Bool) (index!25313 (_ BitVec 32)) (x!54235 (_ BitVec 32))) (Undefined!5771) (MissingVacant!5771 (index!25314 (_ BitVec 32))) )
))
(declare-fun lt!264283 () SeekEntryResult!5771)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36107 (_ BitVec 32)) SeekEntryResult!5771)

(assert (=> b!578473 (= lt!264283 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17324 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!578475 () Bool)

(declare-fun res!366438 () Bool)

(assert (=> b!578475 (=> (not res!366438) (not e!332638))))

(declare-fun arrayContainsKey!0 (array!36107 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!578475 (= res!366438 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!578476 () Bool)

(assert (=> b!578476 (= e!332638 e!332637)))

(declare-fun res!366441 () Bool)

(assert (=> b!578476 (=> (not res!366441) (not e!332637))))

(declare-fun lt!264284 () SeekEntryResult!5771)

(assert (=> b!578476 (= res!366441 (or (= lt!264284 (MissingZero!5771 i!1108)) (= lt!264284 (MissingVacant!5771 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36107 (_ BitVec 32)) SeekEntryResult!5771)

(assert (=> b!578476 (= lt!264284 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!578477 () Bool)

(declare-fun res!366439 () Bool)

(assert (=> b!578477 (=> (not res!366439) (not e!332637))))

(declare-datatypes ((List!11418 0))(
  ( (Nil!11415) (Cons!11414 (h!12459 (_ BitVec 64)) (t!17654 List!11418)) )
))
(declare-fun arrayNoDuplicates!0 (array!36107 (_ BitVec 32) List!11418) Bool)

(assert (=> b!578477 (= res!366439 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11415))))

(declare-fun b!578474 () Bool)

(declare-fun res!366440 () Bool)

(assert (=> b!578474 (=> (not res!366440) (not e!332638))))

(assert (=> b!578474 (= res!366440 (and (= (size!17688 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17688 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17688 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!366442 () Bool)

(assert (=> start!53252 (=> (not res!366442) (not e!332638))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53252 (= res!366442 (validMask!0 mask!3053))))

(assert (=> start!53252 e!332638))

(assert (=> start!53252 true))

(declare-fun array_inv!13098 (array!36107) Bool)

(assert (=> start!53252 (array_inv!13098 a!2986)))

(assert (= (and start!53252 res!366442) b!578474))

(assert (= (and b!578474 res!366440) b!578471))

(assert (= (and b!578471 res!366436) b!578472))

(assert (= (and b!578472 res!366435) b!578475))

(assert (= (and b!578475 res!366438) b!578476))

(assert (= (and b!578476 res!366441) b!578470))

(assert (= (and b!578470 res!366437) b!578477))

(assert (= (and b!578477 res!366439) b!578469))

(assert (= (and b!578469 res!366443) b!578473))

(declare-fun m!557177 () Bool)

(assert (=> b!578472 m!557177))

(declare-fun m!557179 () Bool)

(assert (=> b!578470 m!557179))

(declare-fun m!557181 () Bool)

(assert (=> b!578476 m!557181))

(declare-fun m!557183 () Bool)

(assert (=> start!53252 m!557183))

(declare-fun m!557185 () Bool)

(assert (=> start!53252 m!557185))

(declare-fun m!557187 () Bool)

(assert (=> b!578477 m!557187))

(declare-fun m!557189 () Bool)

(assert (=> b!578475 m!557189))

(declare-fun m!557191 () Bool)

(assert (=> b!578471 m!557191))

(assert (=> b!578471 m!557191))

(declare-fun m!557193 () Bool)

(assert (=> b!578471 m!557193))

(declare-fun m!557195 () Bool)

(assert (=> b!578469 m!557195))

(declare-fun m!557197 () Bool)

(assert (=> b!578469 m!557197))

(declare-fun m!557199 () Bool)

(assert (=> b!578469 m!557199))

(assert (=> b!578473 m!557191))

(assert (=> b!578473 m!557191))

(declare-fun m!557201 () Bool)

(assert (=> b!578473 m!557201))

(push 1)

(assert (not b!578470))

(assert (not b!578477))

(assert (not start!53252))


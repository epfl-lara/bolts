; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53236 () Bool)

(assert start!53236)

(declare-fun b!578285 () Bool)

(declare-fun res!366252 () Bool)

(declare-fun e!332565 () Bool)

(assert (=> b!578285 (=> (not res!366252) (not e!332565))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36091 0))(
  ( (array!36092 (arr!17316 (Array (_ BitVec 32) (_ BitVec 64))) (size!17680 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36091)

(assert (=> b!578285 (= res!366252 (and (= (size!17680 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17680 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17680 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!366254 () Bool)

(assert (=> start!53236 (=> (not res!366254) (not e!332565))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53236 (= res!366254 (validMask!0 mask!3053))))

(assert (=> start!53236 e!332565))

(assert (=> start!53236 true))

(declare-fun array_inv!13090 (array!36091) Bool)

(assert (=> start!53236 (array_inv!13090 a!2986)))

(declare-fun b!578286 () Bool)

(declare-fun e!332566 () Bool)

(assert (=> b!578286 (= e!332566 false)))

(declare-fun lt!264235 () Bool)

(declare-datatypes ((List!11410 0))(
  ( (Nil!11407) (Cons!11406 (h!12451 (_ BitVec 64)) (t!17646 List!11410)) )
))
(declare-fun arrayNoDuplicates!0 (array!36091 (_ BitVec 32) List!11410) Bool)

(assert (=> b!578286 (= lt!264235 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11407))))

(declare-fun b!578287 () Bool)

(declare-fun res!366256 () Bool)

(assert (=> b!578287 (=> (not res!366256) (not e!332565))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!578287 (= res!366256 (validKeyInArray!0 k!1786))))

(declare-fun b!578288 () Bool)

(declare-fun res!366255 () Bool)

(assert (=> b!578288 (=> (not res!366255) (not e!332565))))

(declare-fun arrayContainsKey!0 (array!36091 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!578288 (= res!366255 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!578289 () Bool)

(declare-fun res!366251 () Bool)

(assert (=> b!578289 (=> (not res!366251) (not e!332565))))

(assert (=> b!578289 (= res!366251 (validKeyInArray!0 (select (arr!17316 a!2986) j!136)))))

(declare-fun b!578290 () Bool)

(declare-fun res!366257 () Bool)

(assert (=> b!578290 (=> (not res!366257) (not e!332566))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36091 (_ BitVec 32)) Bool)

(assert (=> b!578290 (= res!366257 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!578291 () Bool)

(assert (=> b!578291 (= e!332565 e!332566)))

(declare-fun res!366253 () Bool)

(assert (=> b!578291 (=> (not res!366253) (not e!332566))))

(declare-datatypes ((SeekEntryResult!5763 0))(
  ( (MissingZero!5763 (index!25279 (_ BitVec 32))) (Found!5763 (index!25280 (_ BitVec 32))) (Intermediate!5763 (undefined!6575 Bool) (index!25281 (_ BitVec 32)) (x!54211 (_ BitVec 32))) (Undefined!5763) (MissingVacant!5763 (index!25282 (_ BitVec 32))) )
))
(declare-fun lt!264236 () SeekEntryResult!5763)

(assert (=> b!578291 (= res!366253 (or (= lt!264236 (MissingZero!5763 i!1108)) (= lt!264236 (MissingVacant!5763 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36091 (_ BitVec 32)) SeekEntryResult!5763)

(assert (=> b!578291 (= lt!264236 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!53236 res!366254) b!578285))

(assert (= (and b!578285 res!366252) b!578289))

(assert (= (and b!578289 res!366251) b!578287))

(assert (= (and b!578287 res!366256) b!578288))

(assert (= (and b!578288 res!366255) b!578291))

(assert (= (and b!578291 res!366253) b!578290))

(assert (= (and b!578290 res!366257) b!578286))

(declare-fun m!557017 () Bool)

(assert (=> b!578289 m!557017))

(assert (=> b!578289 m!557017))

(declare-fun m!557019 () Bool)

(assert (=> b!578289 m!557019))

(declare-fun m!557021 () Bool)

(assert (=> start!53236 m!557021))

(declare-fun m!557023 () Bool)

(assert (=> start!53236 m!557023))

(declare-fun m!557025 () Bool)

(assert (=> b!578286 m!557025))

(declare-fun m!557027 () Bool)

(assert (=> b!578290 m!557027))

(declare-fun m!557029 () Bool)

(assert (=> b!578288 m!557029))

(declare-fun m!557031 () Bool)

(assert (=> b!578291 m!557031))

(declare-fun m!557033 () Bool)

(assert (=> b!578287 m!557033))

(push 1)


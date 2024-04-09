; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53246 () Bool)

(assert start!53246)

(declare-fun b!578390 () Bool)

(declare-fun res!366361 () Bool)

(declare-fun e!332610 () Bool)

(assert (=> b!578390 (=> (not res!366361) (not e!332610))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36101 0))(
  ( (array!36102 (arr!17321 (Array (_ BitVec 32) (_ BitVec 64))) (size!17685 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36101)

(assert (=> b!578390 (= res!366361 (and (= (size!17685 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17685 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17685 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!366359 () Bool)

(assert (=> start!53246 (=> (not res!366359) (not e!332610))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53246 (= res!366359 (validMask!0 mask!3053))))

(assert (=> start!53246 e!332610))

(assert (=> start!53246 true))

(declare-fun array_inv!13095 (array!36101) Bool)

(assert (=> start!53246 (array_inv!13095 a!2986)))

(declare-fun b!578391 () Bool)

(declare-fun res!366362 () Bool)

(assert (=> b!578391 (=> (not res!366362) (not e!332610))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!578391 (= res!366362 (validKeyInArray!0 (select (arr!17321 a!2986) j!136)))))

(declare-fun b!578392 () Bool)

(declare-fun res!366360 () Bool)

(assert (=> b!578392 (=> (not res!366360) (not e!332610))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36101 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!578392 (= res!366360 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!578393 () Bool)

(declare-fun res!366356 () Bool)

(declare-fun e!332609 () Bool)

(assert (=> b!578393 (=> (not res!366356) (not e!332609))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36101 (_ BitVec 32)) Bool)

(assert (=> b!578393 (= res!366356 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!578394 () Bool)

(assert (=> b!578394 (= e!332610 e!332609)))

(declare-fun res!366357 () Bool)

(assert (=> b!578394 (=> (not res!366357) (not e!332609))))

(declare-datatypes ((SeekEntryResult!5768 0))(
  ( (MissingZero!5768 (index!25299 (_ BitVec 32))) (Found!5768 (index!25300 (_ BitVec 32))) (Intermediate!5768 (undefined!6580 Bool) (index!25301 (_ BitVec 32)) (x!54224 (_ BitVec 32))) (Undefined!5768) (MissingVacant!5768 (index!25302 (_ BitVec 32))) )
))
(declare-fun lt!264265 () SeekEntryResult!5768)

(assert (=> b!578394 (= res!366357 (or (= lt!264265 (MissingZero!5768 i!1108)) (= lt!264265 (MissingVacant!5768 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36101 (_ BitVec 32)) SeekEntryResult!5768)

(assert (=> b!578394 (= lt!264265 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!578395 () Bool)

(declare-fun res!366358 () Bool)

(assert (=> b!578395 (=> (not res!366358) (not e!332610))))

(assert (=> b!578395 (= res!366358 (validKeyInArray!0 k!1786))))

(declare-fun b!578396 () Bool)

(assert (=> b!578396 (= e!332609 false)))

(declare-fun lt!264266 () Bool)

(declare-datatypes ((List!11415 0))(
  ( (Nil!11412) (Cons!11411 (h!12456 (_ BitVec 64)) (t!17651 List!11415)) )
))
(declare-fun arrayNoDuplicates!0 (array!36101 (_ BitVec 32) List!11415) Bool)

(assert (=> b!578396 (= lt!264266 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11412))))

(assert (= (and start!53246 res!366359) b!578390))

(assert (= (and b!578390 res!366361) b!578391))

(assert (= (and b!578391 res!366362) b!578395))

(assert (= (and b!578395 res!366358) b!578392))

(assert (= (and b!578392 res!366360) b!578394))

(assert (= (and b!578394 res!366357) b!578393))

(assert (= (and b!578393 res!366356) b!578396))

(declare-fun m!557107 () Bool)

(assert (=> start!53246 m!557107))

(declare-fun m!557109 () Bool)

(assert (=> start!53246 m!557109))

(declare-fun m!557111 () Bool)

(assert (=> b!578391 m!557111))

(assert (=> b!578391 m!557111))

(declare-fun m!557113 () Bool)

(assert (=> b!578391 m!557113))

(declare-fun m!557115 () Bool)

(assert (=> b!578393 m!557115))

(declare-fun m!557117 () Bool)

(assert (=> b!578394 m!557117))

(declare-fun m!557119 () Bool)

(assert (=> b!578395 m!557119))

(declare-fun m!557121 () Bool)

(assert (=> b!578392 m!557121))

(declare-fun m!557123 () Bool)

(assert (=> b!578396 m!557123))

(push 1)

(assert (not b!578391))

(assert (not b!578393))

(assert (not b!578392))

(assert (not b!578394))

(assert (not start!53246))

(assert (not b!578395))

(assert (not b!578396))

(check-sat)

(pop 1)


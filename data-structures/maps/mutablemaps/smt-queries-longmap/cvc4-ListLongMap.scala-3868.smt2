; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53240 () Bool)

(assert start!53240)

(declare-fun b!578327 () Bool)

(declare-fun e!332582 () Bool)

(declare-fun e!332583 () Bool)

(assert (=> b!578327 (= e!332582 e!332583)))

(declare-fun res!366298 () Bool)

(assert (=> b!578327 (=> (not res!366298) (not e!332583))))

(declare-datatypes ((SeekEntryResult!5765 0))(
  ( (MissingZero!5765 (index!25287 (_ BitVec 32))) (Found!5765 (index!25288 (_ BitVec 32))) (Intermediate!5765 (undefined!6577 Bool) (index!25289 (_ BitVec 32)) (x!54213 (_ BitVec 32))) (Undefined!5765) (MissingVacant!5765 (index!25290 (_ BitVec 32))) )
))
(declare-fun lt!264247 () SeekEntryResult!5765)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!578327 (= res!366298 (or (= lt!264247 (MissingZero!5765 i!1108)) (= lt!264247 (MissingVacant!5765 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!36095 0))(
  ( (array!36096 (arr!17318 (Array (_ BitVec 32) (_ BitVec 64))) (size!17682 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36095)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36095 (_ BitVec 32)) SeekEntryResult!5765)

(assert (=> b!578327 (= lt!264247 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!578328 () Bool)

(assert (=> b!578328 (= e!332583 false)))

(declare-fun lt!264248 () Bool)

(declare-datatypes ((List!11412 0))(
  ( (Nil!11409) (Cons!11408 (h!12453 (_ BitVec 64)) (t!17648 List!11412)) )
))
(declare-fun arrayNoDuplicates!0 (array!36095 (_ BitVec 32) List!11412) Bool)

(assert (=> b!578328 (= lt!264248 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11409))))

(declare-fun res!366293 () Bool)

(assert (=> start!53240 (=> (not res!366293) (not e!332582))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53240 (= res!366293 (validMask!0 mask!3053))))

(assert (=> start!53240 e!332582))

(assert (=> start!53240 true))

(declare-fun array_inv!13092 (array!36095) Bool)

(assert (=> start!53240 (array_inv!13092 a!2986)))

(declare-fun b!578329 () Bool)

(declare-fun res!366299 () Bool)

(assert (=> b!578329 (=> (not res!366299) (not e!332582))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!578329 (= res!366299 (validKeyInArray!0 k!1786))))

(declare-fun b!578330 () Bool)

(declare-fun res!366295 () Bool)

(assert (=> b!578330 (=> (not res!366295) (not e!332582))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!578330 (= res!366295 (and (= (size!17682 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17682 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17682 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!578331 () Bool)

(declare-fun res!366297 () Bool)

(assert (=> b!578331 (=> (not res!366297) (not e!332582))))

(declare-fun arrayContainsKey!0 (array!36095 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!578331 (= res!366297 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!578332 () Bool)

(declare-fun res!366296 () Bool)

(assert (=> b!578332 (=> (not res!366296) (not e!332582))))

(assert (=> b!578332 (= res!366296 (validKeyInArray!0 (select (arr!17318 a!2986) j!136)))))

(declare-fun b!578333 () Bool)

(declare-fun res!366294 () Bool)

(assert (=> b!578333 (=> (not res!366294) (not e!332583))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36095 (_ BitVec 32)) Bool)

(assert (=> b!578333 (= res!366294 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!53240 res!366293) b!578330))

(assert (= (and b!578330 res!366295) b!578332))

(assert (= (and b!578332 res!366296) b!578329))

(assert (= (and b!578329 res!366299) b!578331))

(assert (= (and b!578331 res!366297) b!578327))

(assert (= (and b!578327 res!366298) b!578333))

(assert (= (and b!578333 res!366294) b!578328))

(declare-fun m!557053 () Bool)

(assert (=> b!578331 m!557053))

(declare-fun m!557055 () Bool)

(assert (=> b!578329 m!557055))

(declare-fun m!557057 () Bool)

(assert (=> start!53240 m!557057))

(declare-fun m!557059 () Bool)

(assert (=> start!53240 m!557059))

(declare-fun m!557061 () Bool)

(assert (=> b!578333 m!557061))

(declare-fun m!557063 () Bool)

(assert (=> b!578328 m!557063))

(declare-fun m!557065 () Bool)

(assert (=> b!578332 m!557065))

(assert (=> b!578332 m!557065))

(declare-fun m!557067 () Bool)

(assert (=> b!578332 m!557067))

(declare-fun m!557069 () Bool)

(assert (=> b!578327 m!557069))

(push 1)


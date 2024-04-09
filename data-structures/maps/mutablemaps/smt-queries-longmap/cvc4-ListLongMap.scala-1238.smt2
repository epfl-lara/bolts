; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26000 () Bool)

(assert start!26000)

(declare-fun b!268127 () Bool)

(declare-fun res!132446 () Bool)

(declare-fun e!173235 () Bool)

(assert (=> b!268127 (=> (not res!132446) (not e!173235))))

(declare-datatypes ((array!13086 0))(
  ( (array!13087 (arr!6192 (Array (_ BitVec 32) (_ BitVec 64))) (size!6544 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13086)

(declare-datatypes ((List!4021 0))(
  ( (Nil!4018) (Cons!4017 (h!4684 (_ BitVec 64)) (t!9111 List!4021)) )
))
(declare-fun arrayNoDuplicates!0 (array!13086 (_ BitVec 32) List!4021) Bool)

(assert (=> b!268127 (= res!132446 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4018))))

(declare-fun b!268128 () Bool)

(declare-fun res!132443 () Bool)

(assert (=> b!268128 (=> (not res!132443) (not e!173235))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!268128 (= res!132443 (and (= (size!6544 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6544 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6544 a!3325))))))

(declare-fun res!132447 () Bool)

(assert (=> start!26000 (=> (not res!132447) (not e!173235))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26000 (= res!132447 (validMask!0 mask!3868))))

(assert (=> start!26000 e!173235))

(declare-fun array_inv!4146 (array!13086) Bool)

(assert (=> start!26000 (array_inv!4146 a!3325)))

(assert (=> start!26000 true))

(declare-fun b!268129 () Bool)

(declare-datatypes ((SeekEntryResult!1361 0))(
  ( (MissingZero!1361 (index!7614 (_ BitVec 32))) (Found!1361 (index!7615 (_ BitVec 32))) (Intermediate!1361 (undefined!2173 Bool) (index!7616 (_ BitVec 32)) (x!25950 (_ BitVec 32))) (Undefined!1361) (MissingVacant!1361 (index!7617 (_ BitVec 32))) )
))
(declare-fun lt!134822 () SeekEntryResult!1361)

(assert (=> b!268129 (= e!173235 (and (or (= lt!134822 (MissingZero!1361 i!1267)) (= lt!134822 (MissingVacant!1361 i!1267))) (bvsgt #b00000000000000000000000000000000 (size!6544 a!3325))))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13086 (_ BitVec 32)) SeekEntryResult!1361)

(assert (=> b!268129 (= lt!134822 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!268130 () Bool)

(declare-fun res!132444 () Bool)

(assert (=> b!268130 (=> (not res!132444) (not e!173235))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268130 (= res!132444 (validKeyInArray!0 k!2581))))

(declare-fun b!268131 () Bool)

(declare-fun res!132445 () Bool)

(assert (=> b!268131 (=> (not res!132445) (not e!173235))))

(declare-fun arrayContainsKey!0 (array!13086 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268131 (= res!132445 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!26000 res!132447) b!268128))

(assert (= (and b!268128 res!132443) b!268130))

(assert (= (and b!268130 res!132444) b!268127))

(assert (= (and b!268127 res!132446) b!268131))

(assert (= (and b!268131 res!132445) b!268129))

(declare-fun m!284365 () Bool)

(assert (=> b!268130 m!284365))

(declare-fun m!284367 () Bool)

(assert (=> start!26000 m!284367))

(declare-fun m!284369 () Bool)

(assert (=> start!26000 m!284369))

(declare-fun m!284371 () Bool)

(assert (=> b!268131 m!284371))

(declare-fun m!284373 () Bool)

(assert (=> b!268127 m!284373))

(declare-fun m!284375 () Bool)

(assert (=> b!268129 m!284375))

(push 1)

(assert (not start!26000))

(assert (not b!268130))

(assert (not b!268129))


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26576 () Bool)

(assert start!26576)

(declare-fun b!275754 () Bool)

(declare-fun res!139784 () Bool)

(declare-fun e!176303 () Bool)

(assert (=> b!275754 (=> (not res!139784) (not e!176303))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!275754 (= res!139784 (validKeyInArray!0 k!2581))))

(declare-fun b!275755 () Bool)

(declare-fun e!176305 () Bool)

(assert (=> b!275755 (= e!176305 (not true))))

(declare-datatypes ((array!13662 0))(
  ( (array!13663 (arr!6480 (Array (_ BitVec 32) (_ BitVec 64))) (size!6832 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13662)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13662 (_ BitVec 32)) Bool)

(assert (=> b!275755 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13663 (store (arr!6480 a!3325) i!1267 k!2581) (size!6832 a!3325)) mask!3868)))

(declare-datatypes ((Unit!8692 0))(
  ( (Unit!8693) )
))
(declare-fun lt!137495 () Unit!8692)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13662 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8692)

(assert (=> b!275755 (= lt!137495 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun b!275756 () Bool)

(declare-fun res!139785 () Bool)

(assert (=> b!275756 (=> (not res!139785) (not e!176303))))

(declare-fun arrayContainsKey!0 (array!13662 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!275756 (= res!139785 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!275757 () Bool)

(declare-fun res!139787 () Bool)

(assert (=> b!275757 (=> (not res!139787) (not e!176305))))

(assert (=> b!275757 (= res!139787 (not (= startIndex!26 i!1267)))))

(declare-fun res!139790 () Bool)

(assert (=> start!26576 (=> (not res!139790) (not e!176303))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26576 (= res!139790 (validMask!0 mask!3868))))

(assert (=> start!26576 e!176303))

(declare-fun array_inv!4434 (array!13662) Bool)

(assert (=> start!26576 (array_inv!4434 a!3325)))

(assert (=> start!26576 true))

(declare-fun b!275758 () Bool)

(declare-fun res!139783 () Bool)

(assert (=> b!275758 (=> (not res!139783) (not e!176305))))

(assert (=> b!275758 (= res!139783 (and (bvslt startIndex!26 (bvsub (size!6832 a!3325) #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000)))))

(declare-fun b!275759 () Bool)

(assert (=> b!275759 (= e!176303 e!176305)))

(declare-fun res!139789 () Bool)

(assert (=> b!275759 (=> (not res!139789) (not e!176305))))

(declare-datatypes ((SeekEntryResult!1649 0))(
  ( (MissingZero!1649 (index!8766 (_ BitVec 32))) (Found!1649 (index!8767 (_ BitVec 32))) (Intermediate!1649 (undefined!2461 Bool) (index!8768 (_ BitVec 32)) (x!27006 (_ BitVec 32))) (Undefined!1649) (MissingVacant!1649 (index!8769 (_ BitVec 32))) )
))
(declare-fun lt!137494 () SeekEntryResult!1649)

(assert (=> b!275759 (= res!139789 (or (= lt!137494 (MissingZero!1649 i!1267)) (= lt!137494 (MissingVacant!1649 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13662 (_ BitVec 32)) SeekEntryResult!1649)

(assert (=> b!275759 (= lt!137494 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!275760 () Bool)

(declare-fun res!139788 () Bool)

(assert (=> b!275760 (=> (not res!139788) (not e!176305))))

(assert (=> b!275760 (= res!139788 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!275761 () Bool)

(declare-fun res!139782 () Bool)

(assert (=> b!275761 (=> (not res!139782) (not e!176303))))

(declare-datatypes ((List!4309 0))(
  ( (Nil!4306) (Cons!4305 (h!4972 (_ BitVec 64)) (t!9399 List!4309)) )
))
(declare-fun arrayNoDuplicates!0 (array!13662 (_ BitVec 32) List!4309) Bool)

(assert (=> b!275761 (= res!139782 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4306))))

(declare-fun b!275762 () Bool)

(declare-fun res!139786 () Bool)

(assert (=> b!275762 (=> (not res!139786) (not e!176303))))

(assert (=> b!275762 (= res!139786 (and (= (size!6832 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6832 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6832 a!3325))))))

(declare-fun b!275763 () Bool)

(declare-fun res!139791 () Bool)

(assert (=> b!275763 (=> (not res!139791) (not e!176305))))

(assert (=> b!275763 (= res!139791 (not (validKeyInArray!0 (select (arr!6480 a!3325) startIndex!26))))))

(assert (= (and start!26576 res!139790) b!275762))

(assert (= (and b!275762 res!139786) b!275754))

(assert (= (and b!275754 res!139784) b!275761))

(assert (= (and b!275761 res!139782) b!275756))

(assert (= (and b!275756 res!139785) b!275759))

(assert (= (and b!275759 res!139789) b!275760))

(assert (= (and b!275760 res!139788) b!275757))

(assert (= (and b!275757 res!139787) b!275763))

(assert (= (and b!275763 res!139791) b!275758))

(assert (= (and b!275758 res!139783) b!275755))

(declare-fun m!291283 () Bool)

(assert (=> start!26576 m!291283))

(declare-fun m!291285 () Bool)

(assert (=> start!26576 m!291285))

(declare-fun m!291287 () Bool)

(assert (=> b!275756 m!291287))

(declare-fun m!291289 () Bool)

(assert (=> b!275759 m!291289))

(declare-fun m!291291 () Bool)

(assert (=> b!275763 m!291291))

(assert (=> b!275763 m!291291))

(declare-fun m!291293 () Bool)

(assert (=> b!275763 m!291293))

(declare-fun m!291295 () Bool)

(assert (=> b!275755 m!291295))

(declare-fun m!291297 () Bool)

(assert (=> b!275755 m!291297))

(declare-fun m!291299 () Bool)

(assert (=> b!275755 m!291299))

(declare-fun m!291301 () Bool)

(assert (=> b!275754 m!291301))

(declare-fun m!291303 () Bool)

(assert (=> b!275761 m!291303))

(declare-fun m!291305 () Bool)

(assert (=> b!275760 m!291305))

(push 1)

(assert (not b!275759))

(assert (not start!26576))

(assert (not b!275763))

(assert (not b!275754))

(assert (not b!275756))

(assert (not b!275760))

(assert (not b!275755))

(assert (not b!275761))

(check-sat)


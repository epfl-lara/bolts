; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26546 () Bool)

(assert start!26546)

(declare-fun b!275380 () Bool)

(declare-fun res!139413 () Bool)

(declare-fun e!176168 () Bool)

(assert (=> b!275380 (=> (not res!139413) (not e!176168))))

(declare-datatypes ((array!13632 0))(
  ( (array!13633 (arr!6465 (Array (_ BitVec 32) (_ BitVec 64))) (size!6817 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13632)

(declare-datatypes ((List!4294 0))(
  ( (Nil!4291) (Cons!4290 (h!4957 (_ BitVec 64)) (t!9384 List!4294)) )
))
(declare-fun arrayNoDuplicates!0 (array!13632 (_ BitVec 32) List!4294) Bool)

(assert (=> b!275380 (= res!139413 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4291))))

(declare-fun b!275381 () Bool)

(declare-fun e!176170 () Bool)

(assert (=> b!275381 (= e!176170 false)))

(declare-fun lt!137404 () Bool)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13632 (_ BitVec 32)) Bool)

(assert (=> b!275381 (= lt!137404 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!275382 () Bool)

(declare-fun res!139408 () Bool)

(assert (=> b!275382 (=> (not res!139408) (not e!176168))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!275382 (= res!139408 (validKeyInArray!0 k!2581))))

(declare-fun b!275383 () Bool)

(declare-fun res!139410 () Bool)

(assert (=> b!275383 (=> (not res!139410) (not e!176168))))

(declare-fun arrayContainsKey!0 (array!13632 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!275383 (= res!139410 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!275384 () Bool)

(declare-fun res!139409 () Bool)

(assert (=> b!275384 (=> (not res!139409) (not e!176168))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!275384 (= res!139409 (and (= (size!6817 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6817 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6817 a!3325))))))

(declare-fun res!139412 () Bool)

(assert (=> start!26546 (=> (not res!139412) (not e!176168))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26546 (= res!139412 (validMask!0 mask!3868))))

(assert (=> start!26546 e!176168))

(declare-fun array_inv!4419 (array!13632) Bool)

(assert (=> start!26546 (array_inv!4419 a!3325)))

(assert (=> start!26546 true))

(declare-fun b!275385 () Bool)

(assert (=> b!275385 (= e!176168 e!176170)))

(declare-fun res!139411 () Bool)

(assert (=> b!275385 (=> (not res!139411) (not e!176170))))

(declare-datatypes ((SeekEntryResult!1634 0))(
  ( (MissingZero!1634 (index!8706 (_ BitVec 32))) (Found!1634 (index!8707 (_ BitVec 32))) (Intermediate!1634 (undefined!2446 Bool) (index!8708 (_ BitVec 32)) (x!26951 (_ BitVec 32))) (Undefined!1634) (MissingVacant!1634 (index!8709 (_ BitVec 32))) )
))
(declare-fun lt!137405 () SeekEntryResult!1634)

(assert (=> b!275385 (= res!139411 (or (= lt!137405 (MissingZero!1634 i!1267)) (= lt!137405 (MissingVacant!1634 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13632 (_ BitVec 32)) SeekEntryResult!1634)

(assert (=> b!275385 (= lt!137405 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!26546 res!139412) b!275384))

(assert (= (and b!275384 res!139409) b!275382))

(assert (= (and b!275382 res!139408) b!275380))

(assert (= (and b!275380 res!139413) b!275383))

(assert (= (and b!275383 res!139410) b!275385))

(assert (= (and b!275385 res!139411) b!275381))

(declare-fun m!290993 () Bool)

(assert (=> b!275382 m!290993))

(declare-fun m!290995 () Bool)

(assert (=> b!275385 m!290995))

(declare-fun m!290997 () Bool)

(assert (=> start!26546 m!290997))

(declare-fun m!290999 () Bool)

(assert (=> start!26546 m!290999))

(declare-fun m!291001 () Bool)

(assert (=> b!275380 m!291001))

(declare-fun m!291003 () Bool)

(assert (=> b!275381 m!291003))

(declare-fun m!291005 () Bool)

(assert (=> b!275383 m!291005))

(push 1)

(assert (not b!275381))

(assert (not start!26546))


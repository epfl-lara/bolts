; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26510 () Bool)

(assert start!26510)

(declare-fun b!275056 () Bool)

(declare-fun res!139089 () Bool)

(declare-fun e!176007 () Bool)

(assert (=> b!275056 (=> (not res!139089) (not e!176007))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!275056 (= res!139089 (validKeyInArray!0 k!2581))))

(declare-fun b!275057 () Bool)

(declare-fun res!139085 () Bool)

(assert (=> b!275057 (=> (not res!139085) (not e!176007))))

(declare-datatypes ((array!13596 0))(
  ( (array!13597 (arr!6447 (Array (_ BitVec 32) (_ BitVec 64))) (size!6799 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13596)

(declare-datatypes ((List!4276 0))(
  ( (Nil!4273) (Cons!4272 (h!4939 (_ BitVec 64)) (t!9366 List!4276)) )
))
(declare-fun arrayNoDuplicates!0 (array!13596 (_ BitVec 32) List!4276) Bool)

(assert (=> b!275057 (= res!139085 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4273))))

(declare-fun b!275058 () Bool)

(declare-fun e!176006 () Bool)

(assert (=> b!275058 (= e!176007 e!176006)))

(declare-fun res!139087 () Bool)

(assert (=> b!275058 (=> (not res!139087) (not e!176006))))

(declare-datatypes ((SeekEntryResult!1616 0))(
  ( (MissingZero!1616 (index!8634 (_ BitVec 32))) (Found!1616 (index!8635 (_ BitVec 32))) (Intermediate!1616 (undefined!2428 Bool) (index!8636 (_ BitVec 32)) (x!26885 (_ BitVec 32))) (Undefined!1616) (MissingVacant!1616 (index!8637 (_ BitVec 32))) )
))
(declare-fun lt!137297 () SeekEntryResult!1616)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!275058 (= res!139087 (or (= lt!137297 (MissingZero!1616 i!1267)) (= lt!137297 (MissingVacant!1616 i!1267))))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13596 (_ BitVec 32)) SeekEntryResult!1616)

(assert (=> b!275058 (= lt!137297 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!275059 () Bool)

(assert (=> b!275059 (= e!176006 false)))

(declare-fun lt!137296 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13596 (_ BitVec 32)) Bool)

(assert (=> b!275059 (= lt!137296 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!139086 () Bool)

(assert (=> start!26510 (=> (not res!139086) (not e!176007))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26510 (= res!139086 (validMask!0 mask!3868))))

(assert (=> start!26510 e!176007))

(declare-fun array_inv!4401 (array!13596) Bool)

(assert (=> start!26510 (array_inv!4401 a!3325)))

(assert (=> start!26510 true))

(declare-fun b!275060 () Bool)

(declare-fun res!139084 () Bool)

(assert (=> b!275060 (=> (not res!139084) (not e!176007))))

(declare-fun arrayContainsKey!0 (array!13596 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!275060 (= res!139084 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!275061 () Bool)

(declare-fun res!139088 () Bool)

(assert (=> b!275061 (=> (not res!139088) (not e!176007))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!275061 (= res!139088 (and (= (size!6799 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6799 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6799 a!3325))))))

(assert (= (and start!26510 res!139086) b!275061))

(assert (= (and b!275061 res!139088) b!275056))

(assert (= (and b!275056 res!139089) b!275057))

(assert (= (and b!275057 res!139085) b!275060))

(assert (= (and b!275060 res!139084) b!275058))

(assert (= (and b!275058 res!139087) b!275059))

(declare-fun m!290741 () Bool)

(assert (=> b!275060 m!290741))

(declare-fun m!290743 () Bool)

(assert (=> start!26510 m!290743))

(declare-fun m!290745 () Bool)

(assert (=> start!26510 m!290745))

(declare-fun m!290747 () Bool)

(assert (=> b!275059 m!290747))

(declare-fun m!290749 () Bool)

(assert (=> b!275057 m!290749))

(declare-fun m!290751 () Bool)

(assert (=> b!275058 m!290751))

(declare-fun m!290753 () Bool)

(assert (=> b!275056 m!290753))

(push 1)

(assert (not b!275060))

(assert (not start!26510))

(assert (not b!275058))

(assert (not b!275057))

(assert (not b!275059))

(assert (not b!275056))

(check-sat)


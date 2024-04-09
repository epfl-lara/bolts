; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26600 () Bool)

(assert start!26600)

(declare-fun b!276010 () Bool)

(declare-fun res!140038 () Bool)

(declare-fun e!176413 () Bool)

(assert (=> b!276010 (=> (not res!140038) (not e!176413))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!276010 (= res!140038 (validKeyInArray!0 k!2581))))

(declare-fun b!276011 () Bool)

(declare-fun res!140042 () Bool)

(assert (=> b!276011 (=> (not res!140042) (not e!176413))))

(declare-datatypes ((array!13686 0))(
  ( (array!13687 (arr!6492 (Array (_ BitVec 32) (_ BitVec 64))) (size!6844 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13686)

(declare-datatypes ((List!4321 0))(
  ( (Nil!4318) (Cons!4317 (h!4984 (_ BitVec 64)) (t!9411 List!4321)) )
))
(declare-fun arrayNoDuplicates!0 (array!13686 (_ BitVec 32) List!4321) Bool)

(assert (=> b!276011 (= res!140042 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4318))))

(declare-fun b!276012 () Bool)

(declare-fun e!176411 () Bool)

(assert (=> b!276012 (= e!176413 e!176411)))

(declare-fun res!140040 () Bool)

(assert (=> b!276012 (=> (not res!140040) (not e!176411))))

(declare-datatypes ((SeekEntryResult!1661 0))(
  ( (MissingZero!1661 (index!8814 (_ BitVec 32))) (Found!1661 (index!8815 (_ BitVec 32))) (Intermediate!1661 (undefined!2473 Bool) (index!8816 (_ BitVec 32)) (x!27050 (_ BitVec 32))) (Undefined!1661) (MissingVacant!1661 (index!8817 (_ BitVec 32))) )
))
(declare-fun lt!137567 () SeekEntryResult!1661)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!276012 (= res!140040 (or (= lt!137567 (MissingZero!1661 i!1267)) (= lt!137567 (MissingVacant!1661 i!1267))))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13686 (_ BitVec 32)) SeekEntryResult!1661)

(assert (=> b!276012 (= lt!137567 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!276013 () Bool)

(declare-fun res!140041 () Bool)

(assert (=> b!276013 (=> (not res!140041) (not e!176413))))

(declare-fun arrayContainsKey!0 (array!13686 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!276013 (= res!140041 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun res!140039 () Bool)

(assert (=> start!26600 (=> (not res!140039) (not e!176413))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26600 (= res!140039 (validMask!0 mask!3868))))

(assert (=> start!26600 e!176413))

(declare-fun array_inv!4446 (array!13686) Bool)

(assert (=> start!26600 (array_inv!4446 a!3325)))

(assert (=> start!26600 true))

(declare-fun b!276014 () Bool)

(declare-fun res!140043 () Bool)

(assert (=> b!276014 (=> (not res!140043) (not e!176413))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!276014 (= res!140043 (and (= (size!6844 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6844 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6844 a!3325))))))

(declare-fun b!276015 () Bool)

(assert (=> b!276015 (= e!176411 false)))

(declare-fun lt!137566 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13686 (_ BitVec 32)) Bool)

(assert (=> b!276015 (= lt!137566 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!26600 res!140039) b!276014))

(assert (= (and b!276014 res!140043) b!276010))

(assert (= (and b!276010 res!140038) b!276011))

(assert (= (and b!276011 res!140042) b!276013))

(assert (= (and b!276013 res!140041) b!276012))

(assert (= (and b!276012 res!140040) b!276015))

(declare-fun m!291491 () Bool)

(assert (=> start!26600 m!291491))

(declare-fun m!291493 () Bool)

(assert (=> start!26600 m!291493))

(declare-fun m!291495 () Bool)

(assert (=> b!276011 m!291495))

(declare-fun m!291497 () Bool)

(assert (=> b!276010 m!291497))

(declare-fun m!291499 () Bool)

(assert (=> b!276012 m!291499))

(declare-fun m!291501 () Bool)

(assert (=> b!276013 m!291501))

(declare-fun m!291503 () Bool)

(assert (=> b!276015 m!291503))

(push 1)

(assert (not b!276012))

(assert (not b!276013))

(assert (not b!276015))

(assert (not b!276011))

(assert (not b!276010))

(assert (not start!26600))

(check-sat)

(pop 1)


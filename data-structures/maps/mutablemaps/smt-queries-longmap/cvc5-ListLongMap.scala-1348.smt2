; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26656 () Bool)

(assert start!26656)

(declare-fun b!276559 () Bool)

(declare-fun res!140590 () Bool)

(declare-fun e!176665 () Bool)

(assert (=> b!276559 (=> (not res!140590) (not e!176665))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!276559 (= res!140590 (validKeyInArray!0 k!2581))))

(declare-fun b!276560 () Bool)

(declare-fun e!176663 () Bool)

(assert (=> b!276560 (= e!176663 false)))

(declare-fun lt!137708 () Bool)

(declare-datatypes ((array!13742 0))(
  ( (array!13743 (arr!6520 (Array (_ BitVec 32) (_ BitVec 64))) (size!6872 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13742)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13742 (_ BitVec 32)) Bool)

(assert (=> b!276560 (= lt!137708 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!276561 () Bool)

(declare-fun res!140589 () Bool)

(assert (=> b!276561 (=> (not res!140589) (not e!176665))))

(declare-datatypes ((List!4349 0))(
  ( (Nil!4346) (Cons!4345 (h!5012 (_ BitVec 64)) (t!9439 List!4349)) )
))
(declare-fun arrayNoDuplicates!0 (array!13742 (_ BitVec 32) List!4349) Bool)

(assert (=> b!276561 (= res!140589 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4346))))

(declare-fun b!276562 () Bool)

(declare-fun res!140587 () Bool)

(assert (=> b!276562 (=> (not res!140587) (not e!176665))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!276562 (= res!140587 (and (= (size!6872 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6872 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6872 a!3325))))))

(declare-fun b!276563 () Bool)

(declare-fun res!140588 () Bool)

(assert (=> b!276563 (=> (not res!140588) (not e!176665))))

(declare-fun arrayContainsKey!0 (array!13742 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!276563 (= res!140588 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun res!140591 () Bool)

(assert (=> start!26656 (=> (not res!140591) (not e!176665))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26656 (= res!140591 (validMask!0 mask!3868))))

(assert (=> start!26656 e!176665))

(declare-fun array_inv!4474 (array!13742) Bool)

(assert (=> start!26656 (array_inv!4474 a!3325)))

(assert (=> start!26656 true))

(declare-fun b!276564 () Bool)

(assert (=> b!276564 (= e!176665 e!176663)))

(declare-fun res!140592 () Bool)

(assert (=> b!276564 (=> (not res!140592) (not e!176663))))

(declare-datatypes ((SeekEntryResult!1689 0))(
  ( (MissingZero!1689 (index!8926 (_ BitVec 32))) (Found!1689 (index!8927 (_ BitVec 32))) (Intermediate!1689 (undefined!2501 Bool) (index!8928 (_ BitVec 32)) (x!27158 (_ BitVec 32))) (Undefined!1689) (MissingVacant!1689 (index!8929 (_ BitVec 32))) )
))
(declare-fun lt!137707 () SeekEntryResult!1689)

(assert (=> b!276564 (= res!140592 (or (= lt!137707 (MissingZero!1689 i!1267)) (= lt!137707 (MissingVacant!1689 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13742 (_ BitVec 32)) SeekEntryResult!1689)

(assert (=> b!276564 (= lt!137707 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!26656 res!140591) b!276562))

(assert (= (and b!276562 res!140587) b!276559))

(assert (= (and b!276559 res!140590) b!276561))

(assert (= (and b!276561 res!140589) b!276563))

(assert (= (and b!276563 res!140588) b!276564))

(assert (= (and b!276564 res!140592) b!276560))

(declare-fun m!291895 () Bool)

(assert (=> b!276560 m!291895))

(declare-fun m!291897 () Bool)

(assert (=> b!276564 m!291897))

(declare-fun m!291899 () Bool)

(assert (=> b!276563 m!291899))

(declare-fun m!291901 () Bool)

(assert (=> start!26656 m!291901))

(declare-fun m!291903 () Bool)

(assert (=> start!26656 m!291903))

(declare-fun m!291905 () Bool)

(assert (=> b!276559 m!291905))

(declare-fun m!291907 () Bool)

(assert (=> b!276561 m!291907))

(push 1)

(assert (not b!276561))

(assert (not b!276559))

(assert (not b!276564))


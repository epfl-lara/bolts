; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26864 () Bool)

(assert start!26864)

(declare-fun res!142012 () Bool)

(declare-fun e!177668 () Bool)

(assert (=> start!26864 (=> (not res!142012) (not e!177668))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26864 (= res!142012 (validMask!0 mask!3868))))

(assert (=> start!26864 e!177668))

(declare-datatypes ((array!13857 0))(
  ( (array!13858 (arr!6576 (Array (_ BitVec 32) (_ BitVec 64))) (size!6928 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13857)

(declare-fun array_inv!4530 (array!13857) Bool)

(assert (=> start!26864 (array_inv!4530 a!3325)))

(assert (=> start!26864 true))

(declare-fun b!278542 () Bool)

(declare-fun res!142013 () Bool)

(assert (=> b!278542 (=> (not res!142013) (not e!177668))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13857 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!278542 (= res!142013 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!278543 () Bool)

(declare-fun res!142009 () Bool)

(assert (=> b!278543 (=> (not res!142009) (not e!177668))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!278543 (= res!142009 (validKeyInArray!0 k!2581))))

(declare-fun b!278544 () Bool)

(declare-fun res!142014 () Bool)

(assert (=> b!278544 (=> (not res!142014) (not e!177668))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!278544 (= res!142014 (and (= (size!6928 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6928 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6928 a!3325))))))

(declare-fun b!278545 () Bool)

(declare-fun res!142011 () Bool)

(assert (=> b!278545 (=> (not res!142011) (not e!177668))))

(declare-datatypes ((List!4405 0))(
  ( (Nil!4402) (Cons!4401 (h!5071 (_ BitVec 64)) (t!9495 List!4405)) )
))
(declare-fun arrayNoDuplicates!0 (array!13857 (_ BitVec 32) List!4405) Bool)

(assert (=> b!278545 (= res!142011 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4402))))

(declare-fun b!278546 () Bool)

(declare-fun e!177669 () Bool)

(assert (=> b!278546 (= e!177669 false)))

(declare-fun lt!138448 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13857 (_ BitVec 32)) Bool)

(assert (=> b!278546 (= lt!138448 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!278547 () Bool)

(assert (=> b!278547 (= e!177668 e!177669)))

(declare-fun res!142010 () Bool)

(assert (=> b!278547 (=> (not res!142010) (not e!177669))))

(declare-datatypes ((SeekEntryResult!1745 0))(
  ( (MissingZero!1745 (index!9150 (_ BitVec 32))) (Found!1745 (index!9151 (_ BitVec 32))) (Intermediate!1745 (undefined!2557 Bool) (index!9152 (_ BitVec 32)) (x!27367 (_ BitVec 32))) (Undefined!1745) (MissingVacant!1745 (index!9153 (_ BitVec 32))) )
))
(declare-fun lt!138449 () SeekEntryResult!1745)

(assert (=> b!278547 (= res!142010 (or (= lt!138449 (MissingZero!1745 i!1267)) (= lt!138449 (MissingVacant!1745 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13857 (_ BitVec 32)) SeekEntryResult!1745)

(assert (=> b!278547 (= lt!138449 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!26864 res!142012) b!278544))

(assert (= (and b!278544 res!142014) b!278543))

(assert (= (and b!278543 res!142009) b!278545))

(assert (= (and b!278545 res!142011) b!278542))

(assert (= (and b!278542 res!142013) b!278547))

(assert (= (and b!278547 res!142010) b!278546))

(declare-fun m!293621 () Bool)

(assert (=> b!278546 m!293621))

(declare-fun m!293623 () Bool)

(assert (=> b!278545 m!293623))

(declare-fun m!293625 () Bool)

(assert (=> b!278547 m!293625))

(declare-fun m!293627 () Bool)

(assert (=> b!278543 m!293627))

(declare-fun m!293629 () Bool)

(assert (=> b!278542 m!293629))

(declare-fun m!293631 () Bool)

(assert (=> start!26864 m!293631))

(declare-fun m!293633 () Bool)

(assert (=> start!26864 m!293633))

(push 1)

(assert (not b!278546))

(assert (not start!26864))

(assert (not b!278545))

(assert (not b!278542))

(assert (not b!278543))

(assert (not b!278547))

(check-sat)


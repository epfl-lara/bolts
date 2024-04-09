; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26612 () Bool)

(assert start!26612)

(declare-fun b!276153 () Bool)

(declare-fun res!140186 () Bool)

(declare-fun e!176466 () Bool)

(assert (=> b!276153 (=> (not res!140186) (not e!176466))))

(declare-datatypes ((array!13698 0))(
  ( (array!13699 (arr!6498 (Array (_ BitVec 32) (_ BitVec 64))) (size!6850 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13698)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13698 (_ BitVec 32)) Bool)

(assert (=> b!276153 (= res!140186 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!276154 () Bool)

(declare-fun res!140181 () Bool)

(declare-fun e!176465 () Bool)

(assert (=> b!276154 (=> (not res!140181) (not e!176465))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!276154 (= res!140181 (and (= (size!6850 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6850 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6850 a!3325))))))

(declare-fun b!276155 () Bool)

(declare-fun res!140185 () Bool)

(assert (=> b!276155 (=> (not res!140185) (not e!176465))))

(declare-datatypes ((List!4327 0))(
  ( (Nil!4324) (Cons!4323 (h!4990 (_ BitVec 64)) (t!9417 List!4327)) )
))
(declare-fun arrayNoDuplicates!0 (array!13698 (_ BitVec 32) List!4327) Bool)

(assert (=> b!276155 (= res!140185 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4324))))

(declare-fun b!276156 () Bool)

(assert (=> b!276156 (= e!176465 e!176466)))

(declare-fun res!140183 () Bool)

(assert (=> b!276156 (=> (not res!140183) (not e!176466))))

(declare-datatypes ((SeekEntryResult!1667 0))(
  ( (MissingZero!1667 (index!8838 (_ BitVec 32))) (Found!1667 (index!8839 (_ BitVec 32))) (Intermediate!1667 (undefined!2479 Bool) (index!8840 (_ BitVec 32)) (x!27072 (_ BitVec 32))) (Undefined!1667) (MissingVacant!1667 (index!8841 (_ BitVec 32))) )
))
(declare-fun lt!137585 () SeekEntryResult!1667)

(assert (=> b!276156 (= res!140183 (or (= lt!137585 (MissingZero!1667 i!1267)) (= lt!137585 (MissingVacant!1667 i!1267))))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13698 (_ BitVec 32)) SeekEntryResult!1667)

(assert (=> b!276156 (= lt!137585 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun res!140182 () Bool)

(assert (=> start!26612 (=> (not res!140182) (not e!176465))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26612 (= res!140182 (validMask!0 mask!3868))))

(assert (=> start!26612 e!176465))

(declare-fun array_inv!4452 (array!13698) Bool)

(assert (=> start!26612 (array_inv!4452 a!3325)))

(assert (=> start!26612 true))

(declare-fun b!276157 () Bool)

(assert (=> b!276157 (= e!176466 (bvslt (bvsub (size!6850 a!3325) startIndex!26) #b00000000000000000000000000000000))))

(declare-fun b!276158 () Bool)

(declare-fun res!140187 () Bool)

(assert (=> b!276158 (=> (not res!140187) (not e!176465))))

(declare-fun arrayContainsKey!0 (array!13698 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!276158 (= res!140187 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!276159 () Bool)

(declare-fun res!140184 () Bool)

(assert (=> b!276159 (=> (not res!140184) (not e!176465))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!276159 (= res!140184 (validKeyInArray!0 k!2581))))

(assert (= (and start!26612 res!140182) b!276154))

(assert (= (and b!276154 res!140181) b!276159))

(assert (= (and b!276159 res!140184) b!276155))

(assert (= (and b!276155 res!140185) b!276158))

(assert (= (and b!276158 res!140187) b!276156))

(assert (= (and b!276156 res!140183) b!276153))

(assert (= (and b!276153 res!140186) b!276157))

(declare-fun m!291587 () Bool)

(assert (=> b!276158 m!291587))

(declare-fun m!291589 () Bool)

(assert (=> start!26612 m!291589))

(declare-fun m!291591 () Bool)

(assert (=> start!26612 m!291591))

(declare-fun m!291593 () Bool)

(assert (=> b!276159 m!291593))

(declare-fun m!291595 () Bool)

(assert (=> b!276153 m!291595))

(declare-fun m!291597 () Bool)

(assert (=> b!276155 m!291597))

(declare-fun m!291599 () Bool)

(assert (=> b!276156 m!291599))

(push 1)

(assert (not b!276153))

(assert (not b!276155))

(assert (not start!26612))

(assert (not b!276156))

(assert (not b!276159))

(assert (not b!276158))

(check-sat)

(pop 1)

(push 1)

(check-sat)


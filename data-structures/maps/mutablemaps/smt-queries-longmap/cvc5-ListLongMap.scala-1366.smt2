; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26860 () Bool)

(assert start!26860)

(declare-fun b!278506 () Bool)

(declare-fun res!141975 () Bool)

(declare-fun e!177652 () Bool)

(assert (=> b!278506 (=> (not res!141975) (not e!177652))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!278506 (= res!141975 (validKeyInArray!0 k!2581))))

(declare-fun b!278507 () Bool)

(declare-fun e!177651 () Bool)

(assert (=> b!278507 (= e!177651 false)))

(declare-fun lt!138437 () Bool)

(declare-datatypes ((array!13853 0))(
  ( (array!13854 (arr!6574 (Array (_ BitVec 32) (_ BitVec 64))) (size!6926 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13853)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13853 (_ BitVec 32)) Bool)

(assert (=> b!278507 (= lt!138437 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!278508 () Bool)

(declare-fun res!141978 () Bool)

(assert (=> b!278508 (=> (not res!141978) (not e!177652))))

(declare-fun arrayContainsKey!0 (array!13853 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!278508 (= res!141978 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!278509 () Bool)

(assert (=> b!278509 (= e!177652 e!177651)))

(declare-fun res!141977 () Bool)

(assert (=> b!278509 (=> (not res!141977) (not e!177651))))

(declare-datatypes ((SeekEntryResult!1743 0))(
  ( (MissingZero!1743 (index!9142 (_ BitVec 32))) (Found!1743 (index!9143 (_ BitVec 32))) (Intermediate!1743 (undefined!2555 Bool) (index!9144 (_ BitVec 32)) (x!27365 (_ BitVec 32))) (Undefined!1743) (MissingVacant!1743 (index!9145 (_ BitVec 32))) )
))
(declare-fun lt!138436 () SeekEntryResult!1743)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!278509 (= res!141977 (or (= lt!138436 (MissingZero!1743 i!1267)) (= lt!138436 (MissingVacant!1743 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13853 (_ BitVec 32)) SeekEntryResult!1743)

(assert (=> b!278509 (= lt!138436 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun res!141974 () Bool)

(assert (=> start!26860 (=> (not res!141974) (not e!177652))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26860 (= res!141974 (validMask!0 mask!3868))))

(assert (=> start!26860 e!177652))

(declare-fun array_inv!4528 (array!13853) Bool)

(assert (=> start!26860 (array_inv!4528 a!3325)))

(assert (=> start!26860 true))

(declare-fun b!278510 () Bool)

(declare-fun res!141973 () Bool)

(assert (=> b!278510 (=> (not res!141973) (not e!177652))))

(declare-datatypes ((List!4403 0))(
  ( (Nil!4400) (Cons!4399 (h!5069 (_ BitVec 64)) (t!9493 List!4403)) )
))
(declare-fun arrayNoDuplicates!0 (array!13853 (_ BitVec 32) List!4403) Bool)

(assert (=> b!278510 (= res!141973 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4400))))

(declare-fun b!278511 () Bool)

(declare-fun res!141976 () Bool)

(assert (=> b!278511 (=> (not res!141976) (not e!177652))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!278511 (= res!141976 (and (= (size!6926 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6926 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6926 a!3325))))))

(assert (= (and start!26860 res!141974) b!278511))

(assert (= (and b!278511 res!141976) b!278506))

(assert (= (and b!278506 res!141975) b!278510))

(assert (= (and b!278510 res!141973) b!278508))

(assert (= (and b!278508 res!141978) b!278509))

(assert (= (and b!278509 res!141977) b!278507))

(declare-fun m!293593 () Bool)

(assert (=> b!278508 m!293593))

(declare-fun m!293595 () Bool)

(assert (=> b!278510 m!293595))

(declare-fun m!293597 () Bool)

(assert (=> start!26860 m!293597))

(declare-fun m!293599 () Bool)

(assert (=> start!26860 m!293599))

(declare-fun m!293601 () Bool)

(assert (=> b!278506 m!293601))

(declare-fun m!293603 () Bool)

(assert (=> b!278509 m!293603))

(declare-fun m!293605 () Bool)

(assert (=> b!278507 m!293605))

(push 1)

(assert (not b!278507))


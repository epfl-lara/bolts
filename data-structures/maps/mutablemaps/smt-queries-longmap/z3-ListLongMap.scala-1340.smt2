; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26610 () Bool)

(assert start!26610)

(declare-fun b!276132 () Bool)

(declare-fun res!140162 () Bool)

(declare-fun e!176457 () Bool)

(assert (=> b!276132 (=> (not res!140162) (not e!176457))))

(declare-datatypes ((array!13696 0))(
  ( (array!13697 (arr!6497 (Array (_ BitVec 32) (_ BitVec 64))) (size!6849 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13696)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13696 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!276132 (= res!140162 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!276133 () Bool)

(declare-fun e!176456 () Bool)

(assert (=> b!276133 (= e!176457 e!176456)))

(declare-fun res!140160 () Bool)

(assert (=> b!276133 (=> (not res!140160) (not e!176456))))

(declare-datatypes ((SeekEntryResult!1666 0))(
  ( (MissingZero!1666 (index!8834 (_ BitVec 32))) (Found!1666 (index!8835 (_ BitVec 32))) (Intermediate!1666 (undefined!2478 Bool) (index!8836 (_ BitVec 32)) (x!27071 (_ BitVec 32))) (Undefined!1666) (MissingVacant!1666 (index!8837 (_ BitVec 32))) )
))
(declare-fun lt!137582 () SeekEntryResult!1666)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!276133 (= res!140160 (or (= lt!137582 (MissingZero!1666 i!1267)) (= lt!137582 (MissingVacant!1666 i!1267))))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13696 (_ BitVec 32)) SeekEntryResult!1666)

(assert (=> b!276133 (= lt!137582 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!276134 () Bool)

(declare-fun res!140161 () Bool)

(assert (=> b!276134 (=> (not res!140161) (not e!176456))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13696 (_ BitVec 32)) Bool)

(assert (=> b!276134 (= res!140161 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!276135 () Bool)

(declare-fun res!140163 () Bool)

(assert (=> b!276135 (=> (not res!140163) (not e!176457))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!276135 (= res!140163 (validKeyInArray!0 k0!2581))))

(declare-fun res!140165 () Bool)

(assert (=> start!26610 (=> (not res!140165) (not e!176457))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26610 (= res!140165 (validMask!0 mask!3868))))

(assert (=> start!26610 e!176457))

(declare-fun array_inv!4451 (array!13696) Bool)

(assert (=> start!26610 (array_inv!4451 a!3325)))

(assert (=> start!26610 true))

(declare-fun b!276136 () Bool)

(declare-fun res!140164 () Bool)

(assert (=> b!276136 (=> (not res!140164) (not e!176457))))

(declare-datatypes ((List!4326 0))(
  ( (Nil!4323) (Cons!4322 (h!4989 (_ BitVec 64)) (t!9416 List!4326)) )
))
(declare-fun arrayNoDuplicates!0 (array!13696 (_ BitVec 32) List!4326) Bool)

(assert (=> b!276136 (= res!140164 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4323))))

(declare-fun b!276137 () Bool)

(declare-fun res!140166 () Bool)

(assert (=> b!276137 (=> (not res!140166) (not e!176457))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!276137 (= res!140166 (and (= (size!6849 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6849 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6849 a!3325))))))

(declare-fun b!276138 () Bool)

(assert (=> b!276138 (= e!176456 (bvslt (bvsub (size!6849 a!3325) startIndex!26) #b00000000000000000000000000000000))))

(assert (= (and start!26610 res!140165) b!276137))

(assert (= (and b!276137 res!140166) b!276135))

(assert (= (and b!276135 res!140163) b!276136))

(assert (= (and b!276136 res!140164) b!276132))

(assert (= (and b!276132 res!140162) b!276133))

(assert (= (and b!276133 res!140160) b!276134))

(assert (= (and b!276134 res!140161) b!276138))

(declare-fun m!291573 () Bool)

(assert (=> start!26610 m!291573))

(declare-fun m!291575 () Bool)

(assert (=> start!26610 m!291575))

(declare-fun m!291577 () Bool)

(assert (=> b!276136 m!291577))

(declare-fun m!291579 () Bool)

(assert (=> b!276134 m!291579))

(declare-fun m!291581 () Bool)

(assert (=> b!276135 m!291581))

(declare-fun m!291583 () Bool)

(assert (=> b!276133 m!291583))

(declare-fun m!291585 () Bool)

(assert (=> b!276132 m!291585))

(check-sat (not b!276135) (not b!276132) (not b!276133) (not b!276136) (not start!26610) (not b!276134))
(check-sat)

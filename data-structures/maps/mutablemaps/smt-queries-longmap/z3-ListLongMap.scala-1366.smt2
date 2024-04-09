; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26862 () Bool)

(assert start!26862)

(declare-fun b!278524 () Bool)

(declare-fun e!177659 () Bool)

(assert (=> b!278524 (= e!177659 false)))

(declare-fun lt!138442 () Bool)

(declare-datatypes ((array!13855 0))(
  ( (array!13856 (arr!6575 (Array (_ BitVec 32) (_ BitVec 64))) (size!6927 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13855)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13855 (_ BitVec 32)) Bool)

(assert (=> b!278524 (= lt!138442 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!278526 () Bool)

(declare-fun res!141992 () Bool)

(declare-fun e!177661 () Bool)

(assert (=> b!278526 (=> (not res!141992) (not e!177661))))

(declare-datatypes ((List!4404 0))(
  ( (Nil!4401) (Cons!4400 (h!5070 (_ BitVec 64)) (t!9494 List!4404)) )
))
(declare-fun arrayNoDuplicates!0 (array!13855 (_ BitVec 32) List!4404) Bool)

(assert (=> b!278526 (= res!141992 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4401))))

(declare-fun b!278527 () Bool)

(declare-fun res!141994 () Bool)

(assert (=> b!278527 (=> (not res!141994) (not e!177661))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13855 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!278527 (= res!141994 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!278528 () Bool)

(declare-fun res!141996 () Bool)

(assert (=> b!278528 (=> (not res!141996) (not e!177661))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!278528 (= res!141996 (and (= (size!6927 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6927 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6927 a!3325))))))

(declare-fun b!278529 () Bool)

(declare-fun res!141991 () Bool)

(assert (=> b!278529 (=> (not res!141991) (not e!177661))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!278529 (= res!141991 (validKeyInArray!0 k0!2581))))

(declare-fun b!278525 () Bool)

(assert (=> b!278525 (= e!177661 e!177659)))

(declare-fun res!141993 () Bool)

(assert (=> b!278525 (=> (not res!141993) (not e!177659))))

(declare-datatypes ((SeekEntryResult!1744 0))(
  ( (MissingZero!1744 (index!9146 (_ BitVec 32))) (Found!1744 (index!9147 (_ BitVec 32))) (Intermediate!1744 (undefined!2556 Bool) (index!9148 (_ BitVec 32)) (x!27366 (_ BitVec 32))) (Undefined!1744) (MissingVacant!1744 (index!9149 (_ BitVec 32))) )
))
(declare-fun lt!138443 () SeekEntryResult!1744)

(assert (=> b!278525 (= res!141993 (or (= lt!138443 (MissingZero!1744 i!1267)) (= lt!138443 (MissingVacant!1744 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13855 (_ BitVec 32)) SeekEntryResult!1744)

(assert (=> b!278525 (= lt!138443 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun res!141995 () Bool)

(assert (=> start!26862 (=> (not res!141995) (not e!177661))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26862 (= res!141995 (validMask!0 mask!3868))))

(assert (=> start!26862 e!177661))

(declare-fun array_inv!4529 (array!13855) Bool)

(assert (=> start!26862 (array_inv!4529 a!3325)))

(assert (=> start!26862 true))

(assert (= (and start!26862 res!141995) b!278528))

(assert (= (and b!278528 res!141996) b!278529))

(assert (= (and b!278529 res!141991) b!278526))

(assert (= (and b!278526 res!141992) b!278527))

(assert (= (and b!278527 res!141994) b!278525))

(assert (= (and b!278525 res!141993) b!278524))

(declare-fun m!293607 () Bool)

(assert (=> b!278527 m!293607))

(declare-fun m!293609 () Bool)

(assert (=> b!278525 m!293609))

(declare-fun m!293611 () Bool)

(assert (=> start!26862 m!293611))

(declare-fun m!293613 () Bool)

(assert (=> start!26862 m!293613))

(declare-fun m!293615 () Bool)

(assert (=> b!278524 m!293615))

(declare-fun m!293617 () Bool)

(assert (=> b!278526 m!293617))

(declare-fun m!293619 () Bool)

(assert (=> b!278529 m!293619))

(check-sat (not b!278525) (not b!278524) (not b!278529) (not b!278527) (not start!26862) (not b!278526))
(check-sat)

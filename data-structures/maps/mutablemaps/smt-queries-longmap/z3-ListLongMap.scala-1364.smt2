; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26754 () Bool)

(assert start!26754)

(declare-fun res!141651 () Bool)

(declare-fun e!177206 () Bool)

(assert (=> start!26754 (=> (not res!141651) (not e!177206))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26754 (= res!141651 (validMask!0 mask!3868))))

(assert (=> start!26754 e!177206))

(declare-datatypes ((array!13840 0))(
  ( (array!13841 (arr!6569 (Array (_ BitVec 32) (_ BitVec 64))) (size!6921 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13840)

(declare-fun array_inv!4523 (array!13840) Bool)

(assert (=> start!26754 (array_inv!4523 a!3325)))

(assert (=> start!26754 true))

(declare-fun b!277794 () Bool)

(declare-fun res!141654 () Bool)

(assert (=> b!277794 (=> (not res!141654) (not e!177206))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!277794 (= res!141654 (and (= (size!6921 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6921 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6921 a!3325))))))

(declare-fun b!277795 () Bool)

(declare-datatypes ((Unit!8784 0))(
  ( (Unit!8785) )
))
(declare-fun e!177208 () Unit!8784)

(declare-fun Unit!8786 () Unit!8784)

(assert (=> b!277795 (= e!177208 Unit!8786)))

(declare-fun b!277796 () Bool)

(declare-fun e!177204 () Bool)

(assert (=> b!277796 (= e!177206 e!177204)))

(declare-fun res!141657 () Bool)

(assert (=> b!277796 (=> (not res!141657) (not e!177204))))

(declare-datatypes ((SeekEntryResult!1738 0))(
  ( (MissingZero!1738 (index!9122 (_ BitVec 32))) (Found!1738 (index!9123 (_ BitVec 32))) (Intermediate!1738 (undefined!2550 Bool) (index!9124 (_ BitVec 32)) (x!27335 (_ BitVec 32))) (Undefined!1738) (MissingVacant!1738 (index!9125 (_ BitVec 32))) )
))
(declare-fun lt!138107 () SeekEntryResult!1738)

(assert (=> b!277796 (= res!141657 (or (= lt!138107 (MissingZero!1738 i!1267)) (= lt!138107 (MissingVacant!1738 i!1267))))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13840 (_ BitVec 32)) SeekEntryResult!1738)

(assert (=> b!277796 (= lt!138107 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!277797 () Bool)

(declare-fun res!141656 () Bool)

(assert (=> b!277797 (=> (not res!141656) (not e!177206))))

(declare-fun arrayContainsKey!0 (array!13840 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!277797 (= res!141656 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!277798 () Bool)

(declare-fun e!177207 () Bool)

(assert (=> b!277798 (= e!177204 e!177207)))

(declare-fun res!141653 () Bool)

(assert (=> b!277798 (=> (not res!141653) (not e!177207))))

(assert (=> b!277798 (= res!141653 (= startIndex!26 i!1267))))

(declare-fun lt!138110 () array!13840)

(assert (=> b!277798 (= lt!138110 (array!13841 (store (arr!6569 a!3325) i!1267 k0!2581) (size!6921 a!3325)))))

(declare-fun b!277799 () Bool)

(declare-fun res!141655 () Bool)

(assert (=> b!277799 (=> (not res!141655) (not e!177206))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!277799 (= res!141655 (validKeyInArray!0 k0!2581))))

(declare-fun b!277800 () Bool)

(declare-fun lt!138109 () Unit!8784)

(assert (=> b!277800 (= e!177208 lt!138109)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13840 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8784)

(assert (=> b!277800 (= lt!138109 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k0!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13840 (_ BitVec 32)) Bool)

(assert (=> b!277800 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!138110 mask!3868)))

(declare-fun b!277801 () Bool)

(declare-fun res!141650 () Bool)

(assert (=> b!277801 (=> (not res!141650) (not e!177206))))

(declare-datatypes ((List!4398 0))(
  ( (Nil!4395) (Cons!4394 (h!5061 (_ BitVec 64)) (t!9488 List!4398)) )
))
(declare-fun arrayNoDuplicates!0 (array!13840 (_ BitVec 32) List!4398) Bool)

(assert (=> b!277801 (= res!141650 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4395))))

(declare-fun b!277802 () Bool)

(declare-fun res!141652 () Bool)

(assert (=> b!277802 (=> (not res!141652) (not e!177204))))

(assert (=> b!277802 (= res!141652 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!277803 () Bool)

(assert (=> b!277803 (= e!177207 (not true))))

(assert (=> b!277803 (= (seekEntryOrOpen!0 k0!2581 lt!138110 mask!3868) (Found!1738 i!1267))))

(declare-fun lt!138108 () Unit!8784)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFinds!0 (array!13840 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!8784)

(assert (=> b!277803 (= lt!138108 (lemmaPutValidKeyAtRightPlaceThenFinds!0 a!3325 i!1267 k0!2581 mask!3868))))

(declare-fun lt!138106 () Unit!8784)

(assert (=> b!277803 (= lt!138106 e!177208)))

(declare-fun c!45623 () Bool)

(assert (=> b!277803 (= c!45623 (bvslt startIndex!26 (bvsub (size!6921 a!3325) #b00000000000000000000000000000001)))))

(assert (= (and start!26754 res!141651) b!277794))

(assert (= (and b!277794 res!141654) b!277799))

(assert (= (and b!277799 res!141655) b!277801))

(assert (= (and b!277801 res!141650) b!277797))

(assert (= (and b!277797 res!141656) b!277796))

(assert (= (and b!277796 res!141657) b!277802))

(assert (= (and b!277802 res!141652) b!277798))

(assert (= (and b!277798 res!141653) b!277803))

(assert (= (and b!277803 c!45623) b!277800))

(assert (= (and b!277803 (not c!45623)) b!277795))

(declare-fun m!292765 () Bool)

(assert (=> b!277797 m!292765))

(declare-fun m!292767 () Bool)

(assert (=> start!26754 m!292767))

(declare-fun m!292769 () Bool)

(assert (=> start!26754 m!292769))

(declare-fun m!292771 () Bool)

(assert (=> b!277799 m!292771))

(declare-fun m!292773 () Bool)

(assert (=> b!277796 m!292773))

(declare-fun m!292775 () Bool)

(assert (=> b!277802 m!292775))

(declare-fun m!292777 () Bool)

(assert (=> b!277801 m!292777))

(declare-fun m!292779 () Bool)

(assert (=> b!277798 m!292779))

(declare-fun m!292781 () Bool)

(assert (=> b!277800 m!292781))

(declare-fun m!292783 () Bool)

(assert (=> b!277800 m!292783))

(declare-fun m!292785 () Bool)

(assert (=> b!277803 m!292785))

(declare-fun m!292787 () Bool)

(assert (=> b!277803 m!292787))

(check-sat (not b!277801) (not b!277802) (not b!277797) (not b!277800) (not b!277796) (not start!26754) (not b!277803) (not b!277799))
(check-sat)

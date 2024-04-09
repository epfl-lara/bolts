; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26328 () Bool)

(assert start!26328)

(declare-fun b!272668 () Bool)

(declare-fun res!136701 () Bool)

(declare-fun e!174927 () Bool)

(assert (=> b!272668 (=> (not res!136701) (not e!174927))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!272668 (= res!136701 (validKeyInArray!0 k0!2581))))

(declare-fun b!272670 () Bool)

(declare-fun res!136697 () Bool)

(declare-fun e!174926 () Bool)

(assert (=> b!272670 (=> (not res!136697) (not e!174926))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!272670 (= res!136697 (not (= startIndex!26 i!1267)))))

(declare-fun b!272671 () Bool)

(assert (=> b!272671 (= e!174927 e!174926)))

(declare-fun res!136699 () Bool)

(assert (=> b!272671 (=> (not res!136699) (not e!174926))))

(declare-datatypes ((SeekEntryResult!1525 0))(
  ( (MissingZero!1525 (index!8270 (_ BitVec 32))) (Found!1525 (index!8271 (_ BitVec 32))) (Intermediate!1525 (undefined!2337 Bool) (index!8272 (_ BitVec 32)) (x!26554 (_ BitVec 32))) (Undefined!1525) (MissingVacant!1525 (index!8273 (_ BitVec 32))) )
))
(declare-fun lt!136085 () SeekEntryResult!1525)

(assert (=> b!272671 (= res!136699 (or (= lt!136085 (MissingZero!1525 i!1267)) (= lt!136085 (MissingVacant!1525 i!1267))))))

(declare-datatypes ((array!13414 0))(
  ( (array!13415 (arr!6356 (Array (_ BitVec 32) (_ BitVec 64))) (size!6708 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13414)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13414 (_ BitVec 32)) SeekEntryResult!1525)

(assert (=> b!272671 (= lt!136085 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!272672 () Bool)

(declare-fun res!136702 () Bool)

(assert (=> b!272672 (=> (not res!136702) (not e!174927))))

(declare-datatypes ((List!4185 0))(
  ( (Nil!4182) (Cons!4181 (h!4848 (_ BitVec 64)) (t!9275 List!4185)) )
))
(declare-fun arrayNoDuplicates!0 (array!13414 (_ BitVec 32) List!4185) Bool)

(assert (=> b!272672 (= res!136702 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4182))))

(declare-fun b!272673 () Bool)

(assert (=> b!272673 (= e!174926 (not true))))

(assert (=> b!272673 (arrayNoDuplicates!0 (array!13415 (store (arr!6356 a!3325) i!1267 k0!2581) (size!6708 a!3325)) #b00000000000000000000000000000000 Nil!4182)))

(declare-datatypes ((Unit!8516 0))(
  ( (Unit!8517) )
))
(declare-fun lt!136084 () Unit!8516)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13414 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4185) Unit!8516)

(assert (=> b!272673 (= lt!136084 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4182))))

(declare-fun b!272674 () Bool)

(declare-fun res!136703 () Bool)

(assert (=> b!272674 (=> (not res!136703) (not e!174926))))

(assert (=> b!272674 (= res!136703 (validKeyInArray!0 (select (arr!6356 a!3325) startIndex!26)))))

(declare-fun b!272675 () Bool)

(declare-fun res!136704 () Bool)

(assert (=> b!272675 (=> (not res!136704) (not e!174926))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13414 (_ BitVec 32)) Bool)

(assert (=> b!272675 (= res!136704 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!272676 () Bool)

(declare-fun res!136698 () Bool)

(assert (=> b!272676 (=> (not res!136698) (not e!174927))))

(assert (=> b!272676 (= res!136698 (and (= (size!6708 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6708 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6708 a!3325))))))

(declare-fun res!136696 () Bool)

(assert (=> start!26328 (=> (not res!136696) (not e!174927))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26328 (= res!136696 (validMask!0 mask!3868))))

(assert (=> start!26328 e!174927))

(declare-fun array_inv!4310 (array!13414) Bool)

(assert (=> start!26328 (array_inv!4310 a!3325)))

(assert (=> start!26328 true))

(declare-fun b!272669 () Bool)

(declare-fun res!136700 () Bool)

(assert (=> b!272669 (=> (not res!136700) (not e!174927))))

(declare-fun arrayContainsKey!0 (array!13414 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!272669 (= res!136700 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!26328 res!136696) b!272676))

(assert (= (and b!272676 res!136698) b!272668))

(assert (= (and b!272668 res!136701) b!272672))

(assert (= (and b!272672 res!136702) b!272669))

(assert (= (and b!272669 res!136700) b!272671))

(assert (= (and b!272671 res!136699) b!272675))

(assert (= (and b!272675 res!136704) b!272670))

(assert (= (and b!272670 res!136697) b!272674))

(assert (= (and b!272674 res!136703) b!272673))

(declare-fun m!287779 () Bool)

(assert (=> b!272671 m!287779))

(declare-fun m!287781 () Bool)

(assert (=> b!272669 m!287781))

(declare-fun m!287783 () Bool)

(assert (=> start!26328 m!287783))

(declare-fun m!287785 () Bool)

(assert (=> start!26328 m!287785))

(declare-fun m!287787 () Bool)

(assert (=> b!272674 m!287787))

(assert (=> b!272674 m!287787))

(declare-fun m!287789 () Bool)

(assert (=> b!272674 m!287789))

(declare-fun m!287791 () Bool)

(assert (=> b!272673 m!287791))

(declare-fun m!287793 () Bool)

(assert (=> b!272673 m!287793))

(declare-fun m!287795 () Bool)

(assert (=> b!272673 m!287795))

(declare-fun m!287797 () Bool)

(assert (=> b!272668 m!287797))

(declare-fun m!287799 () Bool)

(assert (=> b!272672 m!287799))

(declare-fun m!287801 () Bool)

(assert (=> b!272675 m!287801))

(check-sat (not b!272673) (not start!26328) (not b!272669) (not b!272674) (not b!272668) (not b!272671) (not b!272675) (not b!272672))
(check-sat)

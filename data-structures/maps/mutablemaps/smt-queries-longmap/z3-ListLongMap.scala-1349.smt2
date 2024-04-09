; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26664 () Bool)

(assert start!26664)

(declare-fun b!276631 () Bool)

(declare-fun e!176699 () Bool)

(assert (=> b!276631 (= e!176699 false)))

(declare-fun lt!137732 () Bool)

(declare-datatypes ((array!13750 0))(
  ( (array!13751 (arr!6524 (Array (_ BitVec 32) (_ BitVec 64))) (size!6876 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13750)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13750 (_ BitVec 32)) Bool)

(assert (=> b!276631 (= lt!137732 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!276632 () Bool)

(declare-fun res!140660 () Bool)

(declare-fun e!176700 () Bool)

(assert (=> b!276632 (=> (not res!140660) (not e!176700))))

(declare-datatypes ((List!4353 0))(
  ( (Nil!4350) (Cons!4349 (h!5016 (_ BitVec 64)) (t!9443 List!4353)) )
))
(declare-fun arrayNoDuplicates!0 (array!13750 (_ BitVec 32) List!4353) Bool)

(assert (=> b!276632 (= res!140660 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4350))))

(declare-fun b!276633 () Bool)

(declare-fun res!140662 () Bool)

(assert (=> b!276633 (=> (not res!140662) (not e!176700))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!276633 (= res!140662 (validKeyInArray!0 k0!2581))))

(declare-fun b!276634 () Bool)

(assert (=> b!276634 (= e!176700 e!176699)))

(declare-fun res!140659 () Bool)

(assert (=> b!276634 (=> (not res!140659) (not e!176699))))

(declare-datatypes ((SeekEntryResult!1693 0))(
  ( (MissingZero!1693 (index!8942 (_ BitVec 32))) (Found!1693 (index!8943 (_ BitVec 32))) (Intermediate!1693 (undefined!2505 Bool) (index!8944 (_ BitVec 32)) (x!27170 (_ BitVec 32))) (Undefined!1693) (MissingVacant!1693 (index!8945 (_ BitVec 32))) )
))
(declare-fun lt!137731 () SeekEntryResult!1693)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!276634 (= res!140659 (or (= lt!137731 (MissingZero!1693 i!1267)) (= lt!137731 (MissingVacant!1693 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13750 (_ BitVec 32)) SeekEntryResult!1693)

(assert (=> b!276634 (= lt!137731 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun res!140663 () Bool)

(assert (=> start!26664 (=> (not res!140663) (not e!176700))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26664 (= res!140663 (validMask!0 mask!3868))))

(assert (=> start!26664 e!176700))

(declare-fun array_inv!4478 (array!13750) Bool)

(assert (=> start!26664 (array_inv!4478 a!3325)))

(assert (=> start!26664 true))

(declare-fun b!276635 () Bool)

(declare-fun res!140664 () Bool)

(assert (=> b!276635 (=> (not res!140664) (not e!176700))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!276635 (= res!140664 (and (= (size!6876 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6876 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6876 a!3325))))))

(declare-fun b!276636 () Bool)

(declare-fun res!140661 () Bool)

(assert (=> b!276636 (=> (not res!140661) (not e!176700))))

(declare-fun arrayContainsKey!0 (array!13750 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!276636 (= res!140661 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!26664 res!140663) b!276635))

(assert (= (and b!276635 res!140664) b!276633))

(assert (= (and b!276633 res!140662) b!276632))

(assert (= (and b!276632 res!140660) b!276636))

(assert (= (and b!276636 res!140661) b!276634))

(assert (= (and b!276634 res!140659) b!276631))

(declare-fun m!291951 () Bool)

(assert (=> start!26664 m!291951))

(declare-fun m!291953 () Bool)

(assert (=> start!26664 m!291953))

(declare-fun m!291955 () Bool)

(assert (=> b!276634 m!291955))

(declare-fun m!291957 () Bool)

(assert (=> b!276631 m!291957))

(declare-fun m!291959 () Bool)

(assert (=> b!276636 m!291959))

(declare-fun m!291961 () Bool)

(assert (=> b!276633 m!291961))

(declare-fun m!291963 () Bool)

(assert (=> b!276632 m!291963))

(check-sat (not b!276631) (not b!276633) (not b!276632) (not b!276636) (not b!276634) (not start!26664))
(check-sat)

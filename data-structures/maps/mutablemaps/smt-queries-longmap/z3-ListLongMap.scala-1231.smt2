; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25956 () Bool)

(assert start!25956)

(declare-fun b!267788 () Bool)

(declare-fun res!132105 () Bool)

(declare-fun e!173103 () Bool)

(assert (=> b!267788 (=> (not res!132105) (not e!173103))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267788 (= res!132105 (validKeyInArray!0 k0!2581))))

(declare-fun b!267789 () Bool)

(declare-fun res!132108 () Bool)

(assert (=> b!267789 (=> (not res!132108) (not e!173103))))

(declare-datatypes ((array!13042 0))(
  ( (array!13043 (arr!6170 (Array (_ BitVec 32) (_ BitVec 64))) (size!6522 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13042)

(declare-datatypes ((List!3999 0))(
  ( (Nil!3996) (Cons!3995 (h!4662 (_ BitVec 64)) (t!9089 List!3999)) )
))
(declare-fun arrayNoDuplicates!0 (array!13042 (_ BitVec 32) List!3999) Bool)

(assert (=> b!267789 (= res!132108 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!3996))))

(declare-fun b!267790 () Bool)

(declare-fun res!132104 () Bool)

(assert (=> b!267790 (=> (not res!132104) (not e!173103))))

(declare-fun arrayContainsKey!0 (array!13042 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!267790 (= res!132104 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!267791 () Bool)

(assert (=> b!267791 (= e!173103 false)))

(declare-datatypes ((SeekEntryResult!1339 0))(
  ( (MissingZero!1339 (index!7526 (_ BitVec 32))) (Found!1339 (index!7527 (_ BitVec 32))) (Intermediate!1339 (undefined!2151 Bool) (index!7528 (_ BitVec 32)) (x!25872 (_ BitVec 32))) (Undefined!1339) (MissingVacant!1339 (index!7529 (_ BitVec 32))) )
))
(declare-fun lt!134765 () SeekEntryResult!1339)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13042 (_ BitVec 32)) SeekEntryResult!1339)

(assert (=> b!267791 (= lt!134765 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun res!132106 () Bool)

(assert (=> start!25956 (=> (not res!132106) (not e!173103))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25956 (= res!132106 (validMask!0 mask!3868))))

(assert (=> start!25956 e!173103))

(declare-fun array_inv!4124 (array!13042) Bool)

(assert (=> start!25956 (array_inv!4124 a!3325)))

(assert (=> start!25956 true))

(declare-fun b!267792 () Bool)

(declare-fun res!132107 () Bool)

(assert (=> b!267792 (=> (not res!132107) (not e!173103))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!267792 (= res!132107 (and (= (size!6522 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6522 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6522 a!3325))))))

(assert (= (and start!25956 res!132106) b!267792))

(assert (= (and b!267792 res!132107) b!267788))

(assert (= (and b!267788 res!132105) b!267789))

(assert (= (and b!267789 res!132108) b!267790))

(assert (= (and b!267790 res!132104) b!267791))

(declare-fun m!284101 () Bool)

(assert (=> b!267791 m!284101))

(declare-fun m!284103 () Bool)

(assert (=> b!267788 m!284103))

(declare-fun m!284105 () Bool)

(assert (=> b!267790 m!284105))

(declare-fun m!284107 () Bool)

(assert (=> b!267789 m!284107))

(declare-fun m!284109 () Bool)

(assert (=> start!25956 m!284109))

(declare-fun m!284111 () Bool)

(assert (=> start!25956 m!284111))

(check-sat (not b!267788) (not b!267790) (not start!25956) (not b!267791) (not b!267789))

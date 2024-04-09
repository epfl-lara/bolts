; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26262 () Bool)

(assert start!26262)

(declare-fun b!271777 () Bool)

(declare-fun res!135812 () Bool)

(declare-fun e!174630 () Bool)

(assert (=> b!271777 (=> (not res!135812) (not e!174630))))

(declare-datatypes ((array!13348 0))(
  ( (array!13349 (arr!6323 (Array (_ BitVec 32) (_ BitVec 64))) (size!6675 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13348)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!271777 (= res!135812 (and (= (size!6675 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6675 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6675 a!3325))))))

(declare-fun b!271778 () Bool)

(declare-fun e!174629 () Bool)

(assert (=> b!271778 (= e!174630 e!174629)))

(declare-fun res!135809 () Bool)

(assert (=> b!271778 (=> (not res!135809) (not e!174629))))

(declare-datatypes ((SeekEntryResult!1492 0))(
  ( (MissingZero!1492 (index!8138 (_ BitVec 32))) (Found!1492 (index!8139 (_ BitVec 32))) (Intermediate!1492 (undefined!2304 Bool) (index!8140 (_ BitVec 32)) (x!26433 (_ BitVec 32))) (Undefined!1492) (MissingVacant!1492 (index!8141 (_ BitVec 32))) )
))
(declare-fun lt!135887 () SeekEntryResult!1492)

(assert (=> b!271778 (= res!135809 (or (= lt!135887 (MissingZero!1492 i!1267)) (= lt!135887 (MissingVacant!1492 i!1267))))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13348 (_ BitVec 32)) SeekEntryResult!1492)

(assert (=> b!271778 (= lt!135887 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!271779 () Bool)

(declare-fun res!135807 () Bool)

(assert (=> b!271779 (=> (not res!135807) (not e!174630))))

(declare-fun arrayContainsKey!0 (array!13348 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!271779 (= res!135807 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!271780 () Bool)

(declare-fun res!135805 () Bool)

(assert (=> b!271780 (=> (not res!135805) (not e!174630))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!271780 (= res!135805 (validKeyInArray!0 k0!2581))))

(declare-fun b!271781 () Bool)

(declare-fun res!135813 () Bool)

(assert (=> b!271781 (=> (not res!135813) (not e!174629))))

(assert (=> b!271781 (= res!135813 (validKeyInArray!0 (select (arr!6323 a!3325) startIndex!26)))))

(declare-fun b!271782 () Bool)

(declare-fun res!135808 () Bool)

(assert (=> b!271782 (=> (not res!135808) (not e!174629))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13348 (_ BitVec 32)) Bool)

(assert (=> b!271782 (= res!135808 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!135811 () Bool)

(assert (=> start!26262 (=> (not res!135811) (not e!174630))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26262 (= res!135811 (validMask!0 mask!3868))))

(assert (=> start!26262 e!174630))

(declare-fun array_inv!4277 (array!13348) Bool)

(assert (=> start!26262 (array_inv!4277 a!3325)))

(assert (=> start!26262 true))

(declare-fun b!271783 () Bool)

(assert (=> b!271783 (= e!174629 (not true))))

(declare-datatypes ((List!4152 0))(
  ( (Nil!4149) (Cons!4148 (h!4815 (_ BitVec 64)) (t!9242 List!4152)) )
))
(declare-fun arrayNoDuplicates!0 (array!13348 (_ BitVec 32) List!4152) Bool)

(assert (=> b!271783 (arrayNoDuplicates!0 (array!13349 (store (arr!6323 a!3325) i!1267 k0!2581) (size!6675 a!3325)) #b00000000000000000000000000000000 Nil!4149)))

(declare-datatypes ((Unit!8450 0))(
  ( (Unit!8451) )
))
(declare-fun lt!135886 () Unit!8450)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13348 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4152) Unit!8450)

(assert (=> b!271783 (= lt!135886 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4149))))

(declare-fun b!271784 () Bool)

(declare-fun res!135806 () Bool)

(assert (=> b!271784 (=> (not res!135806) (not e!174630))))

(assert (=> b!271784 (= res!135806 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4149))))

(declare-fun b!271785 () Bool)

(declare-fun res!135810 () Bool)

(assert (=> b!271785 (=> (not res!135810) (not e!174629))))

(assert (=> b!271785 (= res!135810 (not (= startIndex!26 i!1267)))))

(assert (= (and start!26262 res!135811) b!271777))

(assert (= (and b!271777 res!135812) b!271780))

(assert (= (and b!271780 res!135805) b!271784))

(assert (= (and b!271784 res!135806) b!271779))

(assert (= (and b!271779 res!135807) b!271778))

(assert (= (and b!271778 res!135809) b!271782))

(assert (= (and b!271782 res!135808) b!271785))

(assert (= (and b!271785 res!135810) b!271781))

(assert (= (and b!271781 res!135813) b!271783))

(declare-fun m!286987 () Bool)

(assert (=> b!271783 m!286987))

(declare-fun m!286989 () Bool)

(assert (=> b!271783 m!286989))

(declare-fun m!286991 () Bool)

(assert (=> b!271783 m!286991))

(declare-fun m!286993 () Bool)

(assert (=> b!271778 m!286993))

(declare-fun m!286995 () Bool)

(assert (=> b!271784 m!286995))

(declare-fun m!286997 () Bool)

(assert (=> b!271782 m!286997))

(declare-fun m!286999 () Bool)

(assert (=> start!26262 m!286999))

(declare-fun m!287001 () Bool)

(assert (=> start!26262 m!287001))

(declare-fun m!287003 () Bool)

(assert (=> b!271781 m!287003))

(assert (=> b!271781 m!287003))

(declare-fun m!287005 () Bool)

(assert (=> b!271781 m!287005))

(declare-fun m!287007 () Bool)

(assert (=> b!271779 m!287007))

(declare-fun m!287009 () Bool)

(assert (=> b!271780 m!287009))

(check-sat (not start!26262) (not b!271779) (not b!271781) (not b!271783) (not b!271782) (not b!271784) (not b!271780) (not b!271778))
(check-sat)

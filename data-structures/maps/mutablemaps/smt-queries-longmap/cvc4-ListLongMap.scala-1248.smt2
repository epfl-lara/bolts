; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26060 () Bool)

(assert start!26060)

(declare-fun res!132996 () Bool)

(declare-fun e!173506 () Bool)

(assert (=> start!26060 (=> (not res!132996) (not e!173506))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26060 (= res!132996 (validMask!0 mask!3868))))

(assert (=> start!26060 e!173506))

(declare-datatypes ((array!13146 0))(
  ( (array!13147 (arr!6222 (Array (_ BitVec 32) (_ BitVec 64))) (size!6574 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13146)

(declare-fun array_inv!4176 (array!13146) Bool)

(assert (=> start!26060 (array_inv!4176 a!3325)))

(assert (=> start!26060 true))

(declare-fun b!268675 () Bool)

(declare-fun e!173504 () Bool)

(assert (=> b!268675 (= e!173504 false)))

(declare-fun lt!134993 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13146 (_ BitVec 32)) Bool)

(assert (=> b!268675 (= lt!134993 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!268676 () Bool)

(declare-fun res!132991 () Bool)

(assert (=> b!268676 (=> (not res!132991) (not e!173506))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268676 (= res!132991 (validKeyInArray!0 k!2581))))

(declare-fun b!268677 () Bool)

(declare-fun res!132994 () Bool)

(assert (=> b!268677 (=> (not res!132994) (not e!173506))))

(declare-fun arrayContainsKey!0 (array!13146 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268677 (= res!132994 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!268678 () Bool)

(assert (=> b!268678 (= e!173506 e!173504)))

(declare-fun res!132995 () Bool)

(assert (=> b!268678 (=> (not res!132995) (not e!173504))))

(declare-datatypes ((SeekEntryResult!1391 0))(
  ( (MissingZero!1391 (index!7734 (_ BitVec 32))) (Found!1391 (index!7735 (_ BitVec 32))) (Intermediate!1391 (undefined!2203 Bool) (index!7736 (_ BitVec 32)) (x!26060 (_ BitVec 32))) (Undefined!1391) (MissingVacant!1391 (index!7737 (_ BitVec 32))) )
))
(declare-fun lt!134992 () SeekEntryResult!1391)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!268678 (= res!132995 (or (= lt!134992 (MissingZero!1391 i!1267)) (= lt!134992 (MissingVacant!1391 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13146 (_ BitVec 32)) SeekEntryResult!1391)

(assert (=> b!268678 (= lt!134992 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!268679 () Bool)

(declare-fun res!132993 () Bool)

(assert (=> b!268679 (=> (not res!132993) (not e!173506))))

(declare-datatypes ((List!4051 0))(
  ( (Nil!4048) (Cons!4047 (h!4714 (_ BitVec 64)) (t!9141 List!4051)) )
))
(declare-fun arrayNoDuplicates!0 (array!13146 (_ BitVec 32) List!4051) Bool)

(assert (=> b!268679 (= res!132993 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4048))))

(declare-fun b!268680 () Bool)

(declare-fun res!132992 () Bool)

(assert (=> b!268680 (=> (not res!132992) (not e!173506))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!268680 (= res!132992 (and (= (size!6574 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6574 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6574 a!3325))))))

(assert (= (and start!26060 res!132996) b!268680))

(assert (= (and b!268680 res!132992) b!268676))

(assert (= (and b!268676 res!132991) b!268679))

(assert (= (and b!268679 res!132993) b!268677))

(assert (= (and b!268677 res!132994) b!268678))

(assert (= (and b!268678 res!132995) b!268675))

(declare-fun m!284783 () Bool)

(assert (=> start!26060 m!284783))

(declare-fun m!284785 () Bool)

(assert (=> start!26060 m!284785))

(declare-fun m!284787 () Bool)

(assert (=> b!268676 m!284787))

(declare-fun m!284789 () Bool)

(assert (=> b!268678 m!284789))

(declare-fun m!284791 () Bool)

(assert (=> b!268675 m!284791))

(declare-fun m!284793 () Bool)

(assert (=> b!268677 m!284793))

(declare-fun m!284795 () Bool)

(assert (=> b!268679 m!284795))

(push 1)

(assert (not start!26060))

(assert (not b!268677))

(assert (not b!268675))

(assert (not b!268676))

(assert (not b!268679))

(assert (not b!268678))


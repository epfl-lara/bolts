; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26680 () Bool)

(assert start!26680)

(declare-fun b!276775 () Bool)

(declare-fun e!176771 () Bool)

(assert (=> b!276775 (= e!176771 false)))

(declare-fun lt!137779 () Bool)

(declare-datatypes ((array!13766 0))(
  ( (array!13767 (arr!6532 (Array (_ BitVec 32) (_ BitVec 64))) (size!6884 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13766)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13766 (_ BitVec 32)) Bool)

(assert (=> b!276775 (= lt!137779 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!140805 () Bool)

(declare-fun e!176772 () Bool)

(assert (=> start!26680 (=> (not res!140805) (not e!176772))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26680 (= res!140805 (validMask!0 mask!3868))))

(assert (=> start!26680 e!176772))

(declare-fun array_inv!4486 (array!13766) Bool)

(assert (=> start!26680 (array_inv!4486 a!3325)))

(assert (=> start!26680 true))

(declare-fun b!276776 () Bool)

(assert (=> b!276776 (= e!176772 e!176771)))

(declare-fun res!140806 () Bool)

(assert (=> b!276776 (=> (not res!140806) (not e!176771))))

(declare-datatypes ((SeekEntryResult!1701 0))(
  ( (MissingZero!1701 (index!8974 (_ BitVec 32))) (Found!1701 (index!8975 (_ BitVec 32))) (Intermediate!1701 (undefined!2513 Bool) (index!8976 (_ BitVec 32)) (x!27202 (_ BitVec 32))) (Undefined!1701) (MissingVacant!1701 (index!8977 (_ BitVec 32))) )
))
(declare-fun lt!137780 () SeekEntryResult!1701)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!276776 (= res!140806 (or (= lt!137780 (MissingZero!1701 i!1267)) (= lt!137780 (MissingVacant!1701 i!1267))))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13766 (_ BitVec 32)) SeekEntryResult!1701)

(assert (=> b!276776 (= lt!137780 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!276777 () Bool)

(declare-fun res!140807 () Bool)

(assert (=> b!276777 (=> (not res!140807) (not e!176772))))

(declare-fun arrayContainsKey!0 (array!13766 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!276777 (= res!140807 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!276778 () Bool)

(declare-fun res!140804 () Bool)

(assert (=> b!276778 (=> (not res!140804) (not e!176772))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!276778 (= res!140804 (validKeyInArray!0 k!2581))))

(declare-fun b!276779 () Bool)

(declare-fun res!140803 () Bool)

(assert (=> b!276779 (=> (not res!140803) (not e!176772))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!276779 (= res!140803 (and (= (size!6884 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6884 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6884 a!3325))))))

(declare-fun b!276780 () Bool)

(declare-fun res!140808 () Bool)

(assert (=> b!276780 (=> (not res!140808) (not e!176772))))

(declare-datatypes ((List!4361 0))(
  ( (Nil!4358) (Cons!4357 (h!5024 (_ BitVec 64)) (t!9451 List!4361)) )
))
(declare-fun arrayNoDuplicates!0 (array!13766 (_ BitVec 32) List!4361) Bool)

(assert (=> b!276780 (= res!140808 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4358))))

(assert (= (and start!26680 res!140805) b!276779))

(assert (= (and b!276779 res!140803) b!276778))

(assert (= (and b!276778 res!140804) b!276780))

(assert (= (and b!276780 res!140808) b!276777))

(assert (= (and b!276777 res!140807) b!276776))

(assert (= (and b!276776 res!140806) b!276775))

(declare-fun m!292063 () Bool)

(assert (=> b!276780 m!292063))

(declare-fun m!292065 () Bool)

(assert (=> b!276778 m!292065))

(declare-fun m!292067 () Bool)

(assert (=> b!276775 m!292067))

(declare-fun m!292069 () Bool)

(assert (=> b!276776 m!292069))

(declare-fun m!292071 () Bool)

(assert (=> b!276777 m!292071))

(declare-fun m!292073 () Bool)

(assert (=> start!26680 m!292073))

(declare-fun m!292075 () Bool)

(assert (=> start!26680 m!292075))

(push 1)

(assert (not b!276778))

(assert (not start!26680))

(assert (not b!276776))

(assert (not b!276775))

(assert (not b!276777))

(assert (not b!276780))

(check-sat)

(pop 1)


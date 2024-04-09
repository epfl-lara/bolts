; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25990 () Bool)

(assert start!25990)

(declare-fun b!268052 () Bool)

(declare-fun res!132369 () Bool)

(declare-fun e!173205 () Bool)

(assert (=> b!268052 (=> (not res!132369) (not e!173205))))

(declare-datatypes ((array!13076 0))(
  ( (array!13077 (arr!6187 (Array (_ BitVec 32) (_ BitVec 64))) (size!6539 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13076)

(declare-datatypes ((List!4016 0))(
  ( (Nil!4013) (Cons!4012 (h!4679 (_ BitVec 64)) (t!9106 List!4016)) )
))
(declare-fun arrayNoDuplicates!0 (array!13076 (_ BitVec 32) List!4016) Bool)

(assert (=> b!268052 (= res!132369 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4013))))

(declare-fun b!268053 () Bool)

(assert (=> b!268053 (= e!173205 false)))

(declare-fun k!2581 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!1356 0))(
  ( (MissingZero!1356 (index!7594 (_ BitVec 32))) (Found!1356 (index!7595 (_ BitVec 32))) (Intermediate!1356 (undefined!2168 Bool) (index!7596 (_ BitVec 32)) (x!25937 (_ BitVec 32))) (Undefined!1356) (MissingVacant!1356 (index!7597 (_ BitVec 32))) )
))
(declare-fun lt!134807 () SeekEntryResult!1356)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13076 (_ BitVec 32)) SeekEntryResult!1356)

(assert (=> b!268053 (= lt!134807 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!268054 () Bool)

(declare-fun res!132372 () Bool)

(assert (=> b!268054 (=> (not res!132372) (not e!173205))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268054 (= res!132372 (validKeyInArray!0 k!2581))))

(declare-fun res!132368 () Bool)

(assert (=> start!25990 (=> (not res!132368) (not e!173205))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25990 (= res!132368 (validMask!0 mask!3868))))

(assert (=> start!25990 e!173205))

(declare-fun array_inv!4141 (array!13076) Bool)

(assert (=> start!25990 (array_inv!4141 a!3325)))

(assert (=> start!25990 true))

(declare-fun b!268055 () Bool)

(declare-fun res!132371 () Bool)

(assert (=> b!268055 (=> (not res!132371) (not e!173205))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!268055 (= res!132371 (and (= (size!6539 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6539 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6539 a!3325))))))

(declare-fun b!268056 () Bool)

(declare-fun res!132370 () Bool)

(assert (=> b!268056 (=> (not res!132370) (not e!173205))))

(declare-fun arrayContainsKey!0 (array!13076 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268056 (= res!132370 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!25990 res!132368) b!268055))

(assert (= (and b!268055 res!132371) b!268054))

(assert (= (and b!268054 res!132372) b!268052))

(assert (= (and b!268052 res!132369) b!268056))

(assert (= (and b!268056 res!132370) b!268053))

(declare-fun m!284305 () Bool)

(assert (=> b!268052 m!284305))

(declare-fun m!284307 () Bool)

(assert (=> start!25990 m!284307))

(declare-fun m!284309 () Bool)

(assert (=> start!25990 m!284309))

(declare-fun m!284311 () Bool)

(assert (=> b!268054 m!284311))

(declare-fun m!284313 () Bool)

(assert (=> b!268053 m!284313))

(declare-fun m!284315 () Bool)

(assert (=> b!268056 m!284315))

(push 1)

(assert (not b!268056))

(assert (not b!268052))

(assert (not start!25990))

(assert (not b!268054))

(assert (not b!268053))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


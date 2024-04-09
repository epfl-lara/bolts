; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25988 () Bool)

(assert start!25988)

(declare-fun res!132354 () Bool)

(declare-fun e!173200 () Bool)

(assert (=> start!25988 (=> (not res!132354) (not e!173200))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25988 (= res!132354 (validMask!0 mask!3868))))

(assert (=> start!25988 e!173200))

(declare-datatypes ((array!13074 0))(
  ( (array!13075 (arr!6186 (Array (_ BitVec 32) (_ BitVec 64))) (size!6538 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13074)

(declare-fun array_inv!4140 (array!13074) Bool)

(assert (=> start!25988 (array_inv!4140 a!3325)))

(assert (=> start!25988 true))

(declare-fun b!268037 () Bool)

(declare-fun res!132355 () Bool)

(assert (=> b!268037 (=> (not res!132355) (not e!173200))))

(declare-datatypes ((List!4015 0))(
  ( (Nil!4012) (Cons!4011 (h!4678 (_ BitVec 64)) (t!9105 List!4015)) )
))
(declare-fun arrayNoDuplicates!0 (array!13074 (_ BitVec 32) List!4015) Bool)

(assert (=> b!268037 (= res!132355 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4012))))

(declare-fun b!268038 () Bool)

(declare-fun res!132357 () Bool)

(assert (=> b!268038 (=> (not res!132357) (not e!173200))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268038 (= res!132357 (validKeyInArray!0 k!2581))))

(declare-fun b!268039 () Bool)

(assert (=> b!268039 (= e!173200 false)))

(declare-datatypes ((SeekEntryResult!1355 0))(
  ( (MissingZero!1355 (index!7590 (_ BitVec 32))) (Found!1355 (index!7591 (_ BitVec 32))) (Intermediate!1355 (undefined!2167 Bool) (index!7592 (_ BitVec 32)) (x!25928 (_ BitVec 32))) (Undefined!1355) (MissingVacant!1355 (index!7593 (_ BitVec 32))) )
))
(declare-fun lt!134804 () SeekEntryResult!1355)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13074 (_ BitVec 32)) SeekEntryResult!1355)

(assert (=> b!268039 (= lt!134804 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!268040 () Bool)

(declare-fun res!132353 () Bool)

(assert (=> b!268040 (=> (not res!132353) (not e!173200))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!268040 (= res!132353 (and (= (size!6538 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6538 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6538 a!3325))))))

(declare-fun b!268041 () Bool)

(declare-fun res!132356 () Bool)

(assert (=> b!268041 (=> (not res!132356) (not e!173200))))

(declare-fun arrayContainsKey!0 (array!13074 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268041 (= res!132356 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!25988 res!132354) b!268040))

(assert (= (and b!268040 res!132353) b!268038))

(assert (= (and b!268038 res!132357) b!268037))

(assert (= (and b!268037 res!132355) b!268041))

(assert (= (and b!268041 res!132356) b!268039))

(declare-fun m!284293 () Bool)

(assert (=> start!25988 m!284293))

(declare-fun m!284295 () Bool)

(assert (=> start!25988 m!284295))

(declare-fun m!284297 () Bool)

(assert (=> b!268039 m!284297))

(declare-fun m!284299 () Bool)

(assert (=> b!268038 m!284299))

(declare-fun m!284301 () Bool)

(assert (=> b!268041 m!284301))

(declare-fun m!284303 () Bool)

(assert (=> b!268037 m!284303))

(push 1)

(assert (not b!268037))

(assert (not start!25988))

(assert (not b!268038))

(assert (not b!268039))

(assert (not b!268041))

(check-sat)


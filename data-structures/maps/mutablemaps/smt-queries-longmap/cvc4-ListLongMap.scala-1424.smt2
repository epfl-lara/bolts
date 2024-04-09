; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27584 () Bool)

(assert start!27584)

(declare-fun b!284836 () Bool)

(declare-fun e!180632 () Bool)

(declare-fun e!180633 () Bool)

(assert (=> b!284836 (= e!180632 e!180633)))

(declare-fun res!147387 () Bool)

(assert (=> b!284836 (=> (not res!147387) (not e!180633))))

(declare-datatypes ((SeekEntryResult!1919 0))(
  ( (MissingZero!1919 (index!9846 (_ BitVec 32))) (Found!1919 (index!9847 (_ BitVec 32))) (Intermediate!1919 (undefined!2731 Bool) (index!9848 (_ BitVec 32)) (x!28014 (_ BitVec 32))) (Undefined!1919) (MissingVacant!1919 (index!9849 (_ BitVec 32))) )
))
(declare-fun lt!140671 () SeekEntryResult!1919)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!284836 (= res!147387 (or (= lt!140671 (MissingZero!1919 i!1267)) (= lt!140671 (MissingVacant!1919 i!1267))))))

(declare-datatypes ((array!14223 0))(
  ( (array!14224 (arr!6750 (Array (_ BitVec 32) (_ BitVec 64))) (size!7102 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14223)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14223 (_ BitVec 32)) SeekEntryResult!1919)

(assert (=> b!284836 (= lt!140671 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!284837 () Bool)

(declare-fun res!147384 () Bool)

(assert (=> b!284837 (=> (not res!147384) (not e!180632))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!284837 (= res!147384 (and (= (size!7102 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7102 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7102 a!3325))))))

(declare-fun res!147383 () Bool)

(assert (=> start!27584 (=> (not res!147383) (not e!180632))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27584 (= res!147383 (validMask!0 mask!3868))))

(assert (=> start!27584 e!180632))

(declare-fun array_inv!4704 (array!14223) Bool)

(assert (=> start!27584 (array_inv!4704 a!3325)))

(assert (=> start!27584 true))

(declare-fun b!284838 () Bool)

(declare-fun res!147382 () Bool)

(assert (=> b!284838 (=> (not res!147382) (not e!180632))))

(declare-datatypes ((List!4579 0))(
  ( (Nil!4576) (Cons!4575 (h!5248 (_ BitVec 64)) (t!9669 List!4579)) )
))
(declare-fun arrayNoDuplicates!0 (array!14223 (_ BitVec 32) List!4579) Bool)

(assert (=> b!284838 (= res!147382 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4576))))

(declare-fun b!284839 () Bool)

(assert (=> b!284839 (= e!180633 false)))

(declare-fun lt!140672 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14223 (_ BitVec 32)) Bool)

(assert (=> b!284839 (= lt!140672 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!284840 () Bool)

(declare-fun res!147386 () Bool)

(assert (=> b!284840 (=> (not res!147386) (not e!180632))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!284840 (= res!147386 (validKeyInArray!0 k!2581))))

(declare-fun b!284841 () Bool)

(declare-fun res!147385 () Bool)

(assert (=> b!284841 (=> (not res!147385) (not e!180632))))

(declare-fun arrayContainsKey!0 (array!14223 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!284841 (= res!147385 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!27584 res!147383) b!284837))

(assert (= (and b!284837 res!147384) b!284840))

(assert (= (and b!284840 res!147386) b!284838))

(assert (= (and b!284838 res!147382) b!284841))

(assert (= (and b!284841 res!147385) b!284836))

(assert (= (and b!284836 res!147387) b!284839))

(declare-fun m!299795 () Bool)

(assert (=> b!284838 m!299795))

(declare-fun m!299797 () Bool)

(assert (=> b!284839 m!299797))

(declare-fun m!299799 () Bool)

(assert (=> b!284836 m!299799))

(declare-fun m!299801 () Bool)

(assert (=> b!284840 m!299801))

(declare-fun m!299803 () Bool)

(assert (=> start!27584 m!299803))

(declare-fun m!299805 () Bool)

(assert (=> start!27584 m!299805))

(declare-fun m!299807 () Bool)

(assert (=> b!284841 m!299807))

(push 1)

(assert (not b!284836))

(assert (not b!284840))

(assert (not b!284839))

(assert (not b!284841))

(assert (not start!27584))

(assert (not b!284838))

(check-sat)


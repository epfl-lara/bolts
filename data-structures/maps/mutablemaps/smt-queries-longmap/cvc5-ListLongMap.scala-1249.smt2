; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26062 () Bool)

(assert start!26062)

(declare-fun b!268693 () Bool)

(declare-fun res!133013 () Bool)

(declare-fun e!173513 () Bool)

(assert (=> b!268693 (=> (not res!133013) (not e!173513))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-datatypes ((array!13148 0))(
  ( (array!13149 (arr!6223 (Array (_ BitVec 32) (_ BitVec 64))) (size!6575 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13148)

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!268693 (= res!133013 (and (= (size!6575 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6575 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6575 a!3325))))))

(declare-fun b!268694 () Bool)

(declare-fun res!133010 () Bool)

(assert (=> b!268694 (=> (not res!133010) (not e!173513))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13148 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268694 (= res!133010 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!268695 () Bool)

(declare-fun e!173514 () Bool)

(assert (=> b!268695 (= e!173514 false)))

(declare-fun lt!134999 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13148 (_ BitVec 32)) Bool)

(assert (=> b!268695 (= lt!134999 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!133012 () Bool)

(assert (=> start!26062 (=> (not res!133012) (not e!173513))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26062 (= res!133012 (validMask!0 mask!3868))))

(assert (=> start!26062 e!173513))

(declare-fun array_inv!4177 (array!13148) Bool)

(assert (=> start!26062 (array_inv!4177 a!3325)))

(assert (=> start!26062 true))

(declare-fun b!268696 () Bool)

(declare-fun res!133011 () Bool)

(assert (=> b!268696 (=> (not res!133011) (not e!173513))))

(declare-datatypes ((List!4052 0))(
  ( (Nil!4049) (Cons!4048 (h!4715 (_ BitVec 64)) (t!9142 List!4052)) )
))
(declare-fun arrayNoDuplicates!0 (array!13148 (_ BitVec 32) List!4052) Bool)

(assert (=> b!268696 (= res!133011 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4049))))

(declare-fun b!268697 () Bool)

(assert (=> b!268697 (= e!173513 e!173514)))

(declare-fun res!133009 () Bool)

(assert (=> b!268697 (=> (not res!133009) (not e!173514))))

(declare-datatypes ((SeekEntryResult!1392 0))(
  ( (MissingZero!1392 (index!7738 (_ BitVec 32))) (Found!1392 (index!7739 (_ BitVec 32))) (Intermediate!1392 (undefined!2204 Bool) (index!7740 (_ BitVec 32)) (x!26069 (_ BitVec 32))) (Undefined!1392) (MissingVacant!1392 (index!7741 (_ BitVec 32))) )
))
(declare-fun lt!134998 () SeekEntryResult!1392)

(assert (=> b!268697 (= res!133009 (or (= lt!134998 (MissingZero!1392 i!1267)) (= lt!134998 (MissingVacant!1392 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13148 (_ BitVec 32)) SeekEntryResult!1392)

(assert (=> b!268697 (= lt!134998 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!268698 () Bool)

(declare-fun res!133014 () Bool)

(assert (=> b!268698 (=> (not res!133014) (not e!173513))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268698 (= res!133014 (validKeyInArray!0 k!2581))))

(assert (= (and start!26062 res!133012) b!268693))

(assert (= (and b!268693 res!133013) b!268698))

(assert (= (and b!268698 res!133014) b!268696))

(assert (= (and b!268696 res!133011) b!268694))

(assert (= (and b!268694 res!133010) b!268697))

(assert (= (and b!268697 res!133009) b!268695))

(declare-fun m!284797 () Bool)

(assert (=> b!268695 m!284797))

(declare-fun m!284799 () Bool)

(assert (=> b!268696 m!284799))

(declare-fun m!284801 () Bool)

(assert (=> b!268697 m!284801))

(declare-fun m!284803 () Bool)

(assert (=> b!268694 m!284803))

(declare-fun m!284805 () Bool)

(assert (=> start!26062 m!284805))

(declare-fun m!284807 () Bool)

(assert (=> start!26062 m!284807))

(declare-fun m!284809 () Bool)

(assert (=> b!268698 m!284809))

(push 1)

(assert (not start!26062))


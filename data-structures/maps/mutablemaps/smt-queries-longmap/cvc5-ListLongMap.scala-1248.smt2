; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26056 () Bool)

(assert start!26056)

(declare-fun b!268639 () Bool)

(declare-fun res!132958 () Bool)

(declare-fun e!173488 () Bool)

(assert (=> b!268639 (=> (not res!132958) (not e!173488))))

(declare-datatypes ((array!13142 0))(
  ( (array!13143 (arr!6220 (Array (_ BitVec 32) (_ BitVec 64))) (size!6572 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13142)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13142 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268639 (= res!132958 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!268640 () Bool)

(declare-fun res!132957 () Bool)

(assert (=> b!268640 (=> (not res!132957) (not e!173488))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!268640 (= res!132957 (and (= (size!6572 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6572 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6572 a!3325))))))

(declare-fun res!132955 () Bool)

(assert (=> start!26056 (=> (not res!132955) (not e!173488))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26056 (= res!132955 (validMask!0 mask!3868))))

(assert (=> start!26056 e!173488))

(declare-fun array_inv!4174 (array!13142) Bool)

(assert (=> start!26056 (array_inv!4174 a!3325)))

(assert (=> start!26056 true))

(declare-fun b!268641 () Bool)

(declare-fun e!173486 () Bool)

(assert (=> b!268641 (= e!173488 e!173486)))

(declare-fun res!132959 () Bool)

(assert (=> b!268641 (=> (not res!132959) (not e!173486))))

(declare-datatypes ((SeekEntryResult!1389 0))(
  ( (MissingZero!1389 (index!7726 (_ BitVec 32))) (Found!1389 (index!7727 (_ BitVec 32))) (Intermediate!1389 (undefined!2201 Bool) (index!7728 (_ BitVec 32)) (x!26058 (_ BitVec 32))) (Undefined!1389) (MissingVacant!1389 (index!7729 (_ BitVec 32))) )
))
(declare-fun lt!134980 () SeekEntryResult!1389)

(assert (=> b!268641 (= res!132959 (or (= lt!134980 (MissingZero!1389 i!1267)) (= lt!134980 (MissingVacant!1389 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13142 (_ BitVec 32)) SeekEntryResult!1389)

(assert (=> b!268641 (= lt!134980 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!268642 () Bool)

(declare-fun res!132956 () Bool)

(assert (=> b!268642 (=> (not res!132956) (not e!173488))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268642 (= res!132956 (validKeyInArray!0 k!2581))))

(declare-fun b!268643 () Bool)

(assert (=> b!268643 (= e!173486 false)))

(declare-fun lt!134981 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13142 (_ BitVec 32)) Bool)

(assert (=> b!268643 (= lt!134981 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!268644 () Bool)

(declare-fun res!132960 () Bool)

(assert (=> b!268644 (=> (not res!132960) (not e!173488))))

(declare-datatypes ((List!4049 0))(
  ( (Nil!4046) (Cons!4045 (h!4712 (_ BitVec 64)) (t!9139 List!4049)) )
))
(declare-fun arrayNoDuplicates!0 (array!13142 (_ BitVec 32) List!4049) Bool)

(assert (=> b!268644 (= res!132960 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4046))))

(assert (= (and start!26056 res!132955) b!268640))

(assert (= (and b!268640 res!132957) b!268642))

(assert (= (and b!268642 res!132956) b!268644))

(assert (= (and b!268644 res!132960) b!268639))

(assert (= (and b!268639 res!132958) b!268641))

(assert (= (and b!268641 res!132959) b!268643))

(declare-fun m!284755 () Bool)

(assert (=> start!26056 m!284755))

(declare-fun m!284757 () Bool)

(assert (=> start!26056 m!284757))

(declare-fun m!284759 () Bool)

(assert (=> b!268641 m!284759))

(declare-fun m!284761 () Bool)

(assert (=> b!268639 m!284761))

(declare-fun m!284763 () Bool)

(assert (=> b!268642 m!284763))

(declare-fun m!284765 () Bool)

(assert (=> b!268643 m!284765))

(declare-fun m!284767 () Bool)

(assert (=> b!268644 m!284767))

(push 1)

(assert (not start!26056))


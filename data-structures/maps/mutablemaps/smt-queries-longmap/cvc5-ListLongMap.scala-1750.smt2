; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32064 () Bool)

(assert start!32064)

(declare-fun b!319621 () Bool)

(declare-fun res!174093 () Bool)

(declare-fun e!198469 () Bool)

(assert (=> b!319621 (=> (not res!174093) (not e!198469))))

(declare-datatypes ((array!16334 0))(
  ( (array!16335 (arr!7726 (Array (_ BitVec 32) (_ BitVec 64))) (size!8078 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16334)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2868 0))(
  ( (MissingZero!2868 (index!13648 (_ BitVec 32))) (Found!2868 (index!13649 (_ BitVec 32))) (Intermediate!2868 (undefined!3680 Bool) (index!13650 (_ BitVec 32)) (x!31889 (_ BitVec 32))) (Undefined!2868) (MissingVacant!2868 (index!13651 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16334 (_ BitVec 32)) SeekEntryResult!2868)

(assert (=> b!319621 (= res!174093 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2868 i!1250)))))

(declare-fun b!319622 () Bool)

(declare-fun res!174096 () Bool)

(assert (=> b!319622 (=> (not res!174096) (not e!198469))))

(declare-fun arrayContainsKey!0 (array!16334 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!319622 (= res!174096 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!319623 () Bool)

(declare-fun res!174095 () Bool)

(assert (=> b!319623 (=> (not res!174095) (not e!198469))))

(assert (=> b!319623 (= res!174095 (and (= (size!8078 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8078 a!3305))))))

(declare-fun res!174091 () Bool)

(assert (=> start!32064 (=> (not res!174091) (not e!198469))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32064 (= res!174091 (validMask!0 mask!3777))))

(assert (=> start!32064 e!198469))

(assert (=> start!32064 true))

(declare-fun array_inv!5680 (array!16334) Bool)

(assert (=> start!32064 (array_inv!5680 a!3305)))

(declare-fun b!319624 () Bool)

(assert (=> b!319624 (= e!198469 (bvslt mask!3777 #b00000000000000000000000000000000))))

(declare-fun lt!155840 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!319624 (= lt!155840 (toIndex!0 k!2497 mask!3777))))

(declare-fun b!319625 () Bool)

(declare-fun res!174092 () Bool)

(assert (=> b!319625 (=> (not res!174092) (not e!198469))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!319625 (= res!174092 (validKeyInArray!0 k!2497))))

(declare-fun b!319626 () Bool)

(declare-fun res!174094 () Bool)

(assert (=> b!319626 (=> (not res!174094) (not e!198469))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16334 (_ BitVec 32)) Bool)

(assert (=> b!319626 (= res!174094 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(assert (= (and start!32064 res!174091) b!319623))

(assert (= (and b!319623 res!174095) b!319625))

(assert (= (and b!319625 res!174092) b!319622))

(assert (= (and b!319622 res!174096) b!319621))

(assert (= (and b!319621 res!174093) b!319626))

(assert (= (and b!319626 res!174094) b!319624))

(declare-fun m!328165 () Bool)

(assert (=> b!319626 m!328165))

(declare-fun m!328167 () Bool)

(assert (=> b!319621 m!328167))

(declare-fun m!328169 () Bool)

(assert (=> start!32064 m!328169))

(declare-fun m!328171 () Bool)

(assert (=> start!32064 m!328171))

(declare-fun m!328173 () Bool)

(assert (=> b!319624 m!328173))

(declare-fun m!328175 () Bool)

(assert (=> b!319622 m!328175))

(declare-fun m!328177 () Bool)

(assert (=> b!319625 m!328177))

(push 1)

(assert (not b!319621))

(assert (not start!32064))

(assert (not b!319626))

(assert (not b!319622))

(assert (not b!319625))

(assert (not b!319624))

(check-sat)

(pop 1)

(push 1)

(check-sat)


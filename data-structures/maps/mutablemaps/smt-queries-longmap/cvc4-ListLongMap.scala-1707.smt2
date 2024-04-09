; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31384 () Bool)

(assert start!31384)

(declare-fun b!314309 () Bool)

(declare-fun res!170221 () Bool)

(declare-fun e!195753 () Bool)

(assert (=> b!314309 (=> (not res!170221) (not e!195753))))

(declare-datatypes ((array!16053 0))(
  ( (array!16054 (arr!7599 (Array (_ BitVec 32) (_ BitVec 64))) (size!7951 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16053)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!314309 (= res!170221 (and (= (size!7951 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7951 a!3293))))))

(declare-fun b!314310 () Bool)

(declare-fun res!170219 () Bool)

(assert (=> b!314310 (=> (not res!170219) (not e!195753))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2750 0))(
  ( (MissingZero!2750 (index!13176 (_ BitVec 32))) (Found!2750 (index!13177 (_ BitVec 32))) (Intermediate!2750 (undefined!3562 Bool) (index!13178 (_ BitVec 32)) (x!31367 (_ BitVec 32))) (Undefined!2750) (MissingVacant!2750 (index!13179 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16053 (_ BitVec 32)) SeekEntryResult!2750)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!314310 (= res!170219 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) (Intermediate!2750 false resIndex!52 resX!52)))))

(declare-fun b!314311 () Bool)

(declare-fun res!170223 () Bool)

(assert (=> b!314311 (=> (not res!170223) (not e!195753))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16053 (_ BitVec 32)) SeekEntryResult!2750)

(assert (=> b!314311 (= res!170223 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2750 i!1240)))))

(declare-fun b!314312 () Bool)

(declare-fun res!170217 () Bool)

(assert (=> b!314312 (=> (not res!170217) (not e!195753))))

(declare-fun arrayContainsKey!0 (array!16053 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!314312 (= res!170217 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun res!170222 () Bool)

(assert (=> start!31384 (=> (not res!170222) (not e!195753))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31384 (= res!170222 (validMask!0 mask!3709))))

(assert (=> start!31384 e!195753))

(declare-fun array_inv!5553 (array!16053) Bool)

(assert (=> start!31384 (array_inv!5553 a!3293)))

(assert (=> start!31384 true))

(declare-fun b!314313 () Bool)

(declare-fun res!170216 () Bool)

(assert (=> b!314313 (=> (not res!170216) (not e!195753))))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!314313 (= res!170216 (and (= (select (arr!7599 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7951 a!3293))))))

(declare-fun b!314314 () Bool)

(declare-fun res!170220 () Bool)

(assert (=> b!314314 (=> (not res!170220) (not e!195753))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!314314 (= res!170220 (validKeyInArray!0 k!2441))))

(declare-fun b!314315 () Bool)

(assert (=> b!314315 (= e!195753 false)))

(declare-fun lt!153875 () SeekEntryResult!2750)

(assert (=> b!314315 (= lt!153875 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!314316 () Bool)

(declare-fun res!170218 () Bool)

(assert (=> b!314316 (=> (not res!170218) (not e!195753))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16053 (_ BitVec 32)) Bool)

(assert (=> b!314316 (= res!170218 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(assert (= (and start!31384 res!170222) b!314309))

(assert (= (and b!314309 res!170221) b!314314))

(assert (= (and b!314314 res!170220) b!314312))

(assert (= (and b!314312 res!170217) b!314311))

(assert (= (and b!314311 res!170223) b!314316))

(assert (= (and b!314316 res!170218) b!314310))

(assert (= (and b!314310 res!170219) b!314313))

(assert (= (and b!314313 res!170216) b!314315))

(declare-fun m!323897 () Bool)

(assert (=> start!31384 m!323897))

(declare-fun m!323899 () Bool)

(assert (=> start!31384 m!323899))

(declare-fun m!323901 () Bool)

(assert (=> b!314314 m!323901))

(declare-fun m!323903 () Bool)

(assert (=> b!314316 m!323903))

(declare-fun m!323905 () Bool)

(assert (=> b!314312 m!323905))

(declare-fun m!323907 () Bool)

(assert (=> b!314313 m!323907))

(declare-fun m!323909 () Bool)

(assert (=> b!314310 m!323909))

(assert (=> b!314310 m!323909))

(declare-fun m!323911 () Bool)

(assert (=> b!314310 m!323911))

(declare-fun m!323913 () Bool)

(assert (=> b!314311 m!323913))

(declare-fun m!323915 () Bool)

(assert (=> b!314315 m!323915))

(push 1)

(assert (not b!314312))

(assert (not b!314315))

(assert (not b!314316))

(assert (not b!314310))

(assert (not b!314311))

(assert (not b!314314))

(assert (not start!31384))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


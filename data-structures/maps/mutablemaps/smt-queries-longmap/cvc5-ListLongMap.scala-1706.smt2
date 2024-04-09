; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31374 () Bool)

(assert start!31374)

(declare-fun b!314189 () Bool)

(declare-fun res!170103 () Bool)

(declare-fun e!195723 () Bool)

(assert (=> b!314189 (=> (not res!170103) (not e!195723))))

(declare-datatypes ((array!16043 0))(
  ( (array!16044 (arr!7594 (Array (_ BitVec 32) (_ BitVec 64))) (size!7946 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16043)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!314189 (= res!170103 (and (= (select (arr!7594 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7946 a!3293))))))

(declare-fun b!314190 () Bool)

(declare-fun res!170097 () Bool)

(assert (=> b!314190 (=> (not res!170097) (not e!195723))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!314190 (= res!170097 (validKeyInArray!0 k!2441))))

(declare-fun b!314191 () Bool)

(declare-fun res!170102 () Bool)

(assert (=> b!314191 (=> (not res!170102) (not e!195723))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2745 0))(
  ( (MissingZero!2745 (index!13156 (_ BitVec 32))) (Found!2745 (index!13157 (_ BitVec 32))) (Intermediate!2745 (undefined!3557 Bool) (index!13158 (_ BitVec 32)) (x!31354 (_ BitVec 32))) (Undefined!2745) (MissingVacant!2745 (index!13159 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16043 (_ BitVec 32)) SeekEntryResult!2745)

(assert (=> b!314191 (= res!170102 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2745 i!1240)))))

(declare-fun b!314192 () Bool)

(declare-fun res!170101 () Bool)

(assert (=> b!314192 (=> (not res!170101) (not e!195723))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16043 (_ BitVec 32)) Bool)

(assert (=> b!314192 (= res!170101 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun res!170099 () Bool)

(assert (=> start!31374 (=> (not res!170099) (not e!195723))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31374 (= res!170099 (validMask!0 mask!3709))))

(assert (=> start!31374 e!195723))

(declare-fun array_inv!5548 (array!16043) Bool)

(assert (=> start!31374 (array_inv!5548 a!3293)))

(assert (=> start!31374 true))

(declare-fun b!314193 () Bool)

(declare-fun res!170100 () Bool)

(assert (=> b!314193 (=> (not res!170100) (not e!195723))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16043 (_ BitVec 32)) SeekEntryResult!2745)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!314193 (= res!170100 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) (Intermediate!2745 false resIndex!52 resX!52)))))

(declare-fun b!314194 () Bool)

(assert (=> b!314194 (= e!195723 false)))

(declare-fun lt!153860 () SeekEntryResult!2745)

(assert (=> b!314194 (= lt!153860 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!314195 () Bool)

(declare-fun res!170098 () Bool)

(assert (=> b!314195 (=> (not res!170098) (not e!195723))))

(declare-fun arrayContainsKey!0 (array!16043 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!314195 (= res!170098 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!314196 () Bool)

(declare-fun res!170096 () Bool)

(assert (=> b!314196 (=> (not res!170096) (not e!195723))))

(assert (=> b!314196 (= res!170096 (and (= (size!7946 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7946 a!3293))))))

(assert (= (and start!31374 res!170099) b!314196))

(assert (= (and b!314196 res!170096) b!314190))

(assert (= (and b!314190 res!170097) b!314195))

(assert (= (and b!314195 res!170098) b!314191))

(assert (= (and b!314191 res!170102) b!314192))

(assert (= (and b!314192 res!170101) b!314193))

(assert (= (and b!314193 res!170100) b!314189))

(assert (= (and b!314189 res!170103) b!314194))

(declare-fun m!323797 () Bool)

(assert (=> b!314192 m!323797))

(declare-fun m!323799 () Bool)

(assert (=> b!314191 m!323799))

(declare-fun m!323801 () Bool)

(assert (=> b!314190 m!323801))

(declare-fun m!323803 () Bool)

(assert (=> b!314194 m!323803))

(declare-fun m!323805 () Bool)

(assert (=> b!314193 m!323805))

(assert (=> b!314193 m!323805))

(declare-fun m!323807 () Bool)

(assert (=> b!314193 m!323807))

(declare-fun m!323809 () Bool)

(assert (=> b!314189 m!323809))

(declare-fun m!323811 () Bool)

(assert (=> b!314195 m!323811))

(declare-fun m!323813 () Bool)

(assert (=> start!31374 m!323813))

(declare-fun m!323815 () Bool)

(assert (=> start!31374 m!323815))

(push 1)

(assert (not start!31374))

(assert (not b!314191))

(assert (not b!314190))

(assert (not b!314194))

(assert (not b!314192))

(assert (not b!314195))

(assert (not b!314193))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


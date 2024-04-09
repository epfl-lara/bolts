; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31370 () Bool)

(assert start!31370)

(declare-fun b!314141 () Bool)

(declare-fun res!170049 () Bool)

(declare-fun e!195712 () Bool)

(assert (=> b!314141 (=> (not res!170049) (not e!195712))))

(declare-datatypes ((array!16039 0))(
  ( (array!16040 (arr!7592 (Array (_ BitVec 32) (_ BitVec 64))) (size!7944 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16039)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!314141 (= res!170049 (and (= (size!7944 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7944 a!3293))))))

(declare-fun b!314142 () Bool)

(declare-fun res!170051 () Bool)

(assert (=> b!314142 (=> (not res!170051) (not e!195712))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16039 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!314142 (= res!170051 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!314143 () Bool)

(assert (=> b!314143 (= e!195712 false)))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2743 0))(
  ( (MissingZero!2743 (index!13148 (_ BitVec 32))) (Found!2743 (index!13149 (_ BitVec 32))) (Intermediate!2743 (undefined!3555 Bool) (index!13150 (_ BitVec 32)) (x!31344 (_ BitVec 32))) (Undefined!2743) (MissingVacant!2743 (index!13151 (_ BitVec 32))) )
))
(declare-fun lt!153854 () SeekEntryResult!2743)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16039 (_ BitVec 32)) SeekEntryResult!2743)

(assert (=> b!314143 (= lt!153854 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!314144 () Bool)

(declare-fun res!170050 () Bool)

(assert (=> b!314144 (=> (not res!170050) (not e!195712))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16039 (_ BitVec 32)) SeekEntryResult!2743)

(assert (=> b!314144 (= res!170050 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2743 i!1240)))))

(declare-fun b!314146 () Bool)

(declare-fun res!170054 () Bool)

(assert (=> b!314146 (=> (not res!170054) (not e!195712))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16039 (_ BitVec 32)) Bool)

(assert (=> b!314146 (= res!170054 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!314147 () Bool)

(declare-fun res!170053 () Bool)

(assert (=> b!314147 (=> (not res!170053) (not e!195712))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!314147 (= res!170053 (validKeyInArray!0 k0!2441))))

(declare-fun b!314148 () Bool)

(declare-fun res!170052 () Bool)

(assert (=> b!314148 (=> (not res!170052) (not e!195712))))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!314148 (= res!170052 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) (Intermediate!2743 false resIndex!52 resX!52)))))

(declare-fun res!170048 () Bool)

(assert (=> start!31370 (=> (not res!170048) (not e!195712))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31370 (= res!170048 (validMask!0 mask!3709))))

(assert (=> start!31370 e!195712))

(declare-fun array_inv!5546 (array!16039) Bool)

(assert (=> start!31370 (array_inv!5546 a!3293)))

(assert (=> start!31370 true))

(declare-fun b!314145 () Bool)

(declare-fun res!170055 () Bool)

(assert (=> b!314145 (=> (not res!170055) (not e!195712))))

(assert (=> b!314145 (= res!170055 (and (= (select (arr!7592 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7944 a!3293))))))

(assert (= (and start!31370 res!170048) b!314141))

(assert (= (and b!314141 res!170049) b!314147))

(assert (= (and b!314147 res!170053) b!314142))

(assert (= (and b!314142 res!170051) b!314144))

(assert (= (and b!314144 res!170050) b!314146))

(assert (= (and b!314146 res!170054) b!314148))

(assert (= (and b!314148 res!170052) b!314145))

(assert (= (and b!314145 res!170055) b!314143))

(declare-fun m!323757 () Bool)

(assert (=> b!314142 m!323757))

(declare-fun m!323759 () Bool)

(assert (=> b!314144 m!323759))

(declare-fun m!323761 () Bool)

(assert (=> b!314148 m!323761))

(assert (=> b!314148 m!323761))

(declare-fun m!323763 () Bool)

(assert (=> b!314148 m!323763))

(declare-fun m!323765 () Bool)

(assert (=> start!31370 m!323765))

(declare-fun m!323767 () Bool)

(assert (=> start!31370 m!323767))

(declare-fun m!323769 () Bool)

(assert (=> b!314147 m!323769))

(declare-fun m!323771 () Bool)

(assert (=> b!314145 m!323771))

(declare-fun m!323773 () Bool)

(assert (=> b!314146 m!323773))

(declare-fun m!323775 () Bool)

(assert (=> b!314143 m!323775))

(check-sat (not b!314143) (not b!314144) (not b!314147) (not start!31370) (not b!314142) (not b!314146) (not b!314148))

; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30256 () Bool)

(assert start!30256)

(declare-fun b!302518 () Bool)

(declare-fun res!160164 () Bool)

(declare-fun e!190638 () Bool)

(assert (=> b!302518 (=> (not res!160164) (not e!190638))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!302518 (= res!160164 (validKeyInArray!0 k!2441))))

(declare-fun b!302519 () Bool)

(declare-fun res!160167 () Bool)

(declare-fun e!190639 () Bool)

(assert (=> b!302519 (=> (not res!160167) (not e!190639))))

(declare-datatypes ((array!15360 0))(
  ( (array!15361 (arr!7266 (Array (_ BitVec 32) (_ BitVec 64))) (size!7618 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15360)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(assert (=> b!302519 (= res!160167 (and (= (select (arr!7266 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7618 a!3293))))))

(declare-fun b!302520 () Bool)

(assert (=> b!302520 (= e!190638 e!190639)))

(declare-fun res!160169 () Bool)

(assert (=> b!302520 (=> (not res!160169) (not e!190639))))

(declare-datatypes ((SeekEntryResult!2417 0))(
  ( (MissingZero!2417 (index!11844 (_ BitVec 32))) (Found!2417 (index!11845 (_ BitVec 32))) (Intermediate!2417 (undefined!3229 Bool) (index!11846 (_ BitVec 32)) (x!30077 (_ BitVec 32))) (Undefined!2417) (MissingVacant!2417 (index!11847 (_ BitVec 32))) )
))
(declare-fun lt!150083 () SeekEntryResult!2417)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15360 (_ BitVec 32)) SeekEntryResult!2417)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!302520 (= res!160169 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150083))))

(assert (=> b!302520 (= lt!150083 (Intermediate!2417 false resIndex!52 resX!52))))

(declare-fun b!302521 () Bool)

(declare-fun res!160170 () Bool)

(assert (=> b!302521 (=> (not res!160170) (not e!190638))))

(declare-fun arrayContainsKey!0 (array!15360 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!302521 (= res!160170 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!302522 () Bool)

(declare-fun res!160163 () Bool)

(assert (=> b!302522 (=> (not res!160163) (not e!190638))))

(assert (=> b!302522 (= res!160163 (and (= (size!7618 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7618 a!3293))))))

(declare-fun b!302523 () Bool)

(declare-fun res!160165 () Bool)

(assert (=> b!302523 (=> (not res!160165) (not e!190639))))

(assert (=> b!302523 (= res!160165 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150083))))

(declare-fun b!302525 () Bool)

(declare-fun res!160166 () Bool)

(assert (=> b!302525 (=> (not res!160166) (not e!190638))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15360 (_ BitVec 32)) SeekEntryResult!2417)

(assert (=> b!302525 (= res!160166 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2417 i!1240)))))

(declare-fun b!302526 () Bool)

(assert (=> b!302526 (= e!190639 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7266 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (or (= (select (arr!7266 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7266 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!3709 #b00000000000000000000000000000000) (bvsge index!1781 (bvadd #b00000000000000000000000000000001 mask!3709))))))

(declare-fun b!302524 () Bool)

(declare-fun res!160162 () Bool)

(assert (=> b!302524 (=> (not res!160162) (not e!190638))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15360 (_ BitVec 32)) Bool)

(assert (=> b!302524 (= res!160162 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun res!160168 () Bool)

(assert (=> start!30256 (=> (not res!160168) (not e!190638))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30256 (= res!160168 (validMask!0 mask!3709))))

(assert (=> start!30256 e!190638))

(declare-fun array_inv!5220 (array!15360) Bool)

(assert (=> start!30256 (array_inv!5220 a!3293)))

(assert (=> start!30256 true))

(assert (= (and start!30256 res!160168) b!302522))

(assert (= (and b!302522 res!160163) b!302518))

(assert (= (and b!302518 res!160164) b!302521))

(assert (= (and b!302521 res!160170) b!302525))

(assert (= (and b!302525 res!160166) b!302524))

(assert (= (and b!302524 res!160162) b!302520))

(assert (= (and b!302520 res!160169) b!302519))

(assert (= (and b!302519 res!160167) b!302523))

(assert (= (and b!302523 res!160165) b!302526))

(declare-fun m!314037 () Bool)

(assert (=> b!302523 m!314037))

(declare-fun m!314039 () Bool)

(assert (=> b!302526 m!314039))

(declare-fun m!314041 () Bool)

(assert (=> b!302524 m!314041))

(declare-fun m!314043 () Bool)

(assert (=> b!302518 m!314043))

(declare-fun m!314045 () Bool)

(assert (=> b!302521 m!314045))

(declare-fun m!314047 () Bool)

(assert (=> b!302525 m!314047))

(declare-fun m!314049 () Bool)

(assert (=> start!30256 m!314049))

(declare-fun m!314051 () Bool)

(assert (=> start!30256 m!314051))

(declare-fun m!314053 () Bool)

(assert (=> b!302520 m!314053))

(assert (=> b!302520 m!314053))

(declare-fun m!314055 () Bool)

(assert (=> b!302520 m!314055))

(declare-fun m!314057 () Bool)

(assert (=> b!302519 m!314057))

(push 1)

(assert (not b!302518))

(assert (not b!302523))

(assert (not b!302525))

(assert (not b!302521))

(assert (not b!302520))

(assert (not b!302524))

(assert (not start!30256))

(check-sat)

(pop 1)

(push 1)

(check-sat)


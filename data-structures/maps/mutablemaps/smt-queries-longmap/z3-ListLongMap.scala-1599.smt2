; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30272 () Bool)

(assert start!30272)

(declare-fun b!302720 () Bool)

(declare-fun res!160371 () Bool)

(declare-fun e!190696 () Bool)

(assert (=> b!302720 (=> (not res!160371) (not e!190696))))

(declare-datatypes ((array!15376 0))(
  ( (array!15377 (arr!7274 (Array (_ BitVec 32) (_ BitVec 64))) (size!7626 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15376)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!302720 (= res!160371 (and (= (select (arr!7274 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7626 a!3293))))))

(declare-fun b!302721 () Bool)

(assert (=> b!302721 (= e!190696 false)))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2425 0))(
  ( (MissingZero!2425 (index!11876 (_ BitVec 32))) (Found!2425 (index!11877 (_ BitVec 32))) (Intermediate!2425 (undefined!3237 Bool) (index!11878 (_ BitVec 32)) (x!30109 (_ BitVec 32))) (Undefined!2425) (MissingVacant!2425 (index!11879 (_ BitVec 32))) )
))
(declare-fun lt!150107 () SeekEntryResult!2425)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15376 (_ BitVec 32)) SeekEntryResult!2425)

(assert (=> b!302721 (= lt!150107 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!302722 () Bool)

(declare-fun res!160368 () Bool)

(assert (=> b!302722 (=> (not res!160368) (not e!190696))))

(declare-fun arrayContainsKey!0 (array!15376 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!302722 (= res!160368 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!302723 () Bool)

(declare-fun res!160364 () Bool)

(assert (=> b!302723 (=> (not res!160364) (not e!190696))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!302723 (= res!160364 (validKeyInArray!0 k0!2441))))

(declare-fun res!160366 () Bool)

(assert (=> start!30272 (=> (not res!160366) (not e!190696))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30272 (= res!160366 (validMask!0 mask!3709))))

(assert (=> start!30272 e!190696))

(declare-fun array_inv!5228 (array!15376) Bool)

(assert (=> start!30272 (array_inv!5228 a!3293)))

(assert (=> start!30272 true))

(declare-fun b!302724 () Bool)

(declare-fun res!160367 () Bool)

(assert (=> b!302724 (=> (not res!160367) (not e!190696))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15376 (_ BitVec 32)) Bool)

(assert (=> b!302724 (= res!160367 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!302725 () Bool)

(declare-fun res!160369 () Bool)

(assert (=> b!302725 (=> (not res!160369) (not e!190696))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!302725 (= res!160369 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) (Intermediate!2425 false resIndex!52 resX!52)))))

(declare-fun b!302726 () Bool)

(declare-fun res!160370 () Bool)

(assert (=> b!302726 (=> (not res!160370) (not e!190696))))

(assert (=> b!302726 (= res!160370 (and (= (size!7626 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7626 a!3293))))))

(declare-fun b!302727 () Bool)

(declare-fun res!160365 () Bool)

(assert (=> b!302727 (=> (not res!160365) (not e!190696))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15376 (_ BitVec 32)) SeekEntryResult!2425)

(assert (=> b!302727 (= res!160365 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2425 i!1240)))))

(assert (= (and start!30272 res!160366) b!302726))

(assert (= (and b!302726 res!160370) b!302723))

(assert (= (and b!302723 res!160364) b!302722))

(assert (= (and b!302722 res!160368) b!302727))

(assert (= (and b!302727 res!160365) b!302724))

(assert (= (and b!302724 res!160367) b!302725))

(assert (= (and b!302725 res!160369) b!302720))

(assert (= (and b!302720 res!160371) b!302721))

(declare-fun m!314205 () Bool)

(assert (=> b!302723 m!314205))

(declare-fun m!314207 () Bool)

(assert (=> b!302722 m!314207))

(declare-fun m!314209 () Bool)

(assert (=> b!302720 m!314209))

(declare-fun m!314211 () Bool)

(assert (=> b!302727 m!314211))

(declare-fun m!314213 () Bool)

(assert (=> b!302721 m!314213))

(declare-fun m!314215 () Bool)

(assert (=> b!302725 m!314215))

(assert (=> b!302725 m!314215))

(declare-fun m!314217 () Bool)

(assert (=> b!302725 m!314217))

(declare-fun m!314219 () Bool)

(assert (=> start!30272 m!314219))

(declare-fun m!314221 () Bool)

(assert (=> start!30272 m!314221))

(declare-fun m!314223 () Bool)

(assert (=> b!302724 m!314223))

(check-sat (not b!302724) (not start!30272) (not b!302722) (not b!302721) (not b!302727) (not b!302723) (not b!302725))
(check-sat)

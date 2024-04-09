; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30432 () Bool)

(assert start!30432)

(declare-fun res!161899 () Bool)

(declare-fun e!191294 () Bool)

(assert (=> start!30432 (=> (not res!161899) (not e!191294))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30432 (= res!161899 (validMask!0 mask!3709))))

(assert (=> start!30432 e!191294))

(declare-datatypes ((array!15485 0))(
  ( (array!15486 (arr!7327 (Array (_ BitVec 32) (_ BitVec 64))) (size!7679 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15485)

(declare-fun array_inv!5281 (array!15485) Bool)

(assert (=> start!30432 (array_inv!5281 a!3293)))

(assert (=> start!30432 true))

(declare-fun b!304390 () Bool)

(declare-fun e!191293 () Bool)

(assert (=> b!304390 (= e!191294 e!191293)))

(declare-fun res!161900 () Bool)

(assert (=> b!304390 (=> (not res!161900) (not e!191293))))

(declare-datatypes ((SeekEntryResult!2478 0))(
  ( (MissingZero!2478 (index!12088 (_ BitVec 32))) (Found!2478 (index!12089 (_ BitVec 32))) (Intermediate!2478 (undefined!3290 Bool) (index!12090 (_ BitVec 32)) (x!30315 (_ BitVec 32))) (Undefined!2478) (MissingVacant!2478 (index!12091 (_ BitVec 32))) )
))
(declare-fun lt!150445 () SeekEntryResult!2478)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15485 (_ BitVec 32)) SeekEntryResult!2478)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304390 (= res!161900 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150445))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!304390 (= lt!150445 (Intermediate!2478 false resIndex!52 resX!52))))

(declare-fun b!304391 () Bool)

(declare-fun e!191295 () Bool)

(assert (=> b!304391 (= e!191293 e!191295)))

(declare-fun res!161893 () Bool)

(assert (=> b!304391 (=> (not res!161893) (not e!191295))))

(declare-fun lt!150446 () SeekEntryResult!2478)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!304391 (= res!161893 (and (= lt!150446 lt!150445) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7327 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7327 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7327 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!304391 (= lt!150446 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!304392 () Bool)

(declare-fun res!161894 () Bool)

(assert (=> b!304392 (=> (not res!161894) (not e!191293))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!304392 (= res!161894 (and (= (select (arr!7327 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7679 a!3293))))))

(declare-fun b!304393 () Bool)

(declare-fun res!161895 () Bool)

(assert (=> b!304393 (=> (not res!161895) (not e!191294))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!304393 (= res!161895 (validKeyInArray!0 k!2441))))

(declare-fun b!304394 () Bool)

(assert (=> b!304394 (= e!191295 (not (or (bvslt mask!3709 #b00000000000000000000000000000000) (bvslt index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304394 (= lt!150446 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!304395 () Bool)

(declare-fun res!161898 () Bool)

(assert (=> b!304395 (=> (not res!161898) (not e!191294))))

(assert (=> b!304395 (= res!161898 (and (= (size!7679 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7679 a!3293))))))

(declare-fun b!304396 () Bool)

(declare-fun res!161897 () Bool)

(assert (=> b!304396 (=> (not res!161897) (not e!191294))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15485 (_ BitVec 32)) Bool)

(assert (=> b!304396 (= res!161897 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!304397 () Bool)

(declare-fun res!161901 () Bool)

(assert (=> b!304397 (=> (not res!161901) (not e!191294))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15485 (_ BitVec 32)) SeekEntryResult!2478)

(assert (=> b!304397 (= res!161901 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2478 i!1240)))))

(declare-fun b!304398 () Bool)

(declare-fun res!161896 () Bool)

(assert (=> b!304398 (=> (not res!161896) (not e!191294))))

(declare-fun arrayContainsKey!0 (array!15485 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!304398 (= res!161896 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(assert (= (and start!30432 res!161899) b!304395))

(assert (= (and b!304395 res!161898) b!304393))

(assert (= (and b!304393 res!161895) b!304398))

(assert (= (and b!304398 res!161896) b!304397))

(assert (= (and b!304397 res!161901) b!304396))

(assert (= (and b!304396 res!161897) b!304390))

(assert (= (and b!304390 res!161900) b!304392))

(assert (= (and b!304392 res!161894) b!304391))

(assert (= (and b!304391 res!161893) b!304394))

(declare-fun m!315523 () Bool)

(assert (=> b!304392 m!315523))

(declare-fun m!315525 () Bool)

(assert (=> b!304390 m!315525))

(assert (=> b!304390 m!315525))

(declare-fun m!315527 () Bool)

(assert (=> b!304390 m!315527))

(declare-fun m!315529 () Bool)

(assert (=> b!304397 m!315529))

(declare-fun m!315531 () Bool)

(assert (=> start!30432 m!315531))

(declare-fun m!315533 () Bool)

(assert (=> start!30432 m!315533))

(declare-fun m!315535 () Bool)

(assert (=> b!304391 m!315535))

(declare-fun m!315537 () Bool)

(assert (=> b!304391 m!315537))

(declare-fun m!315539 () Bool)

(assert (=> b!304394 m!315539))

(assert (=> b!304394 m!315539))

(declare-fun m!315541 () Bool)

(assert (=> b!304394 m!315541))

(declare-fun m!315543 () Bool)

(assert (=> b!304396 m!315543))

(declare-fun m!315545 () Bool)

(assert (=> b!304393 m!315545))

(declare-fun m!315547 () Bool)

(assert (=> b!304398 m!315547))

(push 1)

(assert (not b!304394))

(assert (not b!304398))

(assert (not b!304390))

(assert (not b!304393))

(assert (not b!304391))

(assert (not start!30432))

(assert (not b!304396))

(assert (not b!304397))

(check-sat)

(pop 1)

(push 1)

(check-sat)


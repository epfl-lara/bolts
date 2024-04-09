; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30772 () Bool)

(assert start!30772)

(declare-fun b!308539 () Bool)

(declare-fun res!165310 () Bool)

(declare-fun e!192894 () Bool)

(assert (=> b!308539 (=> (not res!165310) (not e!192894))))

(declare-datatypes ((array!15723 0))(
  ( (array!15724 (arr!7443 (Array (_ BitVec 32) (_ BitVec 64))) (size!7795 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15723)

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun mask!3709 () (_ BitVec 32))

(assert (=> b!308539 (= res!165310 (and (= (size!7795 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7795 a!3293))))))

(declare-fun b!308540 () Bool)

(declare-fun res!165314 () Bool)

(declare-fun e!192895 () Bool)

(assert (=> b!308540 (=> (not res!165314) (not e!192895))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!308540 (= res!165314 (and (= (select (arr!7443 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7795 a!3293))))))

(declare-fun res!165313 () Bool)

(assert (=> start!30772 (=> (not res!165313) (not e!192894))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30772 (= res!165313 (validMask!0 mask!3709))))

(assert (=> start!30772 e!192894))

(declare-fun array_inv!5397 (array!15723) Bool)

(assert (=> start!30772 (array_inv!5397 a!3293)))

(assert (=> start!30772 true))

(declare-fun b!308541 () Bool)

(declare-fun res!165317 () Bool)

(assert (=> b!308541 (=> (not res!165317) (not e!192894))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15723 (_ BitVec 32)) Bool)

(assert (=> b!308541 (= res!165317 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!308542 () Bool)

(declare-fun res!165311 () Bool)

(assert (=> b!308542 (=> (not res!165311) (not e!192894))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2594 0))(
  ( (MissingZero!2594 (index!12552 (_ BitVec 32))) (Found!2594 (index!12553 (_ BitVec 32))) (Intermediate!2594 (undefined!3406 Bool) (index!12554 (_ BitVec 32)) (x!30753 (_ BitVec 32))) (Undefined!2594) (MissingVacant!2594 (index!12555 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15723 (_ BitVec 32)) SeekEntryResult!2594)

(assert (=> b!308542 (= res!165311 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2594 i!1240)))))

(declare-fun b!308543 () Bool)

(assert (=> b!308543 (= e!192894 e!192895)))

(declare-fun res!165312 () Bool)

(assert (=> b!308543 (=> (not res!165312) (not e!192895))))

(declare-fun lt!151393 () SeekEntryResult!2594)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15723 (_ BitVec 32)) SeekEntryResult!2594)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308543 (= res!165312 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151393))))

(assert (=> b!308543 (= lt!151393 (Intermediate!2594 false resIndex!52 resX!52))))

(declare-fun b!308544 () Bool)

(declare-fun res!165318 () Bool)

(assert (=> b!308544 (=> (not res!165318) (not e!192894))))

(declare-fun arrayContainsKey!0 (array!15723 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!308544 (= res!165318 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!308545 () Bool)

(declare-fun res!165316 () Bool)

(assert (=> b!308545 (=> (not res!165316) (not e!192894))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!308545 (= res!165316 (validKeyInArray!0 k!2441))))

(declare-fun b!308546 () Bool)

(declare-fun e!192892 () Bool)

(assert (=> b!308546 (= e!192892 (not true))))

(declare-fun lt!151394 () SeekEntryResult!2594)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308546 (= lt!151394 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!308547 () Bool)

(assert (=> b!308547 (= e!192895 e!192892)))

(declare-fun res!165315 () Bool)

(assert (=> b!308547 (=> (not res!165315) (not e!192892))))

(assert (=> b!308547 (= res!165315 (and (= lt!151394 lt!151393) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7443 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!308547 (= lt!151394 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(assert (= (and start!30772 res!165313) b!308539))

(assert (= (and b!308539 res!165310) b!308545))

(assert (= (and b!308545 res!165316) b!308544))

(assert (= (and b!308544 res!165318) b!308542))

(assert (= (and b!308542 res!165311) b!308541))

(assert (= (and b!308541 res!165317) b!308543))

(assert (= (and b!308543 res!165312) b!308540))

(assert (= (and b!308540 res!165314) b!308547))

(assert (= (and b!308547 res!165315) b!308546))

(declare-fun m!318611 () Bool)

(assert (=> b!308546 m!318611))

(assert (=> b!308546 m!318611))

(declare-fun m!318613 () Bool)

(assert (=> b!308546 m!318613))

(declare-fun m!318615 () Bool)

(assert (=> b!308547 m!318615))

(declare-fun m!318617 () Bool)

(assert (=> b!308547 m!318617))

(declare-fun m!318619 () Bool)

(assert (=> start!30772 m!318619))

(declare-fun m!318621 () Bool)

(assert (=> start!30772 m!318621))

(declare-fun m!318623 () Bool)

(assert (=> b!308544 m!318623))

(declare-fun m!318625 () Bool)

(assert (=> b!308541 m!318625))

(declare-fun m!318627 () Bool)

(assert (=> b!308545 m!318627))

(declare-fun m!318629 () Bool)

(assert (=> b!308543 m!318629))

(assert (=> b!308543 m!318629))

(declare-fun m!318631 () Bool)

(assert (=> b!308543 m!318631))

(declare-fun m!318633 () Bool)

(assert (=> b!308542 m!318633))

(declare-fun m!318635 () Bool)

(assert (=> b!308540 m!318635))

(push 1)

(assert (not start!30772))

(assert (not b!308544))

(assert (not b!308543))

(assert (not b!308545))


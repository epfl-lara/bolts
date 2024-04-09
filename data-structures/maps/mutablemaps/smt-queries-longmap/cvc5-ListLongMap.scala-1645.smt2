; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30654 () Bool)

(assert start!30654)

(declare-fun b!307405 () Bool)

(declare-fun res!164320 () Bool)

(declare-fun e!192446 () Bool)

(assert (=> b!307405 (=> (not res!164320) (not e!192446))))

(declare-datatypes ((array!15656 0))(
  ( (array!15657 (arr!7411 (Array (_ BitVec 32) (_ BitVec 64))) (size!7763 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15656)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15656 (_ BitVec 32)) Bool)

(assert (=> b!307405 (= res!164320 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!307406 () Bool)

(declare-fun res!164317 () Bool)

(declare-fun e!192448 () Bool)

(assert (=> b!307406 (=> (not res!164317) (not e!192448))))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!307406 (= res!164317 (and (= (select (arr!7411 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7763 a!3293))))))

(declare-fun b!307407 () Bool)

(declare-fun k!2441 () (_ BitVec 64))

(assert (=> b!307407 (= e!192448 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7411 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52)) (bvsge mask!3709 #b00000000000000000000000000000000) (bvsge index!1781 (bvadd #b00000000000000000000000000000001 mask!3709))))))

(declare-fun b!307408 () Bool)

(declare-fun res!164322 () Bool)

(assert (=> b!307408 (=> (not res!164322) (not e!192448))))

(declare-datatypes ((SeekEntryResult!2562 0))(
  ( (MissingZero!2562 (index!12424 (_ BitVec 32))) (Found!2562 (index!12425 (_ BitVec 32))) (Intermediate!2562 (undefined!3374 Bool) (index!12426 (_ BitVec 32)) (x!30632 (_ BitVec 32))) (Undefined!2562) (MissingVacant!2562 (index!12427 (_ BitVec 32))) )
))
(declare-fun lt!151112 () SeekEntryResult!2562)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15656 (_ BitVec 32)) SeekEntryResult!2562)

(assert (=> b!307408 (= res!164322 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!151112))))

(declare-fun res!164324 () Bool)

(assert (=> start!30654 (=> (not res!164324) (not e!192446))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30654 (= res!164324 (validMask!0 mask!3709))))

(assert (=> start!30654 e!192446))

(declare-fun array_inv!5365 (array!15656) Bool)

(assert (=> start!30654 (array_inv!5365 a!3293)))

(assert (=> start!30654 true))

(declare-fun b!307409 () Bool)

(assert (=> b!307409 (= e!192446 e!192448)))

(declare-fun res!164323 () Bool)

(assert (=> b!307409 (=> (not res!164323) (not e!192448))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!307409 (= res!164323 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151112))))

(assert (=> b!307409 (= lt!151112 (Intermediate!2562 false resIndex!52 resX!52))))

(declare-fun b!307410 () Bool)

(declare-fun res!164321 () Bool)

(assert (=> b!307410 (=> (not res!164321) (not e!192446))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!307410 (= res!164321 (validKeyInArray!0 k!2441))))

(declare-fun b!307411 () Bool)

(declare-fun res!164325 () Bool)

(assert (=> b!307411 (=> (not res!164325) (not e!192446))))

(assert (=> b!307411 (= res!164325 (and (= (size!7763 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7763 a!3293))))))

(declare-fun b!307412 () Bool)

(declare-fun res!164318 () Bool)

(assert (=> b!307412 (=> (not res!164318) (not e!192446))))

(declare-fun arrayContainsKey!0 (array!15656 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!307412 (= res!164318 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!307413 () Bool)

(declare-fun res!164319 () Bool)

(assert (=> b!307413 (=> (not res!164319) (not e!192446))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15656 (_ BitVec 32)) SeekEntryResult!2562)

(assert (=> b!307413 (= res!164319 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2562 i!1240)))))

(assert (= (and start!30654 res!164324) b!307411))

(assert (= (and b!307411 res!164325) b!307410))

(assert (= (and b!307410 res!164321) b!307412))

(assert (= (and b!307412 res!164318) b!307413))

(assert (= (and b!307413 res!164319) b!307405))

(assert (= (and b!307405 res!164320) b!307409))

(assert (= (and b!307409 res!164323) b!307406))

(assert (= (and b!307406 res!164317) b!307408))

(assert (= (and b!307408 res!164322) b!307407))

(declare-fun m!317725 () Bool)

(assert (=> b!307409 m!317725))

(assert (=> b!307409 m!317725))

(declare-fun m!317727 () Bool)

(assert (=> b!307409 m!317727))

(declare-fun m!317729 () Bool)

(assert (=> b!307413 m!317729))

(declare-fun m!317731 () Bool)

(assert (=> b!307412 m!317731))

(declare-fun m!317733 () Bool)

(assert (=> b!307406 m!317733))

(declare-fun m!317735 () Bool)

(assert (=> b!307405 m!317735))

(declare-fun m!317737 () Bool)

(assert (=> b!307408 m!317737))

(declare-fun m!317739 () Bool)

(assert (=> start!30654 m!317739))

(declare-fun m!317741 () Bool)

(assert (=> start!30654 m!317741))

(declare-fun m!317743 () Bool)

(assert (=> b!307407 m!317743))

(declare-fun m!317745 () Bool)

(assert (=> b!307410 m!317745))

(push 1)

(assert (not b!307405))

(assert (not b!307408))

(assert (not start!30654))

(assert (not b!307409))

(assert (not b!307413))

(assert (not b!307410))

(assert (not b!307412))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


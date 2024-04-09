; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30156 () Bool)

(assert start!30156)

(declare-fun b!301749 () Bool)

(declare-fun res!159521 () Bool)

(declare-fun e!190348 () Bool)

(assert (=> b!301749 (=> (not res!159521) (not e!190348))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((array!15305 0))(
  ( (array!15306 (arr!7240 (Array (_ BitVec 32) (_ BitVec 64))) (size!7592 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15305)

(assert (=> b!301749 (= res!159521 (and (= (size!7592 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7592 a!3293))))))

(declare-fun b!301750 () Bool)

(declare-fun res!159522 () Bool)

(assert (=> b!301750 (=> (not res!159522) (not e!190348))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2391 0))(
  ( (MissingZero!2391 (index!11740 (_ BitVec 32))) (Found!2391 (index!11741 (_ BitVec 32))) (Intermediate!2391 (undefined!3203 Bool) (index!11742 (_ BitVec 32)) (x!29981 (_ BitVec 32))) (Undefined!2391) (MissingVacant!2391 (index!11743 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15305 (_ BitVec 32)) SeekEntryResult!2391)

(assert (=> b!301750 (= res!159522 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2391 i!1240)))))

(declare-fun res!159520 () Bool)

(assert (=> start!30156 (=> (not res!159520) (not e!190348))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30156 (= res!159520 (validMask!0 mask!3709))))

(assert (=> start!30156 e!190348))

(declare-fun array_inv!5194 (array!15305) Bool)

(assert (=> start!30156 (array_inv!5194 a!3293)))

(assert (=> start!30156 true))

(declare-fun b!301751 () Bool)

(declare-fun res!159517 () Bool)

(assert (=> b!301751 (=> (not res!159517) (not e!190348))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15305 (_ BitVec 32)) SeekEntryResult!2391)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!301751 (= res!159517 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) (Intermediate!2391 false resIndex!52 resX!52)))))

(declare-fun b!301752 () Bool)

(declare-fun res!159518 () Bool)

(assert (=> b!301752 (=> (not res!159518) (not e!190348))))

(declare-fun arrayContainsKey!0 (array!15305 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!301752 (= res!159518 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!301753 () Bool)

(declare-fun res!159519 () Bool)

(assert (=> b!301753 (=> (not res!159519) (not e!190348))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!301753 (= res!159519 (validKeyInArray!0 k!2441))))

(declare-fun b!301754 () Bool)

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(assert (=> b!301754 (= e!190348 (and (= (select (arr!7240 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7592 a!3293)) (bvslt mask!3709 #b00000000000000000000000000000000)))))

(declare-fun b!301755 () Bool)

(declare-fun res!159516 () Bool)

(assert (=> b!301755 (=> (not res!159516) (not e!190348))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15305 (_ BitVec 32)) Bool)

(assert (=> b!301755 (= res!159516 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(assert (= (and start!30156 res!159520) b!301749))

(assert (= (and b!301749 res!159521) b!301753))

(assert (= (and b!301753 res!159519) b!301752))

(assert (= (and b!301752 res!159518) b!301750))

(assert (= (and b!301750 res!159522) b!301755))

(assert (= (and b!301755 res!159516) b!301751))

(assert (= (and b!301751 res!159517) b!301754))

(declare-fun m!313453 () Bool)

(assert (=> b!301751 m!313453))

(assert (=> b!301751 m!313453))

(declare-fun m!313455 () Bool)

(assert (=> b!301751 m!313455))

(declare-fun m!313457 () Bool)

(assert (=> start!30156 m!313457))

(declare-fun m!313459 () Bool)

(assert (=> start!30156 m!313459))

(declare-fun m!313461 () Bool)

(assert (=> b!301755 m!313461))

(declare-fun m!313463 () Bool)

(assert (=> b!301750 m!313463))

(declare-fun m!313465 () Bool)

(assert (=> b!301752 m!313465))

(declare-fun m!313467 () Bool)

(assert (=> b!301754 m!313467))

(declare-fun m!313469 () Bool)

(assert (=> b!301753 m!313469))

(push 1)

(assert (not start!30156))

(assert (not b!301753))

(assert (not b!301755))

(assert (not b!301750))

(assert (not b!301751))

(assert (not b!301752))

(check-sat)


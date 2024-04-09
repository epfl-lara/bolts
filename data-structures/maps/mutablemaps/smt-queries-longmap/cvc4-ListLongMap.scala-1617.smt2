; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30436 () Bool)

(assert start!30436)

(declare-fun b!304444 () Bool)

(declare-fun e!191319 () Bool)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!304444 (= e!191319 (not (or (bvslt mask!3709 #b00000000000000000000000000000000) (bvslt index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)))))))

(declare-datatypes ((array!15489 0))(
  ( (array!15490 (arr!7329 (Array (_ BitVec 32) (_ BitVec 64))) (size!7681 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15489)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun x!1427 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2480 0))(
  ( (MissingZero!2480 (index!12096 (_ BitVec 32))) (Found!2480 (index!12097 (_ BitVec 32))) (Intermediate!2480 (undefined!3292 Bool) (index!12098 (_ BitVec 32)) (x!30317 (_ BitVec 32))) (Undefined!2480) (MissingVacant!2480 (index!12099 (_ BitVec 32))) )
))
(declare-fun lt!150457 () SeekEntryResult!2480)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15489 (_ BitVec 32)) SeekEntryResult!2480)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304444 (= lt!150457 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!304445 () Bool)

(declare-fun e!191320 () Bool)

(assert (=> b!304445 (= e!191320 e!191319)))

(declare-fun res!161949 () Bool)

(assert (=> b!304445 (=> (not res!161949) (not e!191319))))

(declare-fun lt!150458 () SeekEntryResult!2480)

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!304445 (= res!161949 (and (= lt!150457 lt!150458) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7329 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7329 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7329 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!304445 (= lt!150457 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!304446 () Bool)

(declare-fun res!161951 () Bool)

(declare-fun e!191317 () Bool)

(assert (=> b!304446 (=> (not res!161951) (not e!191317))))

(declare-fun arrayContainsKey!0 (array!15489 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!304446 (= res!161951 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!304447 () Bool)

(declare-fun res!161955 () Bool)

(assert (=> b!304447 (=> (not res!161955) (not e!191317))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!304447 (= res!161955 (and (= (size!7681 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7681 a!3293))))))

(declare-fun b!304448 () Bool)

(declare-fun res!161947 () Bool)

(assert (=> b!304448 (=> (not res!161947) (not e!191317))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15489 (_ BitVec 32)) Bool)

(assert (=> b!304448 (= res!161947 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun res!161950 () Bool)

(assert (=> start!30436 (=> (not res!161950) (not e!191317))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30436 (= res!161950 (validMask!0 mask!3709))))

(assert (=> start!30436 e!191317))

(declare-fun array_inv!5283 (array!15489) Bool)

(assert (=> start!30436 (array_inv!5283 a!3293)))

(assert (=> start!30436 true))

(declare-fun b!304449 () Bool)

(declare-fun res!161948 () Bool)

(assert (=> b!304449 (=> (not res!161948) (not e!191317))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!304449 (= res!161948 (validKeyInArray!0 k!2441))))

(declare-fun b!304450 () Bool)

(declare-fun res!161952 () Bool)

(assert (=> b!304450 (=> (not res!161952) (not e!191317))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15489 (_ BitVec 32)) SeekEntryResult!2480)

(assert (=> b!304450 (= res!161952 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2480 i!1240)))))

(declare-fun b!304451 () Bool)

(declare-fun res!161954 () Bool)

(assert (=> b!304451 (=> (not res!161954) (not e!191320))))

(assert (=> b!304451 (= res!161954 (and (= (select (arr!7329 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7681 a!3293))))))

(declare-fun b!304452 () Bool)

(assert (=> b!304452 (= e!191317 e!191320)))

(declare-fun res!161953 () Bool)

(assert (=> b!304452 (=> (not res!161953) (not e!191320))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304452 (= res!161953 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150458))))

(assert (=> b!304452 (= lt!150458 (Intermediate!2480 false resIndex!52 resX!52))))

(assert (= (and start!30436 res!161950) b!304447))

(assert (= (and b!304447 res!161955) b!304449))

(assert (= (and b!304449 res!161948) b!304446))

(assert (= (and b!304446 res!161951) b!304450))

(assert (= (and b!304450 res!161952) b!304448))

(assert (= (and b!304448 res!161947) b!304452))

(assert (= (and b!304452 res!161953) b!304451))

(assert (= (and b!304451 res!161954) b!304445))

(assert (= (and b!304445 res!161949) b!304444))

(declare-fun m!315575 () Bool)

(assert (=> b!304446 m!315575))

(declare-fun m!315577 () Bool)

(assert (=> b!304444 m!315577))

(assert (=> b!304444 m!315577))

(declare-fun m!315579 () Bool)

(assert (=> b!304444 m!315579))

(declare-fun m!315581 () Bool)

(assert (=> b!304448 m!315581))

(declare-fun m!315583 () Bool)

(assert (=> b!304450 m!315583))

(declare-fun m!315585 () Bool)

(assert (=> b!304452 m!315585))

(assert (=> b!304452 m!315585))

(declare-fun m!315587 () Bool)

(assert (=> b!304452 m!315587))

(declare-fun m!315589 () Bool)

(assert (=> start!30436 m!315589))

(declare-fun m!315591 () Bool)

(assert (=> start!30436 m!315591))

(declare-fun m!315593 () Bool)

(assert (=> b!304449 m!315593))

(declare-fun m!315595 () Bool)

(assert (=> b!304445 m!315595))

(declare-fun m!315597 () Bool)

(assert (=> b!304445 m!315597))

(declare-fun m!315599 () Bool)

(assert (=> b!304451 m!315599))

(push 1)

(assert (not b!304444))

(assert (not b!304450))

(assert (not b!304445))

(assert (not b!304448))

(assert (not b!304452))

(assert (not b!304446))

(assert (not b!304449))

(assert (not start!30436))

(check-sat)

(pop 1)

(push 1)

(check-sat)


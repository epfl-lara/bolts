; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30644 () Bool)

(assert start!30644)

(declare-fun b!307274 () Bool)

(declare-fun res!164192 () Bool)

(declare-fun e!192406 () Bool)

(assert (=> b!307274 (=> (not res!164192) (not e!192406))))

(declare-datatypes ((array!15646 0))(
  ( (array!15647 (arr!7406 (Array (_ BitVec 32) (_ BitVec 64))) (size!7758 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15646)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15646 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!307274 (= res!164192 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!307275 () Bool)

(declare-fun res!164193 () Bool)

(assert (=> b!307275 (=> (not res!164193) (not e!192406))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!307275 (= res!164193 (and (= (select (arr!7406 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7758 a!3293))))))

(declare-fun b!307277 () Bool)

(declare-fun res!164186 () Bool)

(assert (=> b!307277 (=> (not res!164186) (not e!192406))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!307277 (= res!164186 (validKeyInArray!0 k0!2441))))

(declare-fun b!307278 () Bool)

(declare-fun res!164189 () Bool)

(assert (=> b!307278 (=> (not res!164189) (not e!192406))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15646 (_ BitVec 32)) Bool)

(assert (=> b!307278 (= res!164189 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!307279 () Bool)

(declare-fun res!164187 () Bool)

(assert (=> b!307279 (=> (not res!164187) (not e!192406))))

(declare-datatypes ((SeekEntryResult!2557 0))(
  ( (MissingZero!2557 (index!12404 (_ BitVec 32))) (Found!2557 (index!12405 (_ BitVec 32))) (Intermediate!2557 (undefined!3369 Bool) (index!12406 (_ BitVec 32)) (x!30611 (_ BitVec 32))) (Undefined!2557) (MissingVacant!2557 (index!12407 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15646 (_ BitVec 32)) SeekEntryResult!2557)

(assert (=> b!307279 (= res!164187 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2557 i!1240)))))

(declare-fun b!307280 () Bool)

(assert (=> b!307280 (= e!192406 false)))

(declare-fun lt!151097 () SeekEntryResult!2557)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15646 (_ BitVec 32)) SeekEntryResult!2557)

(assert (=> b!307280 (= lt!151097 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!307281 () Bool)

(declare-fun res!164191 () Bool)

(assert (=> b!307281 (=> (not res!164191) (not e!192406))))

(assert (=> b!307281 (= res!164191 (and (= (size!7758 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7758 a!3293))))))

(declare-fun b!307276 () Bool)

(declare-fun res!164190 () Bool)

(assert (=> b!307276 (=> (not res!164190) (not e!192406))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!307276 (= res!164190 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) (Intermediate!2557 false resIndex!52 resX!52)))))

(declare-fun res!164188 () Bool)

(assert (=> start!30644 (=> (not res!164188) (not e!192406))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30644 (= res!164188 (validMask!0 mask!3709))))

(assert (=> start!30644 e!192406))

(declare-fun array_inv!5360 (array!15646) Bool)

(assert (=> start!30644 (array_inv!5360 a!3293)))

(assert (=> start!30644 true))

(assert (= (and start!30644 res!164188) b!307281))

(assert (= (and b!307281 res!164191) b!307277))

(assert (= (and b!307277 res!164186) b!307274))

(assert (= (and b!307274 res!164192) b!307279))

(assert (= (and b!307279 res!164187) b!307278))

(assert (= (and b!307278 res!164189) b!307276))

(assert (= (and b!307276 res!164190) b!307275))

(assert (= (and b!307275 res!164193) b!307280))

(declare-fun m!317619 () Bool)

(assert (=> b!307277 m!317619))

(declare-fun m!317621 () Bool)

(assert (=> b!307275 m!317621))

(declare-fun m!317623 () Bool)

(assert (=> b!307278 m!317623))

(declare-fun m!317625 () Bool)

(assert (=> b!307274 m!317625))

(declare-fun m!317627 () Bool)

(assert (=> start!30644 m!317627))

(declare-fun m!317629 () Bool)

(assert (=> start!30644 m!317629))

(declare-fun m!317631 () Bool)

(assert (=> b!307279 m!317631))

(declare-fun m!317633 () Bool)

(assert (=> b!307280 m!317633))

(declare-fun m!317635 () Bool)

(assert (=> b!307276 m!317635))

(assert (=> b!307276 m!317635))

(declare-fun m!317637 () Bool)

(assert (=> b!307276 m!317637))

(check-sat (not b!307279) (not b!307280) (not b!307277) (not b!307278) (not start!30644) (not b!307276) (not b!307274))

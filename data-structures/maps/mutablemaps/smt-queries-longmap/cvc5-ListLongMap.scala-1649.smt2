; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30678 () Bool)

(assert start!30678)

(declare-fun res!164665 () Bool)

(declare-fun e!192556 () Bool)

(assert (=> start!30678 (=> (not res!164665) (not e!192556))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30678 (= res!164665 (validMask!0 mask!3709))))

(assert (=> start!30678 e!192556))

(declare-datatypes ((array!15680 0))(
  ( (array!15681 (arr!7423 (Array (_ BitVec 32) (_ BitVec 64))) (size!7775 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15680)

(declare-fun array_inv!5377 (array!15680) Bool)

(assert (=> start!30678 (array_inv!5377 a!3293)))

(assert (=> start!30678 true))

(declare-fun b!307749 () Bool)

(declare-fun res!164668 () Bool)

(assert (=> b!307749 (=> (not res!164668) (not e!192556))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15680 (_ BitVec 32)) Bool)

(assert (=> b!307749 (= res!164668 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!307750 () Bool)

(declare-fun res!164663 () Bool)

(declare-fun e!192554 () Bool)

(assert (=> b!307750 (=> (not res!164663) (not e!192554))))

(declare-datatypes ((SeekEntryResult!2574 0))(
  ( (MissingZero!2574 (index!12472 (_ BitVec 32))) (Found!2574 (index!12473 (_ BitVec 32))) (Intermediate!2574 (undefined!3386 Bool) (index!12474 (_ BitVec 32)) (x!30676 (_ BitVec 32))) (Undefined!2574) (MissingVacant!2574 (index!12475 (_ BitVec 32))) )
))
(declare-fun lt!151169 () SeekEntryResult!2574)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15680 (_ BitVec 32)) SeekEntryResult!2574)

(assert (=> b!307750 (= res!164663 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!151169))))

(declare-fun b!307751 () Bool)

(assert (=> b!307751 (= e!192556 e!192554)))

(declare-fun res!164661 () Bool)

(assert (=> b!307751 (=> (not res!164661) (not e!192554))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!307751 (= res!164661 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151169))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!307751 (= lt!151169 (Intermediate!2574 false resIndex!52 resX!52))))

(declare-fun b!307752 () Bool)

(declare-fun res!164666 () Bool)

(assert (=> b!307752 (=> (not res!164666) (not e!192556))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15680 (_ BitVec 32)) SeekEntryResult!2574)

(assert (=> b!307752 (= res!164666 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2574 i!1240)))))

(declare-fun b!307753 () Bool)

(declare-fun res!164669 () Bool)

(assert (=> b!307753 (=> (not res!164669) (not e!192556))))

(declare-fun arrayContainsKey!0 (array!15680 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!307753 (= res!164669 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!307754 () Bool)

(declare-fun res!164664 () Bool)

(assert (=> b!307754 (=> (not res!164664) (not e!192554))))

(assert (=> b!307754 (= res!164664 (and (= (select (arr!7423 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7775 a!3293))))))

(declare-fun b!307755 () Bool)

(declare-fun res!164670 () Bool)

(assert (=> b!307755 (=> (not res!164670) (not e!192556))))

(assert (=> b!307755 (= res!164670 (and (= (size!7775 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7775 a!3293))))))

(declare-fun b!307756 () Bool)

(declare-fun res!164662 () Bool)

(assert (=> b!307756 (=> (not res!164662) (not e!192556))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!307756 (= res!164662 (validKeyInArray!0 k!2441))))

(declare-fun b!307757 () Bool)

(declare-fun res!164667 () Bool)

(assert (=> b!307757 (=> (not res!164667) (not e!192554))))

(assert (=> b!307757 (= res!164667 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7423 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(declare-fun b!307758 () Bool)

(assert (=> b!307758 (= e!192554 false)))

(declare-fun lt!151168 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!307758 (= lt!151168 (nextIndex!0 index!1781 x!1427 mask!3709))))

(assert (= (and start!30678 res!164665) b!307755))

(assert (= (and b!307755 res!164670) b!307756))

(assert (= (and b!307756 res!164662) b!307753))

(assert (= (and b!307753 res!164669) b!307752))

(assert (= (and b!307752 res!164666) b!307749))

(assert (= (and b!307749 res!164668) b!307751))

(assert (= (and b!307751 res!164661) b!307754))

(assert (= (and b!307754 res!164664) b!307750))

(assert (= (and b!307750 res!164663) b!307757))

(assert (= (and b!307757 res!164667) b!307758))

(declare-fun m!318001 () Bool)

(assert (=> b!307753 m!318001))

(declare-fun m!318003 () Bool)

(assert (=> b!307750 m!318003))

(declare-fun m!318005 () Bool)

(assert (=> b!307756 m!318005))

(declare-fun m!318007 () Bool)

(assert (=> b!307758 m!318007))

(declare-fun m!318009 () Bool)

(assert (=> b!307749 m!318009))

(declare-fun m!318011 () Bool)

(assert (=> start!30678 m!318011))

(declare-fun m!318013 () Bool)

(assert (=> start!30678 m!318013))

(declare-fun m!318015 () Bool)

(assert (=> b!307751 m!318015))

(assert (=> b!307751 m!318015))

(declare-fun m!318017 () Bool)

(assert (=> b!307751 m!318017))

(declare-fun m!318019 () Bool)

(assert (=> b!307757 m!318019))

(declare-fun m!318021 () Bool)

(assert (=> b!307752 m!318021))

(declare-fun m!318023 () Bool)

(assert (=> b!307754 m!318023))

(push 1)


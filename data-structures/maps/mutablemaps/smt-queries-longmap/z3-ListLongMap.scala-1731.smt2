; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31844 () Bool)

(assert start!31844)

(declare-fun res!172783 () Bool)

(declare-fun e!197657 () Bool)

(assert (=> start!31844 (=> (not res!172783) (not e!197657))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31844 (= res!172783 (validMask!0 mask!3709))))

(assert (=> start!31844 e!197657))

(declare-datatypes ((array!16213 0))(
  ( (array!16214 (arr!7670 (Array (_ BitVec 32) (_ BitVec 64))) (size!8022 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16213)

(declare-fun array_inv!5624 (array!16213) Bool)

(assert (=> start!31844 (array_inv!5624 a!3293)))

(assert (=> start!31844 true))

(declare-fun b!318039 () Bool)

(declare-fun e!197655 () Bool)

(declare-fun e!197658 () Bool)

(assert (=> b!318039 (= e!197655 e!197658)))

(declare-fun res!172784 () Bool)

(assert (=> b!318039 (=> (not res!172784) (not e!197658))))

(declare-datatypes ((SeekEntryResult!2821 0))(
  ( (MissingZero!2821 (index!13460 (_ BitVec 32))) (Found!2821 (index!13461 (_ BitVec 32))) (Intermediate!2821 (undefined!3633 Bool) (index!13462 (_ BitVec 32)) (x!31681 (_ BitVec 32))) (Undefined!2821) (MissingVacant!2821 (index!13463 (_ BitVec 32))) )
))
(declare-fun lt!155232 () SeekEntryResult!2821)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun lt!155234 () SeekEntryResult!2821)

(assert (=> b!318039 (= res!172784 (and (= lt!155232 lt!155234) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7670 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16213 (_ BitVec 32)) SeekEntryResult!2821)

(assert (=> b!318039 (= lt!155232 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!318040 () Bool)

(declare-fun res!172781 () Bool)

(assert (=> b!318040 (=> (not res!172781) (not e!197657))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16213 (_ BitVec 32)) Bool)

(assert (=> b!318040 (= res!172781 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!318041 () Bool)

(declare-fun res!172776 () Bool)

(assert (=> b!318041 (=> (not res!172776) (not e!197657))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!318041 (= res!172776 (and (= (size!8022 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!8022 a!3293))))))

(declare-fun b!318042 () Bool)

(declare-fun res!172778 () Bool)

(assert (=> b!318042 (=> (not res!172778) (not e!197657))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16213 (_ BitVec 32)) SeekEntryResult!2821)

(assert (=> b!318042 (= res!172778 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2821 i!1240)))))

(declare-fun b!318043 () Bool)

(assert (=> b!318043 (= e!197657 e!197655)))

(declare-fun res!172779 () Bool)

(assert (=> b!318043 (=> (not res!172779) (not e!197655))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!318043 (= res!172779 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!155234))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!318043 (= lt!155234 (Intermediate!2821 false resIndex!52 resX!52))))

(declare-fun b!318044 () Bool)

(declare-fun res!172785 () Bool)

(assert (=> b!318044 (=> (not res!172785) (not e!197657))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!318044 (= res!172785 (validKeyInArray!0 k0!2441))))

(declare-fun b!318045 () Bool)

(assert (=> b!318045 (= e!197658 (not true))))

(declare-fun e!197656 () Bool)

(assert (=> b!318045 e!197656))

(declare-fun res!172777 () Bool)

(assert (=> b!318045 (=> (not res!172777) (not e!197656))))

(declare-fun lt!155231 () (_ BitVec 32))

(assert (=> b!318045 (= res!172777 (= lt!155232 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155231 k0!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!318045 (= lt!155231 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!318046 () Bool)

(declare-fun res!172780 () Bool)

(assert (=> b!318046 (=> (not res!172780) (not e!197655))))

(assert (=> b!318046 (= res!172780 (and (= (select (arr!7670 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!8022 a!3293))))))

(declare-fun b!318047 () Bool)

(declare-fun res!172782 () Bool)

(assert (=> b!318047 (=> (not res!172782) (not e!197657))))

(declare-fun arrayContainsKey!0 (array!16213 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!318047 (= res!172782 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!318048 () Bool)

(declare-fun lt!155233 () array!16213)

(assert (=> b!318048 (= e!197656 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 lt!155233 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155231 k0!2441 lt!155233 mask!3709)))))

(assert (=> b!318048 (= lt!155233 (array!16214 (store (arr!7670 a!3293) i!1240 k0!2441) (size!8022 a!3293)))))

(assert (= (and start!31844 res!172783) b!318041))

(assert (= (and b!318041 res!172776) b!318044))

(assert (= (and b!318044 res!172785) b!318047))

(assert (= (and b!318047 res!172782) b!318042))

(assert (= (and b!318042 res!172778) b!318040))

(assert (= (and b!318040 res!172781) b!318043))

(assert (= (and b!318043 res!172779) b!318046))

(assert (= (and b!318046 res!172780) b!318039))

(assert (= (and b!318039 res!172784) b!318045))

(assert (= (and b!318045 res!172777) b!318048))

(declare-fun m!326769 () Bool)

(assert (=> b!318043 m!326769))

(assert (=> b!318043 m!326769))

(declare-fun m!326771 () Bool)

(assert (=> b!318043 m!326771))

(declare-fun m!326773 () Bool)

(assert (=> b!318047 m!326773))

(declare-fun m!326775 () Bool)

(assert (=> b!318046 m!326775))

(declare-fun m!326777 () Bool)

(assert (=> b!318048 m!326777))

(declare-fun m!326779 () Bool)

(assert (=> b!318048 m!326779))

(declare-fun m!326781 () Bool)

(assert (=> b!318048 m!326781))

(declare-fun m!326783 () Bool)

(assert (=> start!31844 m!326783))

(declare-fun m!326785 () Bool)

(assert (=> start!31844 m!326785))

(declare-fun m!326787 () Bool)

(assert (=> b!318040 m!326787))

(declare-fun m!326789 () Bool)

(assert (=> b!318039 m!326789))

(declare-fun m!326791 () Bool)

(assert (=> b!318039 m!326791))

(declare-fun m!326793 () Bool)

(assert (=> b!318044 m!326793))

(declare-fun m!326795 () Bool)

(assert (=> b!318045 m!326795))

(declare-fun m!326797 () Bool)

(assert (=> b!318045 m!326797))

(declare-fun m!326799 () Bool)

(assert (=> b!318042 m!326799))

(check-sat (not b!318044) (not b!318047) (not b!318048) (not b!318045) (not b!318042) (not b!318043) (not b!318040) (not b!318039) (not start!31844))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31808 () Bool)

(assert start!31808)

(declare-fun res!172242 () Bool)

(declare-fun e!197389 () Bool)

(assert (=> start!31808 (=> (not res!172242) (not e!197389))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31808 (= res!172242 (validMask!0 mask!3709))))

(assert (=> start!31808 e!197389))

(declare-datatypes ((array!16177 0))(
  ( (array!16178 (arr!7652 (Array (_ BitVec 32) (_ BitVec 64))) (size!8004 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16177)

(declare-fun array_inv!5606 (array!16177) Bool)

(assert (=> start!31808 (array_inv!5606 a!3293)))

(assert (=> start!31808 true))

(declare-fun b!317499 () Bool)

(declare-fun res!172241 () Bool)

(assert (=> b!317499 (=> (not res!172241) (not e!197389))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16177 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!317499 (= res!172241 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!317500 () Bool)

(declare-fun e!197386 () Bool)

(assert (=> b!317500 (= e!197386 (not true))))

(declare-fun e!197387 () Bool)

(assert (=> b!317500 e!197387))

(declare-fun res!172243 () Bool)

(assert (=> b!317500 (=> (not res!172243) (not e!197387))))

(declare-fun lt!155017 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2803 0))(
  ( (MissingZero!2803 (index!13388 (_ BitVec 32))) (Found!2803 (index!13389 (_ BitVec 32))) (Intermediate!2803 (undefined!3615 Bool) (index!13390 (_ BitVec 32)) (x!31615 (_ BitVec 32))) (Undefined!2803) (MissingVacant!2803 (index!13391 (_ BitVec 32))) )
))
(declare-fun lt!155015 () SeekEntryResult!2803)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16177 (_ BitVec 32)) SeekEntryResult!2803)

(assert (=> b!317500 (= res!172243 (= lt!155015 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155017 k0!2441 a!3293 mask!3709)))))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317500 (= lt!155017 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!317501 () Bool)

(declare-fun res!172245 () Bool)

(declare-fun e!197388 () Bool)

(assert (=> b!317501 (=> (not res!172245) (not e!197388))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!317501 (= res!172245 (and (= (select (arr!7652 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!8004 a!3293))))))

(declare-fun lt!155016 () array!16177)

(declare-fun b!317502 () Bool)

(assert (=> b!317502 (= e!197387 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 lt!155016 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155017 k0!2441 lt!155016 mask!3709)))))

(assert (=> b!317502 (= lt!155016 (array!16178 (store (arr!7652 a!3293) i!1240 k0!2441) (size!8004 a!3293)))))

(declare-fun b!317503 () Bool)

(declare-fun res!172236 () Bool)

(assert (=> b!317503 (=> (not res!172236) (not e!197389))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16177 (_ BitVec 32)) Bool)

(assert (=> b!317503 (= res!172236 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!317504 () Bool)

(assert (=> b!317504 (= e!197388 e!197386)))

(declare-fun res!172240 () Bool)

(assert (=> b!317504 (=> (not res!172240) (not e!197386))))

(declare-fun lt!155018 () SeekEntryResult!2803)

(assert (=> b!317504 (= res!172240 (and (= lt!155015 lt!155018) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7652 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!317504 (= lt!155015 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!317505 () Bool)

(assert (=> b!317505 (= e!197389 e!197388)))

(declare-fun res!172239 () Bool)

(assert (=> b!317505 (=> (not res!172239) (not e!197388))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317505 (= res!172239 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!155018))))

(assert (=> b!317505 (= lt!155018 (Intermediate!2803 false resIndex!52 resX!52))))

(declare-fun b!317506 () Bool)

(declare-fun res!172237 () Bool)

(assert (=> b!317506 (=> (not res!172237) (not e!197389))))

(assert (=> b!317506 (= res!172237 (and (= (size!8004 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!8004 a!3293))))))

(declare-fun b!317507 () Bool)

(declare-fun res!172238 () Bool)

(assert (=> b!317507 (=> (not res!172238) (not e!197389))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!317507 (= res!172238 (validKeyInArray!0 k0!2441))))

(declare-fun b!317508 () Bool)

(declare-fun res!172244 () Bool)

(assert (=> b!317508 (=> (not res!172244) (not e!197389))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16177 (_ BitVec 32)) SeekEntryResult!2803)

(assert (=> b!317508 (= res!172244 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2803 i!1240)))))

(assert (= (and start!31808 res!172242) b!317506))

(assert (= (and b!317506 res!172237) b!317507))

(assert (= (and b!317507 res!172238) b!317499))

(assert (= (and b!317499 res!172241) b!317508))

(assert (= (and b!317508 res!172244) b!317503))

(assert (= (and b!317503 res!172236) b!317505))

(assert (= (and b!317505 res!172239) b!317501))

(assert (= (and b!317501 res!172245) b!317504))

(assert (= (and b!317504 res!172240) b!317500))

(assert (= (and b!317500 res!172243) b!317502))

(declare-fun m!326193 () Bool)

(assert (=> start!31808 m!326193))

(declare-fun m!326195 () Bool)

(assert (=> start!31808 m!326195))

(declare-fun m!326197 () Bool)

(assert (=> b!317503 m!326197))

(declare-fun m!326199 () Bool)

(assert (=> b!317507 m!326199))

(declare-fun m!326201 () Bool)

(assert (=> b!317505 m!326201))

(assert (=> b!317505 m!326201))

(declare-fun m!326203 () Bool)

(assert (=> b!317505 m!326203))

(declare-fun m!326205 () Bool)

(assert (=> b!317502 m!326205))

(declare-fun m!326207 () Bool)

(assert (=> b!317502 m!326207))

(declare-fun m!326209 () Bool)

(assert (=> b!317502 m!326209))

(declare-fun m!326211 () Bool)

(assert (=> b!317508 m!326211))

(declare-fun m!326213 () Bool)

(assert (=> b!317499 m!326213))

(declare-fun m!326215 () Bool)

(assert (=> b!317500 m!326215))

(declare-fun m!326217 () Bool)

(assert (=> b!317500 m!326217))

(declare-fun m!326219 () Bool)

(assert (=> b!317501 m!326219))

(declare-fun m!326221 () Bool)

(assert (=> b!317504 m!326221))

(declare-fun m!326223 () Bool)

(assert (=> b!317504 m!326223))

(check-sat (not b!317502) (not b!317507) (not b!317499) (not b!317500) (not b!317503) (not b!317508) (not b!317505) (not start!31808) (not b!317504))

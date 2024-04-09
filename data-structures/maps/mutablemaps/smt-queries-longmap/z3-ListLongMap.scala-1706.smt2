; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31376 () Bool)

(assert start!31376)

(declare-fun b!314213 () Bool)

(declare-fun e!195729 () Bool)

(assert (=> b!314213 (= e!195729 false)))

(declare-datatypes ((array!16045 0))(
  ( (array!16046 (arr!7595 (Array (_ BitVec 32) (_ BitVec 64))) (size!7947 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16045)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2746 0))(
  ( (MissingZero!2746 (index!13160 (_ BitVec 32))) (Found!2746 (index!13161 (_ BitVec 32))) (Intermediate!2746 (undefined!3558 Bool) (index!13162 (_ BitVec 32)) (x!31355 (_ BitVec 32))) (Undefined!2746) (MissingVacant!2746 (index!13163 (_ BitVec 32))) )
))
(declare-fun lt!153863 () SeekEntryResult!2746)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16045 (_ BitVec 32)) SeekEntryResult!2746)

(assert (=> b!314213 (= lt!153863 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!314214 () Bool)

(declare-fun res!170123 () Bool)

(assert (=> b!314214 (=> (not res!170123) (not e!195729))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16045 (_ BitVec 32)) SeekEntryResult!2746)

(assert (=> b!314214 (= res!170123 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2746 i!1240)))))

(declare-fun b!314216 () Bool)

(declare-fun res!170124 () Bool)

(assert (=> b!314216 (=> (not res!170124) (not e!195729))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!314216 (= res!170124 (validKeyInArray!0 k0!2441))))

(declare-fun b!314217 () Bool)

(declare-fun res!170120 () Bool)

(assert (=> b!314217 (=> (not res!170120) (not e!195729))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16045 (_ BitVec 32)) Bool)

(assert (=> b!314217 (= res!170120 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!314218 () Bool)

(declare-fun res!170126 () Bool)

(assert (=> b!314218 (=> (not res!170126) (not e!195729))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!314218 (= res!170126 (and (= (select (arr!7595 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7947 a!3293))))))

(declare-fun res!170125 () Bool)

(assert (=> start!31376 (=> (not res!170125) (not e!195729))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31376 (= res!170125 (validMask!0 mask!3709))))

(assert (=> start!31376 e!195729))

(declare-fun array_inv!5549 (array!16045) Bool)

(assert (=> start!31376 (array_inv!5549 a!3293)))

(assert (=> start!31376 true))

(declare-fun b!314215 () Bool)

(declare-fun res!170127 () Bool)

(assert (=> b!314215 (=> (not res!170127) (not e!195729))))

(declare-fun arrayContainsKey!0 (array!16045 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!314215 (= res!170127 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!314219 () Bool)

(declare-fun res!170122 () Bool)

(assert (=> b!314219 (=> (not res!170122) (not e!195729))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!314219 (= res!170122 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) (Intermediate!2746 false resIndex!52 resX!52)))))

(declare-fun b!314220 () Bool)

(declare-fun res!170121 () Bool)

(assert (=> b!314220 (=> (not res!170121) (not e!195729))))

(assert (=> b!314220 (= res!170121 (and (= (size!7947 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7947 a!3293))))))

(assert (= (and start!31376 res!170125) b!314220))

(assert (= (and b!314220 res!170121) b!314216))

(assert (= (and b!314216 res!170124) b!314215))

(assert (= (and b!314215 res!170127) b!314214))

(assert (= (and b!314214 res!170123) b!314217))

(assert (= (and b!314217 res!170120) b!314219))

(assert (= (and b!314219 res!170122) b!314218))

(assert (= (and b!314218 res!170126) b!314213))

(declare-fun m!323817 () Bool)

(assert (=> b!314213 m!323817))

(declare-fun m!323819 () Bool)

(assert (=> b!314218 m!323819))

(declare-fun m!323821 () Bool)

(assert (=> start!31376 m!323821))

(declare-fun m!323823 () Bool)

(assert (=> start!31376 m!323823))

(declare-fun m!323825 () Bool)

(assert (=> b!314215 m!323825))

(declare-fun m!323827 () Bool)

(assert (=> b!314217 m!323827))

(declare-fun m!323829 () Bool)

(assert (=> b!314214 m!323829))

(declare-fun m!323831 () Bool)

(assert (=> b!314219 m!323831))

(assert (=> b!314219 m!323831))

(declare-fun m!323833 () Bool)

(assert (=> b!314219 m!323833))

(declare-fun m!323835 () Bool)

(assert (=> b!314216 m!323835))

(check-sat (not b!314213) (not b!314214) (not b!314216) (not b!314219) (not start!31376) (not b!314215) (not b!314217))

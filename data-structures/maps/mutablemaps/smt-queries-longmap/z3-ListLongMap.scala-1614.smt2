; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30416 () Bool)

(assert start!30416)

(declare-fun b!304170 () Bool)

(declare-fun res!161681 () Bool)

(declare-fun e!191203 () Bool)

(assert (=> b!304170 (=> (not res!161681) (not e!191203))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-datatypes ((array!15469 0))(
  ( (array!15470 (arr!7319 (Array (_ BitVec 32) (_ BitVec 64))) (size!7671 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15469)

(assert (=> b!304170 (= res!161681 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7319 a!3293) index!1781) k0!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7319 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7319 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!304171 () Bool)

(declare-fun res!161682 () Bool)

(declare-fun e!191202 () Bool)

(assert (=> b!304171 (=> (not res!161682) (not e!191202))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!304171 (= res!161682 (and (= (size!7671 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7671 a!3293))))))

(declare-fun b!304172 () Bool)

(declare-fun res!161680 () Bool)

(assert (=> b!304172 (=> (not res!161680) (not e!191203))))

(declare-datatypes ((SeekEntryResult!2470 0))(
  ( (MissingZero!2470 (index!12056 (_ BitVec 32))) (Found!2470 (index!12057 (_ BitVec 32))) (Intermediate!2470 (undefined!3282 Bool) (index!12058 (_ BitVec 32)) (x!30283 (_ BitVec 32))) (Undefined!2470) (MissingVacant!2470 (index!12059 (_ BitVec 32))) )
))
(declare-fun lt!150398 () SeekEntryResult!2470)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15469 (_ BitVec 32)) SeekEntryResult!2470)

(assert (=> b!304172 (= res!161680 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!150398))))

(declare-fun res!161673 () Bool)

(assert (=> start!30416 (=> (not res!161673) (not e!191202))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30416 (= res!161673 (validMask!0 mask!3709))))

(assert (=> start!30416 e!191202))

(declare-fun array_inv!5273 (array!15469) Bool)

(assert (=> start!30416 (array_inv!5273 a!3293)))

(assert (=> start!30416 true))

(declare-fun b!304173 () Bool)

(declare-fun res!161678 () Bool)

(assert (=> b!304173 (=> (not res!161678) (not e!191203))))

(assert (=> b!304173 (= res!161678 (and (= (select (arr!7319 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7671 a!3293))))))

(declare-fun b!304174 () Bool)

(assert (=> b!304174 (= e!191203 false)))

(declare-fun lt!150397 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304174 (= lt!150397 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!304175 () Bool)

(declare-fun res!161675 () Bool)

(assert (=> b!304175 (=> (not res!161675) (not e!191202))))

(declare-fun arrayContainsKey!0 (array!15469 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!304175 (= res!161675 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!304176 () Bool)

(declare-fun res!161677 () Bool)

(assert (=> b!304176 (=> (not res!161677) (not e!191202))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15469 (_ BitVec 32)) Bool)

(assert (=> b!304176 (= res!161677 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!304177 () Bool)

(assert (=> b!304177 (= e!191202 e!191203)))

(declare-fun res!161674 () Bool)

(assert (=> b!304177 (=> (not res!161674) (not e!191203))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304177 (= res!161674 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!150398))))

(assert (=> b!304177 (= lt!150398 (Intermediate!2470 false resIndex!52 resX!52))))

(declare-fun b!304178 () Bool)

(declare-fun res!161679 () Bool)

(assert (=> b!304178 (=> (not res!161679) (not e!191202))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!304178 (= res!161679 (validKeyInArray!0 k0!2441))))

(declare-fun b!304179 () Bool)

(declare-fun res!161676 () Bool)

(assert (=> b!304179 (=> (not res!161676) (not e!191202))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15469 (_ BitVec 32)) SeekEntryResult!2470)

(assert (=> b!304179 (= res!161676 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2470 i!1240)))))

(assert (= (and start!30416 res!161673) b!304171))

(assert (= (and b!304171 res!161682) b!304178))

(assert (= (and b!304178 res!161679) b!304175))

(assert (= (and b!304175 res!161675) b!304179))

(assert (= (and b!304179 res!161676) b!304176))

(assert (= (and b!304176 res!161677) b!304177))

(assert (= (and b!304177 res!161674) b!304173))

(assert (= (and b!304173 res!161678) b!304172))

(assert (= (and b!304172 res!161680) b!304170))

(assert (= (and b!304170 res!161681) b!304174))

(declare-fun m!315319 () Bool)

(assert (=> start!30416 m!315319))

(declare-fun m!315321 () Bool)

(assert (=> start!30416 m!315321))

(declare-fun m!315323 () Bool)

(assert (=> b!304173 m!315323))

(declare-fun m!315325 () Bool)

(assert (=> b!304179 m!315325))

(declare-fun m!315327 () Bool)

(assert (=> b!304178 m!315327))

(declare-fun m!315329 () Bool)

(assert (=> b!304172 m!315329))

(declare-fun m!315331 () Bool)

(assert (=> b!304170 m!315331))

(declare-fun m!315333 () Bool)

(assert (=> b!304177 m!315333))

(assert (=> b!304177 m!315333))

(declare-fun m!315335 () Bool)

(assert (=> b!304177 m!315335))

(declare-fun m!315337 () Bool)

(assert (=> b!304175 m!315337))

(declare-fun m!315339 () Bool)

(assert (=> b!304174 m!315339))

(declare-fun m!315341 () Bool)

(assert (=> b!304176 m!315341))

(check-sat (not b!304172) (not b!304176) (not start!30416) (not b!304178) (not b!304174) (not b!304175) (not b!304177) (not b!304179))
(check-sat)

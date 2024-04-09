; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30278 () Bool)

(assert start!30278)

(declare-fun b!302797 () Bool)

(declare-fun res!160447 () Bool)

(declare-fun e!190719 () Bool)

(assert (=> b!302797 (=> (not res!160447) (not e!190719))))

(declare-datatypes ((array!15382 0))(
  ( (array!15383 (arr!7277 (Array (_ BitVec 32) (_ BitVec 64))) (size!7629 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15382)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15382 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!302797 (= res!160447 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!302798 () Bool)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun e!190720 () Bool)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!302798 (= e!190720 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7277 a!3293) index!1781) k0!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7277 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7277 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!3709 #b00000000000000000000000000000000)))))

(declare-fun b!302799 () Bool)

(declare-fun res!160442 () Bool)

(assert (=> b!302799 (=> (not res!160442) (not e!190720))))

(declare-datatypes ((SeekEntryResult!2428 0))(
  ( (MissingZero!2428 (index!11888 (_ BitVec 32))) (Found!2428 (index!11889 (_ BitVec 32))) (Intermediate!2428 (undefined!3240 Bool) (index!11890 (_ BitVec 32)) (x!30120 (_ BitVec 32))) (Undefined!2428) (MissingVacant!2428 (index!11891 (_ BitVec 32))) )
))
(declare-fun lt!150116 () SeekEntryResult!2428)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15382 (_ BitVec 32)) SeekEntryResult!2428)

(assert (=> b!302799 (= res!160442 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!150116))))

(declare-fun b!302800 () Bool)

(declare-fun res!160444 () Bool)

(assert (=> b!302800 (=> (not res!160444) (not e!190719))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15382 (_ BitVec 32)) Bool)

(assert (=> b!302800 (= res!160444 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!302801 () Bool)

(declare-fun res!160449 () Bool)

(assert (=> b!302801 (=> (not res!160449) (not e!190719))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15382 (_ BitVec 32)) SeekEntryResult!2428)

(assert (=> b!302801 (= res!160449 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2428 i!1240)))))

(declare-fun b!302802 () Bool)

(declare-fun res!160445 () Bool)

(assert (=> b!302802 (=> (not res!160445) (not e!190719))))

(assert (=> b!302802 (= res!160445 (and (= (size!7629 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7629 a!3293))))))

(declare-fun res!160446 () Bool)

(assert (=> start!30278 (=> (not res!160446) (not e!190719))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30278 (= res!160446 (validMask!0 mask!3709))))

(assert (=> start!30278 e!190719))

(declare-fun array_inv!5231 (array!15382) Bool)

(assert (=> start!30278 (array_inv!5231 a!3293)))

(assert (=> start!30278 true))

(declare-fun b!302803 () Bool)

(declare-fun res!160441 () Bool)

(assert (=> b!302803 (=> (not res!160441) (not e!190720))))

(assert (=> b!302803 (= res!160441 (and (= (select (arr!7277 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7629 a!3293))))))

(declare-fun b!302804 () Bool)

(declare-fun res!160443 () Bool)

(assert (=> b!302804 (=> (not res!160443) (not e!190719))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!302804 (= res!160443 (validKeyInArray!0 k0!2441))))

(declare-fun b!302805 () Bool)

(assert (=> b!302805 (= e!190719 e!190720)))

(declare-fun res!160448 () Bool)

(assert (=> b!302805 (=> (not res!160448) (not e!190720))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!302805 (= res!160448 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!150116))))

(assert (=> b!302805 (= lt!150116 (Intermediate!2428 false resIndex!52 resX!52))))

(assert (= (and start!30278 res!160446) b!302802))

(assert (= (and b!302802 res!160445) b!302804))

(assert (= (and b!302804 res!160443) b!302797))

(assert (= (and b!302797 res!160447) b!302801))

(assert (= (and b!302801 res!160449) b!302800))

(assert (= (and b!302800 res!160444) b!302805))

(assert (= (and b!302805 res!160448) b!302803))

(assert (= (and b!302803 res!160441) b!302799))

(assert (= (and b!302799 res!160442) b!302798))

(declare-fun m!314267 () Bool)

(assert (=> b!302800 m!314267))

(declare-fun m!314269 () Bool)

(assert (=> b!302805 m!314269))

(assert (=> b!302805 m!314269))

(declare-fun m!314271 () Bool)

(assert (=> b!302805 m!314271))

(declare-fun m!314273 () Bool)

(assert (=> b!302799 m!314273))

(declare-fun m!314275 () Bool)

(assert (=> b!302797 m!314275))

(declare-fun m!314277 () Bool)

(assert (=> start!30278 m!314277))

(declare-fun m!314279 () Bool)

(assert (=> start!30278 m!314279))

(declare-fun m!314281 () Bool)

(assert (=> b!302804 m!314281))

(declare-fun m!314283 () Bool)

(assert (=> b!302801 m!314283))

(declare-fun m!314285 () Bool)

(assert (=> b!302803 m!314285))

(declare-fun m!314287 () Bool)

(assert (=> b!302798 m!314287))

(check-sat (not b!302801) (not b!302797) (not b!302805) (not b!302799) (not b!302804) (not b!302800) (not start!30278))
(check-sat)

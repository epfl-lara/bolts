; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30308 () Bool)

(assert start!30308)

(declare-fun b!303179 () Bool)

(declare-fun e!190831 () Bool)

(assert (=> b!303179 (= e!190831 false)))

(declare-datatypes ((array!15412 0))(
  ( (array!15413 (arr!7292 (Array (_ BitVec 32) (_ BitVec 64))) (size!7644 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15412)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2443 0))(
  ( (MissingZero!2443 (index!11948 (_ BitVec 32))) (Found!2443 (index!11949 (_ BitVec 32))) (Intermediate!2443 (undefined!3255 Bool) (index!11950 (_ BitVec 32)) (x!30175 (_ BitVec 32))) (Undefined!2443) (MissingVacant!2443 (index!11951 (_ BitVec 32))) )
))
(declare-fun lt!150161 () SeekEntryResult!2443)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15412 (_ BitVec 32)) SeekEntryResult!2443)

(assert (=> b!303179 (= lt!150161 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!303180 () Bool)

(declare-fun res!160824 () Bool)

(assert (=> b!303180 (=> (not res!160824) (not e!190831))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!303180 (= res!160824 (and (= (size!7644 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7644 a!3293))))))

(declare-fun b!303181 () Bool)

(declare-fun res!160828 () Bool)

(assert (=> b!303181 (=> (not res!160828) (not e!190831))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!303181 (= res!160828 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) (Intermediate!2443 false resIndex!52 resX!52)))))

(declare-fun res!160830 () Bool)

(assert (=> start!30308 (=> (not res!160830) (not e!190831))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30308 (= res!160830 (validMask!0 mask!3709))))

(assert (=> start!30308 e!190831))

(declare-fun array_inv!5246 (array!15412) Bool)

(assert (=> start!30308 (array_inv!5246 a!3293)))

(assert (=> start!30308 true))

(declare-fun b!303182 () Bool)

(declare-fun res!160829 () Bool)

(assert (=> b!303182 (=> (not res!160829) (not e!190831))))

(declare-fun arrayContainsKey!0 (array!15412 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!303182 (= res!160829 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!303183 () Bool)

(declare-fun res!160827 () Bool)

(assert (=> b!303183 (=> (not res!160827) (not e!190831))))

(assert (=> b!303183 (= res!160827 (and (= (select (arr!7292 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7644 a!3293))))))

(declare-fun b!303184 () Bool)

(declare-fun res!160825 () Bool)

(assert (=> b!303184 (=> (not res!160825) (not e!190831))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15412 (_ BitVec 32)) SeekEntryResult!2443)

(assert (=> b!303184 (= res!160825 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2443 i!1240)))))

(declare-fun b!303185 () Bool)

(declare-fun res!160826 () Bool)

(assert (=> b!303185 (=> (not res!160826) (not e!190831))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15412 (_ BitVec 32)) Bool)

(assert (=> b!303185 (= res!160826 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!303186 () Bool)

(declare-fun res!160823 () Bool)

(assert (=> b!303186 (=> (not res!160823) (not e!190831))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!303186 (= res!160823 (validKeyInArray!0 k0!2441))))

(assert (= (and start!30308 res!160830) b!303180))

(assert (= (and b!303180 res!160824) b!303186))

(assert (= (and b!303186 res!160823) b!303182))

(assert (= (and b!303182 res!160829) b!303184))

(assert (= (and b!303184 res!160825) b!303185))

(assert (= (and b!303185 res!160826) b!303181))

(assert (= (and b!303181 res!160828) b!303183))

(assert (= (and b!303183 res!160827) b!303179))

(declare-fun m!314583 () Bool)

(assert (=> b!303181 m!314583))

(assert (=> b!303181 m!314583))

(declare-fun m!314585 () Bool)

(assert (=> b!303181 m!314585))

(declare-fun m!314587 () Bool)

(assert (=> b!303179 m!314587))

(declare-fun m!314589 () Bool)

(assert (=> b!303185 m!314589))

(declare-fun m!314591 () Bool)

(assert (=> b!303182 m!314591))

(declare-fun m!314593 () Bool)

(assert (=> b!303186 m!314593))

(declare-fun m!314595 () Bool)

(assert (=> start!30308 m!314595))

(declare-fun m!314597 () Bool)

(assert (=> start!30308 m!314597))

(declare-fun m!314599 () Bool)

(assert (=> b!303184 m!314599))

(declare-fun m!314601 () Bool)

(assert (=> b!303183 m!314601))

(check-sat (not b!303184) (not b!303179) (not b!303182) (not b!303186) (not start!30308) (not b!303185) (not b!303181))

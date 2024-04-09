; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30158 () Bool)

(assert start!30158)

(declare-fun res!159539 () Bool)

(declare-fun e!190354 () Bool)

(assert (=> start!30158 (=> (not res!159539) (not e!190354))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30158 (= res!159539 (validMask!0 mask!3709))))

(assert (=> start!30158 e!190354))

(declare-datatypes ((array!15307 0))(
  ( (array!15308 (arr!7241 (Array (_ BitVec 32) (_ BitVec 64))) (size!7593 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15307)

(declare-fun array_inv!5195 (array!15307) Bool)

(assert (=> start!30158 (array_inv!5195 a!3293)))

(assert (=> start!30158 true))

(declare-fun b!301770 () Bool)

(declare-fun res!159540 () Bool)

(assert (=> b!301770 (=> (not res!159540) (not e!190354))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15307 (_ BitVec 32)) Bool)

(assert (=> b!301770 (= res!159540 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun b!301771 () Bool)

(assert (=> b!301771 (= e!190354 (and (= (select (arr!7241 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7593 a!3293)) (bvslt mask!3709 #b00000000000000000000000000000000)))))

(declare-fun b!301772 () Bool)

(declare-fun res!159541 () Bool)

(assert (=> b!301772 (=> (not res!159541) (not e!190354))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2392 0))(
  ( (MissingZero!2392 (index!11744 (_ BitVec 32))) (Found!2392 (index!11745 (_ BitVec 32))) (Intermediate!2392 (undefined!3204 Bool) (index!11746 (_ BitVec 32)) (x!29982 (_ BitVec 32))) (Undefined!2392) (MissingVacant!2392 (index!11747 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15307 (_ BitVec 32)) SeekEntryResult!2392)

(assert (=> b!301772 (= res!159541 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2392 i!1240)))))

(declare-fun b!301773 () Bool)

(declare-fun res!159542 () Bool)

(assert (=> b!301773 (=> (not res!159542) (not e!190354))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!301773 (= res!159542 (validKeyInArray!0 k0!2441))))

(declare-fun b!301774 () Bool)

(declare-fun res!159537 () Bool)

(assert (=> b!301774 (=> (not res!159537) (not e!190354))))

(declare-fun arrayContainsKey!0 (array!15307 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!301774 (= res!159537 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!301775 () Bool)

(declare-fun res!159543 () Bool)

(assert (=> b!301775 (=> (not res!159543) (not e!190354))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15307 (_ BitVec 32)) SeekEntryResult!2392)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!301775 (= res!159543 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) (Intermediate!2392 false resIndex!52 resX!52)))))

(declare-fun b!301776 () Bool)

(declare-fun res!159538 () Bool)

(assert (=> b!301776 (=> (not res!159538) (not e!190354))))

(assert (=> b!301776 (= res!159538 (and (= (size!7593 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7593 a!3293))))))

(assert (= (and start!30158 res!159539) b!301776))

(assert (= (and b!301776 res!159538) b!301773))

(assert (= (and b!301773 res!159542) b!301774))

(assert (= (and b!301774 res!159537) b!301772))

(assert (= (and b!301772 res!159541) b!301770))

(assert (= (and b!301770 res!159540) b!301775))

(assert (= (and b!301775 res!159543) b!301771))

(declare-fun m!313471 () Bool)

(assert (=> b!301772 m!313471))

(declare-fun m!313473 () Bool)

(assert (=> b!301770 m!313473))

(declare-fun m!313475 () Bool)

(assert (=> b!301771 m!313475))

(declare-fun m!313477 () Bool)

(assert (=> b!301774 m!313477))

(declare-fun m!313479 () Bool)

(assert (=> b!301773 m!313479))

(declare-fun m!313481 () Bool)

(assert (=> start!30158 m!313481))

(declare-fun m!313483 () Bool)

(assert (=> start!30158 m!313483))

(declare-fun m!313485 () Bool)

(assert (=> b!301775 m!313485))

(assert (=> b!301775 m!313485))

(declare-fun m!313487 () Bool)

(assert (=> b!301775 m!313487))

(check-sat (not b!301774) (not b!301770) (not b!301772) (not b!301773) (not b!301775) (not start!30158))
(check-sat)

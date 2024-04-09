; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30302 () Bool)

(assert start!30302)

(declare-fun b!303107 () Bool)

(declare-fun res!160753 () Bool)

(declare-fun e!190812 () Bool)

(assert (=> b!303107 (=> (not res!160753) (not e!190812))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!303107 (= res!160753 (validKeyInArray!0 k0!2441))))

(declare-fun b!303108 () Bool)

(declare-fun res!160758 () Bool)

(assert (=> b!303108 (=> (not res!160758) (not e!190812))))

(declare-datatypes ((array!15406 0))(
  ( (array!15407 (arr!7289 (Array (_ BitVec 32) (_ BitVec 64))) (size!7641 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15406)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2440 0))(
  ( (MissingZero!2440 (index!11936 (_ BitVec 32))) (Found!2440 (index!11937 (_ BitVec 32))) (Intermediate!2440 (undefined!3252 Bool) (index!11938 (_ BitVec 32)) (x!30164 (_ BitVec 32))) (Undefined!2440) (MissingVacant!2440 (index!11939 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15406 (_ BitVec 32)) SeekEntryResult!2440)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!303108 (= res!160758 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) (Intermediate!2440 false resIndex!52 resX!52)))))

(declare-fun b!303109 () Bool)

(assert (=> b!303109 (= e!190812 false)))

(declare-fun lt!150152 () SeekEntryResult!2440)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!303109 (= lt!150152 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!303110 () Bool)

(declare-fun res!160757 () Bool)

(assert (=> b!303110 (=> (not res!160757) (not e!190812))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15406 (_ BitVec 32)) SeekEntryResult!2440)

(assert (=> b!303110 (= res!160757 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2440 i!1240)))))

(declare-fun b!303111 () Bool)

(declare-fun res!160756 () Bool)

(assert (=> b!303111 (=> (not res!160756) (not e!190812))))

(declare-fun arrayContainsKey!0 (array!15406 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!303111 (= res!160756 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!303112 () Bool)

(declare-fun res!160754 () Bool)

(assert (=> b!303112 (=> (not res!160754) (not e!190812))))

(assert (=> b!303112 (= res!160754 (and (= (size!7641 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7641 a!3293))))))

(declare-fun b!303113 () Bool)

(declare-fun res!160755 () Bool)

(assert (=> b!303113 (=> (not res!160755) (not e!190812))))

(assert (=> b!303113 (= res!160755 (and (= (select (arr!7289 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7641 a!3293))))))

(declare-fun b!303114 () Bool)

(declare-fun res!160752 () Bool)

(assert (=> b!303114 (=> (not res!160752) (not e!190812))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15406 (_ BitVec 32)) Bool)

(assert (=> b!303114 (= res!160752 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun res!160751 () Bool)

(assert (=> start!30302 (=> (not res!160751) (not e!190812))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30302 (= res!160751 (validMask!0 mask!3709))))

(assert (=> start!30302 e!190812))

(declare-fun array_inv!5243 (array!15406) Bool)

(assert (=> start!30302 (array_inv!5243 a!3293)))

(assert (=> start!30302 true))

(assert (= (and start!30302 res!160751) b!303112))

(assert (= (and b!303112 res!160754) b!303107))

(assert (= (and b!303107 res!160753) b!303111))

(assert (= (and b!303111 res!160756) b!303110))

(assert (= (and b!303110 res!160757) b!303114))

(assert (= (and b!303114 res!160752) b!303108))

(assert (= (and b!303108 res!160758) b!303113))

(assert (= (and b!303113 res!160755) b!303109))

(declare-fun m!314523 () Bool)

(assert (=> b!303109 m!314523))

(declare-fun m!314525 () Bool)

(assert (=> b!303108 m!314525))

(assert (=> b!303108 m!314525))

(declare-fun m!314527 () Bool)

(assert (=> b!303108 m!314527))

(declare-fun m!314529 () Bool)

(assert (=> b!303110 m!314529))

(declare-fun m!314531 () Bool)

(assert (=> b!303113 m!314531))

(declare-fun m!314533 () Bool)

(assert (=> start!30302 m!314533))

(declare-fun m!314535 () Bool)

(assert (=> start!30302 m!314535))

(declare-fun m!314537 () Bool)

(assert (=> b!303107 m!314537))

(declare-fun m!314539 () Bool)

(assert (=> b!303111 m!314539))

(declare-fun m!314541 () Bool)

(assert (=> b!303114 m!314541))

(check-sat (not b!303107) (not b!303108) (not start!30302) (not b!303109) (not b!303110) (not b!303111) (not b!303114))

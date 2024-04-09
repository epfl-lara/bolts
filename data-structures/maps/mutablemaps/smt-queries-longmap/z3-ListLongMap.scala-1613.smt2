; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30410 () Bool)

(assert start!30410)

(declare-fun b!304080 () Bool)

(declare-fun res!161583 () Bool)

(declare-fun e!191175 () Bool)

(assert (=> b!304080 (=> (not res!161583) (not e!191175))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2467 0))(
  ( (MissingZero!2467 (index!12044 (_ BitVec 32))) (Found!2467 (index!12045 (_ BitVec 32))) (Intermediate!2467 (undefined!3279 Bool) (index!12046 (_ BitVec 32)) (x!30272 (_ BitVec 32))) (Undefined!2467) (MissingVacant!2467 (index!12047 (_ BitVec 32))) )
))
(declare-fun lt!150379 () SeekEntryResult!2467)

(declare-datatypes ((array!15463 0))(
  ( (array!15464 (arr!7316 (Array (_ BitVec 32) (_ BitVec 64))) (size!7668 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15463)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15463 (_ BitVec 32)) SeekEntryResult!2467)

(assert (=> b!304080 (= res!161583 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!150379))))

(declare-fun b!304081 () Bool)

(declare-fun res!161585 () Bool)

(declare-fun e!191174 () Bool)

(assert (=> b!304081 (=> (not res!161585) (not e!191174))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15463 (_ BitVec 32)) Bool)

(assert (=> b!304081 (= res!161585 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!304082 () Bool)

(declare-fun res!161592 () Bool)

(assert (=> b!304082 (=> (not res!161592) (not e!191174))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!304082 (= res!161592 (and (= (size!7668 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7668 a!3293))))))

(declare-fun b!304083 () Bool)

(declare-fun res!161589 () Bool)

(assert (=> b!304083 (=> (not res!161589) (not e!191174))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15463 (_ BitVec 32)) SeekEntryResult!2467)

(assert (=> b!304083 (= res!161589 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2467 i!1240)))))

(declare-fun res!161587 () Bool)

(assert (=> start!30410 (=> (not res!161587) (not e!191174))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30410 (= res!161587 (validMask!0 mask!3709))))

(assert (=> start!30410 e!191174))

(declare-fun array_inv!5270 (array!15463) Bool)

(assert (=> start!30410 (array_inv!5270 a!3293)))

(assert (=> start!30410 true))

(declare-fun b!304084 () Bool)

(declare-fun res!161591 () Bool)

(assert (=> b!304084 (=> (not res!161591) (not e!191174))))

(declare-fun arrayContainsKey!0 (array!15463 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!304084 (= res!161591 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!304085 () Bool)

(declare-fun res!161590 () Bool)

(assert (=> b!304085 (=> (not res!161590) (not e!191175))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!304085 (= res!161590 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7316 a!3293) index!1781) k0!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7316 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7316 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!304086 () Bool)

(declare-fun res!161588 () Bool)

(assert (=> b!304086 (=> (not res!161588) (not e!191174))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!304086 (= res!161588 (validKeyInArray!0 k0!2441))))

(declare-fun b!304087 () Bool)

(declare-fun res!161584 () Bool)

(assert (=> b!304087 (=> (not res!161584) (not e!191175))))

(assert (=> b!304087 (= res!161584 (and (= (select (arr!7316 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7668 a!3293))))))

(declare-fun lt!150380 () (_ BitVec 32))

(declare-fun b!304088 () Bool)

(assert (=> b!304088 (= e!191175 (and (bvsge mask!3709 #b00000000000000000000000000000000) (bvsge lt!150380 #b00000000000000000000000000000000) (bvslt lt!150380 (bvadd #b00000000000000000000000000000001 mask!3709)) (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304088 (= lt!150380 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!304089 () Bool)

(assert (=> b!304089 (= e!191174 e!191175)))

(declare-fun res!161586 () Bool)

(assert (=> b!304089 (=> (not res!161586) (not e!191175))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304089 (= res!161586 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!150379))))

(assert (=> b!304089 (= lt!150379 (Intermediate!2467 false resIndex!52 resX!52))))

(assert (= (and start!30410 res!161587) b!304082))

(assert (= (and b!304082 res!161592) b!304086))

(assert (= (and b!304086 res!161588) b!304084))

(assert (= (and b!304084 res!161591) b!304083))

(assert (= (and b!304083 res!161589) b!304081))

(assert (= (and b!304081 res!161585) b!304089))

(assert (= (and b!304089 res!161586) b!304087))

(assert (= (and b!304087 res!161584) b!304080))

(assert (= (and b!304080 res!161583) b!304085))

(assert (= (and b!304085 res!161590) b!304088))

(declare-fun m!315247 () Bool)

(assert (=> b!304089 m!315247))

(assert (=> b!304089 m!315247))

(declare-fun m!315249 () Bool)

(assert (=> b!304089 m!315249))

(declare-fun m!315251 () Bool)

(assert (=> b!304086 m!315251))

(declare-fun m!315253 () Bool)

(assert (=> b!304084 m!315253))

(declare-fun m!315255 () Bool)

(assert (=> b!304080 m!315255))

(declare-fun m!315257 () Bool)

(assert (=> b!304083 m!315257))

(declare-fun m!315259 () Bool)

(assert (=> b!304081 m!315259))

(declare-fun m!315261 () Bool)

(assert (=> start!30410 m!315261))

(declare-fun m!315263 () Bool)

(assert (=> start!30410 m!315263))

(declare-fun m!315265 () Bool)

(assert (=> b!304087 m!315265))

(declare-fun m!315267 () Bool)

(assert (=> b!304088 m!315267))

(declare-fun m!315269 () Bool)

(assert (=> b!304085 m!315269))

(check-sat (not b!304088) (not b!304089) (not b!304081) (not b!304080) (not start!30410) (not b!304083) (not b!304084) (not b!304086))
(check-sat)

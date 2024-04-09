; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30140 () Bool)

(assert start!30140)

(declare-fun b!301603 () Bool)

(declare-fun res!159371 () Bool)

(declare-fun e!190300 () Bool)

(assert (=> b!301603 (=> (not res!159371) (not e!190300))))

(declare-datatypes ((array!15289 0))(
  ( (array!15290 (arr!7232 (Array (_ BitVec 32) (_ BitVec 64))) (size!7584 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15289)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!301603 (= res!159371 (and (= (size!7584 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7584 a!3293))))))

(declare-fun b!301604 () Bool)

(declare-fun res!159374 () Bool)

(assert (=> b!301604 (=> (not res!159374) (not e!190300))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15289 (_ BitVec 32)) Bool)

(assert (=> b!301604 (= res!159374 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!301605 () Bool)

(assert (=> b!301605 (= e!190300 false)))

(declare-fun lt!149918 () (_ BitVec 32))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!301605 (= lt!149918 (toIndex!0 k0!2441 mask!3709))))

(declare-fun b!301606 () Bool)

(declare-fun res!159375 () Bool)

(assert (=> b!301606 (=> (not res!159375) (not e!190300))))

(declare-datatypes ((SeekEntryResult!2383 0))(
  ( (MissingZero!2383 (index!11708 (_ BitVec 32))) (Found!2383 (index!11709 (_ BitVec 32))) (Intermediate!2383 (undefined!3195 Bool) (index!11710 (_ BitVec 32)) (x!29949 (_ BitVec 32))) (Undefined!2383) (MissingVacant!2383 (index!11711 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15289 (_ BitVec 32)) SeekEntryResult!2383)

(assert (=> b!301606 (= res!159375 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2383 i!1240)))))

(declare-fun b!301607 () Bool)

(declare-fun res!159372 () Bool)

(assert (=> b!301607 (=> (not res!159372) (not e!190300))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!301607 (= res!159372 (validKeyInArray!0 k0!2441))))

(declare-fun b!301608 () Bool)

(declare-fun res!159373 () Bool)

(assert (=> b!301608 (=> (not res!159373) (not e!190300))))

(declare-fun arrayContainsKey!0 (array!15289 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!301608 (= res!159373 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun res!159370 () Bool)

(assert (=> start!30140 (=> (not res!159370) (not e!190300))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30140 (= res!159370 (validMask!0 mask!3709))))

(assert (=> start!30140 e!190300))

(assert (=> start!30140 true))

(declare-fun array_inv!5186 (array!15289) Bool)

(assert (=> start!30140 (array_inv!5186 a!3293)))

(assert (= (and start!30140 res!159370) b!301603))

(assert (= (and b!301603 res!159371) b!301607))

(assert (= (and b!301607 res!159372) b!301608))

(assert (= (and b!301608 res!159373) b!301606))

(assert (= (and b!301606 res!159375) b!301604))

(assert (= (and b!301604 res!159374) b!301605))

(declare-fun m!313335 () Bool)

(assert (=> b!301604 m!313335))

(declare-fun m!313337 () Bool)

(assert (=> b!301605 m!313337))

(declare-fun m!313339 () Bool)

(assert (=> b!301606 m!313339))

(declare-fun m!313341 () Bool)

(assert (=> start!30140 m!313341))

(declare-fun m!313343 () Bool)

(assert (=> start!30140 m!313343))

(declare-fun m!313345 () Bool)

(assert (=> b!301607 m!313345))

(declare-fun m!313347 () Bool)

(assert (=> b!301608 m!313347))

(check-sat (not b!301604) (not start!30140) (not b!301606) (not b!301605) (not b!301608) (not b!301607))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30164 () Bool)

(assert start!30164)

(declare-fun b!301828 () Bool)

(declare-fun res!159597 () Bool)

(declare-fun e!190372 () Bool)

(assert (=> b!301828 (=> (not res!159597) (not e!190372))))

(declare-datatypes ((array!15313 0))(
  ( (array!15314 (arr!7244 (Array (_ BitVec 32) (_ BitVec 64))) (size!7596 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15313)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!301828 (= res!159597 (and (= (size!7596 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7596 a!3293))))))

(declare-fun b!301829 () Bool)

(assert (=> b!301829 (= e!190372 false)))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2395 0))(
  ( (MissingZero!2395 (index!11756 (_ BitVec 32))) (Found!2395 (index!11757 (_ BitVec 32))) (Intermediate!2395 (undefined!3207 Bool) (index!11758 (_ BitVec 32)) (x!29993 (_ BitVec 32))) (Undefined!2395) (MissingVacant!2395 (index!11759 (_ BitVec 32))) )
))
(declare-fun lt!149945 () SeekEntryResult!2395)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15313 (_ BitVec 32)) SeekEntryResult!2395)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!301829 (= lt!149945 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!301830 () Bool)

(declare-fun res!159600 () Bool)

(assert (=> b!301830 (=> (not res!159600) (not e!190372))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!301830 (= res!159600 (validKeyInArray!0 k0!2441))))

(declare-fun b!301831 () Bool)

(declare-fun res!159596 () Bool)

(assert (=> b!301831 (=> (not res!159596) (not e!190372))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15313 (_ BitVec 32)) SeekEntryResult!2395)

(assert (=> b!301831 (= res!159596 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2395 i!1240)))))

(declare-fun b!301832 () Bool)

(declare-fun res!159598 () Bool)

(assert (=> b!301832 (=> (not res!159598) (not e!190372))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15313 (_ BitVec 32)) Bool)

(assert (=> b!301832 (= res!159598 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun res!159595 () Bool)

(assert (=> start!30164 (=> (not res!159595) (not e!190372))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30164 (= res!159595 (validMask!0 mask!3709))))

(assert (=> start!30164 e!190372))

(assert (=> start!30164 true))

(declare-fun array_inv!5198 (array!15313) Bool)

(assert (=> start!30164 (array_inv!5198 a!3293)))

(declare-fun b!301833 () Bool)

(declare-fun res!159599 () Bool)

(assert (=> b!301833 (=> (not res!159599) (not e!190372))))

(declare-fun arrayContainsKey!0 (array!15313 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!301833 (= res!159599 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(assert (= (and start!30164 res!159595) b!301828))

(assert (= (and b!301828 res!159597) b!301830))

(assert (= (and b!301830 res!159600) b!301833))

(assert (= (and b!301833 res!159599) b!301831))

(assert (= (and b!301831 res!159596) b!301832))

(assert (= (and b!301832 res!159598) b!301829))

(declare-fun m!313523 () Bool)

(assert (=> b!301832 m!313523))

(declare-fun m!313525 () Bool)

(assert (=> b!301829 m!313525))

(assert (=> b!301829 m!313525))

(declare-fun m!313527 () Bool)

(assert (=> b!301829 m!313527))

(declare-fun m!313529 () Bool)

(assert (=> b!301831 m!313529))

(declare-fun m!313531 () Bool)

(assert (=> b!301833 m!313531))

(declare-fun m!313533 () Bool)

(assert (=> b!301830 m!313533))

(declare-fun m!313535 () Bool)

(assert (=> start!30164 m!313535))

(declare-fun m!313537 () Bool)

(assert (=> start!30164 m!313537))

(check-sat (not start!30164) (not b!301833) (not b!301832) (not b!301830) (not b!301831) (not b!301829))
(check-sat)

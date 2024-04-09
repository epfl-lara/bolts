; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30230 () Bool)

(assert start!30230)

(declare-fun b!302197 () Bool)

(declare-fun res!159846 () Bool)

(declare-fun e!190543 () Bool)

(assert (=> b!302197 (=> (not res!159846) (not e!190543))))

(declare-datatypes ((array!15334 0))(
  ( (array!15335 (arr!7253 (Array (_ BitVec 32) (_ BitVec 64))) (size!7605 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15334)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15334 (_ BitVec 32)) Bool)

(assert (=> b!302197 (= res!159846 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!302198 () Bool)

(declare-fun res!159843 () Bool)

(assert (=> b!302198 (=> (not res!159843) (not e!190543))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2404 0))(
  ( (MissingZero!2404 (index!11792 (_ BitVec 32))) (Found!2404 (index!11793 (_ BitVec 32))) (Intermediate!2404 (undefined!3216 Bool) (index!11794 (_ BitVec 32)) (x!30032 (_ BitVec 32))) (Undefined!2404) (MissingVacant!2404 (index!11795 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15334 (_ BitVec 32)) SeekEntryResult!2404)

(assert (=> b!302198 (= res!159843 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2404 i!1240)))))

(declare-fun b!302199 () Bool)

(declare-fun res!159845 () Bool)

(assert (=> b!302199 (=> (not res!159845) (not e!190543))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!302199 (= res!159845 (validKeyInArray!0 k0!2441))))

(declare-fun res!159844 () Bool)

(assert (=> start!30230 (=> (not res!159844) (not e!190543))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30230 (= res!159844 (validMask!0 mask!3709))))

(assert (=> start!30230 e!190543))

(assert (=> start!30230 true))

(declare-fun array_inv!5207 (array!15334) Bool)

(assert (=> start!30230 (array_inv!5207 a!3293)))

(declare-fun b!302200 () Bool)

(assert (=> b!302200 (= e!190543 false)))

(declare-fun lt!150044 () SeekEntryResult!2404)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15334 (_ BitVec 32)) SeekEntryResult!2404)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!302200 (= lt!150044 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!302201 () Bool)

(declare-fun res!159841 () Bool)

(assert (=> b!302201 (=> (not res!159841) (not e!190543))))

(assert (=> b!302201 (= res!159841 (and (= (size!7605 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7605 a!3293))))))

(declare-fun b!302202 () Bool)

(declare-fun res!159842 () Bool)

(assert (=> b!302202 (=> (not res!159842) (not e!190543))))

(declare-fun arrayContainsKey!0 (array!15334 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!302202 (= res!159842 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(assert (= (and start!30230 res!159844) b!302201))

(assert (= (and b!302201 res!159841) b!302199))

(assert (= (and b!302199 res!159845) b!302202))

(assert (= (and b!302202 res!159842) b!302198))

(assert (= (and b!302198 res!159843) b!302197))

(assert (= (and b!302197 res!159846) b!302200))

(declare-fun m!313775 () Bool)

(assert (=> start!30230 m!313775))

(declare-fun m!313777 () Bool)

(assert (=> start!30230 m!313777))

(declare-fun m!313779 () Bool)

(assert (=> b!302199 m!313779))

(declare-fun m!313781 () Bool)

(assert (=> b!302198 m!313781))

(declare-fun m!313783 () Bool)

(assert (=> b!302202 m!313783))

(declare-fun m!313785 () Bool)

(assert (=> b!302200 m!313785))

(assert (=> b!302200 m!313785))

(declare-fun m!313787 () Bool)

(assert (=> b!302200 m!313787))

(declare-fun m!313789 () Bool)

(assert (=> b!302197 m!313789))

(check-sat (not start!30230) (not b!302200) (not b!302202) (not b!302198) (not b!302197) (not b!302199))
(check-sat)

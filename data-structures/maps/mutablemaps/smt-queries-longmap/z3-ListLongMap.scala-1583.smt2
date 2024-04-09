; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30086 () Bool)

(assert start!30086)

(declare-fun b!301387 () Bool)

(declare-fun res!159227 () Bool)

(declare-fun e!190191 () Bool)

(assert (=> b!301387 (=> (not res!159227) (not e!190191))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((array!15274 0))(
  ( (array!15275 (arr!7226 (Array (_ BitVec 32) (_ BitVec 64))) (size!7578 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15274)

(declare-datatypes ((SeekEntryResult!2377 0))(
  ( (MissingZero!2377 (index!11684 (_ BitVec 32))) (Found!2377 (index!11685 (_ BitVec 32))) (Intermediate!2377 (undefined!3189 Bool) (index!11686 (_ BitVec 32)) (x!29924 (_ BitVec 32))) (Undefined!2377) (MissingVacant!2377 (index!11687 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15274 (_ BitVec 32)) SeekEntryResult!2377)

(assert (=> b!301387 (= res!159227 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2377 i!1240)))))

(declare-fun res!159224 () Bool)

(assert (=> start!30086 (=> (not res!159224) (not e!190191))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30086 (= res!159224 (validMask!0 mask!3709))))

(assert (=> start!30086 e!190191))

(assert (=> start!30086 true))

(declare-fun array_inv!5180 (array!15274) Bool)

(assert (=> start!30086 (array_inv!5180 a!3293)))

(declare-fun b!301388 () Bool)

(declare-fun res!159228 () Bool)

(assert (=> b!301388 (=> (not res!159228) (not e!190191))))

(declare-fun arrayContainsKey!0 (array!15274 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!301388 (= res!159228 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!301389 () Bool)

(declare-fun res!159226 () Bool)

(assert (=> b!301389 (=> (not res!159226) (not e!190191))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!301389 (= res!159226 (validKeyInArray!0 k0!2441))))

(declare-fun b!301390 () Bool)

(declare-fun res!159225 () Bool)

(assert (=> b!301390 (=> (not res!159225) (not e!190191))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15274 (_ BitVec 32)) Bool)

(assert (=> b!301390 (= res!159225 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!301391 () Bool)

(declare-fun res!159223 () Bool)

(assert (=> b!301391 (=> (not res!159223) (not e!190191))))

(assert (=> b!301391 (= res!159223 (and (= (size!7578 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7578 a!3293))))))

(declare-fun b!301392 () Bool)

(assert (=> b!301392 (= e!190191 false)))

(declare-fun lt!149828 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!301392 (= lt!149828 (toIndex!0 k0!2441 mask!3709))))

(assert (= (and start!30086 res!159224) b!301391))

(assert (= (and b!301391 res!159223) b!301389))

(assert (= (and b!301389 res!159226) b!301388))

(assert (= (and b!301388 res!159228) b!301387))

(assert (= (and b!301387 res!159227) b!301390))

(assert (= (and b!301390 res!159225) b!301392))

(declare-fun m!313173 () Bool)

(assert (=> start!30086 m!313173))

(declare-fun m!313175 () Bool)

(assert (=> start!30086 m!313175))

(declare-fun m!313177 () Bool)

(assert (=> b!301392 m!313177))

(declare-fun m!313179 () Bool)

(assert (=> b!301388 m!313179))

(declare-fun m!313181 () Bool)

(assert (=> b!301390 m!313181))

(declare-fun m!313183 () Bool)

(assert (=> b!301387 m!313183))

(declare-fun m!313185 () Bool)

(assert (=> b!301389 m!313185))

(check-sat (not b!301390) (not b!301392) (not start!30086) (not b!301388) (not b!301389) (not b!301387))
(check-sat)

; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30148 () Bool)

(assert start!30148)

(declare-fun b!301675 () Bool)

(declare-fun res!159444 () Bool)

(declare-fun e!190323 () Bool)

(assert (=> b!301675 (=> (not res!159444) (not e!190323))))

(declare-datatypes ((array!15297 0))(
  ( (array!15298 (arr!7236 (Array (_ BitVec 32) (_ BitVec 64))) (size!7588 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15297)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15297 (_ BitVec 32)) Bool)

(assert (=> b!301675 (= res!159444 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!301676 () Bool)

(declare-fun res!159442 () Bool)

(assert (=> b!301676 (=> (not res!159442) (not e!190323))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!301676 (= res!159442 (and (= (size!7588 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7588 a!3293))))))

(declare-fun b!301677 () Bool)

(assert (=> b!301677 (= e!190323 false)))

(declare-fun lt!149930 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!301677 (= lt!149930 (toIndex!0 k!2441 mask!3709))))

(declare-fun b!301678 () Bool)

(declare-fun res!159445 () Bool)

(assert (=> b!301678 (=> (not res!159445) (not e!190323))))

(declare-datatypes ((SeekEntryResult!2387 0))(
  ( (MissingZero!2387 (index!11724 (_ BitVec 32))) (Found!2387 (index!11725 (_ BitVec 32))) (Intermediate!2387 (undefined!3199 Bool) (index!11726 (_ BitVec 32)) (x!29961 (_ BitVec 32))) (Undefined!2387) (MissingVacant!2387 (index!11727 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15297 (_ BitVec 32)) SeekEntryResult!2387)

(assert (=> b!301678 (= res!159445 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2387 i!1240)))))

(declare-fun b!301679 () Bool)

(declare-fun res!159443 () Bool)

(assert (=> b!301679 (=> (not res!159443) (not e!190323))))

(declare-fun arrayContainsKey!0 (array!15297 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!301679 (= res!159443 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!301680 () Bool)

(declare-fun res!159446 () Bool)

(assert (=> b!301680 (=> (not res!159446) (not e!190323))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!301680 (= res!159446 (validKeyInArray!0 k!2441))))

(declare-fun res!159447 () Bool)

(assert (=> start!30148 (=> (not res!159447) (not e!190323))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30148 (= res!159447 (validMask!0 mask!3709))))

(assert (=> start!30148 e!190323))

(assert (=> start!30148 true))

(declare-fun array_inv!5190 (array!15297) Bool)

(assert (=> start!30148 (array_inv!5190 a!3293)))

(assert (= (and start!30148 res!159447) b!301676))

(assert (= (and b!301676 res!159442) b!301680))

(assert (= (and b!301680 res!159446) b!301679))

(assert (= (and b!301679 res!159443) b!301678))

(assert (= (and b!301678 res!159445) b!301675))

(assert (= (and b!301675 res!159444) b!301677))

(declare-fun m!313391 () Bool)

(assert (=> start!30148 m!313391))

(declare-fun m!313393 () Bool)

(assert (=> start!30148 m!313393))

(declare-fun m!313395 () Bool)

(assert (=> b!301678 m!313395))

(declare-fun m!313397 () Bool)

(assert (=> b!301679 m!313397))

(declare-fun m!313399 () Bool)

(assert (=> b!301677 m!313399))

(declare-fun m!313401 () Bool)

(assert (=> b!301675 m!313401))

(declare-fun m!313403 () Bool)

(assert (=> b!301680 m!313403))

(push 1)

(assert (not start!30148))

(assert (not b!301678))

(assert (not b!301677))

(assert (not b!301680))

(assert (not b!301675))

(assert (not b!301679))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


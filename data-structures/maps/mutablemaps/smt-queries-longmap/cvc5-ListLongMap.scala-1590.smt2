; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30168 () Bool)

(assert start!30168)

(declare-fun b!301866 () Bool)

(declare-fun res!159634 () Bool)

(declare-fun e!190384 () Bool)

(assert (=> b!301866 (=> (not res!159634) (not e!190384))))

(declare-datatypes ((array!15317 0))(
  ( (array!15318 (arr!7246 (Array (_ BitVec 32) (_ BitVec 64))) (size!7598 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15317)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!301866 (= res!159634 (and (= (size!7598 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7598 a!3293))))))

(declare-fun b!301867 () Bool)

(declare-fun res!159637 () Bool)

(assert (=> b!301867 (=> (not res!159637) (not e!190384))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2397 0))(
  ( (MissingZero!2397 (index!11764 (_ BitVec 32))) (Found!2397 (index!11765 (_ BitVec 32))) (Intermediate!2397 (undefined!3209 Bool) (index!11766 (_ BitVec 32)) (x!30003 (_ BitVec 32))) (Undefined!2397) (MissingVacant!2397 (index!11767 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15317 (_ BitVec 32)) SeekEntryResult!2397)

(assert (=> b!301867 (= res!159637 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2397 i!1240)))))

(declare-fun b!301868 () Bool)

(declare-fun res!159633 () Bool)

(assert (=> b!301868 (=> (not res!159633) (not e!190384))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15317 (_ BitVec 32)) Bool)

(assert (=> b!301868 (= res!159633 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!301869 () Bool)

(declare-fun res!159639 () Bool)

(assert (=> b!301869 (=> (not res!159639) (not e!190384))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15317 (_ BitVec 32)) SeekEntryResult!2397)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!301869 (= res!159639 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) (Intermediate!2397 false resIndex!52 resX!52)))))

(declare-fun res!159636 () Bool)

(assert (=> start!30168 (=> (not res!159636) (not e!190384))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30168 (= res!159636 (validMask!0 mask!3709))))

(assert (=> start!30168 e!190384))

(declare-fun array_inv!5200 (array!15317) Bool)

(assert (=> start!30168 (array_inv!5200 a!3293)))

(assert (=> start!30168 true))

(declare-fun b!301870 () Bool)

(declare-fun res!159638 () Bool)

(assert (=> b!301870 (=> (not res!159638) (not e!190384))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!301870 (= res!159638 (validKeyInArray!0 k!2441))))

(declare-fun b!301871 () Bool)

(declare-fun res!159635 () Bool)

(assert (=> b!301871 (=> (not res!159635) (not e!190384))))

(declare-fun arrayContainsKey!0 (array!15317 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!301871 (= res!159635 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!301872 () Bool)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!301872 (= e!190384 (and (= (select (arr!7246 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7598 a!3293)) (bvsge mask!3709 #b00000000000000000000000000000000) (bvsge index!1781 (bvadd #b00000000000000000000000000000001 mask!3709))))))

(assert (= (and start!30168 res!159636) b!301866))

(assert (= (and b!301866 res!159634) b!301870))

(assert (= (and b!301870 res!159638) b!301871))

(assert (= (and b!301871 res!159635) b!301867))

(assert (= (and b!301867 res!159637) b!301868))

(assert (= (and b!301868 res!159633) b!301869))

(assert (= (and b!301869 res!159639) b!301872))

(declare-fun m!313555 () Bool)

(assert (=> b!301869 m!313555))

(assert (=> b!301869 m!313555))

(declare-fun m!313557 () Bool)

(assert (=> b!301869 m!313557))

(declare-fun m!313559 () Bool)

(assert (=> b!301872 m!313559))

(declare-fun m!313561 () Bool)

(assert (=> b!301871 m!313561))

(declare-fun m!313563 () Bool)

(assert (=> start!30168 m!313563))

(declare-fun m!313565 () Bool)

(assert (=> start!30168 m!313565))

(declare-fun m!313567 () Bool)

(assert (=> b!301870 m!313567))

(declare-fun m!313569 () Bool)

(assert (=> b!301867 m!313569))

(declare-fun m!313571 () Bool)

(assert (=> b!301868 m!313571))

(push 1)

(assert (not b!301870))

(assert (not b!301867))

(assert (not b!301869))

(assert (not b!301868))

(assert (not b!301871))

(assert (not start!30168))

(check-sat)

(pop 1)

(push 1)

(check-sat)


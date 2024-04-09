; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30172 () Bool)

(assert start!30172)

(declare-fun b!301908 () Bool)

(declare-fun res!159675 () Bool)

(declare-fun e!190395 () Bool)

(assert (=> b!301908 (=> (not res!159675) (not e!190395))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!301908 (= res!159675 (validKeyInArray!0 k!2441))))

(declare-datatypes ((array!15321 0))(
  ( (array!15322 (arr!7248 (Array (_ BitVec 32) (_ BitVec 64))) (size!7600 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15321)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun b!301909 () Bool)

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!301909 (= e!190395 (and (= (select (arr!7248 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7600 a!3293)) (bvsge mask!3709 #b00000000000000000000000000000000) (bvsge index!1781 (bvadd #b00000000000000000000000000000001 mask!3709))))))

(declare-fun b!301910 () Bool)

(declare-fun res!159679 () Bool)

(assert (=> b!301910 (=> (not res!159679) (not e!190395))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15321 (_ BitVec 32)) Bool)

(assert (=> b!301910 (= res!159679 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!301911 () Bool)

(declare-fun res!159681 () Bool)

(assert (=> b!301911 (=> (not res!159681) (not e!190395))))

(declare-datatypes ((SeekEntryResult!2399 0))(
  ( (MissingZero!2399 (index!11772 (_ BitVec 32))) (Found!2399 (index!11773 (_ BitVec 32))) (Intermediate!2399 (undefined!3211 Bool) (index!11774 (_ BitVec 32)) (x!30005 (_ BitVec 32))) (Undefined!2399) (MissingVacant!2399 (index!11775 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15321 (_ BitVec 32)) SeekEntryResult!2399)

(assert (=> b!301911 (= res!159681 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2399 i!1240)))))

(declare-fun res!159677 () Bool)

(assert (=> start!30172 (=> (not res!159677) (not e!190395))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30172 (= res!159677 (validMask!0 mask!3709))))

(assert (=> start!30172 e!190395))

(declare-fun array_inv!5202 (array!15321) Bool)

(assert (=> start!30172 (array_inv!5202 a!3293)))

(assert (=> start!30172 true))

(declare-fun b!301912 () Bool)

(declare-fun res!159678 () Bool)

(assert (=> b!301912 (=> (not res!159678) (not e!190395))))

(declare-fun arrayContainsKey!0 (array!15321 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!301912 (= res!159678 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!301913 () Bool)

(declare-fun res!159676 () Bool)

(assert (=> b!301913 (=> (not res!159676) (not e!190395))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15321 (_ BitVec 32)) SeekEntryResult!2399)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!301913 (= res!159676 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) (Intermediate!2399 false resIndex!52 resX!52)))))

(declare-fun b!301914 () Bool)

(declare-fun res!159680 () Bool)

(assert (=> b!301914 (=> (not res!159680) (not e!190395))))

(assert (=> b!301914 (= res!159680 (and (= (size!7600 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7600 a!3293))))))

(assert (= (and start!30172 res!159677) b!301914))

(assert (= (and b!301914 res!159680) b!301908))

(assert (= (and b!301908 res!159675) b!301912))

(assert (= (and b!301912 res!159678) b!301911))

(assert (= (and b!301911 res!159681) b!301910))

(assert (= (and b!301910 res!159679) b!301913))

(assert (= (and b!301913 res!159676) b!301909))

(declare-fun m!313591 () Bool)

(assert (=> start!30172 m!313591))

(declare-fun m!313593 () Bool)

(assert (=> start!30172 m!313593))

(declare-fun m!313595 () Bool)

(assert (=> b!301911 m!313595))

(declare-fun m!313597 () Bool)

(assert (=> b!301910 m!313597))

(declare-fun m!313599 () Bool)

(assert (=> b!301908 m!313599))

(declare-fun m!313601 () Bool)

(assert (=> b!301913 m!313601))

(assert (=> b!301913 m!313601))

(declare-fun m!313603 () Bool)

(assert (=> b!301913 m!313603))

(declare-fun m!313605 () Bool)

(assert (=> b!301909 m!313605))

(declare-fun m!313607 () Bool)

(assert (=> b!301912 m!313607))

(push 1)

(assert (not b!301910))

(assert (not start!30172))

(assert (not b!301912))

(assert (not b!301911))

(assert (not b!301908))

(assert (not b!301913))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


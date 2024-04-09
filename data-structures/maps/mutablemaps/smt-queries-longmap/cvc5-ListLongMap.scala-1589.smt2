; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30162 () Bool)

(assert start!30162)

(declare-fun b!301810 () Bool)

(declare-fun res!159580 () Bool)

(declare-fun e!190366 () Bool)

(assert (=> b!301810 (=> (not res!159580) (not e!190366))))

(declare-datatypes ((array!15311 0))(
  ( (array!15312 (arr!7243 (Array (_ BitVec 32) (_ BitVec 64))) (size!7595 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15311)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15311 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!301810 (= res!159580 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun res!159579 () Bool)

(assert (=> start!30162 (=> (not res!159579) (not e!190366))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30162 (= res!159579 (validMask!0 mask!3709))))

(assert (=> start!30162 e!190366))

(assert (=> start!30162 true))

(declare-fun array_inv!5197 (array!15311) Bool)

(assert (=> start!30162 (array_inv!5197 a!3293)))

(declare-fun b!301811 () Bool)

(declare-fun res!159577 () Bool)

(assert (=> b!301811 (=> (not res!159577) (not e!190366))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!301811 (= res!159577 (and (= (size!7595 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7595 a!3293))))))

(declare-fun b!301812 () Bool)

(declare-fun res!159581 () Bool)

(assert (=> b!301812 (=> (not res!159581) (not e!190366))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!301812 (= res!159581 (validKeyInArray!0 k!2441))))

(declare-fun b!301813 () Bool)

(assert (=> b!301813 (= e!190366 false)))

(declare-datatypes ((SeekEntryResult!2394 0))(
  ( (MissingZero!2394 (index!11752 (_ BitVec 32))) (Found!2394 (index!11753 (_ BitVec 32))) (Intermediate!2394 (undefined!3206 Bool) (index!11754 (_ BitVec 32)) (x!29992 (_ BitVec 32))) (Undefined!2394) (MissingVacant!2394 (index!11755 (_ BitVec 32))) )
))
(declare-fun lt!149942 () SeekEntryResult!2394)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15311 (_ BitVec 32)) SeekEntryResult!2394)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!301813 (= lt!149942 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!301814 () Bool)

(declare-fun res!159582 () Bool)

(assert (=> b!301814 (=> (not res!159582) (not e!190366))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15311 (_ BitVec 32)) SeekEntryResult!2394)

(assert (=> b!301814 (= res!159582 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2394 i!1240)))))

(declare-fun b!301815 () Bool)

(declare-fun res!159578 () Bool)

(assert (=> b!301815 (=> (not res!159578) (not e!190366))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15311 (_ BitVec 32)) Bool)

(assert (=> b!301815 (= res!159578 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(assert (= (and start!30162 res!159579) b!301811))

(assert (= (and b!301811 res!159577) b!301812))

(assert (= (and b!301812 res!159581) b!301810))

(assert (= (and b!301810 res!159580) b!301814))

(assert (= (and b!301814 res!159582) b!301815))

(assert (= (and b!301815 res!159578) b!301813))

(declare-fun m!313507 () Bool)

(assert (=> start!30162 m!313507))

(declare-fun m!313509 () Bool)

(assert (=> start!30162 m!313509))

(declare-fun m!313511 () Bool)

(assert (=> b!301810 m!313511))

(declare-fun m!313513 () Bool)

(assert (=> b!301815 m!313513))

(declare-fun m!313515 () Bool)

(assert (=> b!301812 m!313515))

(declare-fun m!313517 () Bool)

(assert (=> b!301813 m!313517))

(assert (=> b!301813 m!313517))

(declare-fun m!313519 () Bool)

(assert (=> b!301813 m!313519))

(declare-fun m!313521 () Bool)

(assert (=> b!301814 m!313521))

(push 1)

(assert (not b!301815))

(assert (not b!301812))

(assert (not b!301814))

(assert (not start!30162))

(assert (not b!301813))

(assert (not b!301810))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


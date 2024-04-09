; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30808 () Bool)

(assert start!30808)

(declare-fun b!309025 () Bool)

(declare-fun e!193108 () Bool)

(declare-fun e!193109 () Bool)

(assert (=> b!309025 (= e!193108 e!193109)))

(declare-fun res!165800 () Bool)

(assert (=> b!309025 (=> (not res!165800) (not e!193109))))

(declare-datatypes ((array!15759 0))(
  ( (array!15760 (arr!7461 (Array (_ BitVec 32) (_ BitVec 64))) (size!7813 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15759)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2612 0))(
  ( (MissingZero!2612 (index!12624 (_ BitVec 32))) (Found!2612 (index!12625 (_ BitVec 32))) (Intermediate!2612 (undefined!3424 Bool) (index!12626 (_ BitVec 32)) (x!30819 (_ BitVec 32))) (Undefined!2612) (MissingVacant!2612 (index!12627 (_ BitVec 32))) )
))
(declare-fun lt!151501 () SeekEntryResult!2612)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15759 (_ BitVec 32)) SeekEntryResult!2612)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309025 (= res!165800 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151501))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!309025 (= lt!151501 (Intermediate!2612 false resIndex!52 resX!52))))

(declare-fun b!309026 () Bool)

(declare-fun res!165802 () Bool)

(assert (=> b!309026 (=> (not res!165802) (not e!193108))))

(declare-fun arrayContainsKey!0 (array!15759 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!309026 (= res!165802 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!309027 () Bool)

(declare-fun res!165804 () Bool)

(assert (=> b!309027 (=> (not res!165804) (not e!193109))))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!309027 (= res!165804 (and (= (select (arr!7461 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7813 a!3293))))))

(declare-fun res!165803 () Bool)

(assert (=> start!30808 (=> (not res!165803) (not e!193108))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30808 (= res!165803 (validMask!0 mask!3709))))

(assert (=> start!30808 e!193108))

(declare-fun array_inv!5415 (array!15759) Bool)

(assert (=> start!30808 (array_inv!5415 a!3293)))

(assert (=> start!30808 true))

(declare-fun b!309028 () Bool)

(declare-fun res!165797 () Bool)

(assert (=> b!309028 (=> (not res!165797) (not e!193108))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!309028 (= res!165797 (validKeyInArray!0 k!2441))))

(declare-fun b!309029 () Bool)

(declare-fun res!165798 () Bool)

(assert (=> b!309029 (=> (not res!165798) (not e!193108))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15759 (_ BitVec 32)) Bool)

(assert (=> b!309029 (= res!165798 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!309030 () Bool)

(declare-fun e!193111 () Bool)

(assert (=> b!309030 (= e!193111 (not (or (bvslt mask!3709 #b00000000000000000000000000000000) (bvslt index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)))))))

(declare-fun lt!151502 () SeekEntryResult!2612)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309030 (= lt!151502 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!309031 () Bool)

(assert (=> b!309031 (= e!193109 e!193111)))

(declare-fun res!165796 () Bool)

(assert (=> b!309031 (=> (not res!165796) (not e!193111))))

(assert (=> b!309031 (= res!165796 (and (= lt!151502 lt!151501) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7461 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!309031 (= lt!151502 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!309032 () Bool)

(declare-fun res!165799 () Bool)

(assert (=> b!309032 (=> (not res!165799) (not e!193108))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15759 (_ BitVec 32)) SeekEntryResult!2612)

(assert (=> b!309032 (= res!165799 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2612 i!1240)))))

(declare-fun b!309033 () Bool)

(declare-fun res!165801 () Bool)

(assert (=> b!309033 (=> (not res!165801) (not e!193108))))

(assert (=> b!309033 (= res!165801 (and (= (size!7813 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7813 a!3293))))))

(assert (= (and start!30808 res!165803) b!309033))

(assert (= (and b!309033 res!165801) b!309028))

(assert (= (and b!309028 res!165797) b!309026))

(assert (= (and b!309026 res!165802) b!309032))

(assert (= (and b!309032 res!165799) b!309029))

(assert (= (and b!309029 res!165798) b!309025))

(assert (= (and b!309025 res!165800) b!309027))

(assert (= (and b!309027 res!165804) b!309031))

(assert (= (and b!309031 res!165796) b!309030))

(declare-fun m!319079 () Bool)

(assert (=> b!309032 m!319079))

(declare-fun m!319081 () Bool)

(assert (=> b!309025 m!319081))

(assert (=> b!309025 m!319081))

(declare-fun m!319083 () Bool)

(assert (=> b!309025 m!319083))

(declare-fun m!319085 () Bool)

(assert (=> b!309027 m!319085))

(declare-fun m!319087 () Bool)

(assert (=> b!309031 m!319087))

(declare-fun m!319089 () Bool)

(assert (=> b!309031 m!319089))

(declare-fun m!319091 () Bool)

(assert (=> start!30808 m!319091))

(declare-fun m!319093 () Bool)

(assert (=> start!30808 m!319093))

(declare-fun m!319095 () Bool)

(assert (=> b!309030 m!319095))

(assert (=> b!309030 m!319095))

(declare-fun m!319097 () Bool)

(assert (=> b!309030 m!319097))

(declare-fun m!319099 () Bool)

(assert (=> b!309026 m!319099))

(declare-fun m!319101 () Bool)

(assert (=> b!309029 m!319101))

(declare-fun m!319103 () Bool)

(assert (=> b!309028 m!319103))

(push 1)

(assert (not start!30808))

(assert (not b!309030))

(assert (not b!309028))

(assert (not b!309031))

(assert (not b!309026))

(assert (not b!309029))

(assert (not b!309032))

(assert (not b!309025))

(check-sat)

(pop 1)

(push 1)

(check-sat)


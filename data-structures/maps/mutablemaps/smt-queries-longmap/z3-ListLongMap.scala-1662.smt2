; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30812 () Bool)

(assert start!30812)

(declare-fun res!165856 () Bool)

(declare-fun e!193134 () Bool)

(assert (=> start!30812 (=> (not res!165856) (not e!193134))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30812 (= res!165856 (validMask!0 mask!3709))))

(assert (=> start!30812 e!193134))

(declare-datatypes ((array!15763 0))(
  ( (array!15764 (arr!7463 (Array (_ BitVec 32) (_ BitVec 64))) (size!7815 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15763)

(declare-fun array_inv!5417 (array!15763) Bool)

(assert (=> start!30812 (array_inv!5417 a!3293)))

(assert (=> start!30812 true))

(declare-fun b!309079 () Bool)

(declare-fun res!165857 () Bool)

(assert (=> b!309079 (=> (not res!165857) (not e!193134))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!309079 (= res!165857 (and (= (size!7815 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7815 a!3293))))))

(declare-fun e!193133 () Bool)

(declare-fun b!309080 () Bool)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!309080 (= e!193133 (not (or (bvslt mask!3709 #b00000000000000000000000000000000) (bvsge index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsle x!1427 #b01111111111111111111111111111110))))))

(declare-datatypes ((SeekEntryResult!2614 0))(
  ( (MissingZero!2614 (index!12632 (_ BitVec 32))) (Found!2614 (index!12633 (_ BitVec 32))) (Intermediate!2614 (undefined!3426 Bool) (index!12634 (_ BitVec 32)) (x!30829 (_ BitVec 32))) (Undefined!2614) (MissingVacant!2614 (index!12635 (_ BitVec 32))) )
))
(declare-fun lt!151513 () SeekEntryResult!2614)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15763 (_ BitVec 32)) SeekEntryResult!2614)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309080 (= lt!151513 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!309081 () Bool)

(declare-fun res!165858 () Bool)

(assert (=> b!309081 (=> (not res!165858) (not e!193134))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!309081 (= res!165858 (validKeyInArray!0 k0!2441))))

(declare-fun b!309082 () Bool)

(declare-fun res!165851 () Bool)

(declare-fun e!193132 () Bool)

(assert (=> b!309082 (=> (not res!165851) (not e!193132))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!309082 (= res!165851 (and (= (select (arr!7463 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7815 a!3293))))))

(declare-fun b!309083 () Bool)

(declare-fun res!165850 () Bool)

(assert (=> b!309083 (=> (not res!165850) (not e!193134))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15763 (_ BitVec 32)) Bool)

(assert (=> b!309083 (= res!165850 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!309084 () Bool)

(assert (=> b!309084 (= e!193132 e!193133)))

(declare-fun res!165853 () Bool)

(assert (=> b!309084 (=> (not res!165853) (not e!193133))))

(declare-fun lt!151514 () SeekEntryResult!2614)

(assert (=> b!309084 (= res!165853 (and (= lt!151513 lt!151514) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7463 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!309084 (= lt!151513 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!309085 () Bool)

(declare-fun res!165854 () Bool)

(assert (=> b!309085 (=> (not res!165854) (not e!193134))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15763 (_ BitVec 32)) SeekEntryResult!2614)

(assert (=> b!309085 (= res!165854 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2614 i!1240)))))

(declare-fun b!309086 () Bool)

(declare-fun res!165855 () Bool)

(assert (=> b!309086 (=> (not res!165855) (not e!193134))))

(declare-fun arrayContainsKey!0 (array!15763 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!309086 (= res!165855 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!309087 () Bool)

(assert (=> b!309087 (= e!193134 e!193132)))

(declare-fun res!165852 () Bool)

(assert (=> b!309087 (=> (not res!165852) (not e!193132))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309087 (= res!165852 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!151514))))

(assert (=> b!309087 (= lt!151514 (Intermediate!2614 false resIndex!52 resX!52))))

(assert (= (and start!30812 res!165856) b!309079))

(assert (= (and b!309079 res!165857) b!309081))

(assert (= (and b!309081 res!165858) b!309086))

(assert (= (and b!309086 res!165855) b!309085))

(assert (= (and b!309085 res!165854) b!309083))

(assert (= (and b!309083 res!165850) b!309087))

(assert (= (and b!309087 res!165852) b!309082))

(assert (= (and b!309082 res!165851) b!309084))

(assert (= (and b!309084 res!165853) b!309080))

(declare-fun m!319131 () Bool)

(assert (=> b!309081 m!319131))

(declare-fun m!319133 () Bool)

(assert (=> b!309080 m!319133))

(assert (=> b!309080 m!319133))

(declare-fun m!319135 () Bool)

(assert (=> b!309080 m!319135))

(declare-fun m!319137 () Bool)

(assert (=> start!30812 m!319137))

(declare-fun m!319139 () Bool)

(assert (=> start!30812 m!319139))

(declare-fun m!319141 () Bool)

(assert (=> b!309087 m!319141))

(assert (=> b!309087 m!319141))

(declare-fun m!319143 () Bool)

(assert (=> b!309087 m!319143))

(declare-fun m!319145 () Bool)

(assert (=> b!309082 m!319145))

(declare-fun m!319147 () Bool)

(assert (=> b!309086 m!319147))

(declare-fun m!319149 () Bool)

(assert (=> b!309084 m!319149))

(declare-fun m!319151 () Bool)

(assert (=> b!309084 m!319151))

(declare-fun m!319153 () Bool)

(assert (=> b!309085 m!319153))

(declare-fun m!319155 () Bool)

(assert (=> b!309083 m!319155))

(check-sat (not b!309083) (not b!309081) (not b!309085) (not b!309086) (not b!309080) (not start!30812) (not b!309084) (not b!309087))
(check-sat)

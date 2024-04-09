; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30816 () Bool)

(assert start!30816)

(declare-fun b!309133 () Bool)

(declare-fun res!165912 () Bool)

(declare-fun e!193156 () Bool)

(assert (=> b!309133 (=> (not res!165912) (not e!193156))))

(declare-datatypes ((array!15767 0))(
  ( (array!15768 (arr!7465 (Array (_ BitVec 32) (_ BitVec 64))) (size!7817 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15767)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!309133 (= res!165912 (and (= (size!7817 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7817 a!3293))))))

(declare-fun b!309134 () Bool)

(declare-fun e!193158 () Bool)

(assert (=> b!309134 (= e!193156 e!193158)))

(declare-fun res!165910 () Bool)

(assert (=> b!309134 (=> (not res!165910) (not e!193158))))

(declare-datatypes ((SeekEntryResult!2616 0))(
  ( (MissingZero!2616 (index!12640 (_ BitVec 32))) (Found!2616 (index!12641 (_ BitVec 32))) (Intermediate!2616 (undefined!3428 Bool) (index!12642 (_ BitVec 32)) (x!30839 (_ BitVec 32))) (Undefined!2616) (MissingVacant!2616 (index!12643 (_ BitVec 32))) )
))
(declare-fun lt!151526 () SeekEntryResult!2616)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15767 (_ BitVec 32)) SeekEntryResult!2616)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309134 (= res!165910 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151526))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!309134 (= lt!151526 (Intermediate!2616 false resIndex!52 resX!52))))

(declare-fun b!309135 () Bool)

(declare-fun res!165911 () Bool)

(assert (=> b!309135 (=> (not res!165911) (not e!193156))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!309135 (= res!165911 (validKeyInArray!0 k!2441))))

(declare-fun res!165905 () Bool)

(assert (=> start!30816 (=> (not res!165905) (not e!193156))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30816 (= res!165905 (validMask!0 mask!3709))))

(assert (=> start!30816 e!193156))

(declare-fun array_inv!5419 (array!15767) Bool)

(assert (=> start!30816 (array_inv!5419 a!3293)))

(assert (=> start!30816 true))

(declare-fun b!309136 () Bool)

(declare-fun res!165904 () Bool)

(assert (=> b!309136 (=> (not res!165904) (not e!193158))))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!309136 (= res!165904 (and (= (select (arr!7465 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7817 a!3293))))))

(declare-fun b!309137 () Bool)

(declare-fun e!193159 () Bool)

(assert (=> b!309137 (= e!193158 e!193159)))

(declare-fun res!165907 () Bool)

(assert (=> b!309137 (=> (not res!165907) (not e!193159))))

(declare-fun lt!151525 () SeekEntryResult!2616)

(assert (=> b!309137 (= res!165907 (and (= lt!151525 lt!151526) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7465 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!309137 (= lt!151525 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!309138 () Bool)

(declare-fun res!165906 () Bool)

(assert (=> b!309138 (=> (not res!165906) (not e!193156))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15767 (_ BitVec 32)) Bool)

(assert (=> b!309138 (= res!165906 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!309139 () Bool)

(declare-fun res!165909 () Bool)

(assert (=> b!309139 (=> (not res!165909) (not e!193156))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15767 (_ BitVec 32)) SeekEntryResult!2616)

(assert (=> b!309139 (= res!165909 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2616 i!1240)))))

(declare-fun b!309140 () Bool)

(declare-fun res!165908 () Bool)

(assert (=> b!309140 (=> (not res!165908) (not e!193156))))

(declare-fun arrayContainsKey!0 (array!15767 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!309140 (= res!165908 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!309141 () Bool)

(assert (=> b!309141 (= e!193159 (not true))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309141 (= lt!151525 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(assert (= (and start!30816 res!165905) b!309133))

(assert (= (and b!309133 res!165912) b!309135))

(assert (= (and b!309135 res!165911) b!309140))

(assert (= (and b!309140 res!165908) b!309139))

(assert (= (and b!309139 res!165909) b!309138))

(assert (= (and b!309138 res!165906) b!309134))

(assert (= (and b!309134 res!165910) b!309136))

(assert (= (and b!309136 res!165904) b!309137))

(assert (= (and b!309137 res!165907) b!309141))

(declare-fun m!319183 () Bool)

(assert (=> start!30816 m!319183))

(declare-fun m!319185 () Bool)

(assert (=> start!30816 m!319185))

(declare-fun m!319187 () Bool)

(assert (=> b!309135 m!319187))

(declare-fun m!319189 () Bool)

(assert (=> b!309137 m!319189))

(declare-fun m!319191 () Bool)

(assert (=> b!309137 m!319191))

(declare-fun m!319193 () Bool)

(assert (=> b!309139 m!319193))

(declare-fun m!319195 () Bool)

(assert (=> b!309134 m!319195))

(assert (=> b!309134 m!319195))

(declare-fun m!319197 () Bool)

(assert (=> b!309134 m!319197))

(declare-fun m!319199 () Bool)

(assert (=> b!309141 m!319199))

(assert (=> b!309141 m!319199))

(declare-fun m!319201 () Bool)

(assert (=> b!309141 m!319201))

(declare-fun m!319203 () Bool)

(assert (=> b!309136 m!319203))

(declare-fun m!319205 () Bool)

(assert (=> b!309138 m!319205))

(declare-fun m!319207 () Bool)

(assert (=> b!309140 m!319207))

(push 1)


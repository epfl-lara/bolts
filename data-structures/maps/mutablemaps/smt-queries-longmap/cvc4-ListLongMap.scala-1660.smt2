; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30802 () Bool)

(assert start!30802)

(declare-fun b!308944 () Bool)

(declare-fun res!165723 () Bool)

(declare-fun e!193074 () Bool)

(assert (=> b!308944 (=> (not res!165723) (not e!193074))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!308944 (= res!165723 (validKeyInArray!0 k!2441))))

(declare-fun b!308945 () Bool)

(declare-fun e!193073 () Bool)

(declare-fun e!193075 () Bool)

(assert (=> b!308945 (= e!193073 e!193075)))

(declare-fun res!165715 () Bool)

(assert (=> b!308945 (=> (not res!165715) (not e!193075))))

(declare-datatypes ((array!15753 0))(
  ( (array!15754 (arr!7458 (Array (_ BitVec 32) (_ BitVec 64))) (size!7810 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15753)

(declare-datatypes ((SeekEntryResult!2609 0))(
  ( (MissingZero!2609 (index!12612 (_ BitVec 32))) (Found!2609 (index!12613 (_ BitVec 32))) (Intermediate!2609 (undefined!3421 Bool) (index!12614 (_ BitVec 32)) (x!30808 (_ BitVec 32))) (Undefined!2609) (MissingVacant!2609 (index!12615 (_ BitVec 32))) )
))
(declare-fun lt!151484 () SeekEntryResult!2609)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun lt!151483 () SeekEntryResult!2609)

(assert (=> b!308945 (= res!165715 (and (= lt!151484 lt!151483) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7458 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15753 (_ BitVec 32)) SeekEntryResult!2609)

(assert (=> b!308945 (= lt!151484 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!308946 () Bool)

(assert (=> b!308946 (= e!193074 e!193073)))

(declare-fun res!165720 () Bool)

(assert (=> b!308946 (=> (not res!165720) (not e!193073))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308946 (= res!165720 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151483))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!308946 (= lt!151483 (Intermediate!2609 false resIndex!52 resX!52))))

(declare-fun b!308947 () Bool)

(assert (=> b!308947 (= e!193075 (not (bvsge mask!3709 #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308947 (= lt!151484 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!308948 () Bool)

(declare-fun res!165719 () Bool)

(assert (=> b!308948 (=> (not res!165719) (not e!193074))))

(declare-fun arrayContainsKey!0 (array!15753 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!308948 (= res!165719 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun res!165717 () Bool)

(assert (=> start!30802 (=> (not res!165717) (not e!193074))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30802 (= res!165717 (validMask!0 mask!3709))))

(assert (=> start!30802 e!193074))

(declare-fun array_inv!5412 (array!15753) Bool)

(assert (=> start!30802 (array_inv!5412 a!3293)))

(assert (=> start!30802 true))

(declare-fun b!308949 () Bool)

(declare-fun res!165722 () Bool)

(assert (=> b!308949 (=> (not res!165722) (not e!193074))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15753 (_ BitVec 32)) SeekEntryResult!2609)

(assert (=> b!308949 (= res!165722 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2609 i!1240)))))

(declare-fun b!308950 () Bool)

(declare-fun res!165721 () Bool)

(assert (=> b!308950 (=> (not res!165721) (not e!193074))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15753 (_ BitVec 32)) Bool)

(assert (=> b!308950 (= res!165721 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!308951 () Bool)

(declare-fun res!165718 () Bool)

(assert (=> b!308951 (=> (not res!165718) (not e!193073))))

(assert (=> b!308951 (= res!165718 (and (= (select (arr!7458 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7810 a!3293))))))

(declare-fun b!308952 () Bool)

(declare-fun res!165716 () Bool)

(assert (=> b!308952 (=> (not res!165716) (not e!193074))))

(assert (=> b!308952 (= res!165716 (and (= (size!7810 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7810 a!3293))))))

(assert (= (and start!30802 res!165717) b!308952))

(assert (= (and b!308952 res!165716) b!308944))

(assert (= (and b!308944 res!165723) b!308948))

(assert (= (and b!308948 res!165719) b!308949))

(assert (= (and b!308949 res!165722) b!308950))

(assert (= (and b!308950 res!165721) b!308946))

(assert (= (and b!308946 res!165720) b!308951))

(assert (= (and b!308951 res!165718) b!308945))

(assert (= (and b!308945 res!165715) b!308947))

(declare-fun m!319001 () Bool)

(assert (=> b!308950 m!319001))

(declare-fun m!319003 () Bool)

(assert (=> b!308948 m!319003))

(declare-fun m!319005 () Bool)

(assert (=> b!308946 m!319005))

(assert (=> b!308946 m!319005))

(declare-fun m!319007 () Bool)

(assert (=> b!308946 m!319007))

(declare-fun m!319009 () Bool)

(assert (=> b!308947 m!319009))

(assert (=> b!308947 m!319009))

(declare-fun m!319011 () Bool)

(assert (=> b!308947 m!319011))

(declare-fun m!319013 () Bool)

(assert (=> start!30802 m!319013))

(declare-fun m!319015 () Bool)

(assert (=> start!30802 m!319015))

(declare-fun m!319017 () Bool)

(assert (=> b!308949 m!319017))

(declare-fun m!319019 () Bool)

(assert (=> b!308951 m!319019))

(declare-fun m!319021 () Bool)

(assert (=> b!308945 m!319021))

(declare-fun m!319023 () Bool)

(assert (=> b!308945 m!319023))

(declare-fun m!319025 () Bool)

(assert (=> b!308944 m!319025))

(push 1)

(assert (not b!308949))

(assert (not start!30802))

(assert (not b!308947))

(assert (not b!308950))

(assert (not b!308944))

(assert (not b!308946))

(assert (not b!308945))

(assert (not b!308948))

(check-sat)


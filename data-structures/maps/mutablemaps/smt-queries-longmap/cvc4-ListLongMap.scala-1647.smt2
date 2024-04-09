; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30670 () Bool)

(assert start!30670)

(declare-fun b!307629 () Bool)

(declare-fun e!192519 () Bool)

(assert (=> b!307629 (= e!192519 false)))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun lt!151144 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!307629 (= lt!151144 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!307630 () Bool)

(declare-fun res!164548 () Bool)

(declare-fun e!192520 () Bool)

(assert (=> b!307630 (=> (not res!164548) (not e!192520))))

(declare-datatypes ((array!15672 0))(
  ( (array!15673 (arr!7419 (Array (_ BitVec 32) (_ BitVec 64))) (size!7771 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15672)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15672 (_ BitVec 32)) Bool)

(assert (=> b!307630 (= res!164548 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!307631 () Bool)

(declare-fun res!164545 () Bool)

(assert (=> b!307631 (=> (not res!164545) (not e!192519))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!307631 (= res!164545 (and (= (select (arr!7419 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7771 a!3293))))))

(declare-fun b!307632 () Bool)

(declare-fun res!164546 () Bool)

(assert (=> b!307632 (=> (not res!164546) (not e!192520))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2570 0))(
  ( (MissingZero!2570 (index!12456 (_ BitVec 32))) (Found!2570 (index!12457 (_ BitVec 32))) (Intermediate!2570 (undefined!3382 Bool) (index!12458 (_ BitVec 32)) (x!30656 (_ BitVec 32))) (Undefined!2570) (MissingVacant!2570 (index!12459 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15672 (_ BitVec 32)) SeekEntryResult!2570)

(assert (=> b!307632 (= res!164546 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2570 i!1240)))))

(declare-fun b!307634 () Bool)

(declare-fun res!164541 () Bool)

(assert (=> b!307634 (=> (not res!164541) (not e!192520))))

(declare-fun arrayContainsKey!0 (array!15672 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!307634 (= res!164541 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!307635 () Bool)

(assert (=> b!307635 (= e!192520 e!192519)))

(declare-fun res!164544 () Bool)

(assert (=> b!307635 (=> (not res!164544) (not e!192519))))

(declare-fun lt!151145 () SeekEntryResult!2570)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15672 (_ BitVec 32)) SeekEntryResult!2570)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!307635 (= res!164544 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151145))))

(assert (=> b!307635 (= lt!151145 (Intermediate!2570 false resIndex!52 resX!52))))

(declare-fun b!307636 () Bool)

(declare-fun res!164547 () Bool)

(assert (=> b!307636 (=> (not res!164547) (not e!192520))))

(assert (=> b!307636 (= res!164547 (and (= (size!7771 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7771 a!3293))))))

(declare-fun b!307633 () Bool)

(declare-fun res!164550 () Bool)

(assert (=> b!307633 (=> (not res!164550) (not e!192520))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!307633 (= res!164550 (validKeyInArray!0 k!2441))))

(declare-fun res!164543 () Bool)

(assert (=> start!30670 (=> (not res!164543) (not e!192520))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30670 (= res!164543 (validMask!0 mask!3709))))

(assert (=> start!30670 e!192520))

(declare-fun array_inv!5373 (array!15672) Bool)

(assert (=> start!30670 (array_inv!5373 a!3293)))

(assert (=> start!30670 true))

(declare-fun b!307637 () Bool)

(declare-fun res!164542 () Bool)

(assert (=> b!307637 (=> (not res!164542) (not e!192519))))

(assert (=> b!307637 (= res!164542 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!151145))))

(declare-fun b!307638 () Bool)

(declare-fun res!164549 () Bool)

(assert (=> b!307638 (=> (not res!164549) (not e!192519))))

(assert (=> b!307638 (= res!164549 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7419 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (= (and start!30670 res!164543) b!307636))

(assert (= (and b!307636 res!164547) b!307633))

(assert (= (and b!307633 res!164550) b!307634))

(assert (= (and b!307634 res!164541) b!307632))

(assert (= (and b!307632 res!164546) b!307630))

(assert (= (and b!307630 res!164548) b!307635))

(assert (= (and b!307635 res!164544) b!307631))

(assert (= (and b!307631 res!164545) b!307637))

(assert (= (and b!307637 res!164542) b!307638))

(assert (= (and b!307638 res!164549) b!307629))

(declare-fun m!317905 () Bool)

(assert (=> b!307630 m!317905))

(declare-fun m!317907 () Bool)

(assert (=> b!307633 m!317907))

(declare-fun m!317909 () Bool)

(assert (=> b!307631 m!317909))

(declare-fun m!317911 () Bool)

(assert (=> b!307637 m!317911))

(declare-fun m!317913 () Bool)

(assert (=> start!30670 m!317913))

(declare-fun m!317915 () Bool)

(assert (=> start!30670 m!317915))

(declare-fun m!317917 () Bool)

(assert (=> b!307635 m!317917))

(assert (=> b!307635 m!317917))

(declare-fun m!317919 () Bool)

(assert (=> b!307635 m!317919))

(declare-fun m!317921 () Bool)

(assert (=> b!307632 m!317921))

(declare-fun m!317923 () Bool)

(assert (=> b!307629 m!317923))

(declare-fun m!317925 () Bool)

(assert (=> b!307638 m!317925))

(declare-fun m!317927 () Bool)

(assert (=> b!307634 m!317927))

(push 1)

(assert (not b!307629))

(assert (not b!307633))

(assert (not b!307635))

(assert (not b!307630))

(assert (not b!307632))

(assert (not start!30670))

(assert (not b!307634))

(assert (not b!307637))

(check-sat)


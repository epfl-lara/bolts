; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30682 () Bool)

(assert start!30682)

(declare-fun b!307809 () Bool)

(declare-fun res!164724 () Bool)

(declare-fun e!192572 () Bool)

(assert (=> b!307809 (=> (not res!164724) (not e!192572))))

(declare-datatypes ((array!15684 0))(
  ( (array!15685 (arr!7425 (Array (_ BitVec 32) (_ BitVec 64))) (size!7777 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15684)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2576 0))(
  ( (MissingZero!2576 (index!12480 (_ BitVec 32))) (Found!2576 (index!12481 (_ BitVec 32))) (Intermediate!2576 (undefined!3388 Bool) (index!12482 (_ BitVec 32)) (x!30678 (_ BitVec 32))) (Undefined!2576) (MissingVacant!2576 (index!12483 (_ BitVec 32))) )
))
(declare-fun lt!151181 () SeekEntryResult!2576)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15684 (_ BitVec 32)) SeekEntryResult!2576)

(assert (=> b!307809 (= res!164724 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!151181))))

(declare-fun b!307810 () Bool)

(declare-fun res!164728 () Bool)

(assert (=> b!307810 (=> (not res!164728) (not e!192572))))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!307810 (= res!164728 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7425 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(declare-fun b!307811 () Bool)

(declare-fun res!164723 () Bool)

(declare-fun e!192574 () Bool)

(assert (=> b!307811 (=> (not res!164723) (not e!192574))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15684 (_ BitVec 32)) SeekEntryResult!2576)

(assert (=> b!307811 (= res!164723 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2576 i!1240)))))

(declare-fun b!307812 () Bool)

(declare-fun res!164729 () Bool)

(assert (=> b!307812 (=> (not res!164729) (not e!192574))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!307812 (= res!164729 (validKeyInArray!0 k!2441))))

(declare-fun b!307813 () Bool)

(declare-fun res!164725 () Bool)

(assert (=> b!307813 (=> (not res!164725) (not e!192574))))

(assert (=> b!307813 (= res!164725 (and (= (size!7777 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7777 a!3293))))))

(declare-fun b!307814 () Bool)

(assert (=> b!307814 (= e!192574 e!192572)))

(declare-fun res!164721 () Bool)

(assert (=> b!307814 (=> (not res!164721) (not e!192572))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!307814 (= res!164721 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151181))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!307814 (= lt!151181 (Intermediate!2576 false resIndex!52 resX!52))))

(declare-fun res!164730 () Bool)

(assert (=> start!30682 (=> (not res!164730) (not e!192574))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30682 (= res!164730 (validMask!0 mask!3709))))

(assert (=> start!30682 e!192574))

(declare-fun array_inv!5379 (array!15684) Bool)

(assert (=> start!30682 (array_inv!5379 a!3293)))

(assert (=> start!30682 true))

(declare-fun b!307815 () Bool)

(assert (=> b!307815 (= e!192572 false)))

(declare-fun lt!151180 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!307815 (= lt!151180 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!307816 () Bool)

(declare-fun res!164727 () Bool)

(assert (=> b!307816 (=> (not res!164727) (not e!192574))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15684 (_ BitVec 32)) Bool)

(assert (=> b!307816 (= res!164727 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!307817 () Bool)

(declare-fun res!164726 () Bool)

(assert (=> b!307817 (=> (not res!164726) (not e!192572))))

(assert (=> b!307817 (= res!164726 (and (= (select (arr!7425 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7777 a!3293))))))

(declare-fun b!307818 () Bool)

(declare-fun res!164722 () Bool)

(assert (=> b!307818 (=> (not res!164722) (not e!192574))))

(declare-fun arrayContainsKey!0 (array!15684 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!307818 (= res!164722 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(assert (= (and start!30682 res!164730) b!307813))

(assert (= (and b!307813 res!164725) b!307812))

(assert (= (and b!307812 res!164729) b!307818))

(assert (= (and b!307818 res!164722) b!307811))

(assert (= (and b!307811 res!164723) b!307816))

(assert (= (and b!307816 res!164727) b!307814))

(assert (= (and b!307814 res!164721) b!307817))

(assert (= (and b!307817 res!164726) b!307809))

(assert (= (and b!307809 res!164724) b!307810))

(assert (= (and b!307810 res!164728) b!307815))

(declare-fun m!318049 () Bool)

(assert (=> b!307816 m!318049))

(declare-fun m!318051 () Bool)

(assert (=> b!307818 m!318051))

(declare-fun m!318053 () Bool)

(assert (=> b!307809 m!318053))

(declare-fun m!318055 () Bool)

(assert (=> b!307814 m!318055))

(assert (=> b!307814 m!318055))

(declare-fun m!318057 () Bool)

(assert (=> b!307814 m!318057))

(declare-fun m!318059 () Bool)

(assert (=> b!307812 m!318059))

(declare-fun m!318061 () Bool)

(assert (=> b!307811 m!318061))

(declare-fun m!318063 () Bool)

(assert (=> b!307815 m!318063))

(declare-fun m!318065 () Bool)

(assert (=> b!307817 m!318065))

(declare-fun m!318067 () Bool)

(assert (=> b!307810 m!318067))

(declare-fun m!318069 () Bool)

(assert (=> start!30682 m!318069))

(declare-fun m!318071 () Bool)

(assert (=> start!30682 m!318071))

(push 1)


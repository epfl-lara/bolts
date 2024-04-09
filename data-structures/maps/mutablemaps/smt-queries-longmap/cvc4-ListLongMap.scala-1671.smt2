; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30922 () Bool)

(assert start!30922)

(declare-fun b!310104 () Bool)

(declare-fun res!166725 () Bool)

(declare-fun e!193645 () Bool)

(assert (=> b!310104 (=> (not res!166725) (not e!193645))))

(declare-datatypes ((array!15822 0))(
  ( (array!15823 (arr!7491 (Array (_ BitVec 32) (_ BitVec 64))) (size!7843 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15822)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15822 (_ BitVec 32)) Bool)

(assert (=> b!310104 (= res!166725 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun lt!151865 () (_ BitVec 32))

(declare-fun e!193642 () Bool)

(declare-fun b!310105 () Bool)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun lt!151862 () array!15822)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2642 0))(
  ( (MissingZero!2642 (index!12744 (_ BitVec 32))) (Found!2642 (index!12745 (_ BitVec 32))) (Intermediate!2642 (undefined!3454 Bool) (index!12746 (_ BitVec 32)) (x!30938 (_ BitVec 32))) (Undefined!2642) (MissingVacant!2642 (index!12747 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15822 (_ BitVec 32)) SeekEntryResult!2642)

(assert (=> b!310105 (= e!193642 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!151862 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!151865 k!2441 lt!151862 mask!3709)))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!310105 (= lt!151862 (array!15823 (store (arr!7491 a!3293) i!1240 k!2441) (size!7843 a!3293)))))

(declare-fun b!310106 () Bool)

(declare-fun res!166720 () Bool)

(assert (=> b!310106 (=> (not res!166720) (not e!193645))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!310106 (= res!166720 (validKeyInArray!0 k!2441))))

(declare-fun b!310107 () Bool)

(declare-fun res!166719 () Bool)

(assert (=> b!310107 (=> (not res!166719) (not e!193645))))

(declare-fun arrayContainsKey!0 (array!15822 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!310107 (= res!166719 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun res!166721 () Bool)

(assert (=> start!30922 (=> (not res!166721) (not e!193645))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30922 (= res!166721 (validMask!0 mask!3709))))

(assert (=> start!30922 e!193645))

(declare-fun array_inv!5445 (array!15822) Bool)

(assert (=> start!30922 (array_inv!5445 a!3293)))

(assert (=> start!30922 true))

(declare-fun b!310108 () Bool)

(declare-fun res!166724 () Bool)

(assert (=> b!310108 (=> (not res!166724) (not e!193645))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15822 (_ BitVec 32)) SeekEntryResult!2642)

(assert (=> b!310108 (= res!166724 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2642 i!1240)))))

(declare-fun b!310109 () Bool)

(declare-fun e!193644 () Bool)

(assert (=> b!310109 (= e!193644 (not (or (bvslt mask!3709 #b00000000000000000000000000000000) (bvslt index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)))))))

(assert (=> b!310109 e!193642))

(declare-fun res!166723 () Bool)

(assert (=> b!310109 (=> (not res!166723) (not e!193642))))

(declare-fun lt!151864 () SeekEntryResult!2642)

(assert (=> b!310109 (= res!166723 (= lt!151864 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!151865 k!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310109 (= lt!151865 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!310110 () Bool)

(declare-fun e!193643 () Bool)

(assert (=> b!310110 (= e!193643 e!193644)))

(declare-fun res!166718 () Bool)

(assert (=> b!310110 (=> (not res!166718) (not e!193644))))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun lt!151863 () SeekEntryResult!2642)

(assert (=> b!310110 (= res!166718 (and (= lt!151864 lt!151863) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7491 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!310110 (= lt!151864 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!310111 () Bool)

(assert (=> b!310111 (= e!193645 e!193643)))

(declare-fun res!166717 () Bool)

(assert (=> b!310111 (=> (not res!166717) (not e!193643))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310111 (= res!166717 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151863))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!310111 (= lt!151863 (Intermediate!2642 false resIndex!52 resX!52))))

(declare-fun b!310112 () Bool)

(declare-fun res!166716 () Bool)

(assert (=> b!310112 (=> (not res!166716) (not e!193645))))

(assert (=> b!310112 (= res!166716 (and (= (size!7843 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7843 a!3293))))))

(declare-fun b!310113 () Bool)

(declare-fun res!166722 () Bool)

(assert (=> b!310113 (=> (not res!166722) (not e!193643))))

(assert (=> b!310113 (= res!166722 (and (= (select (arr!7491 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7843 a!3293))))))

(assert (= (and start!30922 res!166721) b!310112))

(assert (= (and b!310112 res!166716) b!310106))

(assert (= (and b!310106 res!166720) b!310107))

(assert (= (and b!310107 res!166719) b!310108))

(assert (= (and b!310108 res!166724) b!310104))

(assert (= (and b!310104 res!166725) b!310111))

(assert (= (and b!310111 res!166717) b!310113))

(assert (= (and b!310113 res!166722) b!310110))

(assert (= (and b!310110 res!166718) b!310109))

(assert (= (and b!310109 res!166723) b!310105))

(declare-fun m!320045 () Bool)

(assert (=> b!310110 m!320045))

(declare-fun m!320047 () Bool)

(assert (=> b!310110 m!320047))

(declare-fun m!320049 () Bool)

(assert (=> b!310107 m!320049))

(declare-fun m!320051 () Bool)

(assert (=> b!310104 m!320051))

(declare-fun m!320053 () Bool)

(assert (=> b!310113 m!320053))

(declare-fun m!320055 () Bool)

(assert (=> b!310108 m!320055))

(declare-fun m!320057 () Bool)

(assert (=> start!30922 m!320057))

(declare-fun m!320059 () Bool)

(assert (=> start!30922 m!320059))

(declare-fun m!320061 () Bool)

(assert (=> b!310105 m!320061))

(declare-fun m!320063 () Bool)

(assert (=> b!310105 m!320063))

(declare-fun m!320065 () Bool)

(assert (=> b!310105 m!320065))

(declare-fun m!320067 () Bool)

(assert (=> b!310111 m!320067))

(assert (=> b!310111 m!320067))

(declare-fun m!320069 () Bool)

(assert (=> b!310111 m!320069))

(declare-fun m!320071 () Bool)

(assert (=> b!310106 m!320071))

(declare-fun m!320073 () Bool)

(assert (=> b!310109 m!320073))

(declare-fun m!320075 () Bool)

(assert (=> b!310109 m!320075))

(push 1)

(assert (not b!310111))

(assert (not b!310110))

(assert (not b!310104))

(assert (not b!310109))

(assert (not b!310106))

(assert (not b!310107))

(assert (not start!30922))

(assert (not b!310105))

(assert (not b!310108))

(check-sat)

(pop 1)

(push 1)

(check-sat)


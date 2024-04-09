; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30970 () Bool)

(assert start!30970)

(declare-fun b!310824 () Bool)

(declare-fun e!194003 () Bool)

(declare-fun e!194004 () Bool)

(assert (=> b!310824 (= e!194003 e!194004)))

(declare-fun res!167444 () Bool)

(assert (=> b!310824 (=> (not res!167444) (not e!194004))))

(declare-datatypes ((array!15870 0))(
  ( (array!15871 (arr!7515 (Array (_ BitVec 32) (_ BitVec 64))) (size!7867 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15870)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2666 0))(
  ( (MissingZero!2666 (index!12840 (_ BitVec 32))) (Found!2666 (index!12841 (_ BitVec 32))) (Intermediate!2666 (undefined!3478 Bool) (index!12842 (_ BitVec 32)) (x!31026 (_ BitVec 32))) (Undefined!2666) (MissingVacant!2666 (index!12843 (_ BitVec 32))) )
))
(declare-fun lt!152151 () SeekEntryResult!2666)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15870 (_ BitVec 32)) SeekEntryResult!2666)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310824 (= res!167444 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!152151))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!310824 (= lt!152151 (Intermediate!2666 false resIndex!52 resX!52))))

(declare-fun b!310825 () Bool)

(declare-fun res!167443 () Bool)

(assert (=> b!310825 (=> (not res!167443) (not e!194003))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15870 (_ BitVec 32)) SeekEntryResult!2666)

(assert (=> b!310825 (= res!167443 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2666 i!1240)))))

(declare-fun e!194002 () Bool)

(declare-fun b!310826 () Bool)

(declare-fun lt!152150 () array!15870)

(declare-fun lt!152152 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!310826 (= e!194002 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!152150 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152152 k!2441 lt!152150 mask!3709)))))

(assert (=> b!310826 (= lt!152150 (array!15871 (store (arr!7515 a!3293) i!1240 k!2441) (size!7867 a!3293)))))

(declare-fun b!310827 () Bool)

(declare-fun res!167441 () Bool)

(assert (=> b!310827 (=> (not res!167441) (not e!194004))))

(assert (=> b!310827 (= res!167441 (and (= (select (arr!7515 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7867 a!3293))))))

(declare-fun b!310828 () Bool)

(declare-fun res!167438 () Bool)

(assert (=> b!310828 (=> (not res!167438) (not e!194003))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!310828 (= res!167438 (validKeyInArray!0 k!2441))))

(declare-fun b!310829 () Bool)

(declare-fun e!194005 () Bool)

(assert (=> b!310829 (= e!194004 e!194005)))

(declare-fun res!167437 () Bool)

(assert (=> b!310829 (=> (not res!167437) (not e!194005))))

(declare-fun lt!152153 () SeekEntryResult!2666)

(assert (=> b!310829 (= res!167437 (and (= lt!152153 lt!152151) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7515 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!310829 (= lt!152153 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun res!167442 () Bool)

(assert (=> start!30970 (=> (not res!167442) (not e!194003))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30970 (= res!167442 (validMask!0 mask!3709))))

(assert (=> start!30970 e!194003))

(declare-fun array_inv!5469 (array!15870) Bool)

(assert (=> start!30970 (array_inv!5469 a!3293)))

(assert (=> start!30970 true))

(declare-fun b!310830 () Bool)

(declare-fun res!167439 () Bool)

(assert (=> b!310830 (=> (not res!167439) (not e!194003))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15870 (_ BitVec 32)) Bool)

(assert (=> b!310830 (= res!167439 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!310831 () Bool)

(declare-fun res!167440 () Bool)

(assert (=> b!310831 (=> (not res!167440) (not e!194003))))

(assert (=> b!310831 (= res!167440 (and (= (size!7867 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7867 a!3293))))))

(declare-fun b!310832 () Bool)

(assert (=> b!310832 (= e!194005 (not true))))

(assert (=> b!310832 e!194002))

(declare-fun res!167445 () Bool)

(assert (=> b!310832 (=> (not res!167445) (not e!194002))))

(assert (=> b!310832 (= res!167445 (= lt!152153 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152152 k!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310832 (= lt!152152 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!310833 () Bool)

(declare-fun res!167436 () Bool)

(assert (=> b!310833 (=> (not res!167436) (not e!194003))))

(declare-fun arrayContainsKey!0 (array!15870 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!310833 (= res!167436 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(assert (= (and start!30970 res!167442) b!310831))

(assert (= (and b!310831 res!167440) b!310828))

(assert (= (and b!310828 res!167438) b!310833))

(assert (= (and b!310833 res!167436) b!310825))

(assert (= (and b!310825 res!167443) b!310830))

(assert (= (and b!310830 res!167439) b!310824))

(assert (= (and b!310824 res!167444) b!310827))

(assert (= (and b!310827 res!167441) b!310829))

(assert (= (and b!310829 res!167437) b!310832))

(assert (= (and b!310832 res!167445) b!310826))

(declare-fun m!320813 () Bool)

(assert (=> b!310833 m!320813))

(declare-fun m!320815 () Bool)

(assert (=> b!310827 m!320815))

(declare-fun m!320817 () Bool)

(assert (=> b!310828 m!320817))

(declare-fun m!320819 () Bool)

(assert (=> b!310826 m!320819))

(declare-fun m!320821 () Bool)

(assert (=> b!310826 m!320821))

(declare-fun m!320823 () Bool)

(assert (=> b!310826 m!320823))

(declare-fun m!320825 () Bool)

(assert (=> b!310825 m!320825))

(declare-fun m!320827 () Bool)

(assert (=> start!30970 m!320827))

(declare-fun m!320829 () Bool)

(assert (=> start!30970 m!320829))

(declare-fun m!320831 () Bool)

(assert (=> b!310832 m!320831))

(declare-fun m!320833 () Bool)

(assert (=> b!310832 m!320833))

(declare-fun m!320835 () Bool)

(assert (=> b!310829 m!320835))

(declare-fun m!320837 () Bool)

(assert (=> b!310829 m!320837))

(declare-fun m!320839 () Bool)

(assert (=> b!310830 m!320839))

(declare-fun m!320841 () Bool)

(assert (=> b!310824 m!320841))

(assert (=> b!310824 m!320841))

(declare-fun m!320843 () Bool)

(assert (=> b!310824 m!320843))

(push 1)

(assert (not start!30970))

(assert (not b!310832))

(assert (not b!310830))

(assert (not b!310826))

(assert (not b!310828))

(assert (not b!310825))

(assert (not 
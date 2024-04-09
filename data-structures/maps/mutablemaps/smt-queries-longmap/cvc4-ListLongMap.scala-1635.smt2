; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30598 () Bool)

(assert start!30598)

(declare-datatypes ((array!15600 0))(
  ( (array!15601 (arr!7383 (Array (_ BitVec 32) (_ BitVec 64))) (size!7735 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15600)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun e!192210 () Bool)

(declare-fun b!306635 () Bool)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!306635 (= e!192210 (not (or (not (= (select (arr!7383 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!3709 #b00000000000000000000000000000000) (bvsge index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsle x!1427 #b01111111111111111111111111111110))))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!306635 (= index!1781 resIndex!52)))

(declare-datatypes ((Unit!9548 0))(
  ( (Unit!9549) )
))
(declare-fun lt!151008 () Unit!9548)

(declare-fun e!192214 () Unit!9548)

(assert (=> b!306635 (= lt!151008 e!192214)))

(declare-fun c!49127 () Bool)

(assert (=> b!306635 (= c!49127 (not (= resIndex!52 index!1781)))))

(declare-fun b!306636 () Bool)

(declare-fun res!163590 () Bool)

(assert (=> b!306636 (=> (not res!163590) (not e!192210))))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!306636 (= res!163590 (and (= (select (arr!7383 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7735 a!3293))))))

(declare-fun b!306637 () Bool)

(declare-fun res!163587 () Bool)

(assert (=> b!306637 (=> (not res!163587) (not e!192210))))

(declare-datatypes ((SeekEntryResult!2534 0))(
  ( (MissingZero!2534 (index!12312 (_ BitVec 32))) (Found!2534 (index!12313 (_ BitVec 32))) (Intermediate!2534 (undefined!3346 Bool) (index!12314 (_ BitVec 32)) (x!30524 (_ BitVec 32))) (Undefined!2534) (MissingVacant!2534 (index!12315 (_ BitVec 32))) )
))
(declare-fun lt!151009 () SeekEntryResult!2534)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15600 (_ BitVec 32)) SeekEntryResult!2534)

(assert (=> b!306637 (= res!163587 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!151009))))

(declare-fun b!306638 () Bool)

(declare-fun res!163591 () Bool)

(assert (=> b!306638 (=> (not res!163591) (not e!192210))))

(assert (=> b!306638 (= res!163591 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7383 a!3293) index!1781) k!2441)) (= x!1427 resX!52)))))

(declare-fun b!306639 () Bool)

(declare-fun e!192212 () Unit!9548)

(assert (=> b!306639 (= e!192214 e!192212)))

(declare-fun c!49126 () Bool)

(assert (=> b!306639 (= c!49126 (or (= (select (arr!7383 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7383 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!306640 () Bool)

(declare-fun e!192213 () Bool)

(assert (=> b!306640 (= e!192213 e!192210)))

(declare-fun res!163594 () Bool)

(assert (=> b!306640 (=> (not res!163594) (not e!192210))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!306640 (= res!163594 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151009))))

(assert (=> b!306640 (= lt!151009 (Intermediate!2534 false resIndex!52 resX!52))))

(declare-fun b!306641 () Bool)

(declare-fun res!163595 () Bool)

(assert (=> b!306641 (=> (not res!163595) (not e!192213))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!306641 (= res!163595 (validKeyInArray!0 k!2441))))

(declare-fun b!306642 () Bool)

(assert (=> b!306642 false))

(declare-fun lt!151010 () SeekEntryResult!2534)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!306642 (= lt!151010 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun Unit!9550 () Unit!9548)

(assert (=> b!306642 (= e!192212 Unit!9550)))

(declare-fun b!306643 () Bool)

(declare-fun res!163588 () Bool)

(assert (=> b!306643 (=> (not res!163588) (not e!192213))))

(assert (=> b!306643 (= res!163588 (and (= (size!7735 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7735 a!3293))))))

(declare-fun b!306644 () Bool)

(assert (=> b!306644 false))

(declare-fun Unit!9551 () Unit!9548)

(assert (=> b!306644 (= e!192212 Unit!9551)))

(declare-fun b!306645 () Bool)

(declare-fun res!163589 () Bool)

(assert (=> b!306645 (=> (not res!163589) (not e!192213))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15600 (_ BitVec 32)) SeekEntryResult!2534)

(assert (=> b!306645 (= res!163589 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2534 i!1240)))))

(declare-fun b!306647 () Bool)

(declare-fun res!163596 () Bool)

(assert (=> b!306647 (=> (not res!163596) (not e!192213))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15600 (_ BitVec 32)) Bool)

(assert (=> b!306647 (= res!163596 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!306648 () Bool)

(declare-fun Unit!9552 () Unit!9548)

(assert (=> b!306648 (= e!192214 Unit!9552)))

(declare-fun b!306646 () Bool)

(declare-fun res!163593 () Bool)

(assert (=> b!306646 (=> (not res!163593) (not e!192213))))

(declare-fun arrayContainsKey!0 (array!15600 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!306646 (= res!163593 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun res!163592 () Bool)

(assert (=> start!30598 (=> (not res!163592) (not e!192213))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30598 (= res!163592 (validMask!0 mask!3709))))

(assert (=> start!30598 e!192213))

(declare-fun array_inv!5337 (array!15600) Bool)

(assert (=> start!30598 (array_inv!5337 a!3293)))

(assert (=> start!30598 true))

(assert (= (and start!30598 res!163592) b!306643))

(assert (= (and b!306643 res!163588) b!306641))

(assert (= (and b!306641 res!163595) b!306646))

(assert (= (and b!306646 res!163593) b!306645))

(assert (= (and b!306645 res!163589) b!306647))

(assert (= (and b!306647 res!163596) b!306640))

(assert (= (and b!306640 res!163594) b!306636))

(assert (= (and b!306636 res!163590) b!306637))

(assert (= (and b!306637 res!163587) b!306638))

(assert (= (and b!306638 res!163591) b!306635))

(assert (= (and b!306635 c!49127) b!306639))

(assert (= (and b!306635 (not c!49127)) b!306648))

(assert (= (and b!306639 c!49126) b!306644))

(assert (= (and b!306639 (not c!49126)) b!306642))

(declare-fun m!317117 () Bool)

(assert (=> b!306646 m!317117))

(declare-fun m!317119 () Bool)

(assert (=> b!306635 m!317119))

(declare-fun m!317121 () Bool)

(assert (=> b!306641 m!317121))

(declare-fun m!317123 () Bool)

(assert (=> b!306640 m!317123))

(assert (=> b!306640 m!317123))

(declare-fun m!317125 () Bool)

(assert (=> b!306640 m!317125))

(assert (=> b!306639 m!317119))

(declare-fun m!317127 () Bool)

(assert (=> b!306636 m!317127))

(declare-fun m!317129 () Bool)

(assert (=> b!306637 m!317129))

(assert (=> b!306638 m!317119))

(declare-fun m!317131 () Bool)

(assert (=> b!306642 m!317131))

(assert (=> b!306642 m!317131))

(declare-fun m!317133 () Bool)

(assert (=> b!306642 m!317133))

(declare-fun m!317135 () Bool)

(assert (=> b!306647 m!317135))

(declare-fun m!317137 () Bool)

(assert (=> b!306645 m!317137))

(declare-fun m!317139 () Bool)

(assert (=> start!30598 m!317139))

(declare-fun m!317141 () Bool)

(assert (=> start!30598 m!317141))

(push 1)

(assert (not b!306645))

(assert (not start!30598))

(assert (not b!306641))

(assert (not b!306640))

(assert (not b!306642))


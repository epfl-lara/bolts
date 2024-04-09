; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30612 () Bool)

(assert start!30612)

(declare-fun b!306865 () Bool)

(declare-fun e!192285 () Bool)

(declare-fun e!192284 () Bool)

(assert (=> b!306865 (= e!192285 e!192284)))

(declare-fun res!163785 () Bool)

(assert (=> b!306865 (=> (not res!163785) (not e!192284))))

(declare-datatypes ((array!15614 0))(
  ( (array!15615 (arr!7390 (Array (_ BitVec 32) (_ BitVec 64))) (size!7742 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15614)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2541 0))(
  ( (MissingZero!2541 (index!12340 (_ BitVec 32))) (Found!2541 (index!12341 (_ BitVec 32))) (Intermediate!2541 (undefined!3353 Bool) (index!12342 (_ BitVec 32)) (x!30555 (_ BitVec 32))) (Undefined!2541) (MissingVacant!2541 (index!12343 (_ BitVec 32))) )
))
(declare-fun lt!151049 () SeekEntryResult!2541)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15614 (_ BitVec 32)) SeekEntryResult!2541)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!306865 (= res!163785 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151049))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!306865 (= lt!151049 (Intermediate!2541 false resIndex!52 resX!52))))

(declare-fun b!306866 () Bool)

(declare-fun res!163784 () Bool)

(assert (=> b!306866 (=> (not res!163784) (not e!192284))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!306866 (= res!163784 (and (= (select (arr!7390 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7742 a!3293))))))

(declare-fun b!306867 () Bool)

(assert (=> b!306867 (= e!192284 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7390 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52)) (bvslt mask!3709 #b00000000000000000000000000000000)))))

(declare-fun b!306868 () Bool)

(declare-fun res!163778 () Bool)

(assert (=> b!306868 (=> (not res!163778) (not e!192285))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!306868 (= res!163778 (validKeyInArray!0 k!2441))))

(declare-fun b!306870 () Bool)

(declare-fun res!163780 () Bool)

(assert (=> b!306870 (=> (not res!163780) (not e!192285))))

(declare-fun arrayContainsKey!0 (array!15614 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!306870 (= res!163780 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!306871 () Bool)

(declare-fun res!163781 () Bool)

(assert (=> b!306871 (=> (not res!163781) (not e!192285))))

(assert (=> b!306871 (= res!163781 (and (= (size!7742 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7742 a!3293))))))

(declare-fun b!306869 () Bool)

(declare-fun res!163782 () Bool)

(assert (=> b!306869 (=> (not res!163782) (not e!192285))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15614 (_ BitVec 32)) Bool)

(assert (=> b!306869 (= res!163782 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun res!163777 () Bool)

(assert (=> start!30612 (=> (not res!163777) (not e!192285))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30612 (= res!163777 (validMask!0 mask!3709))))

(assert (=> start!30612 e!192285))

(declare-fun array_inv!5344 (array!15614) Bool)

(assert (=> start!30612 (array_inv!5344 a!3293)))

(assert (=> start!30612 true))

(declare-fun b!306872 () Bool)

(declare-fun res!163783 () Bool)

(assert (=> b!306872 (=> (not res!163783) (not e!192284))))

(assert (=> b!306872 (= res!163783 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!151049))))

(declare-fun b!306873 () Bool)

(declare-fun res!163779 () Bool)

(assert (=> b!306873 (=> (not res!163779) (not e!192285))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15614 (_ BitVec 32)) SeekEntryResult!2541)

(assert (=> b!306873 (= res!163779 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2541 i!1240)))))

(assert (= (and start!30612 res!163777) b!306871))

(assert (= (and b!306871 res!163781) b!306868))

(assert (= (and b!306868 res!163778) b!306870))

(assert (= (and b!306870 res!163780) b!306873))

(assert (= (and b!306873 res!163779) b!306869))

(assert (= (and b!306869 res!163782) b!306865))

(assert (= (and b!306865 res!163785) b!306866))

(assert (= (and b!306866 res!163784) b!306872))

(assert (= (and b!306872 res!163783) b!306867))

(declare-fun m!317281 () Bool)

(assert (=> start!30612 m!317281))

(declare-fun m!317283 () Bool)

(assert (=> start!30612 m!317283))

(declare-fun m!317285 () Bool)

(assert (=> b!306870 m!317285))

(declare-fun m!317287 () Bool)

(assert (=> b!306872 m!317287))

(declare-fun m!317289 () Bool)

(assert (=> b!306873 m!317289))

(declare-fun m!317291 () Bool)

(assert (=> b!306867 m!317291))

(declare-fun m!317293 () Bool)

(assert (=> b!306866 m!317293))

(declare-fun m!317295 () Bool)

(assert (=> b!306868 m!317295))

(declare-fun m!317297 () Bool)

(assert (=> b!306869 m!317297))

(declare-fun m!317299 () Bool)

(assert (=> b!306865 m!317299))

(assert (=> b!306865 m!317299))

(declare-fun m!317301 () Bool)

(assert (=> b!306865 m!317301))

(push 1)

(assert (not b!306870))

(assert (not b!306868))

(assert (not b!306872))

(assert (not b!306869))

(assert (not b!306873))

(assert (not start!30612))

(assert (not b!306865))

(check-sat)

(pop 1)


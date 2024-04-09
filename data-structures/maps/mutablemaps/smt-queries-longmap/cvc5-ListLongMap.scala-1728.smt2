; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31824 () Bool)

(assert start!31824)

(declare-fun b!317739 () Bool)

(declare-fun res!172480 () Bool)

(declare-fun e!197508 () Bool)

(assert (=> b!317739 (=> (not res!172480) (not e!197508))))

(declare-datatypes ((array!16193 0))(
  ( (array!16194 (arr!7660 (Array (_ BitVec 32) (_ BitVec 64))) (size!8012 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16193)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2811 0))(
  ( (MissingZero!2811 (index!13420 (_ BitVec 32))) (Found!2811 (index!13421 (_ BitVec 32))) (Intermediate!2811 (undefined!3623 Bool) (index!13422 (_ BitVec 32)) (x!31647 (_ BitVec 32))) (Undefined!2811) (MissingVacant!2811 (index!13423 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16193 (_ BitVec 32)) SeekEntryResult!2811)

(assert (=> b!317739 (= res!172480 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2811 i!1240)))))

(declare-fun lt!155112 () array!16193)

(declare-fun b!317740 () Bool)

(declare-fun lt!155113 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun e!197506 () Bool)

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16193 (_ BitVec 32)) SeekEntryResult!2811)

(assert (=> b!317740 (= e!197506 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!155112 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155113 k!2441 lt!155112 mask!3709)))))

(assert (=> b!317740 (= lt!155112 (array!16194 (store (arr!7660 a!3293) i!1240 k!2441) (size!8012 a!3293)))))

(declare-fun res!172477 () Bool)

(assert (=> start!31824 (=> (not res!172477) (not e!197508))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31824 (= res!172477 (validMask!0 mask!3709))))

(assert (=> start!31824 e!197508))

(declare-fun array_inv!5614 (array!16193) Bool)

(assert (=> start!31824 (array_inv!5614 a!3293)))

(assert (=> start!31824 true))

(declare-fun b!317741 () Bool)

(declare-fun res!172485 () Bool)

(assert (=> b!317741 (=> (not res!172485) (not e!197508))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16193 (_ BitVec 32)) Bool)

(assert (=> b!317741 (= res!172485 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!317742 () Bool)

(declare-fun e!197505 () Bool)

(declare-fun e!197509 () Bool)

(assert (=> b!317742 (= e!197505 e!197509)))

(declare-fun res!172484 () Bool)

(assert (=> b!317742 (=> (not res!172484) (not e!197509))))

(declare-fun lt!155114 () SeekEntryResult!2811)

(declare-fun lt!155111 () SeekEntryResult!2811)

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!317742 (= res!172484 (and (= lt!155114 lt!155111) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7660 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!317742 (= lt!155114 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!317743 () Bool)

(declare-fun res!172479 () Bool)

(assert (=> b!317743 (=> (not res!172479) (not e!197508))))

(declare-fun arrayContainsKey!0 (array!16193 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!317743 (= res!172479 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!317744 () Bool)

(assert (=> b!317744 (= e!197508 e!197505)))

(declare-fun res!172478 () Bool)

(assert (=> b!317744 (=> (not res!172478) (not e!197505))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317744 (= res!172478 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!155111))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!317744 (= lt!155111 (Intermediate!2811 false resIndex!52 resX!52))))

(declare-fun b!317745 () Bool)

(declare-fun res!172482 () Bool)

(assert (=> b!317745 (=> (not res!172482) (not e!197508))))

(assert (=> b!317745 (= res!172482 (and (= (size!8012 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!8012 a!3293))))))

(declare-fun b!317746 () Bool)

(assert (=> b!317746 (= e!197509 (not true))))

(assert (=> b!317746 e!197506))

(declare-fun res!172481 () Bool)

(assert (=> b!317746 (=> (not res!172481) (not e!197506))))

(assert (=> b!317746 (= res!172481 (= lt!155114 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155113 k!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317746 (= lt!155113 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!317747 () Bool)

(declare-fun res!172483 () Bool)

(assert (=> b!317747 (=> (not res!172483) (not e!197508))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!317747 (= res!172483 (validKeyInArray!0 k!2441))))

(declare-fun b!317748 () Bool)

(declare-fun res!172476 () Bool)

(assert (=> b!317748 (=> (not res!172476) (not e!197505))))

(assert (=> b!317748 (= res!172476 (and (= (select (arr!7660 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!8012 a!3293))))))

(assert (= (and start!31824 res!172477) b!317745))

(assert (= (and b!317745 res!172482) b!317747))

(assert (= (and b!317747 res!172483) b!317743))

(assert (= (and b!317743 res!172479) b!317739))

(assert (= (and b!317739 res!172480) b!317741))

(assert (= (and b!317741 res!172485) b!317744))

(assert (= (and b!317744 res!172478) b!317748))

(assert (= (and b!317748 res!172476) b!317742))

(assert (= (and b!317742 res!172484) b!317746))

(assert (= (and b!317746 res!172481) b!317740))

(declare-fun m!326449 () Bool)

(assert (=> b!317747 m!326449))

(declare-fun m!326451 () Bool)

(assert (=> b!317746 m!326451))

(declare-fun m!326453 () Bool)

(assert (=> b!317746 m!326453))

(declare-fun m!326455 () Bool)

(assert (=> b!317748 m!326455))

(declare-fun m!326457 () Bool)

(assert (=> b!317739 m!326457))

(declare-fun m!326459 () Bool)

(assert (=> b!317743 m!326459))

(declare-fun m!326461 () Bool)

(assert (=> b!317740 m!326461))

(declare-fun m!326463 () Bool)

(assert (=> b!317740 m!326463))

(declare-fun m!326465 () Bool)

(assert (=> b!317740 m!326465))

(declare-fun m!326467 () Bool)

(assert (=> start!31824 m!326467))

(declare-fun m!326469 () Bool)

(assert (=> start!31824 m!326469))

(declare-fun m!326471 () Bool)

(assert (=> b!317741 m!326471))

(declare-fun m!326473 () Bool)

(assert (=> b!317742 m!326473))

(declare-fun m!326475 () Bool)

(assert (=> b!317742 m!326475))

(declare-fun m!326477 () Bool)

(assert (=> b!317744 m!326477))

(assert (=> b!317744 m!326477))

(declare-fun m!326479 () Bool)

(assert (=> b!317744 m!326479))

(push 1)


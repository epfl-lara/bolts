; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30660 () Bool)

(assert start!30660)

(declare-datatypes ((array!15662 0))(
  ( (array!15663 (arr!7414 (Array (_ BitVec 32) (_ BitVec 64))) (size!7766 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15662)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun b!307486 () Bool)

(declare-fun e!192474 () Bool)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!307486 (= e!192474 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7414 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52)) (bvsge mask!3709 #b00000000000000000000000000000000) (bvslt index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsgt x!1427 #b01111111111111111111111111111110)))))

(declare-fun b!307487 () Bool)

(declare-fun res!164405 () Bool)

(assert (=> b!307487 (=> (not res!164405) (not e!192474))))

(declare-datatypes ((SeekEntryResult!2565 0))(
  ( (MissingZero!2565 (index!12436 (_ BitVec 32))) (Found!2565 (index!12437 (_ BitVec 32))) (Intermediate!2565 (undefined!3377 Bool) (index!12438 (_ BitVec 32)) (x!30643 (_ BitVec 32))) (Undefined!2565) (MissingVacant!2565 (index!12439 (_ BitVec 32))) )
))
(declare-fun lt!151121 () SeekEntryResult!2565)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15662 (_ BitVec 32)) SeekEntryResult!2565)

(assert (=> b!307487 (= res!164405 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!151121))))

(declare-fun b!307488 () Bool)

(declare-fun res!164402 () Bool)

(declare-fun e!192473 () Bool)

(assert (=> b!307488 (=> (not res!164402) (not e!192473))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!307488 (= res!164402 (and (= (size!7766 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7766 a!3293))))))

(declare-fun b!307489 () Bool)

(declare-fun res!164404 () Bool)

(assert (=> b!307489 (=> (not res!164404) (not e!192473))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15662 (_ BitVec 32)) Bool)

(assert (=> b!307489 (= res!164404 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!307490 () Bool)

(declare-fun res!164403 () Bool)

(assert (=> b!307490 (=> (not res!164403) (not e!192474))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!307490 (= res!164403 (and (= (select (arr!7414 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7766 a!3293))))))

(declare-fun b!307491 () Bool)

(declare-fun res!164406 () Bool)

(assert (=> b!307491 (=> (not res!164406) (not e!192473))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!307491 (= res!164406 (validKeyInArray!0 k!2441))))

(declare-fun b!307492 () Bool)

(assert (=> b!307492 (= e!192473 e!192474)))

(declare-fun res!164401 () Bool)

(assert (=> b!307492 (=> (not res!164401) (not e!192474))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!307492 (= res!164401 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151121))))

(assert (=> b!307492 (= lt!151121 (Intermediate!2565 false resIndex!52 resX!52))))

(declare-fun b!307494 () Bool)

(declare-fun res!164399 () Bool)

(assert (=> b!307494 (=> (not res!164399) (not e!192473))))

(declare-fun arrayContainsKey!0 (array!15662 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!307494 (= res!164399 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!307493 () Bool)

(declare-fun res!164400 () Bool)

(assert (=> b!307493 (=> (not res!164400) (not e!192473))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15662 (_ BitVec 32)) SeekEntryResult!2565)

(assert (=> b!307493 (= res!164400 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2565 i!1240)))))

(declare-fun res!164398 () Bool)

(assert (=> start!30660 (=> (not res!164398) (not e!192473))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30660 (= res!164398 (validMask!0 mask!3709))))

(assert (=> start!30660 e!192473))

(declare-fun array_inv!5368 (array!15662) Bool)

(assert (=> start!30660 (array_inv!5368 a!3293)))

(assert (=> start!30660 true))

(assert (= (and start!30660 res!164398) b!307488))

(assert (= (and b!307488 res!164402) b!307491))

(assert (= (and b!307491 res!164406) b!307494))

(assert (= (and b!307494 res!164399) b!307493))

(assert (= (and b!307493 res!164400) b!307489))

(assert (= (and b!307489 res!164404) b!307492))

(assert (= (and b!307492 res!164401) b!307490))

(assert (= (and b!307490 res!164403) b!307487))

(assert (= (and b!307487 res!164405) b!307486))

(declare-fun m!317791 () Bool)

(assert (=> b!307491 m!317791))

(declare-fun m!317793 () Bool)

(assert (=> b!307494 m!317793))

(declare-fun m!317795 () Bool)

(assert (=> start!30660 m!317795))

(declare-fun m!317797 () Bool)

(assert (=> start!30660 m!317797))

(declare-fun m!317799 () Bool)

(assert (=> b!307487 m!317799))

(declare-fun m!317801 () Bool)

(assert (=> b!307492 m!317801))

(assert (=> b!307492 m!317801))

(declare-fun m!317803 () Bool)

(assert (=> b!307492 m!317803))

(declare-fun m!317805 () Bool)

(assert (=> b!307486 m!317805))

(declare-fun m!317807 () Bool)

(assert (=> b!307489 m!317807))

(declare-fun m!317809 () Bool)

(assert (=> b!307490 m!317809))

(declare-fun m!317811 () Bool)

(assert (=> b!307493 m!317811))

(push 1)


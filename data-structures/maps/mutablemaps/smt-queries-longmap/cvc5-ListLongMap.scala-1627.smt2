; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30546 () Bool)

(assert start!30546)

(declare-fun b!305543 () Bool)

(declare-fun e!191823 () Bool)

(assert (=> b!305543 (= e!191823 (not true))))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!305543 (= index!1781 resIndex!52)))

(declare-datatypes ((Unit!9418 0))(
  ( (Unit!9419) )
))
(declare-fun lt!150776 () Unit!9418)

(declare-fun e!191824 () Unit!9418)

(assert (=> b!305543 (= lt!150776 e!191824)))

(declare-fun c!48971 () Bool)

(assert (=> b!305543 (= c!48971 (not (= resIndex!52 index!1781)))))

(declare-fun b!305544 () Bool)

(declare-fun res!162811 () Bool)

(declare-fun e!191822 () Bool)

(assert (=> b!305544 (=> (not res!162811) (not e!191822))))

(declare-datatypes ((array!15548 0))(
  ( (array!15549 (arr!7357 (Array (_ BitVec 32) (_ BitVec 64))) (size!7709 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15548)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15548 (_ BitVec 32)) Bool)

(assert (=> b!305544 (= res!162811 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!305545 () Bool)

(declare-fun res!162810 () Bool)

(assert (=> b!305545 (=> (not res!162810) (not e!191822))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15548 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!305545 (= res!162810 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!305546 () Bool)

(declare-fun res!162809 () Bool)

(assert (=> b!305546 (=> (not res!162809) (not e!191823))))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(assert (=> b!305546 (= res!162809 (and (= (select (arr!7357 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7709 a!3293))))))

(declare-fun b!305547 () Bool)

(declare-fun res!162807 () Bool)

(assert (=> b!305547 (=> (not res!162807) (not e!191823))))

(assert (=> b!305547 (= res!162807 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7357 a!3293) index!1781) k!2441)) (= x!1427 resX!52)))))

(declare-fun b!305548 () Bool)

(declare-fun res!162814 () Bool)

(assert (=> b!305548 (=> (not res!162814) (not e!191823))))

(declare-datatypes ((SeekEntryResult!2508 0))(
  ( (MissingZero!2508 (index!12208 (_ BitVec 32))) (Found!2508 (index!12209 (_ BitVec 32))) (Intermediate!2508 (undefined!3320 Bool) (index!12210 (_ BitVec 32)) (x!30434 (_ BitVec 32))) (Undefined!2508) (MissingVacant!2508 (index!12211 (_ BitVec 32))) )
))
(declare-fun lt!150774 () SeekEntryResult!2508)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15548 (_ BitVec 32)) SeekEntryResult!2508)

(assert (=> b!305548 (= res!162814 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150774))))

(declare-fun b!305550 () Bool)

(declare-fun res!162812 () Bool)

(assert (=> b!305550 (=> (not res!162812) (not e!191822))))

(assert (=> b!305550 (= res!162812 (and (= (size!7709 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7709 a!3293))))))

(declare-fun b!305549 () Bool)

(declare-fun res!162813 () Bool)

(assert (=> b!305549 (=> (not res!162813) (not e!191822))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!305549 (= res!162813 (validKeyInArray!0 k!2441))))

(declare-fun res!162815 () Bool)

(assert (=> start!30546 (=> (not res!162815) (not e!191822))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30546 (= res!162815 (validMask!0 mask!3709))))

(assert (=> start!30546 e!191822))

(declare-fun array_inv!5311 (array!15548) Bool)

(assert (=> start!30546 (array_inv!5311 a!3293)))

(assert (=> start!30546 true))

(declare-fun b!305551 () Bool)

(declare-fun res!162816 () Bool)

(assert (=> b!305551 (=> (not res!162816) (not e!191822))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15548 (_ BitVec 32)) SeekEntryResult!2508)

(assert (=> b!305551 (= res!162816 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2508 i!1240)))))

(declare-fun b!305552 () Bool)

(assert (=> b!305552 false))

(declare-fun lt!150775 () SeekEntryResult!2508)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!305552 (= lt!150775 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun e!191821 () Unit!9418)

(declare-fun Unit!9420 () Unit!9418)

(assert (=> b!305552 (= e!191821 Unit!9420)))

(declare-fun b!305553 () Bool)

(assert (=> b!305553 (= e!191822 e!191823)))

(declare-fun res!162808 () Bool)

(assert (=> b!305553 (=> (not res!162808) (not e!191823))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!305553 (= res!162808 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150774))))

(assert (=> b!305553 (= lt!150774 (Intermediate!2508 false resIndex!52 resX!52))))

(declare-fun b!305554 () Bool)

(declare-fun Unit!9421 () Unit!9418)

(assert (=> b!305554 (= e!191824 Unit!9421)))

(declare-fun b!305555 () Bool)

(assert (=> b!305555 (= e!191824 e!191821)))

(declare-fun c!48970 () Bool)

(assert (=> b!305555 (= c!48970 (or (= (select (arr!7357 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7357 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!305556 () Bool)

(assert (=> b!305556 false))

(declare-fun Unit!9422 () Unit!9418)

(assert (=> b!305556 (= e!191821 Unit!9422)))

(assert (= (and start!30546 res!162815) b!305550))

(assert (= (and b!305550 res!162812) b!305549))

(assert (= (and b!305549 res!162813) b!305545))

(assert (= (and b!305545 res!162810) b!305551))

(assert (= (and b!305551 res!162816) b!305544))

(assert (= (and b!305544 res!162811) b!305553))

(assert (= (and b!305553 res!162808) b!305546))

(assert (= (and b!305546 res!162809) b!305548))

(assert (= (and b!305548 res!162814) b!305547))

(assert (= (and b!305547 res!162807) b!305543))

(assert (= (and b!305543 c!48971) b!305555))

(assert (= (and b!305543 (not c!48971)) b!305554))

(assert (= (and b!305555 c!48970) b!305556))

(assert (= (and b!305555 (not c!48970)) b!305552))

(declare-fun m!316441 () Bool)

(assert (=> b!305545 m!316441))

(declare-fun m!316443 () Bool)

(assert (=> b!305546 m!316443))

(declare-fun m!316445 () Bool)

(assert (=> b!305553 m!316445))

(assert (=> b!305553 m!316445))

(declare-fun m!316447 () Bool)

(assert (=> b!305553 m!316447))

(declare-fun m!316449 () Bool)

(assert (=> b!305548 m!316449))

(declare-fun m!316451 () Bool)

(assert (=> b!305549 m!316451))

(declare-fun m!316453 () Bool)

(assert (=> b!305552 m!316453))

(assert (=> b!305552 m!316453))

(declare-fun m!316455 () Bool)

(assert (=> b!305552 m!316455))

(declare-fun m!316457 () Bool)

(assert (=> start!30546 m!316457))

(declare-fun m!316459 () Bool)

(assert (=> start!30546 m!316459))

(declare-fun m!316461 () Bool)

(assert (=> b!305547 m!316461))

(declare-fun m!316463 () Bool)

(assert (=> b!305544 m!316463))

(assert (=> b!305555 m!316461))

(declare-fun m!316465 () Bool)

(assert (=> b!305551 m!316465))

(push 1)


; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30944 () Bool)

(assert start!30944)

(declare-fun b!310434 () Bool)

(declare-fun e!193808 () Bool)

(declare-fun e!193807 () Bool)

(assert (=> b!310434 (= e!193808 e!193807)))

(declare-fun res!167053 () Bool)

(assert (=> b!310434 (=> (not res!167053) (not e!193807))))

(declare-datatypes ((SeekEntryResult!2653 0))(
  ( (MissingZero!2653 (index!12788 (_ BitVec 32))) (Found!2653 (index!12789 (_ BitVec 32))) (Intermediate!2653 (undefined!3465 Bool) (index!12790 (_ BitVec 32)) (x!30981 (_ BitVec 32))) (Undefined!2653) (MissingVacant!2653 (index!12791 (_ BitVec 32))) )
))
(declare-fun lt!151996 () SeekEntryResult!2653)

(declare-datatypes ((array!15844 0))(
  ( (array!15845 (arr!7502 (Array (_ BitVec 32) (_ BitVec 64))) (size!7854 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15844)

(declare-fun lt!151995 () SeekEntryResult!2653)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!310434 (= res!167053 (and (= lt!151995 lt!151996) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7502 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15844 (_ BitVec 32)) SeekEntryResult!2653)

(assert (=> b!310434 (= lt!151995 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!310435 () Bool)

(declare-fun res!167046 () Bool)

(declare-fun e!193810 () Bool)

(assert (=> b!310435 (=> (not res!167046) (not e!193810))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!310435 (= res!167046 (validKeyInArray!0 k0!2441))))

(declare-fun res!167049 () Bool)

(assert (=> start!30944 (=> (not res!167049) (not e!193810))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30944 (= res!167049 (validMask!0 mask!3709))))

(assert (=> start!30944 e!193810))

(declare-fun array_inv!5456 (array!15844) Bool)

(assert (=> start!30944 (array_inv!5456 a!3293)))

(assert (=> start!30944 true))

(declare-fun b!310436 () Bool)

(assert (=> b!310436 (= e!193807 (not true))))

(declare-fun e!193806 () Bool)

(assert (=> b!310436 e!193806))

(declare-fun res!167054 () Bool)

(assert (=> b!310436 (=> (not res!167054) (not e!193806))))

(declare-fun lt!151997 () (_ BitVec 32))

(assert (=> b!310436 (= res!167054 (= lt!151995 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!151997 k0!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310436 (= lt!151997 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!310437 () Bool)

(declare-fun res!167052 () Bool)

(assert (=> b!310437 (=> (not res!167052) (not e!193810))))

(declare-fun arrayContainsKey!0 (array!15844 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!310437 (= res!167052 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!310438 () Bool)

(declare-fun lt!151994 () array!15844)

(assert (=> b!310438 (= e!193806 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 lt!151994 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!151997 k0!2441 lt!151994 mask!3709)))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!310438 (= lt!151994 (array!15845 (store (arr!7502 a!3293) i!1240 k0!2441) (size!7854 a!3293)))))

(declare-fun b!310439 () Bool)

(declare-fun res!167050 () Bool)

(assert (=> b!310439 (=> (not res!167050) (not e!193810))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15844 (_ BitVec 32)) Bool)

(assert (=> b!310439 (= res!167050 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!310440 () Bool)

(declare-fun res!167048 () Bool)

(assert (=> b!310440 (=> (not res!167048) (not e!193810))))

(assert (=> b!310440 (= res!167048 (and (= (size!7854 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7854 a!3293))))))

(declare-fun b!310441 () Bool)

(assert (=> b!310441 (= e!193810 e!193808)))

(declare-fun res!167047 () Bool)

(assert (=> b!310441 (=> (not res!167047) (not e!193808))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310441 (= res!167047 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!151996))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!310441 (= lt!151996 (Intermediate!2653 false resIndex!52 resX!52))))

(declare-fun b!310442 () Bool)

(declare-fun res!167051 () Bool)

(assert (=> b!310442 (=> (not res!167051) (not e!193810))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15844 (_ BitVec 32)) SeekEntryResult!2653)

(assert (=> b!310442 (= res!167051 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2653 i!1240)))))

(declare-fun b!310443 () Bool)

(declare-fun res!167055 () Bool)

(assert (=> b!310443 (=> (not res!167055) (not e!193808))))

(assert (=> b!310443 (= res!167055 (and (= (select (arr!7502 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7854 a!3293))))))

(assert (= (and start!30944 res!167049) b!310440))

(assert (= (and b!310440 res!167048) b!310435))

(assert (= (and b!310435 res!167046) b!310437))

(assert (= (and b!310437 res!167052) b!310442))

(assert (= (and b!310442 res!167051) b!310439))

(assert (= (and b!310439 res!167050) b!310441))

(assert (= (and b!310441 res!167047) b!310443))

(assert (= (and b!310443 res!167055) b!310434))

(assert (= (and b!310434 res!167053) b!310436))

(assert (= (and b!310436 res!167054) b!310438))

(declare-fun m!320397 () Bool)

(assert (=> b!310442 m!320397))

(declare-fun m!320399 () Bool)

(assert (=> b!310436 m!320399))

(declare-fun m!320401 () Bool)

(assert (=> b!310436 m!320401))

(declare-fun m!320403 () Bool)

(assert (=> start!30944 m!320403))

(declare-fun m!320405 () Bool)

(assert (=> start!30944 m!320405))

(declare-fun m!320407 () Bool)

(assert (=> b!310441 m!320407))

(assert (=> b!310441 m!320407))

(declare-fun m!320409 () Bool)

(assert (=> b!310441 m!320409))

(declare-fun m!320411 () Bool)

(assert (=> b!310437 m!320411))

(declare-fun m!320413 () Bool)

(assert (=> b!310438 m!320413))

(declare-fun m!320415 () Bool)

(assert (=> b!310438 m!320415))

(declare-fun m!320417 () Bool)

(assert (=> b!310438 m!320417))

(declare-fun m!320419 () Bool)

(assert (=> b!310434 m!320419))

(declare-fun m!320421 () Bool)

(assert (=> b!310434 m!320421))

(declare-fun m!320423 () Bool)

(assert (=> b!310443 m!320423))

(declare-fun m!320425 () Bool)

(assert (=> b!310439 m!320425))

(declare-fun m!320427 () Bool)

(assert (=> b!310435 m!320427))

(check-sat (not b!310439) (not b!310437) (not b!310435) (not b!310434) (not b!310436) (not start!30944) (not b!310441) (not b!310438) (not b!310442))
(check-sat)

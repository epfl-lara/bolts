; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31936 () Bool)

(assert start!31936)

(declare-fun b!318906 () Bool)

(declare-fun res!173452 () Bool)

(declare-fun e!198118 () Bool)

(assert (=> b!318906 (=> (not res!173452) (not e!198118))))

(declare-datatypes ((array!16254 0))(
  ( (array!16255 (arr!7689 (Array (_ BitVec 32) (_ BitVec 64))) (size!8041 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16254)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16254 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!318906 (= res!173452 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!318907 () Bool)

(declare-fun res!173455 () Bool)

(assert (=> b!318907 (=> (not res!173455) (not e!198118))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16254 (_ BitVec 32)) Bool)

(assert (=> b!318907 (= res!173455 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun lt!155603 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2840 0))(
  ( (MissingZero!2840 (index!13536 (_ BitVec 32))) (Found!2840 (index!13537 (_ BitVec 32))) (Intermediate!2840 (undefined!3652 Bool) (index!13538 (_ BitVec 32)) (x!31757 (_ BitVec 32))) (Undefined!2840) (MissingVacant!2840 (index!13539 (_ BitVec 32))) )
))
(declare-fun lt!155601 () SeekEntryResult!2840)

(declare-fun e!198120 () Bool)

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun b!318908 () Bool)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun lt!155600 () SeekEntryResult!2840)

(assert (=> b!318908 (= e!198120 (not (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000) (bvslt lt!155603 #b00000000000000000000000000000000) (bvsge lt!155603 (size!8041 a!3293)) (not (= lt!155601 lt!155600)) (bvslt (bvsub #b01111111111111111111111111111110 (bvadd #b00000000000000000000000000000001 x!1427)) (bvsub #b01111111111111111111111111111110 x!1427)))))))

(declare-fun e!198121 () Bool)

(assert (=> b!318908 e!198121))

(declare-fun res!173456 () Bool)

(assert (=> b!318908 (=> (not res!173456) (not e!198121))))

(declare-fun lt!155602 () SeekEntryResult!2840)

(assert (=> b!318908 (= res!173456 (= lt!155602 lt!155601))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16254 (_ BitVec 32)) SeekEntryResult!2840)

(assert (=> b!318908 (= lt!155601 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155603 k!2441 a!3293 mask!3709))))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!318908 (= lt!155603 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!318909 () Bool)

(declare-fun res!173453 () Bool)

(assert (=> b!318909 (=> (not res!173453) (not e!198118))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16254 (_ BitVec 32)) SeekEntryResult!2840)

(assert (=> b!318909 (= res!173453 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2840 i!1240)))))

(declare-fun b!318910 () Bool)

(declare-fun res!173457 () Bool)

(assert (=> b!318910 (=> (not res!173457) (not e!198118))))

(assert (=> b!318910 (= res!173457 (and (= (size!8041 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!8041 a!3293))))))

(declare-fun b!318911 () Bool)

(declare-fun res!173448 () Bool)

(assert (=> b!318911 (=> (not res!173448) (not e!198118))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!318911 (= res!173448 (validKeyInArray!0 k!2441))))

(declare-fun b!318912 () Bool)

(declare-fun res!173454 () Bool)

(declare-fun e!198117 () Bool)

(assert (=> b!318912 (=> (not res!173454) (not e!198117))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!318912 (= res!173454 (and (= (select (arr!7689 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!8041 a!3293))))))

(declare-fun res!173449 () Bool)

(assert (=> start!31936 (=> (not res!173449) (not e!198118))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31936 (= res!173449 (validMask!0 mask!3709))))

(assert (=> start!31936 e!198118))

(declare-fun array_inv!5643 (array!16254) Bool)

(assert (=> start!31936 (array_inv!5643 a!3293)))

(assert (=> start!31936 true))

(declare-fun lt!155599 () array!16254)

(declare-fun b!318913 () Bool)

(assert (=> b!318913 (= e!198121 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!155599 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155603 k!2441 lt!155599 mask!3709)))))

(assert (=> b!318913 (= lt!155599 (array!16255 (store (arr!7689 a!3293) i!1240 k!2441) (size!8041 a!3293)))))

(declare-fun b!318914 () Bool)

(assert (=> b!318914 (= e!198118 e!198117)))

(declare-fun res!173451 () Bool)

(assert (=> b!318914 (=> (not res!173451) (not e!198117))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!318914 (= res!173451 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!155600))))

(assert (=> b!318914 (= lt!155600 (Intermediate!2840 false resIndex!52 resX!52))))

(declare-fun b!318915 () Bool)

(assert (=> b!318915 (= e!198117 e!198120)))

(declare-fun res!173450 () Bool)

(assert (=> b!318915 (=> (not res!173450) (not e!198120))))

(assert (=> b!318915 (= res!173450 (and (= lt!155602 lt!155600) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7689 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!318915 (= lt!155602 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(assert (= (and start!31936 res!173449) b!318910))

(assert (= (and b!318910 res!173457) b!318911))

(assert (= (and b!318911 res!173448) b!318906))

(assert (= (and b!318906 res!173452) b!318909))

(assert (= (and b!318909 res!173453) b!318907))

(assert (= (and b!318907 res!173455) b!318914))

(assert (= (and b!318914 res!173451) b!318912))

(assert (= (and b!318912 res!173454) b!318915))

(assert (= (and b!318915 res!173450) b!318908))

(assert (= (and b!318908 res!173456) b!318913))

(declare-fun m!327551 () Bool)

(assert (=> b!318911 m!327551))

(declare-fun m!327553 () Bool)

(assert (=> b!318913 m!327553))

(declare-fun m!327555 () Bool)

(assert (=> b!318913 m!327555))

(declare-fun m!327557 () Bool)

(assert (=> b!318913 m!327557))

(declare-fun m!327559 () Bool)

(assert (=> b!318907 m!327559))

(declare-fun m!327561 () Bool)

(assert (=> b!318906 m!327561))

(declare-fun m!327563 () Bool)

(assert (=> b!318912 m!327563))

(declare-fun m!327565 () Bool)

(assert (=> start!31936 m!327565))

(declare-fun m!327567 () Bool)

(assert (=> start!31936 m!327567))

(declare-fun m!327569 () Bool)

(assert (=> b!318909 m!327569))

(declare-fun m!327571 () Bool)

(assert (=> b!318914 m!327571))

(assert (=> b!318914 m!327571))

(declare-fun m!327573 () Bool)

(assert (=> b!318914 m!327573))

(declare-fun m!327575 () Bool)

(assert (=> b!318908 m!327575))

(declare-fun m!327577 () Bool)

(assert (=> b!318908 m!327577))

(declare-fun m!327579 () Bool)

(assert (=> b!318915 m!327579))

(declare-fun m!327581 () Bool)

(assert (=> b!318915 m!327581))

(push 1)

(assert (not b!318913))

(assert (not b!318906))

(assert (not b!318911))

(assert (not b!318915))

(assert (not start!31936))

(assert (not b!318908))

(assert (not b!318909))

(assert (not b!318914))

(assert (not b!318907))

(check-sat)

(pop 1)

(push 1)

(check-sat)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31576 () Bool)

(assert start!31576)

(declare-fun b!315527 () Bool)

(declare-fun res!170947 () Bool)

(declare-fun e!196394 () Bool)

(assert (=> b!315527 (=> (not res!170947) (not e!196394))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!315527 (= res!170947 (validKeyInArray!0 k!2441))))

(declare-fun b!315528 () Bool)

(declare-fun res!170943 () Bool)

(assert (=> b!315528 (=> (not res!170943) (not e!196394))))

(declare-datatypes ((array!16098 0))(
  ( (array!16099 (arr!7617 (Array (_ BitVec 32) (_ BitVec 64))) (size!7969 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16098)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!315528 (= res!170943 (and (= (size!7969 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7969 a!3293))))))

(declare-fun b!315529 () Bool)

(declare-fun e!196396 () Bool)

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!315529 (= e!196396 (not (= index!1781 resIndex!52)))))

(declare-datatypes ((Unit!9710 0))(
  ( (Unit!9711) )
))
(declare-fun lt!154327 () Unit!9710)

(declare-fun e!196395 () Unit!9710)

(assert (=> b!315529 (= lt!154327 e!196395)))

(declare-fun c!49910 () Bool)

(assert (=> b!315529 (= c!49910 (not (= resIndex!52 index!1781)))))

(declare-fun b!315530 () Bool)

(declare-fun res!170951 () Bool)

(assert (=> b!315530 (=> (not res!170951) (not e!196394))))

(declare-fun arrayContainsKey!0 (array!16098 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!315530 (= res!170951 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!315531 () Bool)

(assert (=> b!315531 false))

(declare-datatypes ((SeekEntryResult!2768 0))(
  ( (MissingZero!2768 (index!13248 (_ BitVec 32))) (Found!2768 (index!13249 (_ BitVec 32))) (Intermediate!2768 (undefined!3580 Bool) (index!13250 (_ BitVec 32)) (x!31457 (_ BitVec 32))) (Undefined!2768) (MissingVacant!2768 (index!13251 (_ BitVec 32))) )
))
(declare-fun lt!154328 () SeekEntryResult!2768)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16098 (_ BitVec 32)) SeekEntryResult!2768)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!315531 (= lt!154328 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun e!196392 () Unit!9710)

(declare-fun Unit!9712 () Unit!9710)

(assert (=> b!315531 (= e!196392 Unit!9712)))

(declare-fun b!315532 () Bool)

(declare-fun res!170949 () Bool)

(assert (=> b!315532 (=> (not res!170949) (not e!196396))))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!315532 (= res!170949 (and (= (select (arr!7617 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7969 a!3293))))))

(declare-fun b!315533 () Bool)

(declare-fun res!170948 () Bool)

(assert (=> b!315533 (=> (not res!170948) (not e!196396))))

(assert (=> b!315533 (= res!170948 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7617 a!3293) index!1781) k!2441)) (= x!1427 resX!52)))))

(declare-fun res!170945 () Bool)

(assert (=> start!31576 (=> (not res!170945) (not e!196394))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31576 (= res!170945 (validMask!0 mask!3709))))

(assert (=> start!31576 e!196394))

(declare-fun array_inv!5571 (array!16098) Bool)

(assert (=> start!31576 (array_inv!5571 a!3293)))

(assert (=> start!31576 true))

(declare-fun b!315534 () Bool)

(declare-fun res!170946 () Bool)

(assert (=> b!315534 (=> (not res!170946) (not e!196396))))

(declare-fun lt!154326 () SeekEntryResult!2768)

(assert (=> b!315534 (= res!170946 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!154326))))

(declare-fun b!315535 () Bool)

(declare-fun res!170952 () Bool)

(assert (=> b!315535 (=> (not res!170952) (not e!196394))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16098 (_ BitVec 32)) SeekEntryResult!2768)

(assert (=> b!315535 (= res!170952 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2768 i!1240)))))

(declare-fun b!315536 () Bool)

(declare-fun res!170950 () Bool)

(assert (=> b!315536 (=> (not res!170950) (not e!196394))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16098 (_ BitVec 32)) Bool)

(assert (=> b!315536 (= res!170950 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!315537 () Bool)

(assert (=> b!315537 (= e!196395 e!196392)))

(declare-fun c!49909 () Bool)

(assert (=> b!315537 (= c!49909 (or (= (select (arr!7617 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7617 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!315538 () Bool)

(assert (=> b!315538 (= e!196394 e!196396)))

(declare-fun res!170944 () Bool)

(assert (=> b!315538 (=> (not res!170944) (not e!196396))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!315538 (= res!170944 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!154326))))

(assert (=> b!315538 (= lt!154326 (Intermediate!2768 false resIndex!52 resX!52))))

(declare-fun b!315539 () Bool)

(assert (=> b!315539 false))

(declare-fun Unit!9713 () Unit!9710)

(assert (=> b!315539 (= e!196392 Unit!9713)))

(declare-fun b!315540 () Bool)

(declare-fun Unit!9714 () Unit!9710)

(assert (=> b!315540 (= e!196395 Unit!9714)))

(assert (= (and start!31576 res!170945) b!315528))

(assert (= (and b!315528 res!170943) b!315527))

(assert (= (and b!315527 res!170947) b!315530))

(assert (= (and b!315530 res!170951) b!315535))

(assert (= (and b!315535 res!170952) b!315536))

(assert (= (and b!315536 res!170950) b!315538))

(assert (= (and b!315538 res!170944) b!315532))

(assert (= (and b!315532 res!170949) b!315534))

(assert (= (and b!315534 res!170946) b!315533))

(assert (= (and b!315533 res!170948) b!315529))

(assert (= (and b!315529 c!49910) b!315537))

(assert (= (and b!315529 (not c!49910)) b!315540))

(assert (= (and b!315537 c!49909) b!315539))

(assert (= (and b!315537 (not c!49909)) b!315531))

(declare-fun m!324725 () Bool)

(assert (=> b!315532 m!324725))

(declare-fun m!324727 () Bool)

(assert (=> b!315527 m!324727))

(declare-fun m!324729 () Bool)

(assert (=> b!315531 m!324729))

(assert (=> b!315531 m!324729))

(declare-fun m!324731 () Bool)

(assert (=> b!315531 m!324731))

(declare-fun m!324733 () Bool)

(assert (=> b!315534 m!324733))

(declare-fun m!324735 () Bool)

(assert (=> b!315537 m!324735))

(declare-fun m!324737 () Bool)

(assert (=> b!315535 m!324737))

(declare-fun m!324739 () Bool)

(assert (=> b!315538 m!324739))

(assert (=> b!315538 m!324739))

(declare-fun m!324741 () Bool)

(assert (=> b!315538 m!324741))

(declare-fun m!324743 () Bool)

(assert (=> start!31576 m!324743))

(declare-fun m!324745 () Bool)

(assert (=> start!31576 m!324745))

(declare-fun m!324747 () Bool)

(assert (=> b!315530 m!324747))

(declare-fun m!324749 () Bool)

(assert (=> b!315536 m!324749))

(assert (=> b!315533 m!324735))

(push 1)

(assert (not b!315538))

(assert (not b!315527))

(assert (not b!315536))

(assert (not start!31576))


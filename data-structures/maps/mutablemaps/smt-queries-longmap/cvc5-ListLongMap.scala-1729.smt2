; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31830 () Bool)

(assert start!31830)

(declare-fun b!317829 () Bool)

(declare-fun res!172566 () Bool)

(declare-fun e!197553 () Bool)

(assert (=> b!317829 (=> (not res!172566) (not e!197553))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-datatypes ((array!16199 0))(
  ( (array!16200 (arr!7663 (Array (_ BitVec 32) (_ BitVec 64))) (size!8015 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16199)

(assert (=> b!317829 (= res!172566 (and (= (select (arr!7663 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!8015 a!3293))))))

(declare-fun b!317830 () Bool)

(declare-fun res!172574 () Bool)

(declare-fun e!197550 () Bool)

(assert (=> b!317830 (=> (not res!172574) (not e!197550))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16199 (_ BitVec 32)) Bool)

(assert (=> b!317830 (= res!172574 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun e!197552 () Bool)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun lt!155148 () array!16199)

(declare-fun b!317831 () Bool)

(declare-fun lt!155150 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2814 0))(
  ( (MissingZero!2814 (index!13432 (_ BitVec 32))) (Found!2814 (index!13433 (_ BitVec 32))) (Intermediate!2814 (undefined!3626 Bool) (index!13434 (_ BitVec 32)) (x!31658 (_ BitVec 32))) (Undefined!2814) (MissingVacant!2814 (index!13435 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16199 (_ BitVec 32)) SeekEntryResult!2814)

(assert (=> b!317831 (= e!197552 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!155148 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155150 k!2441 lt!155148 mask!3709)))))

(assert (=> b!317831 (= lt!155148 (array!16200 (store (arr!7663 a!3293) i!1240 k!2441) (size!8015 a!3293)))))

(declare-fun b!317832 () Bool)

(declare-fun res!172568 () Bool)

(assert (=> b!317832 (=> (not res!172568) (not e!197550))))

(assert (=> b!317832 (= res!172568 (and (= (size!8015 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!8015 a!3293))))))

(declare-fun res!172567 () Bool)

(assert (=> start!31830 (=> (not res!172567) (not e!197550))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31830 (= res!172567 (validMask!0 mask!3709))))

(assert (=> start!31830 e!197550))

(declare-fun array_inv!5617 (array!16199) Bool)

(assert (=> start!31830 (array_inv!5617 a!3293)))

(assert (=> start!31830 true))

(declare-fun b!317833 () Bool)

(declare-fun res!172571 () Bool)

(assert (=> b!317833 (=> (not res!172571) (not e!197550))))

(declare-fun arrayContainsKey!0 (array!16199 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!317833 (= res!172571 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!317834 () Bool)

(assert (=> b!317834 (= e!197550 e!197553)))

(declare-fun res!172570 () Bool)

(assert (=> b!317834 (=> (not res!172570) (not e!197553))))

(declare-fun lt!155147 () SeekEntryResult!2814)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317834 (= res!172570 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!155147))))

(assert (=> b!317834 (= lt!155147 (Intermediate!2814 false resIndex!52 resX!52))))

(declare-fun b!317835 () Bool)

(declare-fun res!172573 () Bool)

(assert (=> b!317835 (=> (not res!172573) (not e!197550))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16199 (_ BitVec 32)) SeekEntryResult!2814)

(assert (=> b!317835 (= res!172573 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2814 i!1240)))))

(declare-fun b!317836 () Bool)

(declare-fun e!197551 () Bool)

(assert (=> b!317836 (= e!197553 e!197551)))

(declare-fun res!172572 () Bool)

(assert (=> b!317836 (=> (not res!172572) (not e!197551))))

(declare-fun lt!155149 () SeekEntryResult!2814)

(assert (=> b!317836 (= res!172572 (and (= lt!155149 lt!155147) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7663 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!317836 (= lt!155149 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!317837 () Bool)

(assert (=> b!317837 (= e!197551 (not true))))

(assert (=> b!317837 e!197552))

(declare-fun res!172569 () Bool)

(assert (=> b!317837 (=> (not res!172569) (not e!197552))))

(assert (=> b!317837 (= res!172569 (= lt!155149 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155150 k!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317837 (= lt!155150 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!317838 () Bool)

(declare-fun res!172575 () Bool)

(assert (=> b!317838 (=> (not res!172575) (not e!197550))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!317838 (= res!172575 (validKeyInArray!0 k!2441))))

(assert (= (and start!31830 res!172567) b!317832))

(assert (= (and b!317832 res!172568) b!317838))

(assert (= (and b!317838 res!172575) b!317833))

(assert (= (and b!317833 res!172571) b!317835))

(assert (= (and b!317835 res!172573) b!317830))

(assert (= (and b!317830 res!172574) b!317834))

(assert (= (and b!317834 res!172570) b!317829))

(assert (= (and b!317829 res!172566) b!317836))

(assert (= (and b!317836 res!172572) b!317837))

(assert (= (and b!317837 res!172569) b!317831))

(declare-fun m!326545 () Bool)

(assert (=> b!317829 m!326545))

(declare-fun m!326547 () Bool)

(assert (=> b!317830 m!326547))

(declare-fun m!326549 () Bool)

(assert (=> b!317838 m!326549))

(declare-fun m!326551 () Bool)

(assert (=> b!317837 m!326551))

(declare-fun m!326553 () Bool)

(assert (=> b!317837 m!326553))

(declare-fun m!326555 () Bool)

(assert (=> b!317836 m!326555))

(declare-fun m!326557 () Bool)

(assert (=> b!317836 m!326557))

(declare-fun m!326559 () Bool)

(assert (=> b!317833 m!326559))

(declare-fun m!326561 () Bool)

(assert (=> b!317835 m!326561))

(declare-fun m!326563 () Bool)

(assert (=> b!317834 m!326563))

(assert (=> b!317834 m!326563))

(declare-fun m!326565 () Bool)

(assert (=> b!317834 m!326565))

(declare-fun m!326567 () Bool)

(assert (=> b!317831 m!326567))

(declare-fun m!326569 () Bool)

(assert (=> b!317831 m!326569))

(declare-fun m!326571 () Bool)

(assert (=> b!317831 m!326571))

(declare-fun m!326573 () Bool)

(assert (=> start!31830 m!326573))

(declare-fun m!326575 () Bool)

(assert (=> start!31830 m!326575))

(push 1)


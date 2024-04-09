; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31080 () Bool)

(assert start!31080)

(declare-fun b!312474 () Bool)

(declare-fun e!194830 () Bool)

(declare-fun e!194826 () Bool)

(assert (=> b!312474 (= e!194830 e!194826)))

(declare-fun res!169094 () Bool)

(assert (=> b!312474 (=> (not res!169094) (not e!194826))))

(declare-datatypes ((array!15980 0))(
  ( (array!15981 (arr!7570 (Array (_ BitVec 32) (_ BitVec 64))) (size!7922 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15980)

(declare-datatypes ((SeekEntryResult!2721 0))(
  ( (MissingZero!2721 (index!13060 (_ BitVec 32))) (Found!2721 (index!13061 (_ BitVec 32))) (Intermediate!2721 (undefined!3533 Bool) (index!13062 (_ BitVec 32)) (x!31233 (_ BitVec 32))) (Undefined!2721) (MissingVacant!2721 (index!13063 (_ BitVec 32))) )
))
(declare-fun lt!153179 () SeekEntryResult!2721)

(declare-fun lt!153180 () SeekEntryResult!2721)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!312474 (= res!169094 (and (= lt!153180 lt!153179) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7570 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15980 (_ BitVec 32)) SeekEntryResult!2721)

(assert (=> b!312474 (= lt!153180 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!312475 () Bool)

(declare-fun res!169087 () Bool)

(declare-fun e!194828 () Bool)

(assert (=> b!312475 (=> (not res!169087) (not e!194828))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!312475 (= res!169087 (validKeyInArray!0 k!2441))))

(declare-fun b!312476 () Bool)

(declare-fun res!169093 () Bool)

(assert (=> b!312476 (=> (not res!169093) (not e!194828))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!312476 (= res!169093 (and (= (size!7922 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7922 a!3293))))))

(declare-fun b!312477 () Bool)

(declare-fun res!169089 () Bool)

(assert (=> b!312477 (=> (not res!169089) (not e!194828))))

(declare-fun arrayContainsKey!0 (array!15980 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!312477 (= res!169089 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun e!194827 () Bool)

(declare-fun b!312478 () Bool)

(assert (=> b!312478 (= e!194827 (or (bvslt mask!3709 #b00000000000000000000000000000000) (bvsge index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsle x!1427 #b01111111111111111111111111111110)))))

(declare-fun lt!153184 () SeekEntryResult!2721)

(declare-fun lt!153181 () SeekEntryResult!2721)

(assert (=> b!312478 (= lt!153184 lt!153181)))

(declare-fun lt!153178 () (_ BitVec 32))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-datatypes ((Unit!9640 0))(
  ( (Unit!9641) )
))
(declare-fun lt!153185 () Unit!9640)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15980 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9640)

(assert (=> b!312478 (= lt!153185 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3293 i!1240 k!2441 (bvadd #b00000000000000000000000000000001 x!1427) lt!153178 resIndex!52 resX!52 mask!3709))))

(declare-fun b!312479 () Bool)

(declare-fun res!169086 () Bool)

(assert (=> b!312479 (=> (not res!169086) (not e!194830))))

(assert (=> b!312479 (= res!169086 (and (= (select (arr!7570 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7922 a!3293))))))

(declare-fun b!312480 () Bool)

(declare-fun res!169095 () Bool)

(assert (=> b!312480 (=> (not res!169095) (not e!194828))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15980 (_ BitVec 32)) Bool)

(assert (=> b!312480 (= res!169095 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!312481 () Bool)

(assert (=> b!312481 (= e!194826 (not e!194827))))

(declare-fun res!169090 () Bool)

(assert (=> b!312481 (=> res!169090 e!194827)))

(assert (=> b!312481 (= res!169090 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000) (bvslt lt!153178 #b00000000000000000000000000000000) (bvsge lt!153178 (size!7922 a!3293)) (not (= lt!153181 lt!153179))))))

(declare-fun lt!153183 () SeekEntryResult!2721)

(assert (=> b!312481 (= lt!153183 lt!153184)))

(declare-fun lt!153182 () array!15980)

(assert (=> b!312481 (= lt!153184 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!153178 k!2441 lt!153182 mask!3709))))

(assert (=> b!312481 (= lt!153183 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!153182 mask!3709))))

(assert (=> b!312481 (= lt!153182 (array!15981 (store (arr!7570 a!3293) i!1240 k!2441) (size!7922 a!3293)))))

(assert (=> b!312481 (= lt!153180 lt!153181)))

(assert (=> b!312481 (= lt!153181 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!153178 k!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!312481 (= lt!153178 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!312482 () Bool)

(assert (=> b!312482 (= e!194828 e!194830)))

(declare-fun res!169091 () Bool)

(assert (=> b!312482 (=> (not res!169091) (not e!194830))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!312482 (= res!169091 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!153179))))

(assert (=> b!312482 (= lt!153179 (Intermediate!2721 false resIndex!52 resX!52))))

(declare-fun res!169092 () Bool)

(assert (=> start!31080 (=> (not res!169092) (not e!194828))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31080 (= res!169092 (validMask!0 mask!3709))))

(assert (=> start!31080 e!194828))

(declare-fun array_inv!5524 (array!15980) Bool)

(assert (=> start!31080 (array_inv!5524 a!3293)))

(assert (=> start!31080 true))

(declare-fun b!312483 () Bool)

(declare-fun res!169088 () Bool)

(assert (=> b!312483 (=> (not res!169088) (not e!194828))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15980 (_ BitVec 32)) SeekEntryResult!2721)

(assert (=> b!312483 (= res!169088 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2721 i!1240)))))

(assert (= (and start!31080 res!169092) b!312476))

(assert (= (and b!312476 res!169093) b!312475))

(assert (= (and b!312475 res!169087) b!312477))

(assert (= (and b!312477 res!169089) b!312483))

(assert (= (and b!312483 res!169088) b!312480))

(assert (= (and b!312480 res!169095) b!312482))

(assert (= (and b!312482 res!169091) b!312479))

(assert (= (and b!312479 res!169086) b!312474))

(assert (= (and b!312474 res!169094) b!312481))

(assert (= (and b!312481 (not res!169090)) b!312478))

(declare-fun m!322633 () Bool)

(assert (=> b!312481 m!322633))

(declare-fun m!322635 () Bool)

(assert (=> b!312481 m!322635))

(declare-fun m!322637 () Bool)

(assert (=> b!312481 m!322637))

(declare-fun m!322639 () Bool)

(assert (=> b!312481 m!322639))

(declare-fun m!322641 () Bool)

(assert (=> b!312481 m!322641))

(declare-fun m!322643 () Bool)

(assert (=> b!312482 m!322643))

(assert (=> b!312482 m!322643))

(declare-fun m!322645 () Bool)

(assert (=> b!312482 m!322645))

(declare-fun m!322647 () Bool)

(assert (=> start!31080 m!322647))

(declare-fun m!322649 () Bool)

(assert (=> start!31080 m!322649))

(declare-fun m!322651 () Bool)

(assert (=> b!312477 m!322651))

(declare-fun m!322653 () Bool)

(assert (=> b!312480 m!322653))

(declare-fun m!322655 () Bool)

(assert (=> b!312483 m!322655))

(declare-fun m!322657 () Bool)

(assert (=> b!312474 m!322657))

(declare-fun m!322659 () Bool)

(assert (=> b!312474 m!322659))

(declare-fun m!322661 () Bool)

(assert (=> b!312475 m!322661))

(declare-fun m!322663 () Bool)

(assert (=> b!312478 m!322663))

(declare-fun m!322665 () Bool)

(assert (=> b!312479 m!322665))

(push 1)


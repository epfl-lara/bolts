; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31084 () Bool)

(assert start!31084)

(declare-fun b!312534 () Bool)

(declare-fun res!169153 () Bool)

(declare-fun e!194859 () Bool)

(assert (=> b!312534 (=> (not res!169153) (not e!194859))))

(declare-datatypes ((array!15984 0))(
  ( (array!15985 (arr!7572 (Array (_ BitVec 32) (_ BitVec 64))) (size!7924 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15984)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15984 (_ BitVec 32)) Bool)

(assert (=> b!312534 (= res!169153 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!312535 () Bool)

(declare-fun e!194856 () Bool)

(declare-fun e!194858 () Bool)

(assert (=> b!312535 (= e!194856 (not e!194858))))

(declare-fun res!169154 () Bool)

(assert (=> b!312535 (=> res!169154 e!194858)))

(declare-datatypes ((SeekEntryResult!2723 0))(
  ( (MissingZero!2723 (index!13068 (_ BitVec 32))) (Found!2723 (index!13069 (_ BitVec 32))) (Intermediate!2723 (undefined!3535 Bool) (index!13070 (_ BitVec 32)) (x!31235 (_ BitVec 32))) (Undefined!2723) (MissingVacant!2723 (index!13071 (_ BitVec 32))) )
))
(declare-fun lt!153231 () SeekEntryResult!2723)

(declare-fun lt!153228 () SeekEntryResult!2723)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun lt!153226 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!312535 (= res!169154 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000) (bvslt lt!153226 #b00000000000000000000000000000000) (bvsge lt!153226 (size!7924 a!3293)) (not (= lt!153231 lt!153228))))))

(declare-fun lt!153233 () SeekEntryResult!2723)

(declare-fun lt!153230 () SeekEntryResult!2723)

(assert (=> b!312535 (= lt!153233 lt!153230)))

(declare-fun lt!153232 () array!15984)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15984 (_ BitVec 32)) SeekEntryResult!2723)

(assert (=> b!312535 (= lt!153230 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!153226 k!2441 lt!153232 mask!3709))))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!312535 (= lt!153233 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!153232 mask!3709))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!312535 (= lt!153232 (array!15985 (store (arr!7572 a!3293) i!1240 k!2441) (size!7924 a!3293)))))

(declare-fun lt!153229 () SeekEntryResult!2723)

(assert (=> b!312535 (= lt!153229 lt!153231)))

(assert (=> b!312535 (= lt!153231 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!153226 k!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!312535 (= lt!153226 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!312536 () Bool)

(declare-fun res!169146 () Bool)

(assert (=> b!312536 (=> (not res!169146) (not e!194859))))

(declare-fun arrayContainsKey!0 (array!15984 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!312536 (= res!169146 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!312537 () Bool)

(declare-fun res!169152 () Bool)

(assert (=> b!312537 (=> (not res!169152) (not e!194859))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!312537 (= res!169152 (validKeyInArray!0 k!2441))))

(declare-fun res!169147 () Bool)

(assert (=> start!31084 (=> (not res!169147) (not e!194859))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31084 (= res!169147 (validMask!0 mask!3709))))

(assert (=> start!31084 e!194859))

(declare-fun array_inv!5526 (array!15984) Bool)

(assert (=> start!31084 (array_inv!5526 a!3293)))

(assert (=> start!31084 true))

(declare-fun b!312538 () Bool)

(assert (=> b!312538 (= e!194858 (or (bvslt mask!3709 #b00000000000000000000000000000000) (bvsge index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsle x!1427 #b01111111111111111111111111111110)))))

(assert (=> b!312538 (= lt!153230 lt!153231)))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-datatypes ((Unit!9644 0))(
  ( (Unit!9645) )
))
(declare-fun lt!153227 () Unit!9644)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15984 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9644)

(assert (=> b!312538 (= lt!153227 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3293 i!1240 k!2441 (bvadd #b00000000000000000000000000000001 x!1427) lt!153226 resIndex!52 resX!52 mask!3709))))

(declare-fun b!312539 () Bool)

(declare-fun e!194857 () Bool)

(assert (=> b!312539 (= e!194859 e!194857)))

(declare-fun res!169151 () Bool)

(assert (=> b!312539 (=> (not res!169151) (not e!194857))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!312539 (= res!169151 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!153228))))

(assert (=> b!312539 (= lt!153228 (Intermediate!2723 false resIndex!52 resX!52))))

(declare-fun b!312540 () Bool)

(assert (=> b!312540 (= e!194857 e!194856)))

(declare-fun res!169150 () Bool)

(assert (=> b!312540 (=> (not res!169150) (not e!194856))))

(assert (=> b!312540 (= res!169150 (and (= lt!153229 lt!153228) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7572 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!312540 (= lt!153229 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!312541 () Bool)

(declare-fun res!169149 () Bool)

(assert (=> b!312541 (=> (not res!169149) (not e!194859))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15984 (_ BitVec 32)) SeekEntryResult!2723)

(assert (=> b!312541 (= res!169149 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2723 i!1240)))))

(declare-fun b!312542 () Bool)

(declare-fun res!169148 () Bool)

(assert (=> b!312542 (=> (not res!169148) (not e!194859))))

(assert (=> b!312542 (= res!169148 (and (= (size!7924 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7924 a!3293))))))

(declare-fun b!312543 () Bool)

(declare-fun res!169155 () Bool)

(assert (=> b!312543 (=> (not res!169155) (not e!194857))))

(assert (=> b!312543 (= res!169155 (and (= (select (arr!7572 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7924 a!3293))))))

(assert (= (and start!31084 res!169147) b!312542))

(assert (= (and b!312542 res!169148) b!312537))

(assert (= (and b!312537 res!169152) b!312536))

(assert (= (and b!312536 res!169146) b!312541))

(assert (= (and b!312541 res!169149) b!312534))

(assert (= (and b!312534 res!169153) b!312539))

(assert (= (and b!312539 res!169151) b!312543))

(assert (= (and b!312543 res!169155) b!312540))

(assert (= (and b!312540 res!169150) b!312535))

(assert (= (and b!312535 (not res!169154)) b!312538))

(declare-fun m!322701 () Bool)

(assert (=> b!312536 m!322701))

(declare-fun m!322703 () Bool)

(assert (=> b!312539 m!322703))

(assert (=> b!312539 m!322703))

(declare-fun m!322705 () Bool)

(assert (=> b!312539 m!322705))

(declare-fun m!322707 () Bool)

(assert (=> b!312543 m!322707))

(declare-fun m!322709 () Bool)

(assert (=> b!312535 m!322709))

(declare-fun m!322711 () Bool)

(assert (=> b!312535 m!322711))

(declare-fun m!322713 () Bool)

(assert (=> b!312535 m!322713))

(declare-fun m!322715 () Bool)

(assert (=> b!312535 m!322715))

(declare-fun m!322717 () Bool)

(assert (=> b!312535 m!322717))

(declare-fun m!322719 () Bool)

(assert (=> start!31084 m!322719))

(declare-fun m!322721 () Bool)

(assert (=> start!31084 m!322721))

(declare-fun m!322723 () Bool)

(assert (=> b!312540 m!322723))

(declare-fun m!322725 () Bool)

(assert (=> b!312540 m!322725))

(declare-fun m!322727 () Bool)

(assert (=> b!312538 m!322727))

(declare-fun m!322729 () Bool)

(assert (=> b!312541 m!322729))

(declare-fun m!322731 () Bool)

(assert (=> b!312534 m!322731))

(declare-fun m!322733 () Bool)

(assert (=> b!312537 m!322733))

(push 1)

(assert (not b!312540))

(assert (not b!312541))

(assert (not b!312539))

(assert (not b!312538))


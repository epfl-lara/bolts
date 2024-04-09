; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44720 () Bool)

(assert start!44720)

(declare-fun b!490483 () Bool)

(declare-fun res!293571 () Bool)

(declare-fun e!288304 () Bool)

(assert (=> b!490483 (=> (not res!293571) (not e!288304))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!31739 0))(
  ( (array!31740 (arr!15254 (Array (_ BitVec 32) (_ BitVec 64))) (size!15618 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31739)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!490483 (= res!293571 (and (= (size!15618 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15618 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15618 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!490484 () Bool)

(declare-fun res!293572 () Bool)

(assert (=> b!490484 (=> (not res!293572) (not e!288304))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31739 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!490484 (= res!293572 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!490485 () Bool)

(declare-fun res!293576 () Bool)

(assert (=> b!490485 (=> (not res!293576) (not e!288304))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!490485 (= res!293576 (validKeyInArray!0 (select (arr!15254 a!3235) j!176)))))

(declare-fun b!490486 () Bool)

(declare-fun e!288305 () Bool)

(declare-fun e!288307 () Bool)

(assert (=> b!490486 (= e!288305 (not e!288307))))

(declare-fun res!293575 () Bool)

(assert (=> b!490486 (=> res!293575 e!288307)))

(declare-fun lt!221613 () array!31739)

(declare-fun lt!221615 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3728 0))(
  ( (MissingZero!3728 (index!17091 (_ BitVec 32))) (Found!3728 (index!17092 (_ BitVec 32))) (Intermediate!3728 (undefined!4540 Bool) (index!17093 (_ BitVec 32)) (x!46213 (_ BitVec 32))) (Undefined!3728) (MissingVacant!3728 (index!17094 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31739 (_ BitVec 32)) SeekEntryResult!3728)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!490486 (= res!293575 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15254 a!3235) j!176) mask!3524) (select (arr!15254 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!221615 mask!3524) lt!221615 lt!221613 mask!3524))))))

(assert (=> b!490486 (= lt!221615 (select (store (arr!15254 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!490486 (= lt!221613 (array!31740 (store (arr!15254 a!3235) i!1204 k!2280) (size!15618 a!3235)))))

(declare-fun lt!221614 () SeekEntryResult!3728)

(assert (=> b!490486 (= lt!221614 (Found!3728 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31739 (_ BitVec 32)) SeekEntryResult!3728)

(assert (=> b!490486 (= lt!221614 (seekEntryOrOpen!0 (select (arr!15254 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31739 (_ BitVec 32)) Bool)

(assert (=> b!490486 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14394 0))(
  ( (Unit!14395) )
))
(declare-fun lt!221618 () Unit!14394)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31739 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14394)

(assert (=> b!490486 (= lt!221618 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!490482 () Bool)

(declare-fun res!293568 () Bool)

(assert (=> b!490482 (=> (not res!293568) (not e!288304))))

(assert (=> b!490482 (= res!293568 (validKeyInArray!0 k!2280))))

(declare-fun res!293570 () Bool)

(assert (=> start!44720 (=> (not res!293570) (not e!288304))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44720 (= res!293570 (validMask!0 mask!3524))))

(assert (=> start!44720 e!288304))

(assert (=> start!44720 true))

(declare-fun array_inv!11028 (array!31739) Bool)

(assert (=> start!44720 (array_inv!11028 a!3235)))

(declare-fun b!490487 () Bool)

(assert (=> b!490487 (= e!288307 true)))

(assert (=> b!490487 (= lt!221614 (seekEntryOrOpen!0 lt!221615 lt!221613 mask!3524))))

(declare-fun lt!221616 () Unit!14394)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!31739 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!14394)

(assert (=> b!490487 (= lt!221616 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k!2280 j!176 mask!3524))))

(declare-fun b!490488 () Bool)

(declare-fun res!293569 () Bool)

(assert (=> b!490488 (=> (not res!293569) (not e!288305))))

(declare-datatypes ((List!9465 0))(
  ( (Nil!9462) (Cons!9461 (h!10323 (_ BitVec 64)) (t!15701 List!9465)) )
))
(declare-fun arrayNoDuplicates!0 (array!31739 (_ BitVec 32) List!9465) Bool)

(assert (=> b!490488 (= res!293569 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9462))))

(declare-fun b!490489 () Bool)

(declare-fun res!293574 () Bool)

(assert (=> b!490489 (=> (not res!293574) (not e!288305))))

(assert (=> b!490489 (= res!293574 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!490490 () Bool)

(assert (=> b!490490 (= e!288304 e!288305)))

(declare-fun res!293573 () Bool)

(assert (=> b!490490 (=> (not res!293573) (not e!288305))))

(declare-fun lt!221617 () SeekEntryResult!3728)

(assert (=> b!490490 (= res!293573 (or (= lt!221617 (MissingZero!3728 i!1204)) (= lt!221617 (MissingVacant!3728 i!1204))))))

(assert (=> b!490490 (= lt!221617 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(assert (= (and start!44720 res!293570) b!490483))

(assert (= (and b!490483 res!293571) b!490485))

(assert (= (and b!490485 res!293576) b!490482))

(assert (= (and b!490482 res!293568) b!490484))

(assert (= (and b!490484 res!293572) b!490490))

(assert (= (and b!490490 res!293573) b!490489))

(assert (= (and b!490489 res!293574) b!490488))

(assert (= (and b!490488 res!293569) b!490486))

(assert (= (and b!490486 (not res!293575)) b!490487))

(declare-fun m!470739 () Bool)

(assert (=> b!490488 m!470739))

(declare-fun m!470741 () Bool)

(assert (=> b!490487 m!470741))

(declare-fun m!470743 () Bool)

(assert (=> b!490487 m!470743))

(declare-fun m!470745 () Bool)

(assert (=> b!490482 m!470745))

(declare-fun m!470747 () Bool)

(assert (=> b!490490 m!470747))

(declare-fun m!470749 () Bool)

(assert (=> b!490485 m!470749))

(assert (=> b!490485 m!470749))

(declare-fun m!470751 () Bool)

(assert (=> b!490485 m!470751))

(declare-fun m!470753 () Bool)

(assert (=> b!490489 m!470753))

(declare-fun m!470755 () Bool)

(assert (=> start!44720 m!470755))

(declare-fun m!470757 () Bool)

(assert (=> start!44720 m!470757))

(declare-fun m!470759 () Bool)

(assert (=> b!490486 m!470759))

(declare-fun m!470761 () Bool)

(assert (=> b!490486 m!470761))

(declare-fun m!470763 () Bool)

(assert (=> b!490486 m!470763))

(assert (=> b!490486 m!470749))

(declare-fun m!470765 () Bool)

(assert (=> b!490486 m!470765))

(declare-fun m!470767 () Bool)

(assert (=> b!490486 m!470767))

(declare-fun m!470769 () Bool)

(assert (=> b!490486 m!470769))

(assert (=> b!490486 m!470749))

(assert (=> b!490486 m!470763))

(assert (=> b!490486 m!470749))

(declare-fun m!470771 () Bool)

(assert (=> b!490486 m!470771))

(assert (=> b!490486 m!470749))

(declare-fun m!470773 () Bool)

(assert (=> b!490486 m!470773))

(declare-fun m!470775 () Bool)

(assert (=> b!490486 m!470775))

(assert (=> b!490486 m!470767))

(declare-fun m!470777 () Bool)

(assert (=> b!490484 m!470777))

(push 1)


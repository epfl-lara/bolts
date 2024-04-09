; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45860 () Bool)

(assert start!45860)

(declare-fun b!507613 () Bool)

(declare-fun res!308727 () Bool)

(declare-fun e!297057 () Bool)

(assert (=> b!507613 (=> (not res!308727) (not e!297057))))

(declare-datatypes ((array!32576 0))(
  ( (array!32577 (arr!15665 (Array (_ BitVec 32) (_ BitVec 64))) (size!16029 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32576)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32576 (_ BitVec 32)) Bool)

(assert (=> b!507613 (= res!308727 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!507614 () Bool)

(declare-fun e!297059 () Bool)

(declare-fun e!297058 () Bool)

(assert (=> b!507614 (= e!297059 e!297058)))

(declare-fun res!308730 () Bool)

(assert (=> b!507614 (=> res!308730 e!297058)))

(declare-fun lt!231993 () Bool)

(declare-datatypes ((SeekEntryResult!4139 0))(
  ( (MissingZero!4139 (index!18744 (_ BitVec 32))) (Found!4139 (index!18745 (_ BitVec 32))) (Intermediate!4139 (undefined!4951 Bool) (index!18746 (_ BitVec 32)) (x!47759 (_ BitVec 32))) (Undefined!4139) (MissingVacant!4139 (index!18747 (_ BitVec 32))) )
))
(declare-fun lt!231992 () SeekEntryResult!4139)

(assert (=> b!507614 (= res!308730 (or (and (not lt!231993) (undefined!4951 lt!231992)) (and (not lt!231993) (not (undefined!4951 lt!231992)))))))

(assert (=> b!507614 (= lt!231993 (not (is-Intermediate!4139 lt!231992)))))

(declare-fun b!507615 () Bool)

(declare-fun res!308725 () Bool)

(declare-fun e!297060 () Bool)

(assert (=> b!507615 (=> (not res!308725) (not e!297060))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32576 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!507615 (= res!308725 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!507616 () Bool)

(declare-fun e!297056 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32576 (_ BitVec 32)) SeekEntryResult!4139)

(assert (=> b!507616 (= e!297056 (= (seekEntryOrOpen!0 (select (arr!15665 a!3235) j!176) a!3235 mask!3524) (Found!4139 j!176)))))

(declare-fun b!507617 () Bool)

(declare-fun res!308722 () Bool)

(assert (=> b!507617 (=> (not res!308722) (not e!297060))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!507617 (= res!308722 (validKeyInArray!0 (select (arr!15665 a!3235) j!176)))))

(declare-fun b!507618 () Bool)

(declare-fun res!308726 () Bool)

(assert (=> b!507618 (=> (not res!308726) (not e!297060))))

(assert (=> b!507618 (= res!308726 (validKeyInArray!0 k!2280))))

(declare-fun res!308731 () Bool)

(assert (=> start!45860 (=> (not res!308731) (not e!297060))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45860 (= res!308731 (validMask!0 mask!3524))))

(assert (=> start!45860 e!297060))

(assert (=> start!45860 true))

(declare-fun array_inv!11439 (array!32576) Bool)

(assert (=> start!45860 (array_inv!11439 a!3235)))

(declare-fun b!507619 () Bool)

(assert (=> b!507619 (= e!297057 (not e!297059))))

(declare-fun res!308732 () Bool)

(assert (=> b!507619 (=> res!308732 e!297059)))

(declare-fun lt!231995 () array!32576)

(declare-fun lt!231988 () (_ BitVec 64))

(declare-fun lt!231990 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32576 (_ BitVec 32)) SeekEntryResult!4139)

(assert (=> b!507619 (= res!308732 (= lt!231992 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231990 lt!231988 lt!231995 mask!3524)))))

(declare-fun lt!231994 () (_ BitVec 32))

(assert (=> b!507619 (= lt!231992 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231994 (select (arr!15665 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!507619 (= lt!231990 (toIndex!0 lt!231988 mask!3524))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!507619 (= lt!231988 (select (store (arr!15665 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!507619 (= lt!231994 (toIndex!0 (select (arr!15665 a!3235) j!176) mask!3524))))

(assert (=> b!507619 (= lt!231995 (array!32577 (store (arr!15665 a!3235) i!1204 k!2280) (size!16029 a!3235)))))

(assert (=> b!507619 e!297056))

(declare-fun res!308728 () Bool)

(assert (=> b!507619 (=> (not res!308728) (not e!297056))))

(assert (=> b!507619 (= res!308728 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15558 0))(
  ( (Unit!15559) )
))
(declare-fun lt!231987 () Unit!15558)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32576 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15558)

(assert (=> b!507619 (= lt!231987 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!507620 () Bool)

(assert (=> b!507620 (= e!297060 e!297057)))

(declare-fun res!308724 () Bool)

(assert (=> b!507620 (=> (not res!308724) (not e!297057))))

(declare-fun lt!231991 () SeekEntryResult!4139)

(assert (=> b!507620 (= res!308724 (or (= lt!231991 (MissingZero!4139 i!1204)) (= lt!231991 (MissingVacant!4139 i!1204))))))

(assert (=> b!507620 (= lt!231991 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!507621 () Bool)

(assert (=> b!507621 (= e!297058 true)))

(declare-fun lt!231989 () SeekEntryResult!4139)

(assert (=> b!507621 (= lt!231989 (seekEntryOrOpen!0 lt!231988 lt!231995 mask!3524))))

(assert (=> b!507621 false))

(declare-fun b!507622 () Bool)

(declare-fun res!308723 () Bool)

(assert (=> b!507622 (=> (not res!308723) (not e!297057))))

(declare-datatypes ((List!9876 0))(
  ( (Nil!9873) (Cons!9872 (h!10749 (_ BitVec 64)) (t!16112 List!9876)) )
))
(declare-fun arrayNoDuplicates!0 (array!32576 (_ BitVec 32) List!9876) Bool)

(assert (=> b!507622 (= res!308723 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9873))))

(declare-fun b!507623 () Bool)

(declare-fun res!308729 () Bool)

(assert (=> b!507623 (=> (not res!308729) (not e!297060))))

(assert (=> b!507623 (= res!308729 (and (= (size!16029 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16029 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16029 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!45860 res!308731) b!507623))

(assert (= (and b!507623 res!308729) b!507617))

(assert (= (and b!507617 res!308722) b!507618))

(assert (= (and b!507618 res!308726) b!507615))

(assert (= (and b!507615 res!308725) b!507620))

(assert (= (and b!507620 res!308724) b!507613))

(assert (= (and b!507613 res!308727) b!507622))

(assert (= (and b!507622 res!308723) b!507619))

(assert (= (and b!507619 res!308728) b!507616))

(assert (= (and b!507619 (not res!308732)) b!507614))

(assert (= (and b!507614 (not res!308730)) b!507621))

(declare-fun m!488477 () Bool)

(assert (=> start!45860 m!488477))

(declare-fun m!488479 () Bool)

(assert (=> start!45860 m!488479))

(declare-fun m!488481 () Bool)

(assert (=> b!507616 m!488481))

(assert (=> b!507616 m!488481))

(declare-fun m!488483 () Bool)

(assert (=> b!507616 m!488483))

(declare-fun m!488485 () Bool)

(assert (=> b!507613 m!488485))

(declare-fun m!488487 () Bool)

(assert (=> b!507620 m!488487))

(declare-fun m!488489 () Bool)

(assert (=> b!507619 m!488489))

(declare-fun m!488491 () Bool)

(assert (=> b!507619 m!488491))

(declare-fun m!488493 () Bool)

(assert (=> b!507619 m!488493))

(assert (=> b!507619 m!488481))

(declare-fun m!488495 () Bool)

(assert (=> b!507619 m!488495))

(declare-fun m!488497 () Bool)

(assert (=> b!507619 m!488497))

(assert (=> b!507619 m!488481))

(declare-fun m!488499 () Bool)

(assert (=> b!507619 m!488499))

(assert (=> b!507619 m!488481))

(declare-fun m!488501 () Bool)

(assert (=> b!507619 m!488501))

(declare-fun m!488503 () Bool)

(assert (=> b!507619 m!488503))

(declare-fun m!488505 () Bool)

(assert (=> b!507618 m!488505))

(declare-fun m!488507 () Bool)

(assert (=> b!507621 m!488507))

(declare-fun m!488509 () Bool)

(assert (=> b!507622 m!488509))

(assert (=> b!507617 m!488481))

(assert (=> b!507617 m!488481))

(declare-fun m!488511 () Bool)

(assert (=> b!507617 m!488511))

(declare-fun m!488513 () Bool)

(assert (=> b!507615 m!488513))

(push 1)


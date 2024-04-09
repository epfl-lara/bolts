; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44732 () Bool)

(assert start!44732)

(declare-fun b!490644 () Bool)

(declare-fun res!293732 () Bool)

(declare-fun e!288379 () Bool)

(assert (=> b!490644 (=> (not res!293732) (not e!288379))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!31751 0))(
  ( (array!31752 (arr!15260 (Array (_ BitVec 32) (_ BitVec 64))) (size!15624 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31751)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!490644 (= res!293732 (and (= (size!15624 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15624 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15624 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!293735 () Bool)

(assert (=> start!44732 (=> (not res!293735) (not e!288379))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44732 (= res!293735 (validMask!0 mask!3524))))

(assert (=> start!44732 e!288379))

(assert (=> start!44732 true))

(declare-fun array_inv!11034 (array!31751) Bool)

(assert (=> start!44732 (array_inv!11034 a!3235)))

(declare-fun b!490645 () Bool)

(declare-fun e!288376 () Bool)

(declare-fun e!288377 () Bool)

(assert (=> b!490645 (= e!288376 (not e!288377))))

(declare-fun res!293737 () Bool)

(assert (=> b!490645 (=> res!293737 e!288377)))

(declare-fun lt!221724 () (_ BitVec 64))

(declare-fun lt!221721 () array!31751)

(declare-datatypes ((SeekEntryResult!3734 0))(
  ( (MissingZero!3734 (index!17115 (_ BitVec 32))) (Found!3734 (index!17116 (_ BitVec 32))) (Intermediate!3734 (undefined!4546 Bool) (index!17117 (_ BitVec 32)) (x!46235 (_ BitVec 32))) (Undefined!3734) (MissingVacant!3734 (index!17118 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31751 (_ BitVec 32)) SeekEntryResult!3734)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!490645 (= res!293737 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15260 a!3235) j!176) mask!3524) (select (arr!15260 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!221724 mask!3524) lt!221724 lt!221721 mask!3524))))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!490645 (= lt!221724 (select (store (arr!15260 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!490645 (= lt!221721 (array!31752 (store (arr!15260 a!3235) i!1204 k!2280) (size!15624 a!3235)))))

(declare-fun lt!221725 () SeekEntryResult!3734)

(assert (=> b!490645 (= lt!221725 (Found!3734 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31751 (_ BitVec 32)) SeekEntryResult!3734)

(assert (=> b!490645 (= lt!221725 (seekEntryOrOpen!0 (select (arr!15260 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31751 (_ BitVec 32)) Bool)

(assert (=> b!490645 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14406 0))(
  ( (Unit!14407) )
))
(declare-fun lt!221723 () Unit!14406)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31751 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14406)

(assert (=> b!490645 (= lt!221723 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!490646 () Bool)

(assert (=> b!490646 (= e!288379 e!288376)))

(declare-fun res!293731 () Bool)

(assert (=> b!490646 (=> (not res!293731) (not e!288376))))

(declare-fun lt!221726 () SeekEntryResult!3734)

(assert (=> b!490646 (= res!293731 (or (= lt!221726 (MissingZero!3734 i!1204)) (= lt!221726 (MissingVacant!3734 i!1204))))))

(assert (=> b!490646 (= lt!221726 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!490647 () Bool)

(declare-fun res!293738 () Bool)

(assert (=> b!490647 (=> (not res!293738) (not e!288379))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!490647 (= res!293738 (validKeyInArray!0 (select (arr!15260 a!3235) j!176)))))

(declare-fun b!490648 () Bool)

(declare-fun res!293736 () Bool)

(assert (=> b!490648 (=> (not res!293736) (not e!288379))))

(assert (=> b!490648 (= res!293736 (validKeyInArray!0 k!2280))))

(declare-fun b!490649 () Bool)

(declare-fun res!293730 () Bool)

(assert (=> b!490649 (=> (not res!293730) (not e!288376))))

(assert (=> b!490649 (= res!293730 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!490650 () Bool)

(declare-fun res!293734 () Bool)

(assert (=> b!490650 (=> (not res!293734) (not e!288379))))

(declare-fun arrayContainsKey!0 (array!31751 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!490650 (= res!293734 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!490651 () Bool)

(assert (=> b!490651 (= e!288377 true)))

(assert (=> b!490651 (= lt!221725 (seekEntryOrOpen!0 lt!221724 lt!221721 mask!3524))))

(declare-fun lt!221722 () Unit!14406)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!31751 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!14406)

(assert (=> b!490651 (= lt!221722 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k!2280 j!176 mask!3524))))

(declare-fun b!490652 () Bool)

(declare-fun res!293733 () Bool)

(assert (=> b!490652 (=> (not res!293733) (not e!288376))))

(declare-datatypes ((List!9471 0))(
  ( (Nil!9468) (Cons!9467 (h!10329 (_ BitVec 64)) (t!15707 List!9471)) )
))
(declare-fun arrayNoDuplicates!0 (array!31751 (_ BitVec 32) List!9471) Bool)

(assert (=> b!490652 (= res!293733 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9468))))

(assert (= (and start!44732 res!293735) b!490644))

(assert (= (and b!490644 res!293732) b!490647))

(assert (= (and b!490647 res!293738) b!490648))

(assert (= (and b!490648 res!293736) b!490650))

(assert (= (and b!490650 res!293734) b!490646))

(assert (= (and b!490646 res!293731) b!490649))

(assert (= (and b!490649 res!293730) b!490652))

(assert (= (and b!490652 res!293733) b!490645))

(assert (= (and b!490645 (not res!293737)) b!490651))

(declare-fun m!470979 () Bool)

(assert (=> b!490651 m!470979))

(declare-fun m!470981 () Bool)

(assert (=> b!490651 m!470981))

(declare-fun m!470983 () Bool)

(assert (=> b!490647 m!470983))

(assert (=> b!490647 m!470983))

(declare-fun m!470985 () Bool)

(assert (=> b!490647 m!470985))

(declare-fun m!470987 () Bool)

(assert (=> b!490649 m!470987))

(declare-fun m!470989 () Bool)

(assert (=> b!490645 m!470989))

(declare-fun m!470991 () Bool)

(assert (=> b!490645 m!470991))

(declare-fun m!470993 () Bool)

(assert (=> b!490645 m!470993))

(assert (=> b!490645 m!470983))

(declare-fun m!470995 () Bool)

(assert (=> b!490645 m!470995))

(assert (=> b!490645 m!470983))

(assert (=> b!490645 m!470993))

(assert (=> b!490645 m!470983))

(declare-fun m!470997 () Bool)

(assert (=> b!490645 m!470997))

(declare-fun m!470999 () Bool)

(assert (=> b!490645 m!470999))

(declare-fun m!471001 () Bool)

(assert (=> b!490645 m!471001))

(assert (=> b!490645 m!470983))

(declare-fun m!471003 () Bool)

(assert (=> b!490645 m!471003))

(assert (=> b!490645 m!470997))

(declare-fun m!471005 () Bool)

(assert (=> b!490645 m!471005))

(declare-fun m!471007 () Bool)

(assert (=> b!490652 m!471007))

(declare-fun m!471009 () Bool)

(assert (=> b!490650 m!471009))

(declare-fun m!471011 () Bool)

(assert (=> start!44732 m!471011))

(declare-fun m!471013 () Bool)

(assert (=> start!44732 m!471013))

(declare-fun m!471015 () Bool)

(assert (=> b!490648 m!471015))

(declare-fun m!471017 () Bool)

(assert (=> b!490646 m!471017))

(push 1)


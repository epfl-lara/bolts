; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120492 () Bool)

(assert start!120492)

(declare-fun b!1402357 () Bool)

(declare-fun e!794124 () Bool)

(declare-fun e!794125 () Bool)

(assert (=> b!1402357 (= e!794124 e!794125)))

(declare-fun res!940982 () Bool)

(assert (=> b!1402357 (=> res!940982 e!794125)))

(declare-datatypes ((array!95819 0))(
  ( (array!95820 (arr!46256 (Array (_ BitVec 32) (_ BitVec 64))) (size!46807 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95819)

(declare-datatypes ((SeekEntryResult!10595 0))(
  ( (MissingZero!10595 (index!44756 (_ BitVec 32))) (Found!10595 (index!44757 (_ BitVec 32))) (Intermediate!10595 (undefined!11407 Bool) (index!44758 (_ BitVec 32)) (x!126385 (_ BitVec 32))) (Undefined!10595) (MissingVacant!10595 (index!44759 (_ BitVec 32))) )
))
(declare-fun lt!617665 () SeekEntryResult!10595)

(declare-fun lt!617667 () (_ BitVec 32))

(declare-fun lt!617669 () SeekEntryResult!10595)

(assert (=> b!1402357 (= res!940982 (or (bvslt (x!126385 lt!617669) #b00000000000000000000000000000000) (bvsgt (x!126385 lt!617669) #b01111111111111111111111111111110) (bvslt (x!126385 lt!617665) #b00000000000000000000000000000000) (bvsgt (x!126385 lt!617665) #b01111111111111111111111111111110) (bvslt lt!617667 #b00000000000000000000000000000000) (bvsge lt!617667 (size!46807 a!2901)) (bvslt (index!44758 lt!617669) #b00000000000000000000000000000000) (bvsge (index!44758 lt!617669) (size!46807 a!2901)) (bvslt (index!44758 lt!617665) #b00000000000000000000000000000000) (bvsge (index!44758 lt!617665) (size!46807 a!2901)) (not (= lt!617669 (Intermediate!10595 false (index!44758 lt!617669) (x!126385 lt!617669)))) (not (= lt!617665 (Intermediate!10595 false (index!44758 lt!617665) (x!126385 lt!617665))))))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!617671 () SeekEntryResult!10595)

(declare-fun lt!617664 () array!95819)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95819 (_ BitVec 32)) SeekEntryResult!10595)

(assert (=> b!1402357 (= lt!617671 (seekKeyOrZeroReturnVacant!0 (x!126385 lt!617665) (index!44758 lt!617665) (index!44758 lt!617665) (select (arr!46256 a!2901) j!112) lt!617664 mask!2840))))

(declare-fun lt!617670 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95819 (_ BitVec 32)) SeekEntryResult!10595)

(assert (=> b!1402357 (= lt!617671 (seekEntryOrOpen!0 lt!617670 lt!617664 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1402357 (and (not (undefined!11407 lt!617665)) (= (index!44758 lt!617665) i!1037) (bvslt (x!126385 lt!617665) (x!126385 lt!617669)) (= (select (store (arr!46256 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44758 lt!617665)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!47144 0))(
  ( (Unit!47145) )
))
(declare-fun lt!617662 () Unit!47144)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95819 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47144)

(assert (=> b!1402357 (= lt!617662 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617667 (x!126385 lt!617669) (index!44758 lt!617669) (x!126385 lt!617665) (index!44758 lt!617665) (undefined!11407 lt!617665) mask!2840))))

(declare-fun b!1402358 () Bool)

(declare-fun e!794126 () Bool)

(declare-fun e!794122 () Bool)

(assert (=> b!1402358 (= e!794126 (not e!794122))))

(declare-fun res!940981 () Bool)

(assert (=> b!1402358 (=> res!940981 e!794122)))

(get-info :version)

(assert (=> b!1402358 (= res!940981 (or (not ((_ is Intermediate!10595) lt!617669)) (undefined!11407 lt!617669)))))

(declare-fun lt!617668 () SeekEntryResult!10595)

(assert (=> b!1402358 (= lt!617668 (Found!10595 j!112))))

(assert (=> b!1402358 (= lt!617668 (seekEntryOrOpen!0 (select (arr!46256 a!2901) j!112) a!2901 mask!2840))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95819 (_ BitVec 32)) Bool)

(assert (=> b!1402358 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!617663 () Unit!47144)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95819 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47144)

(assert (=> b!1402358 (= lt!617663 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95819 (_ BitVec 32)) SeekEntryResult!10595)

(assert (=> b!1402358 (= lt!617669 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617667 (select (arr!46256 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1402358 (= lt!617667 (toIndex!0 (select (arr!46256 a!2901) j!112) mask!2840))))

(declare-fun b!1402359 () Bool)

(assert (=> b!1402359 (= e!794125 true)))

(assert (=> b!1402359 (= lt!617668 lt!617671)))

(declare-fun lt!617666 () Unit!47144)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!95819 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47144)

(assert (=> b!1402359 (= lt!617666 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617667 (x!126385 lt!617669) (index!44758 lt!617669) (x!126385 lt!617665) (index!44758 lt!617665) mask!2840))))

(declare-fun res!940985 () Bool)

(assert (=> start!120492 (=> (not res!940985) (not e!794126))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120492 (= res!940985 (validMask!0 mask!2840))))

(assert (=> start!120492 e!794126))

(assert (=> start!120492 true))

(declare-fun array_inv!35201 (array!95819) Bool)

(assert (=> start!120492 (array_inv!35201 a!2901)))

(declare-fun b!1402360 () Bool)

(assert (=> b!1402360 (= e!794122 e!794124)))

(declare-fun res!940979 () Bool)

(assert (=> b!1402360 (=> res!940979 e!794124)))

(assert (=> b!1402360 (= res!940979 (or (= lt!617669 lt!617665) (not ((_ is Intermediate!10595) lt!617665))))))

(assert (=> b!1402360 (= lt!617665 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!617670 mask!2840) lt!617670 lt!617664 mask!2840))))

(assert (=> b!1402360 (= lt!617670 (select (store (arr!46256 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1402360 (= lt!617664 (array!95820 (store (arr!46256 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46807 a!2901)))))

(declare-fun b!1402361 () Bool)

(declare-fun res!940978 () Bool)

(assert (=> b!1402361 (=> (not res!940978) (not e!794126))))

(declare-datatypes ((List!32955 0))(
  ( (Nil!32952) (Cons!32951 (h!34199 (_ BitVec 64)) (t!47656 List!32955)) )
))
(declare-fun arrayNoDuplicates!0 (array!95819 (_ BitVec 32) List!32955) Bool)

(assert (=> b!1402361 (= res!940978 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32952))))

(declare-fun b!1402362 () Bool)

(declare-fun res!940986 () Bool)

(assert (=> b!1402362 (=> (not res!940986) (not e!794126))))

(assert (=> b!1402362 (= res!940986 (and (= (size!46807 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46807 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46807 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1402363 () Bool)

(declare-fun res!940984 () Bool)

(assert (=> b!1402363 (=> res!940984 e!794125)))

(assert (=> b!1402363 (= res!940984 (not (= lt!617665 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617667 lt!617670 lt!617664 mask!2840))))))

(declare-fun b!1402364 () Bool)

(declare-fun res!940980 () Bool)

(assert (=> b!1402364 (=> (not res!940980) (not e!794126))))

(assert (=> b!1402364 (= res!940980 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1402365 () Bool)

(declare-fun res!940977 () Bool)

(assert (=> b!1402365 (=> (not res!940977) (not e!794126))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1402365 (= res!940977 (validKeyInArray!0 (select (arr!46256 a!2901) j!112)))))

(declare-fun b!1402366 () Bool)

(declare-fun res!940983 () Bool)

(assert (=> b!1402366 (=> (not res!940983) (not e!794126))))

(assert (=> b!1402366 (= res!940983 (validKeyInArray!0 (select (arr!46256 a!2901) i!1037)))))

(assert (= (and start!120492 res!940985) b!1402362))

(assert (= (and b!1402362 res!940986) b!1402366))

(assert (= (and b!1402366 res!940983) b!1402365))

(assert (= (and b!1402365 res!940977) b!1402364))

(assert (= (and b!1402364 res!940980) b!1402361))

(assert (= (and b!1402361 res!940978) b!1402358))

(assert (= (and b!1402358 (not res!940981)) b!1402360))

(assert (= (and b!1402360 (not res!940979)) b!1402357))

(assert (= (and b!1402357 (not res!940982)) b!1402363))

(assert (= (and b!1402363 (not res!940984)) b!1402359))

(declare-fun m!1290579 () Bool)

(assert (=> b!1402361 m!1290579))

(declare-fun m!1290581 () Bool)

(assert (=> b!1402365 m!1290581))

(assert (=> b!1402365 m!1290581))

(declare-fun m!1290583 () Bool)

(assert (=> b!1402365 m!1290583))

(assert (=> b!1402357 m!1290581))

(declare-fun m!1290585 () Bool)

(assert (=> b!1402357 m!1290585))

(assert (=> b!1402357 m!1290581))

(declare-fun m!1290587 () Bool)

(assert (=> b!1402357 m!1290587))

(declare-fun m!1290589 () Bool)

(assert (=> b!1402357 m!1290589))

(declare-fun m!1290591 () Bool)

(assert (=> b!1402357 m!1290591))

(declare-fun m!1290593 () Bool)

(assert (=> b!1402357 m!1290593))

(declare-fun m!1290595 () Bool)

(assert (=> start!120492 m!1290595))

(declare-fun m!1290597 () Bool)

(assert (=> start!120492 m!1290597))

(declare-fun m!1290599 () Bool)

(assert (=> b!1402363 m!1290599))

(assert (=> b!1402358 m!1290581))

(declare-fun m!1290601 () Bool)

(assert (=> b!1402358 m!1290601))

(assert (=> b!1402358 m!1290581))

(declare-fun m!1290603 () Bool)

(assert (=> b!1402358 m!1290603))

(assert (=> b!1402358 m!1290581))

(declare-fun m!1290605 () Bool)

(assert (=> b!1402358 m!1290605))

(assert (=> b!1402358 m!1290581))

(declare-fun m!1290607 () Bool)

(assert (=> b!1402358 m!1290607))

(declare-fun m!1290609 () Bool)

(assert (=> b!1402358 m!1290609))

(declare-fun m!1290611 () Bool)

(assert (=> b!1402366 m!1290611))

(assert (=> b!1402366 m!1290611))

(declare-fun m!1290613 () Bool)

(assert (=> b!1402366 m!1290613))

(declare-fun m!1290615 () Bool)

(assert (=> b!1402360 m!1290615))

(assert (=> b!1402360 m!1290615))

(declare-fun m!1290617 () Bool)

(assert (=> b!1402360 m!1290617))

(assert (=> b!1402360 m!1290589))

(declare-fun m!1290619 () Bool)

(assert (=> b!1402360 m!1290619))

(declare-fun m!1290621 () Bool)

(assert (=> b!1402359 m!1290621))

(declare-fun m!1290623 () Bool)

(assert (=> b!1402364 m!1290623))

(check-sat (not b!1402364) (not b!1402361) (not b!1402366) (not b!1402360) (not b!1402357) (not b!1402363) (not start!120492) (not b!1402365) (not b!1402358) (not b!1402359))
(check-sat)

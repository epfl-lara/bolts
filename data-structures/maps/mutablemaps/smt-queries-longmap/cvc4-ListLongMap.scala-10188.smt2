; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120098 () Bool)

(assert start!120098)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95545 0))(
  ( (array!95546 (arr!46122 (Array (_ BitVec 32) (_ BitVec 64))) (size!46673 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95545)

(declare-fun b!1397657 () Bool)

(declare-fun e!791285 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10461 0))(
  ( (MissingZero!10461 (index!44214 (_ BitVec 32))) (Found!10461 (index!44215 (_ BitVec 32))) (Intermediate!10461 (undefined!11273 Bool) (index!44216 (_ BitVec 32)) (x!125870 (_ BitVec 32))) (Undefined!10461) (MissingVacant!10461 (index!44217 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95545 (_ BitVec 32)) SeekEntryResult!10461)

(assert (=> b!1397657 (= e!791285 (= (seekEntryOrOpen!0 (select (arr!46122 a!2901) j!112) a!2901 mask!2840) (Found!10461 j!112)))))

(declare-fun b!1397658 () Bool)

(declare-fun e!791282 () Bool)

(declare-fun e!791284 () Bool)

(assert (=> b!1397658 (= e!791282 (not e!791284))))

(declare-fun res!936686 () Bool)

(assert (=> b!1397658 (=> res!936686 e!791284)))

(declare-fun lt!614381 () SeekEntryResult!10461)

(assert (=> b!1397658 (= res!936686 (or (not (is-Intermediate!10461 lt!614381)) (undefined!11273 lt!614381)))))

(assert (=> b!1397658 e!791285))

(declare-fun res!936682 () Bool)

(assert (=> b!1397658 (=> (not res!936682) (not e!791285))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95545 (_ BitVec 32)) Bool)

(assert (=> b!1397658 (= res!936682 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46876 0))(
  ( (Unit!46877) )
))
(declare-fun lt!614383 () Unit!46876)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95545 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46876)

(assert (=> b!1397658 (= lt!614383 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!614382 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95545 (_ BitVec 32)) SeekEntryResult!10461)

(assert (=> b!1397658 (= lt!614381 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614382 (select (arr!46122 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1397658 (= lt!614382 (toIndex!0 (select (arr!46122 a!2901) j!112) mask!2840))))

(declare-fun b!1397659 () Bool)

(declare-fun res!936685 () Bool)

(assert (=> b!1397659 (=> (not res!936685) (not e!791282))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1397659 (= res!936685 (and (= (size!46673 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46673 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46673 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1397660 () Bool)

(declare-fun e!791283 () Bool)

(assert (=> b!1397660 (= e!791283 true)))

(declare-fun lt!614378 () SeekEntryResult!10461)

(declare-fun lt!614377 () array!95545)

(declare-fun lt!614380 () (_ BitVec 64))

(assert (=> b!1397660 (= lt!614378 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614382 lt!614380 lt!614377 mask!2840))))

(declare-fun res!936684 () Bool)

(assert (=> start!120098 (=> (not res!936684) (not e!791282))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120098 (= res!936684 (validMask!0 mask!2840))))

(assert (=> start!120098 e!791282))

(assert (=> start!120098 true))

(declare-fun array_inv!35067 (array!95545) Bool)

(assert (=> start!120098 (array_inv!35067 a!2901)))

(declare-fun b!1397661 () Bool)

(declare-fun res!936683 () Bool)

(assert (=> b!1397661 (=> (not res!936683) (not e!791282))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1397661 (= res!936683 (validKeyInArray!0 (select (arr!46122 a!2901) i!1037)))))

(declare-fun b!1397662 () Bool)

(declare-fun res!936679 () Bool)

(assert (=> b!1397662 (=> (not res!936679) (not e!791282))))

(declare-datatypes ((List!32821 0))(
  ( (Nil!32818) (Cons!32817 (h!34059 (_ BitVec 64)) (t!47522 List!32821)) )
))
(declare-fun arrayNoDuplicates!0 (array!95545 (_ BitVec 32) List!32821) Bool)

(assert (=> b!1397662 (= res!936679 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32818))))

(declare-fun b!1397663 () Bool)

(declare-fun res!936681 () Bool)

(assert (=> b!1397663 (=> (not res!936681) (not e!791282))))

(assert (=> b!1397663 (= res!936681 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1397664 () Bool)

(declare-fun res!936680 () Bool)

(assert (=> b!1397664 (=> (not res!936680) (not e!791282))))

(assert (=> b!1397664 (= res!936680 (validKeyInArray!0 (select (arr!46122 a!2901) j!112)))))

(declare-fun b!1397665 () Bool)

(assert (=> b!1397665 (= e!791284 e!791283)))

(declare-fun res!936687 () Bool)

(assert (=> b!1397665 (=> res!936687 e!791283)))

(declare-fun lt!614379 () SeekEntryResult!10461)

(assert (=> b!1397665 (= res!936687 (or (= lt!614381 lt!614379) (not (is-Intermediate!10461 lt!614379)) (bvslt (x!125870 lt!614381) #b00000000000000000000000000000000) (bvsgt (x!125870 lt!614381) #b01111111111111111111111111111110) (bvslt lt!614382 #b00000000000000000000000000000000) (bvsge lt!614382 (size!46673 a!2901)) (bvslt (index!44216 lt!614381) #b00000000000000000000000000000000) (bvsge (index!44216 lt!614381) (size!46673 a!2901)) (not (= lt!614381 (Intermediate!10461 false (index!44216 lt!614381) (x!125870 lt!614381)))) (not (= lt!614379 (Intermediate!10461 (undefined!11273 lt!614379) (index!44216 lt!614379) (x!125870 lt!614379))))))))

(assert (=> b!1397665 (= lt!614379 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!614380 mask!2840) lt!614380 lt!614377 mask!2840))))

(assert (=> b!1397665 (= lt!614380 (select (store (arr!46122 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1397665 (= lt!614377 (array!95546 (store (arr!46122 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46673 a!2901)))))

(assert (= (and start!120098 res!936684) b!1397659))

(assert (= (and b!1397659 res!936685) b!1397661))

(assert (= (and b!1397661 res!936683) b!1397664))

(assert (= (and b!1397664 res!936680) b!1397663))

(assert (= (and b!1397663 res!936681) b!1397662))

(assert (= (and b!1397662 res!936679) b!1397658))

(assert (= (and b!1397658 res!936682) b!1397657))

(assert (= (and b!1397658 (not res!936686)) b!1397665))

(assert (= (and b!1397665 (not res!936687)) b!1397660))

(declare-fun m!1284587 () Bool)

(assert (=> b!1397664 m!1284587))

(assert (=> b!1397664 m!1284587))

(declare-fun m!1284589 () Bool)

(assert (=> b!1397664 m!1284589))

(declare-fun m!1284591 () Bool)

(assert (=> b!1397663 m!1284591))

(assert (=> b!1397657 m!1284587))

(assert (=> b!1397657 m!1284587))

(declare-fun m!1284593 () Bool)

(assert (=> b!1397657 m!1284593))

(declare-fun m!1284595 () Bool)

(assert (=> start!120098 m!1284595))

(declare-fun m!1284597 () Bool)

(assert (=> start!120098 m!1284597))

(declare-fun m!1284599 () Bool)

(assert (=> b!1397661 m!1284599))

(assert (=> b!1397661 m!1284599))

(declare-fun m!1284601 () Bool)

(assert (=> b!1397661 m!1284601))

(declare-fun m!1284603 () Bool)

(assert (=> b!1397665 m!1284603))

(assert (=> b!1397665 m!1284603))

(declare-fun m!1284605 () Bool)

(assert (=> b!1397665 m!1284605))

(declare-fun m!1284607 () Bool)

(assert (=> b!1397665 m!1284607))

(declare-fun m!1284609 () Bool)

(assert (=> b!1397665 m!1284609))

(assert (=> b!1397658 m!1284587))

(declare-fun m!1284611 () Bool)

(assert (=> b!1397658 m!1284611))

(assert (=> b!1397658 m!1284587))

(declare-fun m!1284613 () Bool)

(assert (=> b!1397658 m!1284613))

(declare-fun m!1284615 () Bool)

(assert (=> b!1397658 m!1284615))

(assert (=> b!1397658 m!1284587))

(declare-fun m!1284617 () Bool)

(assert (=> b!1397658 m!1284617))

(declare-fun m!1284619 () Bool)

(assert (=> b!1397660 m!1284619))

(declare-fun m!1284621 () Bool)

(assert (=> b!1397662 m!1284621))

(push 1)

(assert (not b!1397657))

(assert (not start!120098))

(assert (not b!1397658))

(assert (not b!1397665))

(assert (not b!1397660))

(assert (not b!1397661))

(assert (not b!1397662))

(assert (not b!1397663))

(assert (not b!1397664))

(check-sat)

(pop 1)

(push 1)

(check-sat)


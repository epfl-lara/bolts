; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120024 () Bool)

(assert start!120024)

(declare-fun b!1396658 () Bool)

(declare-fun res!935680 () Bool)

(declare-fun e!790726 () Bool)

(assert (=> b!1396658 (=> (not res!935680) (not e!790726))))

(declare-datatypes ((array!95471 0))(
  ( (array!95472 (arr!46085 (Array (_ BitVec 32) (_ BitVec 64))) (size!46636 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95471)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95471 (_ BitVec 32)) Bool)

(assert (=> b!1396658 (= res!935680 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1396659 () Bool)

(declare-fun res!935687 () Bool)

(assert (=> b!1396659 (=> (not res!935687) (not e!790726))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1396659 (= res!935687 (and (= (size!46636 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46636 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46636 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1396660 () Bool)

(declare-fun e!790728 () Bool)

(assert (=> b!1396660 (= e!790728 true)))

(declare-fun lt!613603 () (_ BitVec 64))

(declare-fun lt!613604 () array!95471)

(declare-datatypes ((SeekEntryResult!10424 0))(
  ( (MissingZero!10424 (index!44066 (_ BitVec 32))) (Found!10424 (index!44067 (_ BitVec 32))) (Intermediate!10424 (undefined!11236 Bool) (index!44068 (_ BitVec 32)) (x!125737 (_ BitVec 32))) (Undefined!10424) (MissingVacant!10424 (index!44069 (_ BitVec 32))) )
))
(declare-fun lt!613601 () SeekEntryResult!10424)

(declare-fun lt!613600 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95471 (_ BitVec 32)) SeekEntryResult!10424)

(assert (=> b!1396660 (= lt!613601 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613600 lt!613603 lt!613604 mask!2840))))

(declare-fun res!935686 () Bool)

(assert (=> start!120024 (=> (not res!935686) (not e!790726))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120024 (= res!935686 (validMask!0 mask!2840))))

(assert (=> start!120024 e!790726))

(assert (=> start!120024 true))

(declare-fun array_inv!35030 (array!95471) Bool)

(assert (=> start!120024 (array_inv!35030 a!2901)))

(declare-fun b!1396661 () Bool)

(declare-fun e!790730 () Bool)

(assert (=> b!1396661 (= e!790730 e!790728)))

(declare-fun res!935684 () Bool)

(assert (=> b!1396661 (=> res!935684 e!790728)))

(declare-fun lt!613606 () SeekEntryResult!10424)

(declare-fun lt!613602 () SeekEntryResult!10424)

(get-info :version)

(assert (=> b!1396661 (= res!935684 (or (= lt!613606 lt!613602) (not ((_ is Intermediate!10424) lt!613602)) (bvslt (x!125737 lt!613606) #b00000000000000000000000000000000) (bvsgt (x!125737 lt!613606) #b01111111111111111111111111111110) (bvslt lt!613600 #b00000000000000000000000000000000) (bvsge lt!613600 (size!46636 a!2901)) (bvslt (index!44068 lt!613606) #b00000000000000000000000000000000) (bvsge (index!44068 lt!613606) (size!46636 a!2901)) (not (= lt!613606 (Intermediate!10424 false (index!44068 lt!613606) (x!125737 lt!613606)))) (not (= lt!613602 (Intermediate!10424 (undefined!11236 lt!613602) (index!44068 lt!613602) (x!125737 lt!613602))))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1396661 (= lt!613602 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!613603 mask!2840) lt!613603 lt!613604 mask!2840))))

(assert (=> b!1396661 (= lt!613603 (select (store (arr!46085 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1396661 (= lt!613604 (array!95472 (store (arr!46085 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46636 a!2901)))))

(declare-fun b!1396662 () Bool)

(declare-fun res!935683 () Bool)

(assert (=> b!1396662 (=> (not res!935683) (not e!790726))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1396662 (= res!935683 (validKeyInArray!0 (select (arr!46085 a!2901) j!112)))))

(declare-fun b!1396663 () Bool)

(declare-fun res!935685 () Bool)

(assert (=> b!1396663 (=> (not res!935685) (not e!790726))))

(declare-datatypes ((List!32784 0))(
  ( (Nil!32781) (Cons!32780 (h!34022 (_ BitVec 64)) (t!47485 List!32784)) )
))
(declare-fun arrayNoDuplicates!0 (array!95471 (_ BitVec 32) List!32784) Bool)

(assert (=> b!1396663 (= res!935685 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32781))))

(declare-fun b!1396664 () Bool)

(declare-fun res!935682 () Bool)

(assert (=> b!1396664 (=> (not res!935682) (not e!790726))))

(assert (=> b!1396664 (= res!935682 (validKeyInArray!0 (select (arr!46085 a!2901) i!1037)))))

(declare-fun e!790729 () Bool)

(declare-fun b!1396665 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95471 (_ BitVec 32)) SeekEntryResult!10424)

(assert (=> b!1396665 (= e!790729 (= (seekEntryOrOpen!0 (select (arr!46085 a!2901) j!112) a!2901 mask!2840) (Found!10424 j!112)))))

(declare-fun b!1396666 () Bool)

(assert (=> b!1396666 (= e!790726 (not e!790730))))

(declare-fun res!935681 () Bool)

(assert (=> b!1396666 (=> res!935681 e!790730)))

(assert (=> b!1396666 (= res!935681 (or (not ((_ is Intermediate!10424) lt!613606)) (undefined!11236 lt!613606)))))

(assert (=> b!1396666 e!790729))

(declare-fun res!935688 () Bool)

(assert (=> b!1396666 (=> (not res!935688) (not e!790729))))

(assert (=> b!1396666 (= res!935688 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46802 0))(
  ( (Unit!46803) )
))
(declare-fun lt!613605 () Unit!46802)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95471 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46802)

(assert (=> b!1396666 (= lt!613605 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1396666 (= lt!613606 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613600 (select (arr!46085 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1396666 (= lt!613600 (toIndex!0 (select (arr!46085 a!2901) j!112) mask!2840))))

(assert (= (and start!120024 res!935686) b!1396659))

(assert (= (and b!1396659 res!935687) b!1396664))

(assert (= (and b!1396664 res!935682) b!1396662))

(assert (= (and b!1396662 res!935683) b!1396658))

(assert (= (and b!1396658 res!935680) b!1396663))

(assert (= (and b!1396663 res!935685) b!1396666))

(assert (= (and b!1396666 res!935688) b!1396665))

(assert (= (and b!1396666 (not res!935681)) b!1396661))

(assert (= (and b!1396661 (not res!935684)) b!1396660))

(declare-fun m!1283255 () Bool)

(assert (=> b!1396664 m!1283255))

(assert (=> b!1396664 m!1283255))

(declare-fun m!1283257 () Bool)

(assert (=> b!1396664 m!1283257))

(declare-fun m!1283259 () Bool)

(assert (=> b!1396660 m!1283259))

(declare-fun m!1283261 () Bool)

(assert (=> start!120024 m!1283261))

(declare-fun m!1283263 () Bool)

(assert (=> start!120024 m!1283263))

(declare-fun m!1283265 () Bool)

(assert (=> b!1396666 m!1283265))

(declare-fun m!1283267 () Bool)

(assert (=> b!1396666 m!1283267))

(assert (=> b!1396666 m!1283265))

(assert (=> b!1396666 m!1283265))

(declare-fun m!1283269 () Bool)

(assert (=> b!1396666 m!1283269))

(declare-fun m!1283271 () Bool)

(assert (=> b!1396666 m!1283271))

(declare-fun m!1283273 () Bool)

(assert (=> b!1396666 m!1283273))

(declare-fun m!1283275 () Bool)

(assert (=> b!1396658 m!1283275))

(declare-fun m!1283277 () Bool)

(assert (=> b!1396661 m!1283277))

(assert (=> b!1396661 m!1283277))

(declare-fun m!1283279 () Bool)

(assert (=> b!1396661 m!1283279))

(declare-fun m!1283281 () Bool)

(assert (=> b!1396661 m!1283281))

(declare-fun m!1283283 () Bool)

(assert (=> b!1396661 m!1283283))

(declare-fun m!1283285 () Bool)

(assert (=> b!1396663 m!1283285))

(assert (=> b!1396665 m!1283265))

(assert (=> b!1396665 m!1283265))

(declare-fun m!1283287 () Bool)

(assert (=> b!1396665 m!1283287))

(assert (=> b!1396662 m!1283265))

(assert (=> b!1396662 m!1283265))

(declare-fun m!1283289 () Bool)

(assert (=> b!1396662 m!1283289))

(check-sat (not b!1396665) (not b!1396661) (not b!1396658) (not b!1396660) (not b!1396662) (not b!1396666) (not b!1396663) (not start!120024) (not b!1396664))
(check-sat)

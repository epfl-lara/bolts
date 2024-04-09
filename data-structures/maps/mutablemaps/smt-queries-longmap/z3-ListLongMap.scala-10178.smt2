; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120036 () Bool)

(assert start!120036)

(declare-fun b!1396820 () Bool)

(declare-fun e!790818 () Bool)

(assert (=> b!1396820 (= e!790818 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10430 0))(
  ( (MissingZero!10430 (index!44090 (_ BitVec 32))) (Found!10430 (index!44091 (_ BitVec 32))) (Intermediate!10430 (undefined!11242 Bool) (index!44092 (_ BitVec 32)) (x!125759 (_ BitVec 32))) (Undefined!10430) (MissingVacant!10430 (index!44093 (_ BitVec 32))) )
))
(declare-fun lt!613728 () SeekEntryResult!10430)

(declare-datatypes ((array!95483 0))(
  ( (array!95484 (arr!46091 (Array (_ BitVec 32) (_ BitVec 64))) (size!46642 (_ BitVec 32))) )
))
(declare-fun lt!613729 () array!95483)

(declare-fun lt!613731 () (_ BitVec 32))

(declare-fun lt!613732 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95483 (_ BitVec 32)) SeekEntryResult!10430)

(assert (=> b!1396820 (= lt!613728 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613731 lt!613732 lt!613729 mask!2840))))

(declare-fun e!790820 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun b!1396821 () Bool)

(declare-fun a!2901 () array!95483)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95483 (_ BitVec 32)) SeekEntryResult!10430)

(assert (=> b!1396821 (= e!790820 (= (seekEntryOrOpen!0 (select (arr!46091 a!2901) j!112) a!2901 mask!2840) (Found!10430 j!112)))))

(declare-fun b!1396822 () Bool)

(declare-fun e!790816 () Bool)

(declare-fun e!790817 () Bool)

(assert (=> b!1396822 (= e!790816 (not e!790817))))

(declare-fun res!935848 () Bool)

(assert (=> b!1396822 (=> res!935848 e!790817)))

(declare-fun lt!613730 () SeekEntryResult!10430)

(get-info :version)

(assert (=> b!1396822 (= res!935848 (or (not ((_ is Intermediate!10430) lt!613730)) (undefined!11242 lt!613730)))))

(assert (=> b!1396822 e!790820))

(declare-fun res!935846 () Bool)

(assert (=> b!1396822 (=> (not res!935846) (not e!790820))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95483 (_ BitVec 32)) Bool)

(assert (=> b!1396822 (= res!935846 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46814 0))(
  ( (Unit!46815) )
))
(declare-fun lt!613727 () Unit!46814)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95483 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46814)

(assert (=> b!1396822 (= lt!613727 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1396822 (= lt!613730 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613731 (select (arr!46091 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1396822 (= lt!613731 (toIndex!0 (select (arr!46091 a!2901) j!112) mask!2840))))

(declare-fun res!935850 () Bool)

(assert (=> start!120036 (=> (not res!935850) (not e!790816))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120036 (= res!935850 (validMask!0 mask!2840))))

(assert (=> start!120036 e!790816))

(assert (=> start!120036 true))

(declare-fun array_inv!35036 (array!95483) Bool)

(assert (=> start!120036 (array_inv!35036 a!2901)))

(declare-fun b!1396823 () Bool)

(declare-fun res!935843 () Bool)

(assert (=> b!1396823 (=> (not res!935843) (not e!790816))))

(declare-datatypes ((List!32790 0))(
  ( (Nil!32787) (Cons!32786 (h!34028 (_ BitVec 64)) (t!47491 List!32790)) )
))
(declare-fun arrayNoDuplicates!0 (array!95483 (_ BitVec 32) List!32790) Bool)

(assert (=> b!1396823 (= res!935843 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32787))))

(declare-fun b!1396824 () Bool)

(declare-fun res!935842 () Bool)

(assert (=> b!1396824 (=> (not res!935842) (not e!790816))))

(assert (=> b!1396824 (= res!935842 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1396825 () Bool)

(assert (=> b!1396825 (= e!790817 e!790818)))

(declare-fun res!935845 () Bool)

(assert (=> b!1396825 (=> res!935845 e!790818)))

(declare-fun lt!613726 () SeekEntryResult!10430)

(assert (=> b!1396825 (= res!935845 (or (= lt!613730 lt!613726) (not ((_ is Intermediate!10430) lt!613726)) (bvslt (x!125759 lt!613730) #b00000000000000000000000000000000) (bvsgt (x!125759 lt!613730) #b01111111111111111111111111111110) (bvslt lt!613731 #b00000000000000000000000000000000) (bvsge lt!613731 (size!46642 a!2901)) (bvslt (index!44092 lt!613730) #b00000000000000000000000000000000) (bvsge (index!44092 lt!613730) (size!46642 a!2901)) (not (= lt!613730 (Intermediate!10430 false (index!44092 lt!613730) (x!125759 lt!613730)))) (not (= lt!613726 (Intermediate!10430 (undefined!11242 lt!613726) (index!44092 lt!613726) (x!125759 lt!613726))))))))

(assert (=> b!1396825 (= lt!613726 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!613732 mask!2840) lt!613732 lt!613729 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1396825 (= lt!613732 (select (store (arr!46091 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1396825 (= lt!613729 (array!95484 (store (arr!46091 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46642 a!2901)))))

(declare-fun b!1396826 () Bool)

(declare-fun res!935849 () Bool)

(assert (=> b!1396826 (=> (not res!935849) (not e!790816))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1396826 (= res!935849 (validKeyInArray!0 (select (arr!46091 a!2901) i!1037)))))

(declare-fun b!1396827 () Bool)

(declare-fun res!935844 () Bool)

(assert (=> b!1396827 (=> (not res!935844) (not e!790816))))

(assert (=> b!1396827 (= res!935844 (and (= (size!46642 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46642 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46642 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1396828 () Bool)

(declare-fun res!935847 () Bool)

(assert (=> b!1396828 (=> (not res!935847) (not e!790816))))

(assert (=> b!1396828 (= res!935847 (validKeyInArray!0 (select (arr!46091 a!2901) j!112)))))

(assert (= (and start!120036 res!935850) b!1396827))

(assert (= (and b!1396827 res!935844) b!1396826))

(assert (= (and b!1396826 res!935849) b!1396828))

(assert (= (and b!1396828 res!935847) b!1396824))

(assert (= (and b!1396824 res!935842) b!1396823))

(assert (= (and b!1396823 res!935843) b!1396822))

(assert (= (and b!1396822 res!935846) b!1396821))

(assert (= (and b!1396822 (not res!935848)) b!1396825))

(assert (= (and b!1396825 (not res!935845)) b!1396820))

(declare-fun m!1283471 () Bool)

(assert (=> start!120036 m!1283471))

(declare-fun m!1283473 () Bool)

(assert (=> start!120036 m!1283473))

(declare-fun m!1283475 () Bool)

(assert (=> b!1396828 m!1283475))

(assert (=> b!1396828 m!1283475))

(declare-fun m!1283477 () Bool)

(assert (=> b!1396828 m!1283477))

(assert (=> b!1396822 m!1283475))

(declare-fun m!1283479 () Bool)

(assert (=> b!1396822 m!1283479))

(assert (=> b!1396822 m!1283475))

(declare-fun m!1283481 () Bool)

(assert (=> b!1396822 m!1283481))

(declare-fun m!1283483 () Bool)

(assert (=> b!1396822 m!1283483))

(assert (=> b!1396822 m!1283475))

(declare-fun m!1283485 () Bool)

(assert (=> b!1396822 m!1283485))

(assert (=> b!1396821 m!1283475))

(assert (=> b!1396821 m!1283475))

(declare-fun m!1283487 () Bool)

(assert (=> b!1396821 m!1283487))

(declare-fun m!1283489 () Bool)

(assert (=> b!1396826 m!1283489))

(assert (=> b!1396826 m!1283489))

(declare-fun m!1283491 () Bool)

(assert (=> b!1396826 m!1283491))

(declare-fun m!1283493 () Bool)

(assert (=> b!1396824 m!1283493))

(declare-fun m!1283495 () Bool)

(assert (=> b!1396823 m!1283495))

(declare-fun m!1283497 () Bool)

(assert (=> b!1396825 m!1283497))

(assert (=> b!1396825 m!1283497))

(declare-fun m!1283499 () Bool)

(assert (=> b!1396825 m!1283499))

(declare-fun m!1283501 () Bool)

(assert (=> b!1396825 m!1283501))

(declare-fun m!1283503 () Bool)

(assert (=> b!1396825 m!1283503))

(declare-fun m!1283505 () Bool)

(assert (=> b!1396820 m!1283505))

(check-sat (not b!1396824) (not b!1396820) (not start!120036) (not b!1396822) (not b!1396825) (not b!1396821) (not b!1396828) (not b!1396826) (not b!1396823))
(check-sat)

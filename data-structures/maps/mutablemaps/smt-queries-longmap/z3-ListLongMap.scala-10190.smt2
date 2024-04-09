; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120108 () Bool)

(assert start!120108)

(declare-fun b!1397793 () Bool)

(declare-fun res!936819 () Bool)

(declare-fun e!791357 () Bool)

(assert (=> b!1397793 (=> (not res!936819) (not e!791357))))

(declare-datatypes ((array!95555 0))(
  ( (array!95556 (arr!46127 (Array (_ BitVec 32) (_ BitVec 64))) (size!46678 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95555)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95555 (_ BitVec 32)) Bool)

(assert (=> b!1397793 (= res!936819 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1397794 () Bool)

(declare-fun res!936817 () Bool)

(assert (=> b!1397794 (=> (not res!936817) (not e!791357))))

(declare-datatypes ((List!32826 0))(
  ( (Nil!32823) (Cons!32822 (h!34064 (_ BitVec 64)) (t!47527 List!32826)) )
))
(declare-fun arrayNoDuplicates!0 (array!95555 (_ BitVec 32) List!32826) Bool)

(assert (=> b!1397794 (= res!936817 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32823))))

(declare-fun b!1397795 () Bool)

(declare-fun e!791356 () Bool)

(assert (=> b!1397795 (= e!791356 true)))

(declare-datatypes ((SeekEntryResult!10466 0))(
  ( (MissingZero!10466 (index!44234 (_ BitVec 32))) (Found!10466 (index!44235 (_ BitVec 32))) (Intermediate!10466 (undefined!11278 Bool) (index!44236 (_ BitVec 32)) (x!125891 (_ BitVec 32))) (Undefined!10466) (MissingVacant!10466 (index!44237 (_ BitVec 32))) )
))
(declare-fun lt!614483 () SeekEntryResult!10466)

(declare-fun lt!614488 () (_ BitVec 32))

(declare-fun lt!614487 () (_ BitVec 64))

(declare-fun lt!614486 () array!95555)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95555 (_ BitVec 32)) SeekEntryResult!10466)

(assert (=> b!1397795 (= lt!614483 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614488 lt!614487 lt!614486 mask!2840))))

(declare-fun b!1397796 () Bool)

(declare-fun res!936815 () Bool)

(assert (=> b!1397796 (=> (not res!936815) (not e!791357))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1397796 (= res!936815 (and (= (size!46678 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46678 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46678 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1397797 () Bool)

(declare-fun e!791360 () Bool)

(assert (=> b!1397797 (= e!791360 e!791356)))

(declare-fun res!936814 () Bool)

(assert (=> b!1397797 (=> res!936814 e!791356)))

(declare-fun lt!614484 () SeekEntryResult!10466)

(declare-fun lt!614485 () SeekEntryResult!10466)

(get-info :version)

(assert (=> b!1397797 (= res!936814 (or (= lt!614485 lt!614484) (not ((_ is Intermediate!10466) lt!614484)) (bvslt (x!125891 lt!614485) #b00000000000000000000000000000000) (bvsgt (x!125891 lt!614485) #b01111111111111111111111111111110) (bvslt lt!614488 #b00000000000000000000000000000000) (bvsge lt!614488 (size!46678 a!2901)) (bvslt (index!44236 lt!614485) #b00000000000000000000000000000000) (bvsge (index!44236 lt!614485) (size!46678 a!2901)) (not (= lt!614485 (Intermediate!10466 false (index!44236 lt!614485) (x!125891 lt!614485)))) (not (= lt!614484 (Intermediate!10466 (undefined!11278 lt!614484) (index!44236 lt!614484) (x!125891 lt!614484))))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1397797 (= lt!614484 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!614487 mask!2840) lt!614487 lt!614486 mask!2840))))

(assert (=> b!1397797 (= lt!614487 (select (store (arr!46127 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1397797 (= lt!614486 (array!95556 (store (arr!46127 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46678 a!2901)))))

(declare-fun b!1397798 () Bool)

(declare-fun res!936818 () Bool)

(assert (=> b!1397798 (=> (not res!936818) (not e!791357))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1397798 (= res!936818 (validKeyInArray!0 (select (arr!46127 a!2901) i!1037)))))

(declare-fun res!936816 () Bool)

(assert (=> start!120108 (=> (not res!936816) (not e!791357))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120108 (= res!936816 (validMask!0 mask!2840))))

(assert (=> start!120108 e!791357))

(assert (=> start!120108 true))

(declare-fun array_inv!35072 (array!95555) Bool)

(assert (=> start!120108 (array_inv!35072 a!2901)))

(declare-fun e!791359 () Bool)

(declare-fun b!1397792 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95555 (_ BitVec 32)) SeekEntryResult!10466)

(assert (=> b!1397792 (= e!791359 (= (seekEntryOrOpen!0 (select (arr!46127 a!2901) j!112) a!2901 mask!2840) (Found!10466 j!112)))))

(declare-fun b!1397799 () Bool)

(assert (=> b!1397799 (= e!791357 (not e!791360))))

(declare-fun res!936821 () Bool)

(assert (=> b!1397799 (=> res!936821 e!791360)))

(assert (=> b!1397799 (= res!936821 (or (not ((_ is Intermediate!10466) lt!614485)) (undefined!11278 lt!614485)))))

(assert (=> b!1397799 e!791359))

(declare-fun res!936820 () Bool)

(assert (=> b!1397799 (=> (not res!936820) (not e!791359))))

(assert (=> b!1397799 (= res!936820 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46886 0))(
  ( (Unit!46887) )
))
(declare-fun lt!614482 () Unit!46886)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95555 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46886)

(assert (=> b!1397799 (= lt!614482 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1397799 (= lt!614485 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614488 (select (arr!46127 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1397799 (= lt!614488 (toIndex!0 (select (arr!46127 a!2901) j!112) mask!2840))))

(declare-fun b!1397800 () Bool)

(declare-fun res!936822 () Bool)

(assert (=> b!1397800 (=> (not res!936822) (not e!791357))))

(assert (=> b!1397800 (= res!936822 (validKeyInArray!0 (select (arr!46127 a!2901) j!112)))))

(assert (= (and start!120108 res!936816) b!1397796))

(assert (= (and b!1397796 res!936815) b!1397798))

(assert (= (and b!1397798 res!936818) b!1397800))

(assert (= (and b!1397800 res!936822) b!1397793))

(assert (= (and b!1397793 res!936819) b!1397794))

(assert (= (and b!1397794 res!936817) b!1397799))

(assert (= (and b!1397799 res!936820) b!1397792))

(assert (= (and b!1397799 (not res!936821)) b!1397797))

(assert (= (and b!1397797 (not res!936814)) b!1397795))

(declare-fun m!1284767 () Bool)

(assert (=> b!1397794 m!1284767))

(declare-fun m!1284769 () Bool)

(assert (=> start!120108 m!1284769))

(declare-fun m!1284771 () Bool)

(assert (=> start!120108 m!1284771))

(declare-fun m!1284773 () Bool)

(assert (=> b!1397793 m!1284773))

(declare-fun m!1284775 () Bool)

(assert (=> b!1397798 m!1284775))

(assert (=> b!1397798 m!1284775))

(declare-fun m!1284777 () Bool)

(assert (=> b!1397798 m!1284777))

(declare-fun m!1284779 () Bool)

(assert (=> b!1397795 m!1284779))

(declare-fun m!1284781 () Bool)

(assert (=> b!1397799 m!1284781))

(declare-fun m!1284783 () Bool)

(assert (=> b!1397799 m!1284783))

(assert (=> b!1397799 m!1284781))

(declare-fun m!1284785 () Bool)

(assert (=> b!1397799 m!1284785))

(declare-fun m!1284787 () Bool)

(assert (=> b!1397799 m!1284787))

(assert (=> b!1397799 m!1284781))

(declare-fun m!1284789 () Bool)

(assert (=> b!1397799 m!1284789))

(assert (=> b!1397800 m!1284781))

(assert (=> b!1397800 m!1284781))

(declare-fun m!1284791 () Bool)

(assert (=> b!1397800 m!1284791))

(declare-fun m!1284793 () Bool)

(assert (=> b!1397797 m!1284793))

(assert (=> b!1397797 m!1284793))

(declare-fun m!1284795 () Bool)

(assert (=> b!1397797 m!1284795))

(declare-fun m!1284797 () Bool)

(assert (=> b!1397797 m!1284797))

(declare-fun m!1284799 () Bool)

(assert (=> b!1397797 m!1284799))

(assert (=> b!1397792 m!1284781))

(assert (=> b!1397792 m!1284781))

(declare-fun m!1284801 () Bool)

(assert (=> b!1397792 m!1284801))

(check-sat (not start!120108) (not b!1397800) (not b!1397793) (not b!1397797) (not b!1397798) (not b!1397795) (not b!1397794) (not b!1397799) (not b!1397792))
(check-sat)

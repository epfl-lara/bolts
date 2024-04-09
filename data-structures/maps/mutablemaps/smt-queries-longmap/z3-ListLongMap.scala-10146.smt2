; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119682 () Bool)

(assert start!119682)

(declare-fun b!1393557 () Bool)

(declare-fun e!789104 () Bool)

(assert (=> b!1393557 (= e!789104 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((array!95282 0))(
  ( (array!95283 (arr!45995 (Array (_ BitVec 32) (_ BitVec 64))) (size!46546 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95282)

(declare-datatypes ((SeekEntryResult!10334 0))(
  ( (MissingZero!10334 (index!43706 (_ BitVec 32))) (Found!10334 (index!43707 (_ BitVec 32))) (Intermediate!10334 (undefined!11146 Bool) (index!43708 (_ BitVec 32)) (x!125389 (_ BitVec 32))) (Undefined!10334) (MissingVacant!10334 (index!43709 (_ BitVec 32))) )
))
(declare-fun lt!612007 () SeekEntryResult!10334)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95282 (_ BitVec 32)) SeekEntryResult!10334)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1393557 (= lt!612007 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45995 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!45995 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95283 (store (arr!45995 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46546 a!2901)) mask!2840))))

(declare-fun b!1393559 () Bool)

(declare-fun res!933076 () Bool)

(declare-fun e!789103 () Bool)

(assert (=> b!1393559 (=> (not res!933076) (not e!789103))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95282 (_ BitVec 32)) Bool)

(assert (=> b!1393559 (= res!933076 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun e!789102 () Bool)

(declare-fun b!1393560 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95282 (_ BitVec 32)) SeekEntryResult!10334)

(assert (=> b!1393560 (= e!789102 (= (seekEntryOrOpen!0 (select (arr!45995 a!2901) j!112) a!2901 mask!2840) (Found!10334 j!112)))))

(declare-fun b!1393561 () Bool)

(assert (=> b!1393561 (= e!789103 (not e!789104))))

(declare-fun res!933079 () Bool)

(assert (=> b!1393561 (=> res!933079 e!789104)))

(declare-fun lt!612005 () SeekEntryResult!10334)

(get-info :version)

(assert (=> b!1393561 (= res!933079 (or (not ((_ is Intermediate!10334) lt!612005)) (undefined!11146 lt!612005)))))

(assert (=> b!1393561 e!789102))

(declare-fun res!933075 () Bool)

(assert (=> b!1393561 (=> (not res!933075) (not e!789102))))

(assert (=> b!1393561 (= res!933075 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46622 0))(
  ( (Unit!46623) )
))
(declare-fun lt!612006 () Unit!46622)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95282 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46622)

(assert (=> b!1393561 (= lt!612006 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1393561 (= lt!612005 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45995 a!2901) j!112) mask!2840) (select (arr!45995 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1393562 () Bool)

(declare-fun res!933081 () Bool)

(assert (=> b!1393562 (=> (not res!933081) (not e!789103))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1393562 (= res!933081 (validKeyInArray!0 (select (arr!45995 a!2901) i!1037)))))

(declare-fun b!1393563 () Bool)

(declare-fun res!933077 () Bool)

(assert (=> b!1393563 (=> (not res!933077) (not e!789103))))

(assert (=> b!1393563 (= res!933077 (validKeyInArray!0 (select (arr!45995 a!2901) j!112)))))

(declare-fun b!1393564 () Bool)

(declare-fun res!933078 () Bool)

(assert (=> b!1393564 (=> (not res!933078) (not e!789103))))

(assert (=> b!1393564 (= res!933078 (and (= (size!46546 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46546 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46546 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1393558 () Bool)

(declare-fun res!933074 () Bool)

(assert (=> b!1393558 (=> (not res!933074) (not e!789103))))

(declare-datatypes ((List!32694 0))(
  ( (Nil!32691) (Cons!32690 (h!33923 (_ BitVec 64)) (t!47395 List!32694)) )
))
(declare-fun arrayNoDuplicates!0 (array!95282 (_ BitVec 32) List!32694) Bool)

(assert (=> b!1393558 (= res!933074 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32691))))

(declare-fun res!933080 () Bool)

(assert (=> start!119682 (=> (not res!933080) (not e!789103))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119682 (= res!933080 (validMask!0 mask!2840))))

(assert (=> start!119682 e!789103))

(assert (=> start!119682 true))

(declare-fun array_inv!34940 (array!95282) Bool)

(assert (=> start!119682 (array_inv!34940 a!2901)))

(assert (= (and start!119682 res!933080) b!1393564))

(assert (= (and b!1393564 res!933078) b!1393562))

(assert (= (and b!1393562 res!933081) b!1393563))

(assert (= (and b!1393563 res!933077) b!1393559))

(assert (= (and b!1393559 res!933076) b!1393558))

(assert (= (and b!1393558 res!933074) b!1393561))

(assert (= (and b!1393561 res!933075) b!1393560))

(assert (= (and b!1393561 (not res!933079)) b!1393557))

(declare-fun m!1279611 () Bool)

(assert (=> b!1393558 m!1279611))

(declare-fun m!1279613 () Bool)

(assert (=> b!1393563 m!1279613))

(assert (=> b!1393563 m!1279613))

(declare-fun m!1279615 () Bool)

(assert (=> b!1393563 m!1279615))

(declare-fun m!1279617 () Bool)

(assert (=> start!119682 m!1279617))

(declare-fun m!1279619 () Bool)

(assert (=> start!119682 m!1279619))

(assert (=> b!1393561 m!1279613))

(declare-fun m!1279621 () Bool)

(assert (=> b!1393561 m!1279621))

(assert (=> b!1393561 m!1279613))

(declare-fun m!1279623 () Bool)

(assert (=> b!1393561 m!1279623))

(assert (=> b!1393561 m!1279621))

(assert (=> b!1393561 m!1279613))

(declare-fun m!1279625 () Bool)

(assert (=> b!1393561 m!1279625))

(declare-fun m!1279627 () Bool)

(assert (=> b!1393561 m!1279627))

(declare-fun m!1279629 () Bool)

(assert (=> b!1393562 m!1279629))

(assert (=> b!1393562 m!1279629))

(declare-fun m!1279631 () Bool)

(assert (=> b!1393562 m!1279631))

(declare-fun m!1279633 () Bool)

(assert (=> b!1393557 m!1279633))

(declare-fun m!1279635 () Bool)

(assert (=> b!1393557 m!1279635))

(assert (=> b!1393557 m!1279635))

(declare-fun m!1279637 () Bool)

(assert (=> b!1393557 m!1279637))

(assert (=> b!1393557 m!1279637))

(assert (=> b!1393557 m!1279635))

(declare-fun m!1279639 () Bool)

(assert (=> b!1393557 m!1279639))

(assert (=> b!1393560 m!1279613))

(assert (=> b!1393560 m!1279613))

(declare-fun m!1279641 () Bool)

(assert (=> b!1393560 m!1279641))

(declare-fun m!1279643 () Bool)

(assert (=> b!1393559 m!1279643))

(check-sat (not b!1393560) (not b!1393559) (not b!1393558) (not start!119682) (not b!1393557) (not b!1393563) (not b!1393561) (not b!1393562))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120102 () Bool)

(assert start!120102)

(declare-fun res!936736 () Bool)

(declare-fun e!791311 () Bool)

(assert (=> start!120102 (=> (not res!936736) (not e!791311))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120102 (= res!936736 (validMask!0 mask!2840))))

(assert (=> start!120102 e!791311))

(assert (=> start!120102 true))

(declare-datatypes ((array!95549 0))(
  ( (array!95550 (arr!46124 (Array (_ BitVec 32) (_ BitVec 64))) (size!46675 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95549)

(declare-fun array_inv!35069 (array!95549) Bool)

(assert (=> start!120102 (array_inv!35069 a!2901)))

(declare-fun b!1397711 () Bool)

(declare-fun res!936740 () Bool)

(assert (=> b!1397711 (=> (not res!936740) (not e!791311))))

(declare-datatypes ((List!32823 0))(
  ( (Nil!32820) (Cons!32819 (h!34061 (_ BitVec 64)) (t!47524 List!32823)) )
))
(declare-fun arrayNoDuplicates!0 (array!95549 (_ BitVec 32) List!32823) Bool)

(assert (=> b!1397711 (= res!936740 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32820))))

(declare-fun b!1397712 () Bool)

(declare-fun res!936739 () Bool)

(assert (=> b!1397712 (=> (not res!936739) (not e!791311))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1397712 (= res!936739 (validKeyInArray!0 (select (arr!46124 a!2901) i!1037)))))

(declare-fun b!1397713 () Bool)

(declare-fun res!936737 () Bool)

(assert (=> b!1397713 (=> (not res!936737) (not e!791311))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95549 (_ BitVec 32)) Bool)

(assert (=> b!1397713 (= res!936737 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1397714 () Bool)

(declare-fun e!791313 () Bool)

(assert (=> b!1397714 (= e!791313 true)))

(declare-fun lt!614419 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!10463 0))(
  ( (MissingZero!10463 (index!44222 (_ BitVec 32))) (Found!10463 (index!44223 (_ BitVec 32))) (Intermediate!10463 (undefined!11275 Bool) (index!44224 (_ BitVec 32)) (x!125880 (_ BitVec 32))) (Undefined!10463) (MissingVacant!10463 (index!44225 (_ BitVec 32))) )
))
(declare-fun lt!614424 () SeekEntryResult!10463)

(declare-fun lt!614425 () (_ BitVec 32))

(declare-fun lt!614423 () array!95549)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95549 (_ BitVec 32)) SeekEntryResult!10463)

(assert (=> b!1397714 (= lt!614424 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614425 lt!614419 lt!614423 mask!2840))))

(declare-fun e!791312 () Bool)

(declare-fun b!1397715 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95549 (_ BitVec 32)) SeekEntryResult!10463)

(assert (=> b!1397715 (= e!791312 (= (seekEntryOrOpen!0 (select (arr!46124 a!2901) j!112) a!2901 mask!2840) (Found!10463 j!112)))))

(declare-fun b!1397716 () Bool)

(declare-fun e!791315 () Bool)

(assert (=> b!1397716 (= e!791315 e!791313)))

(declare-fun res!936738 () Bool)

(assert (=> b!1397716 (=> res!936738 e!791313)))

(declare-fun lt!614420 () SeekEntryResult!10463)

(declare-fun lt!614421 () SeekEntryResult!10463)

(get-info :version)

(assert (=> b!1397716 (= res!936738 (or (= lt!614421 lt!614420) (not ((_ is Intermediate!10463) lt!614420)) (bvslt (x!125880 lt!614421) #b00000000000000000000000000000000) (bvsgt (x!125880 lt!614421) #b01111111111111111111111111111110) (bvslt lt!614425 #b00000000000000000000000000000000) (bvsge lt!614425 (size!46675 a!2901)) (bvslt (index!44224 lt!614421) #b00000000000000000000000000000000) (bvsge (index!44224 lt!614421) (size!46675 a!2901)) (not (= lt!614421 (Intermediate!10463 false (index!44224 lt!614421) (x!125880 lt!614421)))) (not (= lt!614420 (Intermediate!10463 (undefined!11275 lt!614420) (index!44224 lt!614420) (x!125880 lt!614420))))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1397716 (= lt!614420 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!614419 mask!2840) lt!614419 lt!614423 mask!2840))))

(assert (=> b!1397716 (= lt!614419 (select (store (arr!46124 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1397716 (= lt!614423 (array!95550 (store (arr!46124 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46675 a!2901)))))

(declare-fun b!1397717 () Bool)

(assert (=> b!1397717 (= e!791311 (not e!791315))))

(declare-fun res!936734 () Bool)

(assert (=> b!1397717 (=> res!936734 e!791315)))

(assert (=> b!1397717 (= res!936734 (or (not ((_ is Intermediate!10463) lt!614421)) (undefined!11275 lt!614421)))))

(assert (=> b!1397717 e!791312))

(declare-fun res!936735 () Bool)

(assert (=> b!1397717 (=> (not res!936735) (not e!791312))))

(assert (=> b!1397717 (= res!936735 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46880 0))(
  ( (Unit!46881) )
))
(declare-fun lt!614422 () Unit!46880)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95549 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46880)

(assert (=> b!1397717 (= lt!614422 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1397717 (= lt!614421 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614425 (select (arr!46124 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1397717 (= lt!614425 (toIndex!0 (select (arr!46124 a!2901) j!112) mask!2840))))

(declare-fun b!1397718 () Bool)

(declare-fun res!936741 () Bool)

(assert (=> b!1397718 (=> (not res!936741) (not e!791311))))

(assert (=> b!1397718 (= res!936741 (validKeyInArray!0 (select (arr!46124 a!2901) j!112)))))

(declare-fun b!1397719 () Bool)

(declare-fun res!936733 () Bool)

(assert (=> b!1397719 (=> (not res!936733) (not e!791311))))

(assert (=> b!1397719 (= res!936733 (and (= (size!46675 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46675 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46675 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!120102 res!936736) b!1397719))

(assert (= (and b!1397719 res!936733) b!1397712))

(assert (= (and b!1397712 res!936739) b!1397718))

(assert (= (and b!1397718 res!936741) b!1397713))

(assert (= (and b!1397713 res!936737) b!1397711))

(assert (= (and b!1397711 res!936740) b!1397717))

(assert (= (and b!1397717 res!936735) b!1397715))

(assert (= (and b!1397717 (not res!936734)) b!1397716))

(assert (= (and b!1397716 (not res!936738)) b!1397714))

(declare-fun m!1284659 () Bool)

(assert (=> b!1397716 m!1284659))

(assert (=> b!1397716 m!1284659))

(declare-fun m!1284661 () Bool)

(assert (=> b!1397716 m!1284661))

(declare-fun m!1284663 () Bool)

(assert (=> b!1397716 m!1284663))

(declare-fun m!1284665 () Bool)

(assert (=> b!1397716 m!1284665))

(declare-fun m!1284667 () Bool)

(assert (=> b!1397717 m!1284667))

(declare-fun m!1284669 () Bool)

(assert (=> b!1397717 m!1284669))

(assert (=> b!1397717 m!1284667))

(declare-fun m!1284671 () Bool)

(assert (=> b!1397717 m!1284671))

(assert (=> b!1397717 m!1284667))

(declare-fun m!1284673 () Bool)

(assert (=> b!1397717 m!1284673))

(declare-fun m!1284675 () Bool)

(assert (=> b!1397717 m!1284675))

(declare-fun m!1284677 () Bool)

(assert (=> start!120102 m!1284677))

(declare-fun m!1284679 () Bool)

(assert (=> start!120102 m!1284679))

(declare-fun m!1284681 () Bool)

(assert (=> b!1397713 m!1284681))

(declare-fun m!1284683 () Bool)

(assert (=> b!1397712 m!1284683))

(assert (=> b!1397712 m!1284683))

(declare-fun m!1284685 () Bool)

(assert (=> b!1397712 m!1284685))

(assert (=> b!1397718 m!1284667))

(assert (=> b!1397718 m!1284667))

(declare-fun m!1284687 () Bool)

(assert (=> b!1397718 m!1284687))

(declare-fun m!1284689 () Bool)

(assert (=> b!1397711 m!1284689))

(declare-fun m!1284691 () Bool)

(assert (=> b!1397714 m!1284691))

(assert (=> b!1397715 m!1284667))

(assert (=> b!1397715 m!1284667))

(declare-fun m!1284693 () Bool)

(assert (=> b!1397715 m!1284693))

(check-sat (not b!1397714) (not b!1397711) (not b!1397716) (not b!1397712) (not b!1397718) (not b!1397715) (not b!1397717) (not b!1397713) (not start!120102))
(check-sat)

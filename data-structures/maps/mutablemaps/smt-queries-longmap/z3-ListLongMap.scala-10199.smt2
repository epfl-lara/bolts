; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120162 () Bool)

(assert start!120162)

(declare-fun b!1398530 () Bool)

(declare-fun res!937559 () Bool)

(declare-fun e!791770 () Bool)

(assert (=> b!1398530 (=> (not res!937559) (not e!791770))))

(declare-datatypes ((array!95609 0))(
  ( (array!95610 (arr!46154 (Array (_ BitVec 32) (_ BitVec 64))) (size!46705 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95609)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1398530 (= res!937559 (validKeyInArray!0 (select (arr!46154 a!2901) j!112)))))

(declare-fun b!1398531 () Bool)

(declare-fun res!937552 () Bool)

(assert (=> b!1398531 (=> (not res!937552) (not e!791770))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1398531 (= res!937552 (validKeyInArray!0 (select (arr!46154 a!2901) i!1037)))))

(declare-fun b!1398532 () Bool)

(declare-fun e!791773 () Bool)

(declare-fun e!791774 () Bool)

(assert (=> b!1398532 (= e!791773 e!791774)))

(declare-fun res!937554 () Bool)

(assert (=> b!1398532 (=> res!937554 e!791774)))

(declare-datatypes ((SeekEntryResult!10493 0))(
  ( (MissingZero!10493 (index!44342 (_ BitVec 32))) (Found!10493 (index!44343 (_ BitVec 32))) (Intermediate!10493 (undefined!11305 Bool) (index!44344 (_ BitVec 32)) (x!125990 (_ BitVec 32))) (Undefined!10493) (MissingVacant!10493 (index!44345 (_ BitVec 32))) )
))
(declare-fun lt!614983 () SeekEntryResult!10493)

(declare-fun lt!614981 () SeekEntryResult!10493)

(get-info :version)

(assert (=> b!1398532 (= res!937554 (or (= lt!614983 lt!614981) (not ((_ is Intermediate!10493) lt!614981))))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!614982 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95609 (_ BitVec 32)) SeekEntryResult!10493)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1398532 (= lt!614981 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!614982 mask!2840) lt!614982 (array!95610 (store (arr!46154 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46705 a!2901)) mask!2840))))

(assert (=> b!1398532 (= lt!614982 (select (store (arr!46154 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(declare-fun b!1398533 () Bool)

(assert (=> b!1398533 (= e!791770 (not e!791773))))

(declare-fun res!937558 () Bool)

(assert (=> b!1398533 (=> res!937558 e!791773)))

(assert (=> b!1398533 (= res!937558 (or (not ((_ is Intermediate!10493) lt!614983)) (undefined!11305 lt!614983)))))

(declare-fun e!791772 () Bool)

(assert (=> b!1398533 e!791772))

(declare-fun res!937556 () Bool)

(assert (=> b!1398533 (=> (not res!937556) (not e!791772))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95609 (_ BitVec 32)) Bool)

(assert (=> b!1398533 (= res!937556 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46940 0))(
  ( (Unit!46941) )
))
(declare-fun lt!614985 () Unit!46940)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95609 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46940)

(assert (=> b!1398533 (= lt!614985 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!614986 () (_ BitVec 32))

(assert (=> b!1398533 (= lt!614983 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614986 (select (arr!46154 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1398533 (= lt!614986 (toIndex!0 (select (arr!46154 a!2901) j!112) mask!2840))))

(declare-fun b!1398534 () Bool)

(assert (=> b!1398534 (= e!791774 (or (bvslt mask!2840 #b00000000000000000000000000000000) (and (bvsge (index!44344 lt!614981) #b00000000000000000000000000000000) (bvslt (index!44344 lt!614981) (bvadd #b00000000000000000000000000000001 mask!2840)))))))

(assert (=> b!1398534 (and (not (undefined!11305 lt!614981)) (= (index!44344 lt!614981) i!1037) (bvslt (x!125990 lt!614981) (x!125990 lt!614983)) (= (select (store (arr!46154 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44344 lt!614981)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!614984 () Unit!46940)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95609 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46940)

(assert (=> b!1398534 (= lt!614984 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!614986 (x!125990 lt!614983) (index!44344 lt!614983) (x!125990 lt!614981) (index!44344 lt!614981) (undefined!11305 lt!614981) mask!2840))))

(declare-fun b!1398535 () Bool)

(declare-fun res!937553 () Bool)

(assert (=> b!1398535 (=> (not res!937553) (not e!791770))))

(assert (=> b!1398535 (= res!937553 (and (= (size!46705 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46705 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46705 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1398536 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95609 (_ BitVec 32)) SeekEntryResult!10493)

(assert (=> b!1398536 (= e!791772 (= (seekEntryOrOpen!0 (select (arr!46154 a!2901) j!112) a!2901 mask!2840) (Found!10493 j!112)))))

(declare-fun b!1398537 () Bool)

(declare-fun res!937555 () Bool)

(assert (=> b!1398537 (=> (not res!937555) (not e!791770))))

(assert (=> b!1398537 (= res!937555 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!937557 () Bool)

(assert (=> start!120162 (=> (not res!937557) (not e!791770))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120162 (= res!937557 (validMask!0 mask!2840))))

(assert (=> start!120162 e!791770))

(assert (=> start!120162 true))

(declare-fun array_inv!35099 (array!95609) Bool)

(assert (=> start!120162 (array_inv!35099 a!2901)))

(declare-fun b!1398538 () Bool)

(declare-fun res!937560 () Bool)

(assert (=> b!1398538 (=> (not res!937560) (not e!791770))))

(declare-datatypes ((List!32853 0))(
  ( (Nil!32850) (Cons!32849 (h!34091 (_ BitVec 64)) (t!47554 List!32853)) )
))
(declare-fun arrayNoDuplicates!0 (array!95609 (_ BitVec 32) List!32853) Bool)

(assert (=> b!1398538 (= res!937560 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32850))))

(assert (= (and start!120162 res!937557) b!1398535))

(assert (= (and b!1398535 res!937553) b!1398531))

(assert (= (and b!1398531 res!937552) b!1398530))

(assert (= (and b!1398530 res!937559) b!1398537))

(assert (= (and b!1398537 res!937555) b!1398538))

(assert (= (and b!1398538 res!937560) b!1398533))

(assert (= (and b!1398533 res!937556) b!1398536))

(assert (= (and b!1398533 (not res!937558)) b!1398532))

(assert (= (and b!1398532 (not res!937554)) b!1398534))

(declare-fun m!1285789 () Bool)

(assert (=> start!120162 m!1285789))

(declare-fun m!1285791 () Bool)

(assert (=> start!120162 m!1285791))

(declare-fun m!1285793 () Bool)

(assert (=> b!1398530 m!1285793))

(assert (=> b!1398530 m!1285793))

(declare-fun m!1285795 () Bool)

(assert (=> b!1398530 m!1285795))

(declare-fun m!1285797 () Bool)

(assert (=> b!1398531 m!1285797))

(assert (=> b!1398531 m!1285797))

(declare-fun m!1285799 () Bool)

(assert (=> b!1398531 m!1285799))

(assert (=> b!1398536 m!1285793))

(assert (=> b!1398536 m!1285793))

(declare-fun m!1285801 () Bool)

(assert (=> b!1398536 m!1285801))

(declare-fun m!1285803 () Bool)

(assert (=> b!1398537 m!1285803))

(declare-fun m!1285805 () Bool)

(assert (=> b!1398532 m!1285805))

(declare-fun m!1285807 () Bool)

(assert (=> b!1398532 m!1285807))

(assert (=> b!1398532 m!1285805))

(declare-fun m!1285809 () Bool)

(assert (=> b!1398532 m!1285809))

(declare-fun m!1285811 () Bool)

(assert (=> b!1398532 m!1285811))

(declare-fun m!1285813 () Bool)

(assert (=> b!1398538 m!1285813))

(assert (=> b!1398534 m!1285807))

(declare-fun m!1285815 () Bool)

(assert (=> b!1398534 m!1285815))

(declare-fun m!1285817 () Bool)

(assert (=> b!1398534 m!1285817))

(assert (=> b!1398533 m!1285793))

(declare-fun m!1285819 () Bool)

(assert (=> b!1398533 m!1285819))

(assert (=> b!1398533 m!1285793))

(declare-fun m!1285821 () Bool)

(assert (=> b!1398533 m!1285821))

(assert (=> b!1398533 m!1285793))

(declare-fun m!1285823 () Bool)

(assert (=> b!1398533 m!1285823))

(declare-fun m!1285825 () Bool)

(assert (=> b!1398533 m!1285825))

(check-sat (not b!1398538) (not b!1398537) (not b!1398534) (not b!1398533) (not b!1398531) (not b!1398532) (not start!120162) (not b!1398536) (not b!1398530))
(check-sat)

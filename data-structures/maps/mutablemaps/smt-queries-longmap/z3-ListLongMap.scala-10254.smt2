; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120618 () Bool)

(assert start!120618)

(declare-fun b!1403908 () Bool)

(declare-fun res!942534 () Bool)

(declare-fun e!794869 () Bool)

(assert (=> b!1403908 (=> (not res!942534) (not e!794869))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95945 0))(
  ( (array!95946 (arr!46319 (Array (_ BitVec 32) (_ BitVec 64))) (size!46870 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95945)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1403908 (= res!942534 (and (= (size!46870 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46870 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46870 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1403910 () Bool)

(declare-fun res!942531 () Bool)

(assert (=> b!1403910 (=> (not res!942531) (not e!794869))))

(declare-datatypes ((List!33018 0))(
  ( (Nil!33015) (Cons!33014 (h!34262 (_ BitVec 64)) (t!47719 List!33018)) )
))
(declare-fun arrayNoDuplicates!0 (array!95945 (_ BitVec 32) List!33018) Bool)

(assert (=> b!1403910 (= res!942531 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33015))))

(declare-fun b!1403911 () Bool)

(declare-fun res!942532 () Bool)

(assert (=> b!1403911 (=> (not res!942532) (not e!794869))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95945 (_ BitVec 32)) Bool)

(assert (=> b!1403911 (= res!942532 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1403912 () Bool)

(declare-fun res!942528 () Bool)

(assert (=> b!1403912 (=> (not res!942528) (not e!794869))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1403912 (= res!942528 (validKeyInArray!0 (select (arr!46319 a!2901) i!1037)))))

(declare-fun b!1403913 () Bool)

(assert (=> b!1403913 (= e!794869 (not true))))

(declare-fun e!794868 () Bool)

(assert (=> b!1403913 e!794868))

(declare-fun res!942533 () Bool)

(assert (=> b!1403913 (=> (not res!942533) (not e!794868))))

(assert (=> b!1403913 (= res!942533 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47270 0))(
  ( (Unit!47271) )
))
(declare-fun lt!618504 () Unit!47270)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95945 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47270)

(assert (=> b!1403913 (= lt!618504 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10658 0))(
  ( (MissingZero!10658 (index!45008 (_ BitVec 32))) (Found!10658 (index!45009 (_ BitVec 32))) (Intermediate!10658 (undefined!11470 Bool) (index!45010 (_ BitVec 32)) (x!126616 (_ BitVec 32))) (Undefined!10658) (MissingVacant!10658 (index!45011 (_ BitVec 32))) )
))
(declare-fun lt!618505 () SeekEntryResult!10658)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95945 (_ BitVec 32)) SeekEntryResult!10658)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1403913 (= lt!618505 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46319 a!2901) j!112) mask!2840) (select (arr!46319 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1403914 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95945 (_ BitVec 32)) SeekEntryResult!10658)

(assert (=> b!1403914 (= e!794868 (= (seekEntryOrOpen!0 (select (arr!46319 a!2901) j!112) a!2901 mask!2840) (Found!10658 j!112)))))

(declare-fun res!942530 () Bool)

(assert (=> start!120618 (=> (not res!942530) (not e!794869))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120618 (= res!942530 (validMask!0 mask!2840))))

(assert (=> start!120618 e!794869))

(assert (=> start!120618 true))

(declare-fun array_inv!35264 (array!95945) Bool)

(assert (=> start!120618 (array_inv!35264 a!2901)))

(declare-fun b!1403909 () Bool)

(declare-fun res!942529 () Bool)

(assert (=> b!1403909 (=> (not res!942529) (not e!794869))))

(assert (=> b!1403909 (= res!942529 (validKeyInArray!0 (select (arr!46319 a!2901) j!112)))))

(assert (= (and start!120618 res!942530) b!1403908))

(assert (= (and b!1403908 res!942534) b!1403912))

(assert (= (and b!1403912 res!942528) b!1403909))

(assert (= (and b!1403909 res!942529) b!1403911))

(assert (= (and b!1403911 res!942532) b!1403910))

(assert (= (and b!1403910 res!942531) b!1403913))

(assert (= (and b!1403913 res!942533) b!1403914))

(declare-fun m!1292755 () Bool)

(assert (=> b!1403914 m!1292755))

(assert (=> b!1403914 m!1292755))

(declare-fun m!1292757 () Bool)

(assert (=> b!1403914 m!1292757))

(assert (=> b!1403913 m!1292755))

(declare-fun m!1292759 () Bool)

(assert (=> b!1403913 m!1292759))

(assert (=> b!1403913 m!1292755))

(declare-fun m!1292761 () Bool)

(assert (=> b!1403913 m!1292761))

(assert (=> b!1403913 m!1292759))

(assert (=> b!1403913 m!1292755))

(declare-fun m!1292763 () Bool)

(assert (=> b!1403913 m!1292763))

(declare-fun m!1292765 () Bool)

(assert (=> b!1403913 m!1292765))

(declare-fun m!1292767 () Bool)

(assert (=> b!1403910 m!1292767))

(declare-fun m!1292769 () Bool)

(assert (=> start!120618 m!1292769))

(declare-fun m!1292771 () Bool)

(assert (=> start!120618 m!1292771))

(declare-fun m!1292773 () Bool)

(assert (=> b!1403911 m!1292773))

(assert (=> b!1403909 m!1292755))

(assert (=> b!1403909 m!1292755))

(declare-fun m!1292775 () Bool)

(assert (=> b!1403909 m!1292775))

(declare-fun m!1292777 () Bool)

(assert (=> b!1403912 m!1292777))

(assert (=> b!1403912 m!1292777))

(declare-fun m!1292779 () Bool)

(assert (=> b!1403912 m!1292779))

(check-sat (not b!1403914) (not b!1403913) (not b!1403912) (not b!1403910) (not b!1403909) (not b!1403911) (not start!120618))

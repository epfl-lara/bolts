; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119770 () Bool)

(assert start!119770)

(declare-fun b!1394680 () Bool)

(declare-fun res!934200 () Bool)

(declare-fun e!789633 () Bool)

(assert (=> b!1394680 (=> res!934200 e!789633)))

(declare-datatypes ((array!95370 0))(
  ( (array!95371 (arr!46039 (Array (_ BitVec 32) (_ BitVec 64))) (size!46590 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95370)

(declare-datatypes ((SeekEntryResult!10378 0))(
  ( (MissingZero!10378 (index!43882 (_ BitVec 32))) (Found!10378 (index!43883 (_ BitVec 32))) (Intermediate!10378 (undefined!11190 Bool) (index!43884 (_ BitVec 32)) (x!125553 (_ BitVec 32))) (Undefined!10378) (MissingVacant!10378 (index!43885 (_ BitVec 32))) )
))
(declare-fun lt!612667 () SeekEntryResult!10378)

(declare-fun lt!612663 () (_ BitVec 32))

(assert (=> b!1394680 (= res!934200 (or (bvslt (x!125553 lt!612667) #b00000000000000000000000000000000) (bvsgt (x!125553 lt!612667) #b01111111111111111111111111111110) (bvslt lt!612663 #b00000000000000000000000000000000) (bvsge lt!612663 (size!46590 a!2901)) (bvslt (index!43884 lt!612667) #b00000000000000000000000000000000) (bvsge (index!43884 lt!612667) (size!46590 a!2901)) (not (= lt!612667 (Intermediate!10378 false (index!43884 lt!612667) (x!125553 lt!612667))))))))

(declare-fun b!1394681 () Bool)

(declare-fun e!789635 () Bool)

(assert (=> b!1394681 (= e!789633 e!789635)))

(declare-fun res!934201 () Bool)

(assert (=> b!1394681 (=> res!934201 e!789635)))

(declare-fun mask!2840 () (_ BitVec 32))

(assert (=> b!1394681 (= res!934201 (bvslt mask!2840 #b00000000000000000000000000000000))))

(declare-fun lt!612664 () SeekEntryResult!10378)

(declare-fun lt!612662 () array!95370)

(declare-fun lt!612665 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95370 (_ BitVec 32)) SeekEntryResult!10378)

(assert (=> b!1394681 (= lt!612664 (seekEntryOrOpen!0 lt!612665 lt!612662 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-datatypes ((Unit!46710 0))(
  ( (Unit!46711) )
))
(declare-fun lt!612666 () Unit!46710)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!95370 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46710)

(assert (=> b!1394681 (= lt!612666 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!612663 (x!125553 lt!612667) (index!43884 lt!612667) mask!2840))))

(declare-fun b!1394682 () Bool)

(declare-fun e!789632 () Bool)

(declare-fun e!789634 () Bool)

(assert (=> b!1394682 (= e!789632 (not e!789634))))

(declare-fun res!934205 () Bool)

(assert (=> b!1394682 (=> res!934205 e!789634)))

(assert (=> b!1394682 (= res!934205 (or (not (is-Intermediate!10378 lt!612667)) (undefined!11190 lt!612667)))))

(assert (=> b!1394682 (= lt!612664 (Found!10378 j!112))))

(assert (=> b!1394682 (= lt!612664 (seekEntryOrOpen!0 (select (arr!46039 a!2901) j!112) a!2901 mask!2840))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95370 (_ BitVec 32)) Bool)

(assert (=> b!1394682 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!612661 () Unit!46710)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95370 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46710)

(assert (=> b!1394682 (= lt!612661 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95370 (_ BitVec 32)) SeekEntryResult!10378)

(assert (=> b!1394682 (= lt!612667 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!612663 (select (arr!46039 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1394682 (= lt!612663 (toIndex!0 (select (arr!46039 a!2901) j!112) mask!2840))))

(declare-fun b!1394683 () Bool)

(assert (=> b!1394683 (= e!789634 e!789633)))

(declare-fun res!934202 () Bool)

(assert (=> b!1394683 (=> res!934202 e!789633)))

(assert (=> b!1394683 (= res!934202 (not (= lt!612667 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!612665 mask!2840) lt!612665 lt!612662 mask!2840))))))

(assert (=> b!1394683 (= lt!612665 (select (store (arr!46039 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1394683 (= lt!612662 (array!95371 (store (arr!46039 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46590 a!2901)))))

(declare-fun b!1394684 () Bool)

(declare-fun res!934199 () Bool)

(assert (=> b!1394684 (=> (not res!934199) (not e!789632))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1394684 (= res!934199 (validKeyInArray!0 (select (arr!46039 a!2901) i!1037)))))

(declare-fun b!1394685 () Bool)

(declare-fun res!934206 () Bool)

(assert (=> b!1394685 (=> (not res!934206) (not e!789632))))

(assert (=> b!1394685 (= res!934206 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1394686 () Bool)

(assert (=> b!1394686 (= e!789635 (validKeyInArray!0 lt!612665))))

(declare-fun res!934198 () Bool)

(assert (=> start!119770 (=> (not res!934198) (not e!789632))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119770 (= res!934198 (validMask!0 mask!2840))))

(assert (=> start!119770 e!789632))

(assert (=> start!119770 true))

(declare-fun array_inv!34984 (array!95370) Bool)

(assert (=> start!119770 (array_inv!34984 a!2901)))

(declare-fun b!1394687 () Bool)

(declare-fun res!934197 () Bool)

(assert (=> b!1394687 (=> (not res!934197) (not e!789632))))

(assert (=> b!1394687 (= res!934197 (validKeyInArray!0 (select (arr!46039 a!2901) j!112)))))

(declare-fun b!1394688 () Bool)

(declare-fun res!934203 () Bool)

(assert (=> b!1394688 (=> (not res!934203) (not e!789632))))

(declare-datatypes ((List!32738 0))(
  ( (Nil!32735) (Cons!32734 (h!33967 (_ BitVec 64)) (t!47439 List!32738)) )
))
(declare-fun arrayNoDuplicates!0 (array!95370 (_ BitVec 32) List!32738) Bool)

(assert (=> b!1394688 (= res!934203 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32735))))

(declare-fun b!1394689 () Bool)

(declare-fun res!934204 () Bool)

(assert (=> b!1394689 (=> (not res!934204) (not e!789632))))

(assert (=> b!1394689 (= res!934204 (and (= (size!46590 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46590 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46590 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!119770 res!934198) b!1394689))

(assert (= (and b!1394689 res!934204) b!1394684))

(assert (= (and b!1394684 res!934199) b!1394687))

(assert (= (and b!1394687 res!934197) b!1394685))

(assert (= (and b!1394685 res!934206) b!1394688))

(assert (= (and b!1394688 res!934203) b!1394682))

(assert (= (and b!1394682 (not res!934205)) b!1394683))

(assert (= (and b!1394683 (not res!934202)) b!1394680))

(assert (= (and b!1394680 (not res!934200)) b!1394681))

(assert (= (and b!1394681 (not res!934201)) b!1394686))

(declare-fun m!1281191 () Bool)

(assert (=> b!1394681 m!1281191))

(declare-fun m!1281193 () Bool)

(assert (=> b!1394681 m!1281193))

(declare-fun m!1281195 () Bool)

(assert (=> start!119770 m!1281195))

(declare-fun m!1281197 () Bool)

(assert (=> start!119770 m!1281197))

(declare-fun m!1281199 () Bool)

(assert (=> b!1394686 m!1281199))

(declare-fun m!1281201 () Bool)

(assert (=> b!1394683 m!1281201))

(assert (=> b!1394683 m!1281201))

(declare-fun m!1281203 () Bool)

(assert (=> b!1394683 m!1281203))

(declare-fun m!1281205 () Bool)

(assert (=> b!1394683 m!1281205))

(declare-fun m!1281207 () Bool)

(assert (=> b!1394683 m!1281207))

(declare-fun m!1281209 () Bool)

(assert (=> b!1394685 m!1281209))

(declare-fun m!1281211 () Bool)

(assert (=> b!1394687 m!1281211))

(assert (=> b!1394687 m!1281211))

(declare-fun m!1281213 () Bool)

(assert (=> b!1394687 m!1281213))

(assert (=> b!1394682 m!1281211))

(declare-fun m!1281215 () Bool)

(assert (=> b!1394682 m!1281215))

(assert (=> b!1394682 m!1281211))

(assert (=> b!1394682 m!1281211))

(declare-fun m!1281217 () Bool)

(assert (=> b!1394682 m!1281217))

(declare-fun m!1281219 () Bool)

(assert (=> b!1394682 m!1281219))

(declare-fun m!1281221 () Bool)

(assert (=> b!1394682 m!1281221))

(assert (=> b!1394682 m!1281211))

(declare-fun m!1281223 () Bool)

(assert (=> b!1394682 m!1281223))

(declare-fun m!1281225 () Bool)

(assert (=> b!1394684 m!1281225))

(assert (=> b!1394684 m!1281225))

(declare-fun m!1281227 () Bool)

(assert (=> b!1394684 m!1281227))

(declare-fun m!1281229 () Bool)

(assert (=> b!1394688 m!1281229))

(push 1)


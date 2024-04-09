; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121236 () Bool)

(assert start!121236)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96308 0))(
  ( (array!96309 (arr!46493 (Array (_ BitVec 32) (_ BitVec 64))) (size!47044 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96308)

(declare-fun b!1409112 () Bool)

(declare-fun e!797458 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10826 0))(
  ( (MissingZero!10826 (index!45680 (_ BitVec 32))) (Found!10826 (index!45681 (_ BitVec 32))) (Intermediate!10826 (undefined!11638 Bool) (index!45682 (_ BitVec 32)) (x!127278 (_ BitVec 32))) (Undefined!10826) (MissingVacant!10826 (index!45683 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96308 (_ BitVec 32)) SeekEntryResult!10826)

(assert (=> b!1409112 (= e!797458 (= (seekEntryOrOpen!0 (select (arr!46493 a!2901) j!112) a!2901 mask!2840) (Found!10826 j!112)))))

(declare-fun b!1409113 () Bool)

(declare-fun res!946944 () Bool)

(declare-fun e!797459 () Bool)

(assert (=> b!1409113 (=> (not res!946944) (not e!797459))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1409113 (= res!946944 (validKeyInArray!0 (select (arr!46493 a!2901) i!1037)))))

(declare-fun b!1409114 () Bool)

(declare-fun e!797457 () Bool)

(assert (=> b!1409114 (= e!797457 true)))

(declare-fun lt!620571 () SeekEntryResult!10826)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96308 (_ BitVec 32)) SeekEntryResult!10826)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1409114 (= lt!620571 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46493 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46493 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96309 (store (arr!46493 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47044 a!2901)) mask!2840))))

(declare-fun b!1409115 () Bool)

(assert (=> b!1409115 (= e!797459 (not e!797457))))

(declare-fun res!946949 () Bool)

(assert (=> b!1409115 (=> res!946949 e!797457)))

(declare-fun lt!620572 () SeekEntryResult!10826)

(get-info :version)

(assert (=> b!1409115 (= res!946949 (or (not ((_ is Intermediate!10826) lt!620572)) (undefined!11638 lt!620572)))))

(assert (=> b!1409115 e!797458))

(declare-fun res!946946 () Bool)

(assert (=> b!1409115 (=> (not res!946946) (not e!797458))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96308 (_ BitVec 32)) Bool)

(assert (=> b!1409115 (= res!946946 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47576 0))(
  ( (Unit!47577) )
))
(declare-fun lt!620570 () Unit!47576)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96308 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47576)

(assert (=> b!1409115 (= lt!620570 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1409115 (= lt!620572 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46493 a!2901) j!112) mask!2840) (select (arr!46493 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1409116 () Bool)

(declare-fun res!946950 () Bool)

(assert (=> b!1409116 (=> (not res!946950) (not e!797459))))

(assert (=> b!1409116 (= res!946950 (validKeyInArray!0 (select (arr!46493 a!2901) j!112)))))

(declare-fun b!1409118 () Bool)

(declare-fun res!946948 () Bool)

(assert (=> b!1409118 (=> (not res!946948) (not e!797459))))

(assert (=> b!1409118 (= res!946948 (and (= (size!47044 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47044 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47044 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1409119 () Bool)

(declare-fun res!946943 () Bool)

(assert (=> b!1409119 (=> (not res!946943) (not e!797459))))

(declare-datatypes ((List!33192 0))(
  ( (Nil!33189) (Cons!33188 (h!34451 (_ BitVec 64)) (t!47893 List!33192)) )
))
(declare-fun arrayNoDuplicates!0 (array!96308 (_ BitVec 32) List!33192) Bool)

(assert (=> b!1409119 (= res!946943 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33189))))

(declare-fun res!946947 () Bool)

(assert (=> start!121236 (=> (not res!946947) (not e!797459))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121236 (= res!946947 (validMask!0 mask!2840))))

(assert (=> start!121236 e!797459))

(assert (=> start!121236 true))

(declare-fun array_inv!35438 (array!96308) Bool)

(assert (=> start!121236 (array_inv!35438 a!2901)))

(declare-fun b!1409117 () Bool)

(declare-fun res!946945 () Bool)

(assert (=> b!1409117 (=> (not res!946945) (not e!797459))))

(assert (=> b!1409117 (= res!946945 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!121236 res!946947) b!1409118))

(assert (= (and b!1409118 res!946948) b!1409113))

(assert (= (and b!1409113 res!946944) b!1409116))

(assert (= (and b!1409116 res!946950) b!1409117))

(assert (= (and b!1409117 res!946945) b!1409119))

(assert (= (and b!1409119 res!946943) b!1409115))

(assert (= (and b!1409115 res!946946) b!1409112))

(assert (= (and b!1409115 (not res!946949)) b!1409114))

(declare-fun m!1298787 () Bool)

(assert (=> b!1409112 m!1298787))

(assert (=> b!1409112 m!1298787))

(declare-fun m!1298789 () Bool)

(assert (=> b!1409112 m!1298789))

(assert (=> b!1409115 m!1298787))

(declare-fun m!1298791 () Bool)

(assert (=> b!1409115 m!1298791))

(assert (=> b!1409115 m!1298787))

(declare-fun m!1298793 () Bool)

(assert (=> b!1409115 m!1298793))

(assert (=> b!1409115 m!1298791))

(assert (=> b!1409115 m!1298787))

(declare-fun m!1298795 () Bool)

(assert (=> b!1409115 m!1298795))

(declare-fun m!1298797 () Bool)

(assert (=> b!1409115 m!1298797))

(declare-fun m!1298799 () Bool)

(assert (=> b!1409114 m!1298799))

(declare-fun m!1298801 () Bool)

(assert (=> b!1409114 m!1298801))

(assert (=> b!1409114 m!1298801))

(declare-fun m!1298803 () Bool)

(assert (=> b!1409114 m!1298803))

(assert (=> b!1409114 m!1298803))

(assert (=> b!1409114 m!1298801))

(declare-fun m!1298805 () Bool)

(assert (=> b!1409114 m!1298805))

(declare-fun m!1298807 () Bool)

(assert (=> b!1409113 m!1298807))

(assert (=> b!1409113 m!1298807))

(declare-fun m!1298809 () Bool)

(assert (=> b!1409113 m!1298809))

(assert (=> b!1409116 m!1298787))

(assert (=> b!1409116 m!1298787))

(declare-fun m!1298811 () Bool)

(assert (=> b!1409116 m!1298811))

(declare-fun m!1298813 () Bool)

(assert (=> b!1409119 m!1298813))

(declare-fun m!1298815 () Bool)

(assert (=> start!121236 m!1298815))

(declare-fun m!1298817 () Bool)

(assert (=> start!121236 m!1298817))

(declare-fun m!1298819 () Bool)

(assert (=> b!1409117 m!1298819))

(check-sat (not start!121236) (not b!1409119) (not b!1409113) (not b!1409115) (not b!1409116) (not b!1409117) (not b!1409112) (not b!1409114))

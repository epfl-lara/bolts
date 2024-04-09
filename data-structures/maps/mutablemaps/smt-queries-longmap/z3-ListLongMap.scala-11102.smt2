; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129668 () Bool)

(assert start!129668)

(declare-fun b!1521772 () Bool)

(declare-fun e!848631 () Bool)

(declare-datatypes ((array!101270 0))(
  ( (array!101271 (arr!48863 (Array (_ BitVec 32) (_ BitVec 64))) (size!49414 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101270)

(assert (=> b!1521772 (= e!848631 (bvsgt #b00000000000000000000000000000000 (size!49414 a!2804)))))

(declare-fun b!1521773 () Bool)

(declare-fun res!1041136 () Bool)

(declare-fun e!848632 () Bool)

(assert (=> b!1521773 (=> (not res!1041136) (not e!848632))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(assert (=> b!1521773 (= res!1041136 (and (= (size!49414 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49414 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49414 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1521775 () Bool)

(declare-fun res!1041138 () Bool)

(assert (=> b!1521775 (=> (not res!1041138) (not e!848632))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101270 (_ BitVec 32)) Bool)

(assert (=> b!1521775 (= res!1041138 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1521776 () Bool)

(declare-fun res!1041140 () Bool)

(assert (=> b!1521776 (=> (not res!1041140) (not e!848632))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1521776 (= res!1041140 (validKeyInArray!0 (select (arr!48863 a!2804) j!70)))))

(declare-fun b!1521777 () Bool)

(declare-fun res!1041141 () Bool)

(assert (=> b!1521777 (=> (not res!1041141) (not e!848631))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13049 0))(
  ( (MissingZero!13049 (index!54590 (_ BitVec 32))) (Found!13049 (index!54591 (_ BitVec 32))) (Intermediate!13049 (undefined!13861 Bool) (index!54592 (_ BitVec 32)) (x!136288 (_ BitVec 32))) (Undefined!13049) (MissingVacant!13049 (index!54593 (_ BitVec 32))) )
))
(declare-fun lt!659373 () SeekEntryResult!13049)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101270 (_ BitVec 32)) SeekEntryResult!13049)

(assert (=> b!1521777 (= res!1041141 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48863 a!2804) j!70) a!2804 mask!2512) lt!659373))))

(declare-fun b!1521778 () Bool)

(declare-fun res!1041135 () Bool)

(assert (=> b!1521778 (=> (not res!1041135) (not e!848631))))

(declare-fun lt!659374 () SeekEntryResult!13049)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1521778 (= res!1041135 (= lt!659374 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48863 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48863 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101271 (store (arr!48863 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49414 a!2804)) mask!2512)))))

(declare-fun b!1521779 () Bool)

(declare-fun res!1041132 () Bool)

(assert (=> b!1521779 (=> (not res!1041132) (not e!848632))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1521779 (= res!1041132 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49414 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49414 a!2804))))))

(declare-fun res!1041139 () Bool)

(assert (=> start!129668 (=> (not res!1041139) (not e!848632))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129668 (= res!1041139 (validMask!0 mask!2512))))

(assert (=> start!129668 e!848632))

(assert (=> start!129668 true))

(declare-fun array_inv!37808 (array!101270) Bool)

(assert (=> start!129668 (array_inv!37808 a!2804)))

(declare-fun b!1521774 () Bool)

(assert (=> b!1521774 (= e!848632 e!848631)))

(declare-fun res!1041137 () Bool)

(assert (=> b!1521774 (=> (not res!1041137) (not e!848631))))

(assert (=> b!1521774 (= res!1041137 (= lt!659374 lt!659373))))

(assert (=> b!1521774 (= lt!659373 (Intermediate!13049 false resIndex!21 resX!21))))

(assert (=> b!1521774 (= lt!659374 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48863 a!2804) j!70) mask!2512) (select (arr!48863 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1521780 () Bool)

(declare-fun res!1041134 () Bool)

(assert (=> b!1521780 (=> (not res!1041134) (not e!848632))))

(declare-datatypes ((List!35526 0))(
  ( (Nil!35523) (Cons!35522 (h!36944 (_ BitVec 64)) (t!50227 List!35526)) )
))
(declare-fun arrayNoDuplicates!0 (array!101270 (_ BitVec 32) List!35526) Bool)

(assert (=> b!1521780 (= res!1041134 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35523))))

(declare-fun b!1521781 () Bool)

(declare-fun res!1041133 () Bool)

(assert (=> b!1521781 (=> (not res!1041133) (not e!848632))))

(assert (=> b!1521781 (= res!1041133 (validKeyInArray!0 (select (arr!48863 a!2804) i!961)))))

(assert (= (and start!129668 res!1041139) b!1521773))

(assert (= (and b!1521773 res!1041136) b!1521781))

(assert (= (and b!1521781 res!1041133) b!1521776))

(assert (= (and b!1521776 res!1041140) b!1521775))

(assert (= (and b!1521775 res!1041138) b!1521780))

(assert (= (and b!1521780 res!1041134) b!1521779))

(assert (= (and b!1521779 res!1041132) b!1521774))

(assert (= (and b!1521774 res!1041137) b!1521777))

(assert (= (and b!1521777 res!1041141) b!1521778))

(assert (= (and b!1521778 res!1041135) b!1521772))

(declare-fun m!1404941 () Bool)

(assert (=> b!1521776 m!1404941))

(assert (=> b!1521776 m!1404941))

(declare-fun m!1404943 () Bool)

(assert (=> b!1521776 m!1404943))

(declare-fun m!1404945 () Bool)

(assert (=> b!1521775 m!1404945))

(declare-fun m!1404947 () Bool)

(assert (=> b!1521780 m!1404947))

(declare-fun m!1404949 () Bool)

(assert (=> b!1521778 m!1404949))

(declare-fun m!1404951 () Bool)

(assert (=> b!1521778 m!1404951))

(assert (=> b!1521778 m!1404951))

(declare-fun m!1404953 () Bool)

(assert (=> b!1521778 m!1404953))

(assert (=> b!1521778 m!1404953))

(assert (=> b!1521778 m!1404951))

(declare-fun m!1404955 () Bool)

(assert (=> b!1521778 m!1404955))

(assert (=> b!1521774 m!1404941))

(assert (=> b!1521774 m!1404941))

(declare-fun m!1404957 () Bool)

(assert (=> b!1521774 m!1404957))

(assert (=> b!1521774 m!1404957))

(assert (=> b!1521774 m!1404941))

(declare-fun m!1404959 () Bool)

(assert (=> b!1521774 m!1404959))

(assert (=> b!1521777 m!1404941))

(assert (=> b!1521777 m!1404941))

(declare-fun m!1404961 () Bool)

(assert (=> b!1521777 m!1404961))

(declare-fun m!1404963 () Bool)

(assert (=> b!1521781 m!1404963))

(assert (=> b!1521781 m!1404963))

(declare-fun m!1404965 () Bool)

(assert (=> b!1521781 m!1404965))

(declare-fun m!1404967 () Bool)

(assert (=> start!129668 m!1404967))

(declare-fun m!1404969 () Bool)

(assert (=> start!129668 m!1404969))

(check-sat (not b!1521781) (not b!1521775) (not b!1521776) (not b!1521774) (not b!1521778) (not start!129668) (not b!1521777) (not b!1521780))
(check-sat)

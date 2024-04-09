; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128628 () Bool)

(assert start!128628)

(declare-fun b!1507401 () Bool)

(declare-fun res!1027697 () Bool)

(declare-fun e!842275 () Bool)

(assert (=> b!1507401 (=> (not res!1027697) (not e!842275))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!100514 0))(
  ( (array!100515 (arr!48494 (Array (_ BitVec 32) (_ BitVec 64))) (size!49045 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100514)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1507401 (= res!1027697 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49045 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49045 a!2804))))))

(declare-fun b!1507402 () Bool)

(assert (=> b!1507402 (= e!842275 false)))

(declare-datatypes ((SeekEntryResult!12686 0))(
  ( (MissingZero!12686 (index!53138 (_ BitVec 32))) (Found!12686 (index!53139 (_ BitVec 32))) (Intermediate!12686 (undefined!13498 Bool) (index!53140 (_ BitVec 32)) (x!134903 (_ BitVec 32))) (Undefined!12686) (MissingVacant!12686 (index!53141 (_ BitVec 32))) )
))
(declare-fun lt!654352 () SeekEntryResult!12686)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100514 (_ BitVec 32)) SeekEntryResult!12686)

(assert (=> b!1507402 (= lt!654352 (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48494 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1507403 () Bool)

(declare-fun res!1027693 () Bool)

(assert (=> b!1507403 (=> (not res!1027693) (not e!842275))))

(declare-datatypes ((List!35157 0))(
  ( (Nil!35154) (Cons!35153 (h!36557 (_ BitVec 64)) (t!49858 List!35157)) )
))
(declare-fun arrayNoDuplicates!0 (array!100514 (_ BitVec 32) List!35157) Bool)

(assert (=> b!1507403 (= res!1027693 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35154))))

(declare-fun b!1507404 () Bool)

(declare-fun res!1027696 () Bool)

(assert (=> b!1507404 (=> (not res!1027696) (not e!842275))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1507404 (= res!1027696 (and (= (size!49045 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49045 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49045 a!2804)) (not (= i!961 j!70))))))

(declare-fun res!1027692 () Bool)

(assert (=> start!128628 (=> (not res!1027692) (not e!842275))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128628 (= res!1027692 (validMask!0 mask!2512))))

(assert (=> start!128628 e!842275))

(assert (=> start!128628 true))

(declare-fun array_inv!37439 (array!100514) Bool)

(assert (=> start!128628 (array_inv!37439 a!2804)))

(declare-fun b!1507405 () Bool)

(declare-fun res!1027695 () Bool)

(assert (=> b!1507405 (=> (not res!1027695) (not e!842275))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1507405 (= res!1027695 (validKeyInArray!0 (select (arr!48494 a!2804) i!961)))))

(declare-fun b!1507406 () Bool)

(declare-fun res!1027698 () Bool)

(assert (=> b!1507406 (=> (not res!1027698) (not e!842275))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100514 (_ BitVec 32)) Bool)

(assert (=> b!1507406 (= res!1027698 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1507407 () Bool)

(declare-fun res!1027691 () Bool)

(assert (=> b!1507407 (=> (not res!1027691) (not e!842275))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1507407 (= res!1027691 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48494 a!2804) j!70) mask!2512) (select (arr!48494 a!2804) j!70) a!2804 mask!2512) (Intermediate!12686 false resIndex!21 resX!21)))))

(declare-fun b!1507408 () Bool)

(declare-fun res!1027694 () Bool)

(assert (=> b!1507408 (=> (not res!1027694) (not e!842275))))

(assert (=> b!1507408 (= res!1027694 (validKeyInArray!0 (select (arr!48494 a!2804) j!70)))))

(assert (= (and start!128628 res!1027692) b!1507404))

(assert (= (and b!1507404 res!1027696) b!1507405))

(assert (= (and b!1507405 res!1027695) b!1507408))

(assert (= (and b!1507408 res!1027694) b!1507406))

(assert (= (and b!1507406 res!1027698) b!1507403))

(assert (= (and b!1507403 res!1027693) b!1507401))

(assert (= (and b!1507401 res!1027697) b!1507407))

(assert (= (and b!1507407 res!1027691) b!1507402))

(declare-fun m!1390207 () Bool)

(assert (=> b!1507408 m!1390207))

(assert (=> b!1507408 m!1390207))

(declare-fun m!1390209 () Bool)

(assert (=> b!1507408 m!1390209))

(assert (=> b!1507402 m!1390207))

(assert (=> b!1507402 m!1390207))

(declare-fun m!1390211 () Bool)

(assert (=> b!1507402 m!1390211))

(declare-fun m!1390213 () Bool)

(assert (=> b!1507405 m!1390213))

(assert (=> b!1507405 m!1390213))

(declare-fun m!1390215 () Bool)

(assert (=> b!1507405 m!1390215))

(declare-fun m!1390217 () Bool)

(assert (=> start!128628 m!1390217))

(declare-fun m!1390219 () Bool)

(assert (=> start!128628 m!1390219))

(declare-fun m!1390221 () Bool)

(assert (=> b!1507403 m!1390221))

(declare-fun m!1390223 () Bool)

(assert (=> b!1507406 m!1390223))

(assert (=> b!1507407 m!1390207))

(assert (=> b!1507407 m!1390207))

(declare-fun m!1390225 () Bool)

(assert (=> b!1507407 m!1390225))

(assert (=> b!1507407 m!1390225))

(assert (=> b!1507407 m!1390207))

(declare-fun m!1390227 () Bool)

(assert (=> b!1507407 m!1390227))

(check-sat (not b!1507406) (not b!1507403) (not b!1507408) (not b!1507405) (not b!1507402) (not start!128628) (not b!1507407))

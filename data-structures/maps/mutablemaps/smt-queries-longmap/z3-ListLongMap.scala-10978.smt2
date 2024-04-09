; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128622 () Bool)

(assert start!128622)

(declare-fun b!1507325 () Bool)

(declare-fun res!1027616 () Bool)

(declare-fun e!842253 () Bool)

(assert (=> b!1507325 (=> (not res!1027616) (not e!842253))))

(declare-datatypes ((array!100508 0))(
  ( (array!100509 (arr!48491 (Array (_ BitVec 32) (_ BitVec 64))) (size!49042 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100508)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1507325 (= res!1027616 (validKeyInArray!0 (select (arr!48491 a!2804) i!961)))))

(declare-fun b!1507326 () Bool)

(declare-fun e!842255 () Bool)

(assert (=> b!1507326 (= e!842253 e!842255)))

(declare-fun res!1027620 () Bool)

(assert (=> b!1507326 (=> (not res!1027620) (not e!842255))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12683 0))(
  ( (MissingZero!12683 (index!53126 (_ BitVec 32))) (Found!12683 (index!53127 (_ BitVec 32))) (Intermediate!12683 (undefined!13495 Bool) (index!53128 (_ BitVec 32)) (x!134892 (_ BitVec 32))) (Undefined!12683) (MissingVacant!12683 (index!53129 (_ BitVec 32))) )
))
(declare-fun lt!654343 () SeekEntryResult!12683)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100508 (_ BitVec 32)) SeekEntryResult!12683)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1507326 (= res!1027620 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48491 a!2804) j!70) mask!2512) (select (arr!48491 a!2804) j!70) a!2804 mask!2512) lt!654343))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1507326 (= lt!654343 (Intermediate!12683 false resIndex!21 resX!21))))

(declare-fun b!1507327 () Bool)

(declare-fun res!1027623 () Bool)

(assert (=> b!1507327 (=> (not res!1027623) (not e!842253))))

(assert (=> b!1507327 (= res!1027623 (and (= (size!49042 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49042 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49042 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1507328 () Bool)

(declare-fun res!1027615 () Bool)

(assert (=> b!1507328 (=> (not res!1027615) (not e!842253))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100508 (_ BitVec 32)) Bool)

(assert (=> b!1507328 (= res!1027615 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1507329 () Bool)

(declare-fun res!1027618 () Bool)

(assert (=> b!1507329 (=> (not res!1027618) (not e!842253))))

(declare-datatypes ((List!35154 0))(
  ( (Nil!35151) (Cons!35150 (h!36554 (_ BitVec 64)) (t!49855 List!35154)) )
))
(declare-fun arrayNoDuplicates!0 (array!100508 (_ BitVec 32) List!35154) Bool)

(assert (=> b!1507329 (= res!1027618 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35151))))

(declare-fun b!1507330 () Bool)

(declare-fun res!1027622 () Bool)

(assert (=> b!1507330 (=> (not res!1027622) (not e!842255))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1507330 (= res!1027622 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48491 a!2804) j!70) a!2804 mask!2512) lt!654343))))

(declare-fun b!1507332 () Bool)

(declare-fun res!1027619 () Bool)

(assert (=> b!1507332 (=> (not res!1027619) (not e!842253))))

(assert (=> b!1507332 (= res!1027619 (validKeyInArray!0 (select (arr!48491 a!2804) j!70)))))

(declare-fun b!1507333 () Bool)

(declare-fun res!1027617 () Bool)

(assert (=> b!1507333 (=> (not res!1027617) (not e!842253))))

(assert (=> b!1507333 (= res!1027617 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49042 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49042 a!2804))))))

(declare-fun res!1027621 () Bool)

(assert (=> start!128622 (=> (not res!1027621) (not e!842253))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128622 (= res!1027621 (validMask!0 mask!2512))))

(assert (=> start!128622 e!842253))

(assert (=> start!128622 true))

(declare-fun array_inv!37436 (array!100508) Bool)

(assert (=> start!128622 (array_inv!37436 a!2804)))

(declare-fun b!1507331 () Bool)

(assert (=> b!1507331 (= e!842255 (bvslt mask!2512 #b00000000000000000000000000000000))))

(assert (= (and start!128622 res!1027621) b!1507327))

(assert (= (and b!1507327 res!1027623) b!1507325))

(assert (= (and b!1507325 res!1027616) b!1507332))

(assert (= (and b!1507332 res!1027619) b!1507328))

(assert (= (and b!1507328 res!1027615) b!1507329))

(assert (= (and b!1507329 res!1027618) b!1507333))

(assert (= (and b!1507333 res!1027617) b!1507326))

(assert (= (and b!1507326 res!1027620) b!1507330))

(assert (= (and b!1507330 res!1027622) b!1507331))

(declare-fun m!1390141 () Bool)

(assert (=> b!1507326 m!1390141))

(assert (=> b!1507326 m!1390141))

(declare-fun m!1390143 () Bool)

(assert (=> b!1507326 m!1390143))

(assert (=> b!1507326 m!1390143))

(assert (=> b!1507326 m!1390141))

(declare-fun m!1390145 () Bool)

(assert (=> b!1507326 m!1390145))

(declare-fun m!1390147 () Bool)

(assert (=> b!1507329 m!1390147))

(assert (=> b!1507330 m!1390141))

(assert (=> b!1507330 m!1390141))

(declare-fun m!1390149 () Bool)

(assert (=> b!1507330 m!1390149))

(declare-fun m!1390151 () Bool)

(assert (=> b!1507328 m!1390151))

(declare-fun m!1390153 () Bool)

(assert (=> start!128622 m!1390153))

(declare-fun m!1390155 () Bool)

(assert (=> start!128622 m!1390155))

(assert (=> b!1507332 m!1390141))

(assert (=> b!1507332 m!1390141))

(declare-fun m!1390157 () Bool)

(assert (=> b!1507332 m!1390157))

(declare-fun m!1390159 () Bool)

(assert (=> b!1507325 m!1390159))

(assert (=> b!1507325 m!1390159))

(declare-fun m!1390161 () Bool)

(assert (=> b!1507325 m!1390161))

(check-sat (not b!1507328) (not b!1507325) (not start!128622) (not b!1507326) (not b!1507329) (not b!1507330) (not b!1507332))
(check-sat)

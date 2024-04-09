; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129620 () Bool)

(assert start!129620)

(declare-fun b!1521141 () Bool)

(declare-fun res!1040503 () Bool)

(declare-fun e!848438 () Bool)

(assert (=> b!1521141 (=> (not res!1040503) (not e!848438))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-datatypes ((array!101222 0))(
  ( (array!101223 (arr!48839 (Array (_ BitVec 32) (_ BitVec 64))) (size!49390 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101222)

(declare-datatypes ((SeekEntryResult!13025 0))(
  ( (MissingZero!13025 (index!54494 (_ BitVec 32))) (Found!13025 (index!54495 (_ BitVec 32))) (Intermediate!13025 (undefined!13837 Bool) (index!54496 (_ BitVec 32)) (x!136200 (_ BitVec 32))) (Undefined!13025) (MissingVacant!13025 (index!54497 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101222 (_ BitVec 32)) SeekEntryResult!13025)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1521141 (= res!1040503 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48839 a!2804) j!70) mask!2512) (select (arr!48839 a!2804) j!70) a!2804 mask!2512) (Intermediate!13025 false resIndex!21 resX!21)))))

(declare-fun b!1521142 () Bool)

(declare-fun res!1040501 () Bool)

(assert (=> b!1521142 (=> (not res!1040501) (not e!848438))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1521142 (= res!1040501 (validKeyInArray!0 (select (arr!48839 a!2804) i!961)))))

(declare-fun res!1040506 () Bool)

(assert (=> start!129620 (=> (not res!1040506) (not e!848438))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129620 (= res!1040506 (validMask!0 mask!2512))))

(assert (=> start!129620 e!848438))

(assert (=> start!129620 true))

(declare-fun array_inv!37784 (array!101222) Bool)

(assert (=> start!129620 (array_inv!37784 a!2804)))

(declare-fun b!1521143 () Bool)

(declare-fun res!1040507 () Bool)

(assert (=> b!1521143 (=> (not res!1040507) (not e!848438))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101222 (_ BitVec 32)) Bool)

(assert (=> b!1521143 (= res!1040507 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1521144 () Bool)

(declare-fun res!1040508 () Bool)

(assert (=> b!1521144 (=> (not res!1040508) (not e!848438))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1521144 (= res!1040508 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49390 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49390 a!2804))))))

(declare-fun b!1521145 () Bool)

(declare-fun res!1040505 () Bool)

(assert (=> b!1521145 (=> (not res!1040505) (not e!848438))))

(assert (=> b!1521145 (= res!1040505 (validKeyInArray!0 (select (arr!48839 a!2804) j!70)))))

(declare-fun b!1521146 () Bool)

(declare-fun res!1040502 () Bool)

(assert (=> b!1521146 (=> (not res!1040502) (not e!848438))))

(declare-datatypes ((List!35502 0))(
  ( (Nil!35499) (Cons!35498 (h!36920 (_ BitVec 64)) (t!50203 List!35502)) )
))
(declare-fun arrayNoDuplicates!0 (array!101222 (_ BitVec 32) List!35502) Bool)

(assert (=> b!1521146 (= res!1040502 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35499))))

(declare-fun b!1521147 () Bool)

(assert (=> b!1521147 (= e!848438 false)))

(declare-fun lt!659251 () SeekEntryResult!13025)

(assert (=> b!1521147 (= lt!659251 (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48839 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1521148 () Bool)

(declare-fun res!1040504 () Bool)

(assert (=> b!1521148 (=> (not res!1040504) (not e!848438))))

(assert (=> b!1521148 (= res!1040504 (and (= (size!49390 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49390 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49390 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!129620 res!1040506) b!1521148))

(assert (= (and b!1521148 res!1040504) b!1521142))

(assert (= (and b!1521142 res!1040501) b!1521145))

(assert (= (and b!1521145 res!1040505) b!1521143))

(assert (= (and b!1521143 res!1040507) b!1521146))

(assert (= (and b!1521146 res!1040502) b!1521144))

(assert (= (and b!1521144 res!1040508) b!1521141))

(assert (= (and b!1521141 res!1040503) b!1521147))

(declare-fun m!1404297 () Bool)

(assert (=> b!1521142 m!1404297))

(assert (=> b!1521142 m!1404297))

(declare-fun m!1404299 () Bool)

(assert (=> b!1521142 m!1404299))

(declare-fun m!1404301 () Bool)

(assert (=> b!1521147 m!1404301))

(assert (=> b!1521147 m!1404301))

(declare-fun m!1404303 () Bool)

(assert (=> b!1521147 m!1404303))

(declare-fun m!1404305 () Bool)

(assert (=> b!1521146 m!1404305))

(declare-fun m!1404307 () Bool)

(assert (=> start!129620 m!1404307))

(declare-fun m!1404309 () Bool)

(assert (=> start!129620 m!1404309))

(assert (=> b!1521145 m!1404301))

(assert (=> b!1521145 m!1404301))

(declare-fun m!1404311 () Bool)

(assert (=> b!1521145 m!1404311))

(assert (=> b!1521141 m!1404301))

(assert (=> b!1521141 m!1404301))

(declare-fun m!1404313 () Bool)

(assert (=> b!1521141 m!1404313))

(assert (=> b!1521141 m!1404313))

(assert (=> b!1521141 m!1404301))

(declare-fun m!1404315 () Bool)

(assert (=> b!1521141 m!1404315))

(declare-fun m!1404317 () Bool)

(assert (=> b!1521143 m!1404317))

(check-sat (not b!1521143) (not b!1521147) (not start!129620) (not b!1521146) (not b!1521142) (not b!1521145) (not b!1521141))

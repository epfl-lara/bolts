; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129618 () Bool)

(assert start!129618)

(declare-fun b!1521117 () Bool)

(declare-fun res!1040478 () Bool)

(declare-fun e!848432 () Bool)

(assert (=> b!1521117 (=> (not res!1040478) (not e!848432))))

(declare-datatypes ((array!101220 0))(
  ( (array!101221 (arr!48838 (Array (_ BitVec 32) (_ BitVec 64))) (size!49389 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101220)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1521117 (= res!1040478 (validKeyInArray!0 (select (arr!48838 a!2804) i!961)))))

(declare-fun b!1521118 () Bool)

(declare-fun res!1040477 () Bool)

(assert (=> b!1521118 (=> (not res!1040477) (not e!848432))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13024 0))(
  ( (MissingZero!13024 (index!54490 (_ BitVec 32))) (Found!13024 (index!54491 (_ BitVec 32))) (Intermediate!13024 (undefined!13836 Bool) (index!54492 (_ BitVec 32)) (x!136199 (_ BitVec 32))) (Undefined!13024) (MissingVacant!13024 (index!54493 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101220 (_ BitVec 32)) SeekEntryResult!13024)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1521118 (= res!1040477 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48838 a!2804) j!70) mask!2512) (select (arr!48838 a!2804) j!70) a!2804 mask!2512) (Intermediate!13024 false resIndex!21 resX!21)))))

(declare-fun b!1521119 () Bool)

(declare-fun res!1040480 () Bool)

(assert (=> b!1521119 (=> (not res!1040480) (not e!848432))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101220 (_ BitVec 32)) Bool)

(assert (=> b!1521119 (= res!1040480 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1521120 () Bool)

(declare-fun res!1040482 () Bool)

(assert (=> b!1521120 (=> (not res!1040482) (not e!848432))))

(declare-datatypes ((List!35501 0))(
  ( (Nil!35498) (Cons!35497 (h!36919 (_ BitVec 64)) (t!50202 List!35501)) )
))
(declare-fun arrayNoDuplicates!0 (array!101220 (_ BitVec 32) List!35501) Bool)

(assert (=> b!1521120 (= res!1040482 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35498))))

(declare-fun res!1040479 () Bool)

(assert (=> start!129618 (=> (not res!1040479) (not e!848432))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129618 (= res!1040479 (validMask!0 mask!2512))))

(assert (=> start!129618 e!848432))

(assert (=> start!129618 true))

(declare-fun array_inv!37783 (array!101220) Bool)

(assert (=> start!129618 (array_inv!37783 a!2804)))

(declare-fun b!1521121 () Bool)

(declare-fun res!1040481 () Bool)

(assert (=> b!1521121 (=> (not res!1040481) (not e!848432))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1521121 (= res!1040481 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49389 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49389 a!2804))))))

(declare-fun b!1521122 () Bool)

(declare-fun res!1040483 () Bool)

(assert (=> b!1521122 (=> (not res!1040483) (not e!848432))))

(assert (=> b!1521122 (= res!1040483 (and (= (size!49389 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49389 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49389 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1521123 () Bool)

(assert (=> b!1521123 (= e!848432 false)))

(declare-fun lt!659248 () SeekEntryResult!13024)

(assert (=> b!1521123 (= lt!659248 (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48838 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1521124 () Bool)

(declare-fun res!1040484 () Bool)

(assert (=> b!1521124 (=> (not res!1040484) (not e!848432))))

(assert (=> b!1521124 (= res!1040484 (validKeyInArray!0 (select (arr!48838 a!2804) j!70)))))

(assert (= (and start!129618 res!1040479) b!1521122))

(assert (= (and b!1521122 res!1040483) b!1521117))

(assert (= (and b!1521117 res!1040478) b!1521124))

(assert (= (and b!1521124 res!1040484) b!1521119))

(assert (= (and b!1521119 res!1040480) b!1521120))

(assert (= (and b!1521120 res!1040482) b!1521121))

(assert (= (and b!1521121 res!1040481) b!1521118))

(assert (= (and b!1521118 res!1040477) b!1521123))

(declare-fun m!1404275 () Bool)

(assert (=> start!129618 m!1404275))

(declare-fun m!1404277 () Bool)

(assert (=> start!129618 m!1404277))

(declare-fun m!1404279 () Bool)

(assert (=> b!1521123 m!1404279))

(assert (=> b!1521123 m!1404279))

(declare-fun m!1404281 () Bool)

(assert (=> b!1521123 m!1404281))

(assert (=> b!1521118 m!1404279))

(assert (=> b!1521118 m!1404279))

(declare-fun m!1404283 () Bool)

(assert (=> b!1521118 m!1404283))

(assert (=> b!1521118 m!1404283))

(assert (=> b!1521118 m!1404279))

(declare-fun m!1404285 () Bool)

(assert (=> b!1521118 m!1404285))

(declare-fun m!1404287 () Bool)

(assert (=> b!1521120 m!1404287))

(declare-fun m!1404289 () Bool)

(assert (=> b!1521117 m!1404289))

(assert (=> b!1521117 m!1404289))

(declare-fun m!1404291 () Bool)

(assert (=> b!1521117 m!1404291))

(declare-fun m!1404293 () Bool)

(assert (=> b!1521119 m!1404293))

(assert (=> b!1521124 m!1404279))

(assert (=> b!1521124 m!1404279))

(declare-fun m!1404295 () Bool)

(assert (=> b!1521124 m!1404295))

(push 1)

(assert (not b!1521117))

(assert (not start!129618))

(assert (not b!1521119))

(assert (not b!1521118))

(assert (not b!1521123))

(assert (not b!1521120))

(assert (not b!1521124))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


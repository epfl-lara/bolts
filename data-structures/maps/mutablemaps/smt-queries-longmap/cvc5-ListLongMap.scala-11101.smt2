; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129660 () Bool)

(assert start!129660)

(declare-fun b!1521659 () Bool)

(declare-fun res!1041024 () Bool)

(declare-fun e!848596 () Bool)

(assert (=> b!1521659 (=> (not res!1041024) (not e!848596))))

(declare-datatypes ((array!101262 0))(
  ( (array!101263 (arr!48859 (Array (_ BitVec 32) (_ BitVec 64))) (size!49410 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101262)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101262 (_ BitVec 32)) Bool)

(assert (=> b!1521659 (= res!1041024 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1521660 () Bool)

(declare-fun res!1041021 () Bool)

(assert (=> b!1521660 (=> (not res!1041021) (not e!848596))))

(declare-datatypes ((List!35522 0))(
  ( (Nil!35519) (Cons!35518 (h!36940 (_ BitVec 64)) (t!50223 List!35522)) )
))
(declare-fun arrayNoDuplicates!0 (array!101262 (_ BitVec 32) List!35522) Bool)

(assert (=> b!1521660 (= res!1041021 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35519))))

(declare-fun b!1521661 () Bool)

(declare-fun e!848597 () Bool)

(assert (=> b!1521661 (= e!848597 false)))

(declare-datatypes ((SeekEntryResult!13045 0))(
  ( (MissingZero!13045 (index!54574 (_ BitVec 32))) (Found!13045 (index!54575 (_ BitVec 32))) (Intermediate!13045 (undefined!13857 Bool) (index!54576 (_ BitVec 32)) (x!136276 (_ BitVec 32))) (Undefined!13045) (MissingVacant!13045 (index!54577 (_ BitVec 32))) )
))
(declare-fun lt!659349 () SeekEntryResult!13045)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101262 (_ BitVec 32)) SeekEntryResult!13045)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1521661 (= lt!659349 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48859 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48859 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101263 (store (arr!48859 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49410 a!2804)) mask!2512))))

(declare-fun b!1521662 () Bool)

(declare-fun res!1041025 () Bool)

(assert (=> b!1521662 (=> (not res!1041025) (not e!848596))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1521662 (= res!1041025 (validKeyInArray!0 (select (arr!48859 a!2804) i!961)))))

(declare-fun b!1521663 () Bool)

(declare-fun res!1041020 () Bool)

(assert (=> b!1521663 (=> (not res!1041020) (not e!848596))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1521663 (= res!1041020 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49410 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49410 a!2804))))))

(declare-fun res!1041027 () Bool)

(assert (=> start!129660 (=> (not res!1041027) (not e!848596))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129660 (= res!1041027 (validMask!0 mask!2512))))

(assert (=> start!129660 e!848596))

(assert (=> start!129660 true))

(declare-fun array_inv!37804 (array!101262) Bool)

(assert (=> start!129660 (array_inv!37804 a!2804)))

(declare-fun b!1521664 () Bool)

(assert (=> b!1521664 (= e!848596 e!848597)))

(declare-fun res!1041022 () Bool)

(assert (=> b!1521664 (=> (not res!1041022) (not e!848597))))

(declare-fun lt!659350 () SeekEntryResult!13045)

(assert (=> b!1521664 (= res!1041022 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48859 a!2804) j!70) mask!2512) (select (arr!48859 a!2804) j!70) a!2804 mask!2512) lt!659350))))

(assert (=> b!1521664 (= lt!659350 (Intermediate!13045 false resIndex!21 resX!21))))

(declare-fun b!1521665 () Bool)

(declare-fun res!1041019 () Bool)

(assert (=> b!1521665 (=> (not res!1041019) (not e!848596))))

(assert (=> b!1521665 (= res!1041019 (validKeyInArray!0 (select (arr!48859 a!2804) j!70)))))

(declare-fun b!1521666 () Bool)

(declare-fun res!1041023 () Bool)

(assert (=> b!1521666 (=> (not res!1041023) (not e!848597))))

(assert (=> b!1521666 (= res!1041023 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48859 a!2804) j!70) a!2804 mask!2512) lt!659350))))

(declare-fun b!1521667 () Bool)

(declare-fun res!1041026 () Bool)

(assert (=> b!1521667 (=> (not res!1041026) (not e!848596))))

(assert (=> b!1521667 (= res!1041026 (and (= (size!49410 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49410 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49410 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!129660 res!1041027) b!1521667))

(assert (= (and b!1521667 res!1041026) b!1521662))

(assert (= (and b!1521662 res!1041025) b!1521665))

(assert (= (and b!1521665 res!1041019) b!1521659))

(assert (= (and b!1521659 res!1041024) b!1521660))

(assert (= (and b!1521660 res!1041021) b!1521663))

(assert (= (and b!1521663 res!1041020) b!1521664))

(assert (= (and b!1521664 res!1041022) b!1521666))

(assert (= (and b!1521666 res!1041023) b!1521661))

(declare-fun m!1404821 () Bool)

(assert (=> b!1521664 m!1404821))

(assert (=> b!1521664 m!1404821))

(declare-fun m!1404823 () Bool)

(assert (=> b!1521664 m!1404823))

(assert (=> b!1521664 m!1404823))

(assert (=> b!1521664 m!1404821))

(declare-fun m!1404825 () Bool)

(assert (=> b!1521664 m!1404825))

(assert (=> b!1521666 m!1404821))

(assert (=> b!1521666 m!1404821))

(declare-fun m!1404827 () Bool)

(assert (=> b!1521666 m!1404827))

(declare-fun m!1404829 () Bool)

(assert (=> b!1521661 m!1404829))

(declare-fun m!1404831 () Bool)

(assert (=> b!1521661 m!1404831))

(assert (=> b!1521661 m!1404831))

(declare-fun m!1404833 () Bool)

(assert (=> b!1521661 m!1404833))

(assert (=> b!1521661 m!1404833))

(assert (=> b!1521661 m!1404831))

(declare-fun m!1404835 () Bool)

(assert (=> b!1521661 m!1404835))

(declare-fun m!1404837 () Bool)

(assert (=> b!1521662 m!1404837))

(assert (=> b!1521662 m!1404837))

(declare-fun m!1404839 () Bool)

(assert (=> b!1521662 m!1404839))

(declare-fun m!1404841 () Bool)

(assert (=> b!1521659 m!1404841))

(declare-fun m!1404843 () Bool)

(assert (=> start!129660 m!1404843))

(declare-fun m!1404845 () Bool)

(assert (=> start!129660 m!1404845))

(assert (=> b!1521665 m!1404821))

(assert (=> b!1521665 m!1404821))

(declare-fun m!1404847 () Bool)

(assert (=> b!1521665 m!1404847))

(declare-fun m!1404849 () Bool)

(assert (=> b!1521660 m!1404849))

(push 1)

(assert (not b!1521660))

(assert (not b!1521661))

(assert (not b!1521664))

(assert (not b!1521666))

(assert (not start!129660))

(assert (not b!1521662))

(assert (not b!1521665))

(assert (not b!1521659))

(check-sat)

(pop 1)


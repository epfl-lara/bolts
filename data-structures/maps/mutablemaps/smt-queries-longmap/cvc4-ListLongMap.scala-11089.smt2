; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129592 () Bool)

(assert start!129592)

(declare-fun b!1520826 () Bool)

(declare-fun res!1040190 () Bool)

(declare-fun e!848353 () Bool)

(assert (=> b!1520826 (=> (not res!1040190) (not e!848353))))

(declare-datatypes ((array!101194 0))(
  ( (array!101195 (arr!48825 (Array (_ BitVec 32) (_ BitVec 64))) (size!49376 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101194)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101194 (_ BitVec 32)) Bool)

(assert (=> b!1520826 (= res!1040190 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1520827 () Bool)

(declare-fun res!1040186 () Bool)

(assert (=> b!1520827 (=> (not res!1040186) (not e!848353))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1520827 (= res!1040186 (validKeyInArray!0 (select (arr!48825 a!2804) i!961)))))

(declare-fun b!1520828 () Bool)

(declare-fun res!1040189 () Bool)

(assert (=> b!1520828 (=> (not res!1040189) (not e!848353))))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1520828 (= res!1040189 (and (= (size!49376 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49376 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49376 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1520830 () Bool)

(assert (=> b!1520830 (= e!848353 false)))

(declare-fun lt!659209 () Bool)

(declare-datatypes ((List!35488 0))(
  ( (Nil!35485) (Cons!35484 (h!36906 (_ BitVec 64)) (t!50189 List!35488)) )
))
(declare-fun arrayNoDuplicates!0 (array!101194 (_ BitVec 32) List!35488) Bool)

(assert (=> b!1520830 (= lt!659209 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35485))))

(declare-fun b!1520829 () Bool)

(declare-fun res!1040188 () Bool)

(assert (=> b!1520829 (=> (not res!1040188) (not e!848353))))

(assert (=> b!1520829 (= res!1040188 (validKeyInArray!0 (select (arr!48825 a!2804) j!70)))))

(declare-fun res!1040187 () Bool)

(assert (=> start!129592 (=> (not res!1040187) (not e!848353))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129592 (= res!1040187 (validMask!0 mask!2512))))

(assert (=> start!129592 e!848353))

(assert (=> start!129592 true))

(declare-fun array_inv!37770 (array!101194) Bool)

(assert (=> start!129592 (array_inv!37770 a!2804)))

(assert (= (and start!129592 res!1040187) b!1520828))

(assert (= (and b!1520828 res!1040189) b!1520827))

(assert (= (and b!1520827 res!1040186) b!1520829))

(assert (= (and b!1520829 res!1040188) b!1520826))

(assert (= (and b!1520826 res!1040190) b!1520830))

(declare-fun m!1404013 () Bool)

(assert (=> b!1520827 m!1404013))

(assert (=> b!1520827 m!1404013))

(declare-fun m!1404015 () Bool)

(assert (=> b!1520827 m!1404015))

(declare-fun m!1404017 () Bool)

(assert (=> b!1520826 m!1404017))

(declare-fun m!1404019 () Bool)

(assert (=> b!1520829 m!1404019))

(assert (=> b!1520829 m!1404019))

(declare-fun m!1404021 () Bool)

(assert (=> b!1520829 m!1404021))

(declare-fun m!1404023 () Bool)

(assert (=> start!129592 m!1404023))

(declare-fun m!1404025 () Bool)

(assert (=> start!129592 m!1404025))

(declare-fun m!1404027 () Bool)

(assert (=> b!1520830 m!1404027))

(push 1)

(assert (not b!1520827))

(assert (not b!1520830))

(assert (not b!1520829))

(assert (not b!1520826))

(assert (not start!129592))

(check-sat)

(pop 1)


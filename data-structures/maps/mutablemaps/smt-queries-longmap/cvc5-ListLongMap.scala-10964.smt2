; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128458 () Bool)

(assert start!128458)

(declare-fun res!1026509 () Bool)

(declare-fun e!841787 () Bool)

(assert (=> start!128458 (=> (not res!1026509) (not e!841787))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128458 (= res!1026509 (validMask!0 mask!2512))))

(assert (=> start!128458 e!841787))

(assert (=> start!128458 true))

(declare-datatypes ((array!100416 0))(
  ( (array!100417 (arr!48448 (Array (_ BitVec 32) (_ BitVec 64))) (size!48999 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100416)

(declare-fun array_inv!37393 (array!100416) Bool)

(assert (=> start!128458 (array_inv!37393 a!2804)))

(declare-fun b!1506079 () Bool)

(declare-fun res!1026511 () Bool)

(assert (=> b!1506079 (=> (not res!1026511) (not e!841787))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1506079 (= res!1026511 (and (= (size!48999 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!48999 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!48999 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1506080 () Bool)

(assert (=> b!1506080 (= e!841787 (bvslt mask!2512 #b00000000000000000000000000000000))))

(declare-fun lt!654118 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1506080 (= lt!654118 (toIndex!0 (select (arr!48448 a!2804) j!70) mask!2512))))

(declare-fun b!1506081 () Bool)

(declare-fun res!1026510 () Bool)

(assert (=> b!1506081 (=> (not res!1026510) (not e!841787))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1506081 (= res!1026510 (validKeyInArray!0 (select (arr!48448 a!2804) j!70)))))

(declare-fun b!1506082 () Bool)

(declare-fun res!1026513 () Bool)

(assert (=> b!1506082 (=> (not res!1026513) (not e!841787))))

(declare-datatypes ((List!35111 0))(
  ( (Nil!35108) (Cons!35107 (h!36505 (_ BitVec 64)) (t!49812 List!35111)) )
))
(declare-fun arrayNoDuplicates!0 (array!100416 (_ BitVec 32) List!35111) Bool)

(assert (=> b!1506082 (= res!1026513 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35108))))

(declare-fun b!1506083 () Bool)

(declare-fun res!1026507 () Bool)

(assert (=> b!1506083 (=> (not res!1026507) (not e!841787))))

(assert (=> b!1506083 (= res!1026507 (validKeyInArray!0 (select (arr!48448 a!2804) i!961)))))

(declare-fun b!1506084 () Bool)

(declare-fun res!1026508 () Bool)

(assert (=> b!1506084 (=> (not res!1026508) (not e!841787))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100416 (_ BitVec 32)) Bool)

(assert (=> b!1506084 (= res!1026508 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1506085 () Bool)

(declare-fun res!1026512 () Bool)

(assert (=> b!1506085 (=> (not res!1026512) (not e!841787))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1506085 (= res!1026512 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!48999 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!48999 a!2804))))))

(assert (= (and start!128458 res!1026509) b!1506079))

(assert (= (and b!1506079 res!1026511) b!1506083))

(assert (= (and b!1506083 res!1026507) b!1506081))

(assert (= (and b!1506081 res!1026510) b!1506084))

(assert (= (and b!1506084 res!1026508) b!1506082))

(assert (= (and b!1506082 res!1026513) b!1506085))

(assert (= (and b!1506085 res!1026512) b!1506080))

(declare-fun m!1389147 () Bool)

(assert (=> b!1506080 m!1389147))

(assert (=> b!1506080 m!1389147))

(declare-fun m!1389149 () Bool)

(assert (=> b!1506080 m!1389149))

(assert (=> b!1506081 m!1389147))

(assert (=> b!1506081 m!1389147))

(declare-fun m!1389151 () Bool)

(assert (=> b!1506081 m!1389151))

(declare-fun m!1389153 () Bool)

(assert (=> b!1506082 m!1389153))

(declare-fun m!1389155 () Bool)

(assert (=> b!1506084 m!1389155))

(declare-fun m!1389157 () Bool)

(assert (=> start!128458 m!1389157))

(declare-fun m!1389159 () Bool)

(assert (=> start!128458 m!1389159))

(declare-fun m!1389161 () Bool)

(assert (=> b!1506083 m!1389161))

(assert (=> b!1506083 m!1389161))

(declare-fun m!1389163 () Bool)

(assert (=> b!1506083 m!1389163))

(push 1)

(assert (not b!1506084))

(assert (not b!1506082))

(assert (not b!1506083))

(assert (not start!128458))

(assert (not b!1506080))

(assert (not b!1506081))

(check-sat)


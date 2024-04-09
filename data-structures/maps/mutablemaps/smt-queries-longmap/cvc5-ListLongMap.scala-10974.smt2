; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128554 () Bool)

(assert start!128554)

(declare-fun b!1506808 () Bool)

(declare-fun res!1027204 () Bool)

(declare-fun e!842029 () Bool)

(assert (=> b!1506808 (=> (not res!1027204) (not e!842029))))

(declare-datatypes ((array!100479 0))(
  ( (array!100480 (arr!48478 (Array (_ BitVec 32) (_ BitVec 64))) (size!49029 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100479)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1506808 (= res!1027204 (validKeyInArray!0 (select (arr!48478 a!2804) j!70)))))

(declare-fun res!1027203 () Bool)

(assert (=> start!128554 (=> (not res!1027203) (not e!842029))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128554 (= res!1027203 (validMask!0 mask!2512))))

(assert (=> start!128554 e!842029))

(assert (=> start!128554 true))

(declare-fun array_inv!37423 (array!100479) Bool)

(assert (=> start!128554 (array_inv!37423 a!2804)))

(declare-fun b!1506809 () Bool)

(declare-fun res!1027207 () Bool)

(assert (=> b!1506809 (=> (not res!1027207) (not e!842029))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1506809 (= res!1027207 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49029 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49029 a!2804))))))

(declare-fun b!1506810 () Bool)

(declare-fun res!1027208 () Bool)

(assert (=> b!1506810 (=> (not res!1027208) (not e!842029))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1506810 (= res!1027208 (validKeyInArray!0 (select (arr!48478 a!2804) i!961)))))

(declare-fun b!1506811 () Bool)

(declare-fun res!1027206 () Bool)

(assert (=> b!1506811 (=> (not res!1027206) (not e!842029))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100479 (_ BitVec 32)) Bool)

(assert (=> b!1506811 (= res!1027206 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1506812 () Bool)

(declare-fun res!1027205 () Bool)

(assert (=> b!1506812 (=> (not res!1027205) (not e!842029))))

(assert (=> b!1506812 (= res!1027205 (and (= (size!49029 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49029 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49029 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1506813 () Bool)

(declare-fun res!1027209 () Bool)

(assert (=> b!1506813 (=> (not res!1027209) (not e!842029))))

(declare-datatypes ((List!35141 0))(
  ( (Nil!35138) (Cons!35137 (h!36538 (_ BitVec 64)) (t!49842 List!35141)) )
))
(declare-fun arrayNoDuplicates!0 (array!100479 (_ BitVec 32) List!35141) Bool)

(assert (=> b!1506813 (= res!1027209 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35138))))

(declare-fun b!1506814 () Bool)

(assert (=> b!1506814 (= e!842029 false)))

(declare-datatypes ((SeekEntryResult!12670 0))(
  ( (MissingZero!12670 (index!53074 (_ BitVec 32))) (Found!12670 (index!53075 (_ BitVec 32))) (Intermediate!12670 (undefined!13482 Bool) (index!53076 (_ BitVec 32)) (x!134841 (_ BitVec 32))) (Undefined!12670) (MissingVacant!12670 (index!53077 (_ BitVec 32))) )
))
(declare-fun lt!654235 () SeekEntryResult!12670)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100479 (_ BitVec 32)) SeekEntryResult!12670)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1506814 (= lt!654235 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48478 a!2804) j!70) mask!2512) (select (arr!48478 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and start!128554 res!1027203) b!1506812))

(assert (= (and b!1506812 res!1027205) b!1506810))

(assert (= (and b!1506810 res!1027208) b!1506808))

(assert (= (and b!1506808 res!1027204) b!1506811))

(assert (= (and b!1506811 res!1027206) b!1506813))

(assert (= (and b!1506813 res!1027209) b!1506809))

(assert (= (and b!1506809 res!1027207) b!1506814))

(declare-fun m!1389765 () Bool)

(assert (=> b!1506813 m!1389765))

(declare-fun m!1389767 () Bool)

(assert (=> b!1506811 m!1389767))

(declare-fun m!1389769 () Bool)

(assert (=> b!1506814 m!1389769))

(assert (=> b!1506814 m!1389769))

(declare-fun m!1389771 () Bool)

(assert (=> b!1506814 m!1389771))

(assert (=> b!1506814 m!1389771))

(assert (=> b!1506814 m!1389769))

(declare-fun m!1389773 () Bool)

(assert (=> b!1506814 m!1389773))

(assert (=> b!1506808 m!1389769))

(assert (=> b!1506808 m!1389769))

(declare-fun m!1389775 () Bool)

(assert (=> b!1506808 m!1389775))

(declare-fun m!1389777 () Bool)

(assert (=> b!1506810 m!1389777))

(assert (=> b!1506810 m!1389777))

(declare-fun m!1389779 () Bool)

(assert (=> b!1506810 m!1389779))

(declare-fun m!1389781 () Bool)

(assert (=> start!128554 m!1389781))

(declare-fun m!1389783 () Bool)

(assert (=> start!128554 m!1389783))

(push 1)

(assert (not b!1506814))

(assert (not b!1506811))

(assert (not b!1506808))

(assert (not b!1506810))

(assert (not start!128554))

(assert (not b!1506813))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


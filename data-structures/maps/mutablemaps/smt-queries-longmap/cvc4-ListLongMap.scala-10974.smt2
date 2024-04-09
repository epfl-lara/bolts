; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128558 () Bool)

(assert start!128558)

(declare-fun b!1506850 () Bool)

(declare-fun res!1027251 () Bool)

(declare-fun e!842042 () Bool)

(assert (=> b!1506850 (=> (not res!1027251) (not e!842042))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!100483 0))(
  ( (array!100484 (arr!48480 (Array (_ BitVec 32) (_ BitVec 64))) (size!49031 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100483)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1506850 (= res!1027251 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49031 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49031 a!2804))))))

(declare-fun res!1027245 () Bool)

(assert (=> start!128558 (=> (not res!1027245) (not e!842042))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128558 (= res!1027245 (validMask!0 mask!2512))))

(assert (=> start!128558 e!842042))

(assert (=> start!128558 true))

(declare-fun array_inv!37425 (array!100483) Bool)

(assert (=> start!128558 (array_inv!37425 a!2804)))

(declare-fun b!1506851 () Bool)

(declare-fun res!1027250 () Bool)

(assert (=> b!1506851 (=> (not res!1027250) (not e!842042))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1506851 (= res!1027250 (validKeyInArray!0 (select (arr!48480 a!2804) i!961)))))

(declare-fun b!1506852 () Bool)

(declare-fun res!1027246 () Bool)

(assert (=> b!1506852 (=> (not res!1027246) (not e!842042))))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1506852 (= res!1027246 (validKeyInArray!0 (select (arr!48480 a!2804) j!70)))))

(declare-fun b!1506853 () Bool)

(assert (=> b!1506853 (= e!842042 false)))

(declare-datatypes ((SeekEntryResult!12672 0))(
  ( (MissingZero!12672 (index!53082 (_ BitVec 32))) (Found!12672 (index!53083 (_ BitVec 32))) (Intermediate!12672 (undefined!13484 Bool) (index!53084 (_ BitVec 32)) (x!134843 (_ BitVec 32))) (Undefined!12672) (MissingVacant!12672 (index!53085 (_ BitVec 32))) )
))
(declare-fun lt!654241 () SeekEntryResult!12672)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100483 (_ BitVec 32)) SeekEntryResult!12672)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1506853 (= lt!654241 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48480 a!2804) j!70) mask!2512) (select (arr!48480 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1506854 () Bool)

(declare-fun res!1027247 () Bool)

(assert (=> b!1506854 (=> (not res!1027247) (not e!842042))))

(assert (=> b!1506854 (= res!1027247 (and (= (size!49031 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49031 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49031 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1506855 () Bool)

(declare-fun res!1027249 () Bool)

(assert (=> b!1506855 (=> (not res!1027249) (not e!842042))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100483 (_ BitVec 32)) Bool)

(assert (=> b!1506855 (= res!1027249 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1506856 () Bool)

(declare-fun res!1027248 () Bool)

(assert (=> b!1506856 (=> (not res!1027248) (not e!842042))))

(declare-datatypes ((List!35143 0))(
  ( (Nil!35140) (Cons!35139 (h!36540 (_ BitVec 64)) (t!49844 List!35143)) )
))
(declare-fun arrayNoDuplicates!0 (array!100483 (_ BitVec 32) List!35143) Bool)

(assert (=> b!1506856 (= res!1027248 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35140))))

(assert (= (and start!128558 res!1027245) b!1506854))

(assert (= (and b!1506854 res!1027247) b!1506851))

(assert (= (and b!1506851 res!1027250) b!1506852))

(assert (= (and b!1506852 res!1027246) b!1506855))

(assert (= (and b!1506855 res!1027249) b!1506856))

(assert (= (and b!1506856 res!1027248) b!1506850))

(assert (= (and b!1506850 res!1027251) b!1506853))

(declare-fun m!1389805 () Bool)

(assert (=> start!128558 m!1389805))

(declare-fun m!1389807 () Bool)

(assert (=> start!128558 m!1389807))

(declare-fun m!1389809 () Bool)

(assert (=> b!1506852 m!1389809))

(assert (=> b!1506852 m!1389809))

(declare-fun m!1389811 () Bool)

(assert (=> b!1506852 m!1389811))

(declare-fun m!1389813 () Bool)

(assert (=> b!1506855 m!1389813))

(declare-fun m!1389815 () Bool)

(assert (=> b!1506851 m!1389815))

(assert (=> b!1506851 m!1389815))

(declare-fun m!1389817 () Bool)

(assert (=> b!1506851 m!1389817))

(declare-fun m!1389819 () Bool)

(assert (=> b!1506856 m!1389819))

(assert (=> b!1506853 m!1389809))

(assert (=> b!1506853 m!1389809))

(declare-fun m!1389821 () Bool)

(assert (=> b!1506853 m!1389821))

(assert (=> b!1506853 m!1389821))

(assert (=> b!1506853 m!1389809))

(declare-fun m!1389823 () Bool)

(assert (=> b!1506853 m!1389823))

(push 1)

(assert (not b!1506851))

(assert (not b!1506856))

(assert (not b!1506852))

(assert (not b!1506853))

(assert (not start!128558))

(assert (not b!1506855))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


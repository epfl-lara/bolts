; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128814 () Bool)

(assert start!128814)

(declare-fun b!1508756 () Bool)

(declare-fun res!1028733 () Bool)

(declare-fun e!842893 () Bool)

(assert (=> b!1508756 (=> (not res!1028733) (not e!842893))))

(declare-datatypes ((array!100583 0))(
  ( (array!100584 (arr!48524 (Array (_ BitVec 32) (_ BitVec 64))) (size!49075 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100583)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1508756 (= res!1028733 (validKeyInArray!0 (select (arr!48524 a!2804) i!961)))))

(declare-fun b!1508757 () Bool)

(declare-fun res!1028734 () Bool)

(assert (=> b!1508757 (=> (not res!1028734) (not e!842893))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1508757 (= res!1028734 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49075 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49075 a!2804))))))

(declare-fun b!1508758 () Bool)

(declare-fun res!1028731 () Bool)

(assert (=> b!1508758 (=> (not res!1028731) (not e!842893))))

(declare-datatypes ((List!35187 0))(
  ( (Nil!35184) (Cons!35183 (h!36596 (_ BitVec 64)) (t!49888 List!35187)) )
))
(declare-fun arrayNoDuplicates!0 (array!100583 (_ BitVec 32) List!35187) Bool)

(assert (=> b!1508758 (= res!1028731 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35184))))

(declare-fun b!1508759 () Bool)

(declare-fun e!842892 () Bool)

(assert (=> b!1508759 (= e!842892 false)))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun lt!654706 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1508759 (= lt!654706 (toIndex!0 (select (store (arr!48524 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512))))

(declare-fun res!1028732 () Bool)

(assert (=> start!128814 (=> (not res!1028732) (not e!842893))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128814 (= res!1028732 (validMask!0 mask!2512))))

(assert (=> start!128814 e!842893))

(assert (=> start!128814 true))

(declare-fun array_inv!37469 (array!100583) Bool)

(assert (=> start!128814 (array_inv!37469 a!2804)))

(declare-fun b!1508760 () Bool)

(declare-fun res!1028738 () Bool)

(assert (=> b!1508760 (=> (not res!1028738) (not e!842893))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100583 (_ BitVec 32)) Bool)

(assert (=> b!1508760 (= res!1028738 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1508761 () Bool)

(assert (=> b!1508761 (= e!842893 e!842892)))

(declare-fun res!1028735 () Bool)

(assert (=> b!1508761 (=> (not res!1028735) (not e!842892))))

(declare-datatypes ((SeekEntryResult!12716 0))(
  ( (MissingZero!12716 (index!53258 (_ BitVec 32))) (Found!12716 (index!53259 (_ BitVec 32))) (Intermediate!12716 (undefined!13528 Bool) (index!53260 (_ BitVec 32)) (x!135031 (_ BitVec 32))) (Undefined!12716) (MissingVacant!12716 (index!53261 (_ BitVec 32))) )
))
(declare-fun lt!654705 () SeekEntryResult!12716)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100583 (_ BitVec 32)) SeekEntryResult!12716)

(assert (=> b!1508761 (= res!1028735 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48524 a!2804) j!70) mask!2512) (select (arr!48524 a!2804) j!70) a!2804 mask!2512) lt!654705))))

(assert (=> b!1508761 (= lt!654705 (Intermediate!12716 false resIndex!21 resX!21))))

(declare-fun b!1508762 () Bool)

(declare-fun res!1028736 () Bool)

(assert (=> b!1508762 (=> (not res!1028736) (not e!842893))))

(assert (=> b!1508762 (= res!1028736 (and (= (size!49075 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49075 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49075 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1508763 () Bool)

(declare-fun res!1028737 () Bool)

(assert (=> b!1508763 (=> (not res!1028737) (not e!842893))))

(assert (=> b!1508763 (= res!1028737 (validKeyInArray!0 (select (arr!48524 a!2804) j!70)))))

(declare-fun b!1508764 () Bool)

(declare-fun res!1028739 () Bool)

(assert (=> b!1508764 (=> (not res!1028739) (not e!842892))))

(assert (=> b!1508764 (= res!1028739 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48524 a!2804) j!70) a!2804 mask!2512) lt!654705))))

(assert (= (and start!128814 res!1028732) b!1508762))

(assert (= (and b!1508762 res!1028736) b!1508756))

(assert (= (and b!1508756 res!1028733) b!1508763))

(assert (= (and b!1508763 res!1028737) b!1508760))

(assert (= (and b!1508760 res!1028738) b!1508758))

(assert (= (and b!1508758 res!1028731) b!1508757))

(assert (= (and b!1508757 res!1028734) b!1508761))

(assert (= (and b!1508761 res!1028735) b!1508764))

(assert (= (and b!1508764 res!1028739) b!1508759))

(declare-fun m!1391233 () Bool)

(assert (=> b!1508761 m!1391233))

(assert (=> b!1508761 m!1391233))

(declare-fun m!1391235 () Bool)

(assert (=> b!1508761 m!1391235))

(assert (=> b!1508761 m!1391235))

(assert (=> b!1508761 m!1391233))

(declare-fun m!1391237 () Bool)

(assert (=> b!1508761 m!1391237))

(declare-fun m!1391239 () Bool)

(assert (=> b!1508756 m!1391239))

(assert (=> b!1508756 m!1391239))

(declare-fun m!1391241 () Bool)

(assert (=> b!1508756 m!1391241))

(assert (=> b!1508763 m!1391233))

(assert (=> b!1508763 m!1391233))

(declare-fun m!1391243 () Bool)

(assert (=> b!1508763 m!1391243))

(declare-fun m!1391245 () Bool)

(assert (=> start!128814 m!1391245))

(declare-fun m!1391247 () Bool)

(assert (=> start!128814 m!1391247))

(declare-fun m!1391249 () Bool)

(assert (=> b!1508760 m!1391249))

(declare-fun m!1391251 () Bool)

(assert (=> b!1508758 m!1391251))

(declare-fun m!1391253 () Bool)

(assert (=> b!1508759 m!1391253))

(declare-fun m!1391255 () Bool)

(assert (=> b!1508759 m!1391255))

(assert (=> b!1508759 m!1391255))

(declare-fun m!1391257 () Bool)

(assert (=> b!1508759 m!1391257))

(assert (=> b!1508764 m!1391233))

(assert (=> b!1508764 m!1391233))

(declare-fun m!1391259 () Bool)

(assert (=> b!1508764 m!1391259))

(check-sat (not b!1508759) (not b!1508756) (not b!1508761) (not start!128814) (not b!1508758) (not b!1508760) (not b!1508764) (not b!1508763))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128748 () Bool)

(assert start!128748)

(declare-fun b!1508243 () Bool)

(declare-fun e!842663 () Bool)

(declare-fun e!842662 () Bool)

(assert (=> b!1508243 (= e!842663 e!842662)))

(declare-fun res!1028325 () Bool)

(assert (=> b!1508243 (=> (not res!1028325) (not e!842662))))

(declare-datatypes ((SeekEntryResult!12704 0))(
  ( (MissingZero!12704 (index!53210 (_ BitVec 32))) (Found!12704 (index!53211 (_ BitVec 32))) (Intermediate!12704 (undefined!13516 Bool) (index!53212 (_ BitVec 32)) (x!134981 (_ BitVec 32))) (Undefined!12704) (MissingVacant!12704 (index!53213 (_ BitVec 32))) )
))
(declare-fun lt!654558 () SeekEntryResult!12704)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100556 0))(
  ( (array!100557 (arr!48512 (Array (_ BitVec 32) (_ BitVec 64))) (size!49063 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100556)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100556 (_ BitVec 32)) SeekEntryResult!12704)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1508243 (= res!1028325 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48512 a!2804) j!70) mask!2512) (select (arr!48512 a!2804) j!70) a!2804 mask!2512) lt!654558))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1508243 (= lt!654558 (Intermediate!12704 false resIndex!21 resX!21))))

(declare-fun res!1028331 () Bool)

(assert (=> start!128748 (=> (not res!1028331) (not e!842663))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128748 (= res!1028331 (validMask!0 mask!2512))))

(assert (=> start!128748 e!842663))

(assert (=> start!128748 true))

(declare-fun array_inv!37457 (array!100556) Bool)

(assert (=> start!128748 (array_inv!37457 a!2804)))

(declare-fun b!1508244 () Bool)

(declare-fun res!1028327 () Bool)

(assert (=> b!1508244 (=> (not res!1028327) (not e!842663))))

(declare-datatypes ((List!35175 0))(
  ( (Nil!35172) (Cons!35171 (h!36581 (_ BitVec 64)) (t!49876 List!35175)) )
))
(declare-fun arrayNoDuplicates!0 (array!100556 (_ BitVec 32) List!35175) Bool)

(assert (=> b!1508244 (= res!1028327 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35172))))

(declare-fun b!1508245 () Bool)

(declare-fun res!1028323 () Bool)

(assert (=> b!1508245 (=> (not res!1028323) (not e!842663))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1508245 (= res!1028323 (validKeyInArray!0 (select (arr!48512 a!2804) j!70)))))

(declare-fun b!1508246 () Bool)

(declare-fun res!1028328 () Bool)

(assert (=> b!1508246 (=> (not res!1028328) (not e!842663))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1508246 (= res!1028328 (validKeyInArray!0 (select (arr!48512 a!2804) i!961)))))

(declare-fun b!1508247 () Bool)

(assert (=> b!1508247 (= e!842662 false)))

(declare-fun lt!654559 () (_ BitVec 32))

(assert (=> b!1508247 (= lt!654559 (toIndex!0 (select (store (arr!48512 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512))))

(declare-fun b!1508248 () Bool)

(declare-fun res!1028330 () Bool)

(assert (=> b!1508248 (=> (not res!1028330) (not e!842663))))

(assert (=> b!1508248 (= res!1028330 (and (= (size!49063 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49063 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49063 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1508249 () Bool)

(declare-fun res!1028324 () Bool)

(assert (=> b!1508249 (=> (not res!1028324) (not e!842663))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100556 (_ BitVec 32)) Bool)

(assert (=> b!1508249 (= res!1028324 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1508250 () Bool)

(declare-fun res!1028329 () Bool)

(assert (=> b!1508250 (=> (not res!1028329) (not e!842662))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1508250 (= res!1028329 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48512 a!2804) j!70) a!2804 mask!2512) lt!654558))))

(declare-fun b!1508251 () Bool)

(declare-fun res!1028326 () Bool)

(assert (=> b!1508251 (=> (not res!1028326) (not e!842663))))

(assert (=> b!1508251 (= res!1028326 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49063 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49063 a!2804))))))

(assert (= (and start!128748 res!1028331) b!1508248))

(assert (= (and b!1508248 res!1028330) b!1508246))

(assert (= (and b!1508246 res!1028328) b!1508245))

(assert (= (and b!1508245 res!1028323) b!1508249))

(assert (= (and b!1508249 res!1028324) b!1508244))

(assert (= (and b!1508244 res!1028327) b!1508251))

(assert (= (and b!1508251 res!1028326) b!1508243))

(assert (= (and b!1508243 res!1028325) b!1508250))

(assert (= (and b!1508250 res!1028329) b!1508247))

(declare-fun m!1390801 () Bool)

(assert (=> b!1508244 m!1390801))

(declare-fun m!1390803 () Bool)

(assert (=> start!128748 m!1390803))

(declare-fun m!1390805 () Bool)

(assert (=> start!128748 m!1390805))

(declare-fun m!1390807 () Bool)

(assert (=> b!1508246 m!1390807))

(assert (=> b!1508246 m!1390807))

(declare-fun m!1390809 () Bool)

(assert (=> b!1508246 m!1390809))

(declare-fun m!1390811 () Bool)

(assert (=> b!1508249 m!1390811))

(declare-fun m!1390813 () Bool)

(assert (=> b!1508245 m!1390813))

(assert (=> b!1508245 m!1390813))

(declare-fun m!1390815 () Bool)

(assert (=> b!1508245 m!1390815))

(declare-fun m!1390817 () Bool)

(assert (=> b!1508247 m!1390817))

(declare-fun m!1390819 () Bool)

(assert (=> b!1508247 m!1390819))

(assert (=> b!1508247 m!1390819))

(declare-fun m!1390821 () Bool)

(assert (=> b!1508247 m!1390821))

(assert (=> b!1508243 m!1390813))

(assert (=> b!1508243 m!1390813))

(declare-fun m!1390823 () Bool)

(assert (=> b!1508243 m!1390823))

(assert (=> b!1508243 m!1390823))

(assert (=> b!1508243 m!1390813))

(declare-fun m!1390825 () Bool)

(assert (=> b!1508243 m!1390825))

(assert (=> b!1508250 m!1390813))

(assert (=> b!1508250 m!1390813))

(declare-fun m!1390827 () Bool)

(assert (=> b!1508250 m!1390827))

(check-sat (not start!128748) (not b!1508246) (not b!1508249) (not b!1508244) (not b!1508243) (not b!1508245) (not b!1508247) (not b!1508250))
(check-sat)

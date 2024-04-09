; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128962 () Bool)

(assert start!128962)

(declare-fun b!1511073 () Bool)

(declare-fun res!1031049 () Bool)

(declare-fun e!843714 () Bool)

(assert (=> b!1511073 (=> (not res!1031049) (not e!843714))))

(declare-datatypes ((array!100731 0))(
  ( (array!100732 (arr!48598 (Array (_ BitVec 32) (_ BitVec 64))) (size!49149 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100731)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100731 (_ BitVec 32)) Bool)

(assert (=> b!1511073 (= res!1031049 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1511074 () Bool)

(declare-fun res!1031051 () Bool)

(assert (=> b!1511074 (=> (not res!1031051) (not e!843714))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1511074 (= res!1031051 (validKeyInArray!0 (select (arr!48598 a!2804) i!961)))))

(declare-fun b!1511075 () Bool)

(declare-fun res!1031057 () Bool)

(declare-fun e!843716 () Bool)

(assert (=> b!1511075 (=> (not res!1031057) (not e!843716))))

(declare-datatypes ((SeekEntryResult!12790 0))(
  ( (MissingZero!12790 (index!53554 (_ BitVec 32))) (Found!12790 (index!53555 (_ BitVec 32))) (Intermediate!12790 (undefined!13602 Bool) (index!53556 (_ BitVec 32)) (x!135305 (_ BitVec 32))) (Undefined!12790) (MissingVacant!12790 (index!53557 (_ BitVec 32))) )
))
(declare-fun lt!655313 () SeekEntryResult!12790)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100731 (_ BitVec 32)) SeekEntryResult!12790)

(assert (=> b!1511075 (= res!1031057 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48598 a!2804) j!70) a!2804 mask!2512) lt!655313))))

(declare-fun b!1511076 () Bool)

(declare-fun res!1031055 () Bool)

(assert (=> b!1511076 (=> (not res!1031055) (not e!843714))))

(assert (=> b!1511076 (= res!1031055 (and (= (size!49149 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49149 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49149 a!2804)) (not (= i!961 j!70))))))

(declare-fun res!1031052 () Bool)

(assert (=> start!128962 (=> (not res!1031052) (not e!843714))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128962 (= res!1031052 (validMask!0 mask!2512))))

(assert (=> start!128962 e!843714))

(assert (=> start!128962 true))

(declare-fun array_inv!37543 (array!100731) Bool)

(assert (=> start!128962 (array_inv!37543 a!2804)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun b!1511077 () Bool)

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1511077 (= e!843716 (not (or (not (= (select (arr!48598 a!2804) j!70) (select (store (arr!48598 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48598 a!2804) index!487) (select (arr!48598 a!2804) j!70)) (not (= (select (arr!48598 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!2512 #b00000000000000000000000000000000) (bvslt index!487 (bvadd #b00000000000000000000000000000001 mask!2512)))))))

(declare-fun e!843713 () Bool)

(assert (=> b!1511077 e!843713))

(declare-fun res!1031058 () Bool)

(assert (=> b!1511077 (=> (not res!1031058) (not e!843713))))

(assert (=> b!1511077 (= res!1031058 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50404 0))(
  ( (Unit!50405) )
))
(declare-fun lt!655315 () Unit!50404)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100731 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50404)

(assert (=> b!1511077 (= lt!655315 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1511078 () Bool)

(declare-fun res!1031054 () Bool)

(assert (=> b!1511078 (=> (not res!1031054) (not e!843716))))

(declare-fun lt!655314 () SeekEntryResult!12790)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1511078 (= res!1031054 (= lt!655314 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48598 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48598 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100732 (store (arr!48598 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49149 a!2804)) mask!2512)))))

(declare-fun b!1511079 () Bool)

(declare-fun res!1031056 () Bool)

(assert (=> b!1511079 (=> (not res!1031056) (not e!843714))))

(assert (=> b!1511079 (= res!1031056 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49149 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49149 a!2804))))))

(declare-fun b!1511080 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100731 (_ BitVec 32)) SeekEntryResult!12790)

(assert (=> b!1511080 (= e!843713 (= (seekEntry!0 (select (arr!48598 a!2804) j!70) a!2804 mask!2512) (Found!12790 j!70)))))

(declare-fun b!1511081 () Bool)

(declare-fun res!1031050 () Bool)

(assert (=> b!1511081 (=> (not res!1031050) (not e!843714))))

(declare-datatypes ((List!35261 0))(
  ( (Nil!35258) (Cons!35257 (h!36670 (_ BitVec 64)) (t!49962 List!35261)) )
))
(declare-fun arrayNoDuplicates!0 (array!100731 (_ BitVec 32) List!35261) Bool)

(assert (=> b!1511081 (= res!1031050 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35258))))

(declare-fun b!1511082 () Bool)

(assert (=> b!1511082 (= e!843714 e!843716)))

(declare-fun res!1031048 () Bool)

(assert (=> b!1511082 (=> (not res!1031048) (not e!843716))))

(assert (=> b!1511082 (= res!1031048 (= lt!655314 lt!655313))))

(assert (=> b!1511082 (= lt!655313 (Intermediate!12790 false resIndex!21 resX!21))))

(assert (=> b!1511082 (= lt!655314 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48598 a!2804) j!70) mask!2512) (select (arr!48598 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1511083 () Bool)

(declare-fun res!1031053 () Bool)

(assert (=> b!1511083 (=> (not res!1031053) (not e!843714))))

(assert (=> b!1511083 (= res!1031053 (validKeyInArray!0 (select (arr!48598 a!2804) j!70)))))

(assert (= (and start!128962 res!1031052) b!1511076))

(assert (= (and b!1511076 res!1031055) b!1511074))

(assert (= (and b!1511074 res!1031051) b!1511083))

(assert (= (and b!1511083 res!1031053) b!1511073))

(assert (= (and b!1511073 res!1031049) b!1511081))

(assert (= (and b!1511081 res!1031050) b!1511079))

(assert (= (and b!1511079 res!1031056) b!1511082))

(assert (= (and b!1511082 res!1031048) b!1511075))

(assert (= (and b!1511075 res!1031057) b!1511078))

(assert (= (and b!1511078 res!1031054) b!1511077))

(assert (= (and b!1511077 res!1031058) b!1511080))

(declare-fun m!1393791 () Bool)

(assert (=> b!1511082 m!1393791))

(assert (=> b!1511082 m!1393791))

(declare-fun m!1393793 () Bool)

(assert (=> b!1511082 m!1393793))

(assert (=> b!1511082 m!1393793))

(assert (=> b!1511082 m!1393791))

(declare-fun m!1393795 () Bool)

(assert (=> b!1511082 m!1393795))

(declare-fun m!1393797 () Bool)

(assert (=> b!1511081 m!1393797))

(declare-fun m!1393799 () Bool)

(assert (=> start!128962 m!1393799))

(declare-fun m!1393801 () Bool)

(assert (=> start!128962 m!1393801))

(declare-fun m!1393803 () Bool)

(assert (=> b!1511073 m!1393803))

(assert (=> b!1511080 m!1393791))

(assert (=> b!1511080 m!1393791))

(declare-fun m!1393805 () Bool)

(assert (=> b!1511080 m!1393805))

(assert (=> b!1511077 m!1393791))

(declare-fun m!1393807 () Bool)

(assert (=> b!1511077 m!1393807))

(declare-fun m!1393809 () Bool)

(assert (=> b!1511077 m!1393809))

(declare-fun m!1393811 () Bool)

(assert (=> b!1511077 m!1393811))

(declare-fun m!1393813 () Bool)

(assert (=> b!1511077 m!1393813))

(declare-fun m!1393815 () Bool)

(assert (=> b!1511077 m!1393815))

(assert (=> b!1511078 m!1393809))

(assert (=> b!1511078 m!1393813))

(assert (=> b!1511078 m!1393813))

(declare-fun m!1393817 () Bool)

(assert (=> b!1511078 m!1393817))

(assert (=> b!1511078 m!1393817))

(assert (=> b!1511078 m!1393813))

(declare-fun m!1393819 () Bool)

(assert (=> b!1511078 m!1393819))

(declare-fun m!1393821 () Bool)

(assert (=> b!1511074 m!1393821))

(assert (=> b!1511074 m!1393821))

(declare-fun m!1393823 () Bool)

(assert (=> b!1511074 m!1393823))

(assert (=> b!1511083 m!1393791))

(assert (=> b!1511083 m!1393791))

(declare-fun m!1393825 () Bool)

(assert (=> b!1511083 m!1393825))

(assert (=> b!1511075 m!1393791))

(assert (=> b!1511075 m!1393791))

(declare-fun m!1393827 () Bool)

(assert (=> b!1511075 m!1393827))

(push 1)

(assert (not b!1511077))

(assert (not b!1511080))

(assert (not b!1511082))

(assert (not b!1511083))

(assert (not b!1511075))

(assert (not b!1511081))

(assert (not start!128962))

(assert (not b!1511074))

(assert (not b!1511078))

(assert (not b!1511073))

(check-sat)

(pop 1)

(push 1)

(check-sat)

